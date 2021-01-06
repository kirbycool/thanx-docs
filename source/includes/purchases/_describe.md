## Describe Purchases

```bash
curl https://api.thanxsandbox.com/purchases \
  $AUTH_HEADERS
```

> Response (200 OK)

```json
{
  "purchases": [
    {
      "id": "92b7b0dac4",
      "user_id": "weori235",
      "merchant_id": "9a1f0772c9ac",
      "location_id": "e7183da044",
      "purchased_at": "2020-01-01T20:00:00Z",
      "amount": 9.99
    }
  ]
}
```

This endpoint describes all available purchases.

### HTTP Request

`GET /purchases`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`merchant_id` | string | Optional | Only return purchases for this merchant
`location_id` | string | Optional | Only return purchases for this location
`user_id` | string | Optional | Only return purchases for this user. Note: the bearer token will be used to determine which user's purchases are being requested when the request is made by a logged in user.


### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Reward ID
`user_id` | string | User ID
`merchant_id` | string | Merchant ID
`location_id` | string | Location ID
`purchased_at` | string | Time the purchase was made in ISO8601-format
`amount` | decimal | The purchase amount
