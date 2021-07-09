## Create user

> **Create a new user**

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
      "birth_date": {
        "year": 1987,
        "month": 8,
        "day": 14
      },
      "gender": "other",
      "zip_code": "12345"
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
    "birth_date": {
      "year": 1987,
      "month": 8,
      "day": 14
    },
    "gender": "other",
    "zip_code": "12345"
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

> **User does not exist, additional params required to create user**

```bash
curl https://api.thanxsandbox.com/users/ \
  -X POST \
  $STANDARD_HEADERS
  -d '{
    "user": {
      "email": "jane.smith@example.com"
    }
  }'
```

> Response (400 BAD REQUEST)

```json
{
  "error": {
    "code": "USER_NAME_REQUIRED",
    "message": "First and last name are required fields."
  }
}
```

> **Sign up an existing user without SSO**

```bash
curl https://api.thanxsandbox.com/users/ \
  -X POST \
  $STANDARD_HEADERS
  -d '{
    "user": {
      "email": "jane.smith@example.com"
    }
  }'
```

> Response (400 BAD REQUEST)

```json
{
  "error": {
    "code": "BAD_REQUEST",
    "message": "User account exists"
  }
}
```

This endpoint creates a user, but it also facilitates signing an existing platform user up with the client brand in scenarios where the SSO flow wouldn't be appropriate (i.e., the user is not signing in to an authenticated experience). If a user with the specified email already exists, it signs the user up with the client brand before returning a 400 level error. This endpoint also returns authorization information for a successfully created user, including an access_token that can be used to access other API endpoints. Experiences utilizing this endpoint must adhere to the [legal requirements for user creation](#user-creation).

### HTTP Request

`POST /users`

### Request

Parameter | Type | Required | Description
--------  | ---- | -------- | -----------
`email` | string | Required | The user's email
`phone` | string | Optional | The user's phone number, formatted: +14157582345
`first_name` | string | Required&ast; | The user's first name
`last_name` | string | Required&ast; | The user's last name
`birth_date` | hash | Optional | The user's birthday information
`birth_date.year` | integer | Optional | The user's birth year
`birth_date.month` | integer | Optional | The user's birth month
`birth_date.day` | integer | Optional | The user's birth day
`gender` | enum | Optional | The user's gender (`male`, `female`, `other`, `unknown`)
`zip_code` | string | Optional | The user's zip code

<strong>&ast;</strong>This endpoint permits minimal requests that only contain an `email` parameter for the purposes of signing up an existing platform user with the client brand. If the email belongs to an existing user, it signs the user up with the brand before returning a 400 level error.

### Response

Field | Type | Description
----- | ---- | -----------
`user.id` | string | The user's identifier
`user.email` | string | The user's email
`user.phone` | string | The user's phone number, formatted: +14157582345
`user.first_name` | string | The user's first name
`user.last_name` | string | The user's last name
`user.birth_date` | hash | The user's birthday information
`user.birth_date.year` | integer | The user's birth year
`user.birth_date.month` | integer | The user's birth month
`user.birth_date.day` | integer | The user's birth day
`user.gender` | enum | The user's gender (`male`, `female`, `other`, `unknown`)
`user.zip_code` | string | The user's zip code
`authorization.token_type` | string | The type of token, usually "Bearer"
`authorization.scope` | string | This will be 'passwordless'
`authorization.created_at` | integer | The number of seconds since the epoch
`authorization.access_token` | string | The user's access token, for use in accessing other API endpoints
`authorization.refresh_token` | string | If needed, a refresh token to get another access token
