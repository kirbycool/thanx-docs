## Describe Current User

```bash
curl https://api-v3.thanxsandbox.com/users/me \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

  ```json
{
  "user": {
    "id": "fgr2349gh",
    "identifier": "11650a5cad69",
    "email": "john.smith@example.com",
    "first_name": "John",
    "last_name": "Smith",
    "gender": "male",
    "birth_date": "1980-12-15"
  }
}
```

This endpoint will return info for the authorized user

### HTTP Request

`GET /users/me`

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Thanx User UID
`identifier` | string | Thanx User Identifier
`email` | string | The user's email
`first_name` | string | The user's first name
`last_name` | string | The user's last name
`gender` | enum | The user's gender (`male`, `female`, `unknown`)
`birth_date` | string | The user's birth date in the format YYYY-MM-DD
