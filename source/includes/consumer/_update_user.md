## Update Current User

```bash
curl https://api-v3.thanxsandbox.com/users/me \
  -X PATCH \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd" \
  -d '{
    "user": {
      "email": "jane.smith@example.com",
      "first_name": "Jane",
      "gender": "female"
    }
  }'
```

> Response (200 OK)

  ```json
{
  "user": {
    "id": "fgr2349gh",
    "identifier": "11650a5cad69",
    "email": "jane.smith@example.com",
    "first_name": "Jane",
    "last_name": "Smith",
    "gender": "female",
    "birth_date": "1980-12-15"
  }
}
```

This endpoint will update info for the authorized user

### HTTP Request

`PATCH /users/me`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`email` | string | Optional | User's email
`first_name` | string | Optional | User's first name
`last_name` | string | Optional | User's last name
`gender` | enum | Optional | User's gender (`male`, `female`, `unknown`)
`birth_date` | string | Optional | The user's birth date in the format YYYY-MM-DD

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Thanx User UID
`identifier` | string | Thanx User Identifier
`email` | string | User's email
`first_name` | string | User's first name
`last_name` | string | User's last name
`gender` | enum | User's gender (`male`, `female`, `unknown`)
`birth_date` | string | User's birth date in the format YYYY-MM-DD
