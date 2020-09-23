## Update user

```bash
curl https://api.thanxsandbox.com/users/werljwer \
  -X PATCH \
  -H "Content-Type: application/json" \
  -H "Accept-Version: v4.0" \
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
  "user": {
    "id": "fgr2349gh",
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

This endpoint updates the specified user's information.

### HTTP Request

`PATCH /users/:id`

### Request

Parameter | Type | Required | Description
--------  | ---- | -------- | -----------
`email` | string | Optional | The user's email
`phone` | string | Optional | The user's phone number, formatted: +14157582345
`first_name` | string | Optional | The user's first name
`last_name` | string | Optional | The user's last name
`birthdate` | hash | Optional | The user's birthday information
`birthdate.year` | integer | Optional | The user's birth year
`birthdate.month` | integer | Optional | The user's birth month
`birthdate.day` | integer | Optional | The user's birth day
