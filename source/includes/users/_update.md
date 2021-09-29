## Update user

```bash
curl https://api.thanxsandbox.com/users/wroeiu2304hfwf \
  -X PATCH \
  $AUTH_HEADERS
  -d '{
    "user": {
      "email": "jane.smith@example.com",
      "first_name": "Jane"
    }
  }'
```

> Response (200 OK)

```json
{
  "user": {
    "id": "wroeiu2304hfwf",
    "email": "john.smith@example.com",
    "phone": "+14158672345",
    "first_name": "Jane",
    "last_name": "Smith",
    "birth_date": {
      "year": 1987,
      "month": 8,
      "day": 14
    },
    "gender": "unknown",
    "zip_code": "12345"
  }
}
```

This endpoint updates the specified user's information. **Note** The user's phone
number is **not** gathered by Thanx with the permission to use it for marketing.

### HTTP Request

`PATCH /users/:id`

### Request

Parameter | Type | Required | Description
--------  | ---- | -------- | -----------
`email` | string | Optional | The user's email
`phone` | string | Optional | The user's phone number, formatted: +14157582345
`first_name` | string | Optional | The user's first name
`last_name` | string | Optional | The user's last name
`birth_date` | hash | Optional | The user's birthday information
`birth_date.year` | integer | Optional | The user's birth year
`birth_date.month` | integer | Optional | The user's birth month
`birth_date.day` | integer | Optional | The user's birth day
`gender` | enum | Optional | The user's gender (`male`, `female`, `other`, `unknown`)
`zip_code` | string | Optional | The user's zip code

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
`gender` | enum | The user's gender (`male`, `female`, `other`, `unknown`)
`zip_code` | string | The user's zip code
