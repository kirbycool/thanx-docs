## Describe Locations

```bash
curl https://api.thanxsandbox.com/locations \
  $STANDARD_HEADERS
```

> Response (200 OK)

```json
{
  "locations": [
    {
      "id": "92b7b0dac4",
      "merchant_id": "9a1f0772c9ac",
      "street": "123 Pizza Lane",
      "city": "Smalltown",
      "state": "CA",
      "zip": "12345",
      "name": "Pizza Town Co",
      "phone": "(415) 555-3728"
    }
  ]
}
```

This endpoint describes locations accessible for the provided client ID. If a merchant_id
is provided the locations will be further filtered.

### HTTP Request

`GET /locations`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`merchant_id` | string | Optional | Only return locations for this merchant

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Location ID
`merchant_id` | string | Merchant ID
`street` | string | Location's street address
`city` | string | Location's city
`state` | string | Location's state
`zip` | string | Location's zip code
`name` | string | The name of the location if it has one
`phone` | string | The phone number of the location
