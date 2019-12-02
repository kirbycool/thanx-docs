## Create access token

```bash
curl https://merchant.thanxsandbox.io/merchants/1/users/2/token \
  -X PATCH \
  -H "Accept: application/vnd.thanx-v1+json" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd" \
  -d '{ "scope": "web" }'
```

> Response (200 OK)

```json
{
  "token_type": "Bearer",
  "scope": "web",
  "created_at": 1577836800,
  "access_token": "945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd",
  "expires_in": "300"
}
```

This endpoint will create and return an access token for the user

### HTTP Request

`PATCH /merchants/:merchant_id/users/:user_id`

### Parameters

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`scope` | string | Required | `sdk` for SDK - multi-use and long-lived<br>`web` for web embed - single-use and short-lived
