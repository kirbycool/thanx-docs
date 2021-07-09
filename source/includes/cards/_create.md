## Create Card

```bash
curl https://api.thanxsandbox.com/cards \
  -X POST \
  $AUTH_HEADERS
  -d '{
    "card": {
      "last4": "1234",
      "type": "visa",
      "encrypted_pan": "\{...\}",
      "zip_code": "12345"
    }
  }'
```

> Response (201 CREATED)

```json
{
  "card": {
    "id": "92b7b0dac4",
    "user_id": "weorufsdf",
    "last4": "1234",
    "type": "visa",
    "zip_code": "12345"
  }
}
```

This endpoint registers a new card with Thanx.

### HTTP Request

`POST /cards`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`last4` | string | Required | Last 4 digits of the card PAN
`type` | string | Required | Card type (`visa`, `mastercard`, `amex`)
`encrypted_pan` | string | Required | Encrypted Card PAN (**Must use Thanx Tokenization SDK for this. No raw PANs should ever be sent to Thanx APIs**)
`zip_code` | string | Optional | The card's billing zip code

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Card ID
`user_id` | string | The user the card belongs to
`last4` | string | Last 4 digits of the card PAN
`type` | enum | Card type (`visa`, `mastercard`, `amex`)
`zip_code` | string | The card's billing zip code
