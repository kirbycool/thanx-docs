## Get Single Purchase

```bash
curl https://api.thanxsandbox.com/purchases/92b7b0dac4 \
  $AUTH_HEADERS
```

> Response (200 OK)

```json
{
  "purchase": {
    "id": "92b7b0dac4",
    "user_id": "weori235",
    "merchant_id": "9a1f0772c9ac",
    "location_id": "e7183da044",
    "purchased_at": "2020-01-01T20:00:00Z",
    "amount": 9.99,
    "order": {
      "provider": "OLO",
      "id": "YWEI2342F"
    }
  }
}
```

This endpoint returns the purchase associated with the id in the path.

### HTTP Request

`GET /purchases/:purchase_id`

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Reward ID
`user_id` | string | User ID
`merchant_id` | string | Merchant ID
`location_id` | string | Location ID
`purchased_at` | string | Time the purchase was made in ISO8601-format
`amount` | decimal | The purchase amount
`order` | hash | Provides information about the associated order, if any
`order.provider` | enum | The online ordering provider (`OLO`, `Toast`, `OpenTender`, `Other`)
`order.id` | string | The ID of the order in the provider's system
