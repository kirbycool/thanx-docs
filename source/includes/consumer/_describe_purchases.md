## Describe Purchases

```bash
curl https://api-v3.thanxsandbox.com/purchases \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

```json
{
  "purchases": [
    {
      "id": "92b7b0dac4",
      "merchant_id": "9a1f0772c9ac",
      "location_id": "e7183da044",
      "purchased_at": "2020-01-01T20:00:00Z",
      "amount": 9.99
    }
  ]
}
```

This endpoint describes all available purchases for the given user.

### HTTP Request

`GET /purchases`

### Reward Resource

Field | Type | Description
----- | ---- | -----------
`id` | string | Reward ID
`merchant_id` | string | Merchant ID
`location_id` | string | Location ID
`activated_at` | string | Time the purchase was made in ISO8601-format
`amount` | decimal | The purchase amount
