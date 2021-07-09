## Describe Cards

```bash
curl https://api.thanxsandbox.com/cards \
  $AUTH_HEADERS
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
      "zip_code": "12345"
    },
    {
      "id": "wer340fweiu",
      "user_id": "weorufjsdf",
      "last4": "4567",
      "type": "amex",
      "zip_code": "54321"
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
`last4` | string | Last 4 digits of the card PAN
`type` | enum | Card type (`visa`, `mastercard`, `amex`)
`zip_code` | string | The card's billing zip code
