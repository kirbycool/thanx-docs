## Update Card

```bash
curl https://api.thanxsandbox.com/cards/woeruiw \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Accept-Version: v4.0" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd" \
  -d '{
    "card": {
      "last4": "1234",
      "type": "visa",
      "expiration": "01/25",
      "encrypted_pan" "..."
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
`encrypted_pan` | string | Required | Encrypted Card PAN (**Must use Thanx Tokenization SDK for this. No raw PANs should ever be sent to Thanx APIs**)

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Card ID
`user_id` | string | The user the card belongs to
`last` | string | Last 4 digits of the card PAN
`type` | enum | Card type (`visa`, `mastercard`, `amex`)
`expiration` | string | Card expiration in the format MM/YY
