## Create Push Registration

```bash
curl https://api.thanxsandbox.com/push_registrations \
  -X PUT \
  $AUTH_HEADERS
  -d '{
    "push_registration": {
      "device_type": "ios",
      "token": "wourdweroi238432423425fsgd"
    }
  }'
```

> Response (200 ok)

```json
{
  "push_registration": {
    "token": "wourdweroi238432423425fsgd",
    "device_type": "ios"
  }
}
```

This endpoint creates or updates a push registration record for a user's device.

### HTTP Request

`PUT /push_registrations`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`device_type` | enum | Required | The type of device: (`ios`, `android`)
`token` | string | Required | The token returned by the local push notification library

### Response

Field | Type | Description
----- | ---- | -----------
`device_type` | enum | The type of device: (`ios`, `android`)
`token` | string | The registration token
