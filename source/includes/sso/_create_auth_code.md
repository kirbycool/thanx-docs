## Acquire authorization code

```bash
curl https://auth.thanxsandbox.com/oauth/authorize \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{
    "client_id": "f4bf04a6fc27b5fa926a7318933b76440642c25cde037d8e867b3d18d771ad86",
    "redirect_uri": "https://www.example.com/oauth/callback",
    "response_type": "code",
    "scope": "passwordless",
    "username": "john.smith@example.com",
    "first_name": "John",
    "last_name": "Smith"
  }'
```

> Response (200)

```
""
```

> Response (201)

```json
{
  "code": "c13a4ba07f27cfc69a03a5c9cda630205e5f2833331fb761d38eef10c091f371"
}
```

> Response (401)

```json
{
  "error": "access_denied",
  "error_description": "The resource owner or authorization server denied the request."
}
```

This flow is to support passwordless login.

If an account exists, an authentication email will be sent including a link that will eventually redirect to the redirect_uri with an authorization code.

If an account does not exist for the specified email, a 401 error will be returned.

If the optionally specified first_name and last_name parameters are included, an attempt to create an account will be made if the email does not already have an associated account. Upon success, a 201 success and an authorization code will be returned.

### HTTP Request

`POST /oauth/authorize`

### Query Parameters

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`client_id` | string | Required | OAuth Client ID
`redirect_uri` | string | Required | Where you want the user to be redirected.
`response_type` | string | Required | `code` is the required value
`scope` | string | Required | `passwordless` is the required value
`username` | string | Required | The user's email
`first_name` | string | Optional | The user's first name (Optionally specified for user creation)
`last_name` | string | Optional | The user's last name (Optionally specified for user creation)
