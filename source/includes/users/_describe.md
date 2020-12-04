## Get user

```bash
curl https://api.thanxsandbox.com/users/fkwerr \
  $AUTH_HEADERS
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
    "birth_date": {
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
`birth_date` | hash | The user's birthday information
`birth_date.year` | integer | The user's birth year
`birth_date.month` | integer | The user's birth month
`birth_date.day` | integer | The user's birth day
