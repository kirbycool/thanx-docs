## Acquire access token

```bash
curl https://api.thanxsandbox.com/oauth/token \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{
  {
    "grant_type": "authorization_code",
    "client_id": "f4bf04a6fc27b5fa926a7318933b76440642c25cde037d8e867b3d18d771ad86",
    "client_secret": "83c08861ce6302e0e73d28cea30aa3f8f3ea98446e133fde60a86231f50f5c82",
    "code": "c13a4ba07f27cfc69a03a5c9cda630205e5f2833331fb761d38eef10c091f371",
    "redirect_uri": "https://www.example.com/oauth/callback"
  }
```

> Response (200 OK)

```json
{
    "token_type": "Bearer",
    "scope": "passwordless",
    "created_at": 1577836800,
    "access_token": "945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd",
    "refresh_token": "c74334301a7c74d21b714c905fd3047177dab56de6a86899e6f6b7f71bab7d55"
}
```

Use this endpoint to acquire a user's access token. This same endpoint supports refreshing an access token using the client_id, client_secret, and refresh_token, with grant_type set to `refresh_token`.

### HTTP Request

`POST /oauth/token`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`grant_type` | string | Required | `authorization_code` is the required value
`client_id` | string | Required | OAuth Client ID
`client_secret` | string | Required | OAuth Client Secret
`code` | string | Required | The authorization code received from Thanx via redirect or API
`redirect_uri` | string | Required | The same redirect_uri should be used as in the request for the authorization code

### Response

Field | Type | Description
----- | ---- | -----------
`token_type` | string | The type of token, usually "Bearer"
`scope` | string | This will be 'passwordless'
`created_at` | integer | The number of seconds since the epoch
`access_token` | string | The user's access token, for use in accessing other API endpoints
`refresh_token` | string | If needed, a refresh token to get another access token 
