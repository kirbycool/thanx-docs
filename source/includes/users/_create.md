## Create user

```bash
curl https://api.thanxsandbox.com/users/ \
  -X POST \
  $STANDARD_HEADERS
  -d '{
    "user": {
      "email": "jane.smith@example.com",
      "phone": "+14158672345",
      "first_name": "Jane",
      "last_name":  "Smith",
      "birthdate": {
        "year": 1987,
        "month": 8,
        "day": 14
      }
    }
  }'
```

> Response (201 CREATED)

```json
{
  "user": {
    "id": "wroeiu2304hfwf",
    "email": "jane.smith@example.com",
    "phone": "+14158672345",
    "first_name": "Jane",
    "last_name": "Smith",
    "birthdate": {
      "year": 1987,
      "month": 8,
      "day": 14
    }
  },
  "authorization": {
    "token_type": "Bearer",
    "scope": "passwordless",
    "created_at": 1577836800,
    "access_token": "945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd",
    "refresh_token": "c74334301a7c74d21b714c905fd3047177dab56de6a86899e6f6b7f71bab7d55"
  }
}
```

This endpoint creates a user. If a user with the specified email already exists a 400 level error
will be returned. This endpoint also returns authorization information for a successfully created user. The access_token that is returned can be used to access other API endpoints.

### HTTP Request

`POST /users`

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

### Response

Field | Type | Description
----- | ---- | -----------
`user.id` | string | The user's identifier
`user.email` | string | The user's email
`user.phone` | string | The user's phone number, formatted: +14157582345
`user.first_name` | string | The user's first name
`user.last_name` | string | The user's last name
`user.birthdate` | hash | The user's birthday information
`user.birthdate.year` | integer | The user's birth year
`user.birthdate.month` | integer | The user's birth month
`user.birthdate.day` | integer | The user's birth day
`authorization.token_type` | string | The type of token, usually "Bearer"
`authorization.scope` | string | This will be 'passwordless'
`authorization.created_at` | integer | The number of seconds since the epoch
`authorization.access_token` | string | The user's access token, for use in accessing other API endpoints
`authorization.refresh_token` | string | If needed, a refresh token to get another access token