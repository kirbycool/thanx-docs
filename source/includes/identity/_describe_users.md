## Describe users

```bash
curl https://merchant.thanxsandbox.io/merchants/1/users \
  -H "Accept: application/vnd.thanx-v1+json" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

```json
{
  "users": [
    {
      "id": "fgr2349gh",
      "email": "john.smith@example.com",
      "first_name": "John",
      "last_name": "Smith"
    }
  ]
}
```

This endpoint will return a paginated list of users associated with the merchant

### HTTP Request

`GET /merchants/:merchant_id/users`

### Parameters

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`email` | string | Optional | Scope list of users by email
`page` | integer | Optional | Page of results to return
`per_page` | integer | Optional | Number of results to return per page (1 to 100)
