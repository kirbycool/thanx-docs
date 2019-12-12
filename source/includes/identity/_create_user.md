## Create user

```bash
curl https://merchant.thanxsandbox.io/merchants/1/users \
  -X POST \
  -H "Accept: application/vnd.thanx-v1+json" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
  -d '{
    "user": {
      "email": "john.smith@example.com",
      "first_name": "John",
      "last_name": "Smith",
      "birth_date": "1980-12-15"
    }
  }'
```

> Response (201 Created)

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

> Response (400 Bad Request)

```json
{
  "errors": "Invalid user birthday"
}
```

> Response (409 Conflict)

```json
{
  "errors": "A user with that email already exists"
}
```

This endpoint allow creation of users. Users that are created by this mechanism
are automatically associated with the specified merchant. If this specified
merchant attempts to create a user with an email that is already in the Thanx
system but not yet associated with the merchant, the request will succeed and
return a user identifier that is consistent across merchants.

### HTTP Request

`POST /merchants/:merchant_id/users`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`email` | string | Required | User's email address
`first_name` | string | Required | User's first name
`last_name` | string | Required | User's last name
`birth_date` | string | Optional | User's birth date in the format YYYY-MM-DD

### Response

Field | Type | Description
----- | ---- | -----------
`user` | hash | User info
`user.id` | string | User ID
`user.email` | string | User email address
`user.first_name` | string | User first name
`user.last_name` | string | User last name
