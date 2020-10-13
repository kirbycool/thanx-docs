## Update Card

```bash
curl https://api.thanxsandbox.com/cards/woeruiw \
  -X PATCH \
  $AUTH_HEADERS
  -d '{
    "card": {
      "expiration": "01/25"
    }
  }'
```

> Response (200 OK)

```json
{
  "card": {
    "id": "92b7b0dac4",
    "user_id": "weroufs",
    "last4": "1234",
    "type": "visa",
    "expiration": "01/25"
  }
}
```

This endpoint updates a card that's registered with Thanx.

### HTTP Request

`PATCH /cards/:card_id`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`expiration` | string | Required | Card expiration in the format MM/YY

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Card ID
`user_id` | string | The user the card belongs to
`last4` | string | Last 4 digits of the card PAN
`type` | enum | Card type (`visa`, `mastercard`, `amex`)
`expiration` | string | Card expiration in the format MM/YY
