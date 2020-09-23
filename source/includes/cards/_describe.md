## Describe Cards

```bash
curl https://api.thanxsandbox.com/cards \
  -H "Accept-Version: v4.0" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

```json
{
  "cards": [
    {
      "id": "92b7b0dac4",
      "user_id": "weorusfs",
      "last4": "1234",
      "type": "visa",
      "expiration": "01/25"
    },
    {
      "id": "wer340fweiu",
      "user_id": "weorufjsdf",
      "last4": "4567",
      "type": "amex",
      "expiration": "01/25"
    }
  ]
}
```

This endpoint describes all registered cards for the given user.

### HTTP Request

`GET /cards`

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Card ID
`user_id` | string | The user the card belongs to
`last` | string | Last 4 digits of the card PAN
`type` | enum | Card type (`visa`, `mastercard`, `amex`)
`expiration` | string | Card expiration in the format MM/YY
