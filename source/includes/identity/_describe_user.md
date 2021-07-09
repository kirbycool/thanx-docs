<h2 id="legacy-identity-describe-user">Describe user</h2>

```bash
curl https://merchant.thanxsandbox.io/merchants/1/users/2 \
  -H "Accept: application/vnd.thanx-v1+json" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

```json
{
  "user": {
    "id": "fgr2349gh",
    "email": "john.smith@example.com",
    "first_name": "John",
    "last_name": "Smith"
  }
}
```

> Response (404 Not Found)

```json
""
```

This endpoint will return the specified user

### HTTP Request

`GET /merchants/:merchant_id/users/:user_id`
