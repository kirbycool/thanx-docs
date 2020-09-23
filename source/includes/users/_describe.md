## Get user

```bash
curl https://api.thanxsandbox.com/users/fkwerr \
  -H "Content-Type: application/json" \
  -H "Accept-Version: v4.0" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

```json
{
  "user": {
    "id": "fkwerr",
    "email": "john.smith@example.com",
    "phone": "+14158672345",
    "first_name": "Jane",
    "last_name": "Smith",
    "birthdate": {
      "year": 1987,
      "month": 8,
      "day": 14
    }
  }
}
```

This endpoint will return the specified user's information.

### HTTP Request

`GET /users/:id`

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | The user's identifier
`email` | string | The user's email
`phone` | string | The user's phone number, formatted: +14157582345
`first_name` | string | The user's first name
`last_name` | string | The user's last name
`birthdate` | hash | The user's birthday information
`birthdate.year` | integer | The user's birth year
`birthdate.month` | integer | The user's birth month
`birthdate.day` | integer | The user's birth day
