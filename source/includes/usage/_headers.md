## Headers

This section describes the headers expected by the Thanx API.

```bash
STANDARD_HEADERS = '-H "Content-Type: application/json" ' \
  '-H "Accept-Version: v4.0" '\
  '-H "Accept: application/json" '\
  '-H "X-ClientId: 293487fhs98345yswoeir245789" '\
  '-H "Date: Thu, 06 Oct 2011 02:26:12 GMT"'

AUTH_HEADERS = '-H "Content-Type: application/json" ' \
  '-H "Accept-Version: v4.0" '\
  '-H "Accept: application/json" '\
  '-H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd" '\
  '-H "X-ClientId: 293487fhs98345yswoeir245789" '\
  '-H "Date: Thu, 06 Oct 2011 02:26:12 GMT"'
```

Header | Example | Required | Description
------ | ------- | -------- | -----------
`Authorization` | `Bearer d6d6533c5ab9b528526f3e48a51e90b62` | Optional | All Thanx Loyalty API endpoints are protected and must be authorized via end user access tokens. These access tokens can be retrieved through an integration with Thanx SSO. The format of the header should be: `Bearer access_token`. Some endpoints don't require a user to be signed in; these are called out in their separate sections.
`Content-Type` | `application/json` | Optional | The only accepted value is `application/json` or empty if no body
`Accept-Version` | `v4.0` | Required | The Accept-Version header specifies which version of the Thanx API that should be used. The current version is `v4.0`. This header is required for every request. Thanx will notify you when a new API version is available.
`Accept` | `application/json` | Required | The only accepted value is `application/json`
`X-ClientId` | `f050d74b5c2b12ae17c85bd510addd7ba2` | Required | Thanx will provide you with this value.
`X-Signature` | `wGlo9uwpPHggRhFupSYjEkfHXhTf1uruek=` | Optional | This should be computed on a per-request basis following the algorithm described below.
`Date` | `Thu, 06 Oct 2011 02:26:12 GMT` | Required | This timestamp must be within 5 minutes of Thanx server time.

## Request Signature

Thanx suggests that you provide a signature with every request. Thanx will validate this signature. This is an extra security
feature that provides a guarantee that a request was not tampered with on its way from client to server.

```plaintext
# pseudocode
stringToSign = string.Join(
  ",",
  ClientId,
  HttpVerb,
  HttpContentType,
  Base64(SHA256(HttpBody)),
  UriPathAndQuery
)

signature = Base64(HMAC-SHA256(ClientSecret, UTF8(stringToSign)))
```

```ruby
def generate_signature(client_id:, client_secret:, verb:, content_type:, body:, path: )
  string_to_sign = [
    client_id,
    verb,
    content_type,
    Base64.encode64(OpenSSL::Digest::SHA256.new.digest(body)).strip,
    path
  ].join(",")

  Base64.encode64(
    OpenSSL::HMAC.digest(
      OpenSSL::Digest::SHA256.new,
      client_secret,
      string_to_sign
    )
  ).strip
end

# Using Faraday Middleware objects
generate_signature(
  client_id:     'f050d74b5c2b12ae17c85bd510addd7ba2',
  client_secret: '17c85bd510ad74b5c2b15bd510ad',
  verb:          env.method.to_s.upcase,
  content_type:  env.request_headers['content-type'],
  body:          env.body.present? ? JSON.dump(env.body) : '',
  path:          env.url.request_uri
)

# Explicit example for granting a reward
generate_signature(
  client_id:     "f050d74b5c2b12ae17c85bd510addd7ba2",
  client_secret: "17c85bd510ad74b5c2b15bd510ad",
  verb:          "POST",
  content_type:  "application/json",
  body:          "{\"reward\":{\"user_id\":\"weoru\",\"campaign_id\":\"weroui234890f\"}}",
  path:          "/rewards"
)
=> "d7hgl0OhIdfGhLRYZPzNgNxF0jxQXpGerPXwNuw9UsU="
```

```javascript
const method = request.method.toUpperCase()
const pathAndQuery = request.url.trim().replace(/https?:\/{2}[^\/]+\//i, '/')
const payload = _.isEmpty(request.data) ? '' : request.data;
const body = CryptoJS.SHA256(payload).toString(CryptoJS.enc.Base64);

const stringToSign = [clientId, method, contentType,
                      body, pathAndQuery].join(',');

const signature = CryptoJS.HmacSHA256(stringToSign, clientSecret).toString(CryptoJS.enc.Base64);
```

1. Assemble the components of the string that will be signed:
  - Client ID
  - Request method (GET, POST, PATCH, PUT, DELETE)
  - Content Type (same as the header value or empty string if no body)
  - The request body (empty string if no body)
  - The request path

2. Base64 encode the body after creating a digest using SHA-256.
3. Join these strings together, with a comma separator.
4. Create a digest using HMAC & SHA-256.
5. Base64 encode the digest.
6. This value is your signature header.

See examples to the right.
