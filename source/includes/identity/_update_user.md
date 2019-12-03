## Update user

```bash
curl https://merchant.thanxsandbox.io/merchants/1/users \
  -X PATCH \
  -H "Accept: application/vnd.thanx-v1+json" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd" \
  -d '{
    "user": {
      "id": "fgr2349gh",
      "email": "jane.smith@example.com",
      "first_name": "Jane"
    }
  }'
```

> Response (200 OK)

```json
{
  "users": [
    {
      "id": "fgr2349gh",
      "email": "john.smith@example.com",
      "first_name": "Jane",
      "last_name": "Smith"
    }
  ]
}
```

This endpoint updates the specified user's information.

### HTTP Request

`PATCH /merchants/:merchant_id/users/:user_id`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`email` | string | Optional | User's email address
`first_name` | string | Optional | User's first name
`last_name` | string | Optional | User's last name
`birth_date` | string | Optional | User's birth date in the format YYYY-MM-DD
