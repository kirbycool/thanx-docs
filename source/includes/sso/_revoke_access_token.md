## Revoke Access Token

```bash
curl https://auth.thanxsandbox.com/oauth/revoke \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{
    "client_id": "f4bf04a6fc27b5fa926a7318933b76440642c25cde037d8e867b3d18d771ad86",
    "client_secret": "83c08861ce6302e0e73d28cea30aa3f8f3ea98446e133fde60a86231f50f5c82",
    "token": "945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
  }'
```

> Response (200 OK)

```json
{}
```

Use this endpoint to revoke a user's access token.

### HTTP Request

`POST /oauth/revoke`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`client_id` | string | Required | OAuth Client ID
`client_secret` | string | Required | OAuth Client Secret
`token` | string | Required | OAuth Access Token
