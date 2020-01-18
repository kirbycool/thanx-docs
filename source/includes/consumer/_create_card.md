## Create Card

```bash
curl https://api-v3.thanxsandbox.com/cards \
  -X POST \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd" \
  -d '{
    "card": {
      "last4": "1234",
      "type": "visa",
      "expiration": "01/25",
      "encrypted" "..."
    }
  }'
```

> Response (200 OK)

```json
{
  "card": {
    "id": "92b7b0dac4",
    "last4": "1234",
    "type": "visa",
    "expiration": "01/25"
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
`expiration` | string | Required | Card expiration in the format MM/YY
`encrypted` | string | Required | Encrypted Card PAN (**Must use Thanx Tokenization SDK for this. No raw PANs should ever be sent to Thanx APIs**)

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Card ID
`last` | string | Last 4 digits of the card PAN
`type` | enum | Card type (`visa`, `mastercard`, `amex`)
`expiration` | string | Card expiration in the format MM/YY