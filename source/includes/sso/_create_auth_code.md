## Acquire authorization code

```bash
curl https://api.thanxsandbox.com/oauth/authorize \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{
    "client_id": "f4bf04a6fc27b5fa926a7318933b76440642c25cde037d8e867b3d18d771ad86",
    "redirect_uri": "https://www.example.com/oauth/callback",
    "response_type": "code",
    "scope": "passwordless",
    "username": "john.smith@example.com"
  }'
```

> Response (200 OK)

```
""
```

This flow is to support passwordless login. If an account exists, an
authentication email will be sent including a link that will eventually
redirect to the redirect_uri with an authorization code.

> Response (401 Unauthorized)

```json
{
  "error": "access_denied",
  "error_description": "The resource owner or authorization server denied the request."
}
```

If an account does not exist for the specified email, a 401 error will be
returned. To create an account, the `POST /users` endpoint should be used.

### HTTP Request

`POST /oauth/authorize`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`client_id` | string | Required | OAuth Client ID
`redirect_uri` | string | Required | Where you want the user to be redirected
`response_type` | string | Required | `code` is the required value
`scope` | string | Required | `passwordless` is the required value
`username` | string | Required | The user's email
