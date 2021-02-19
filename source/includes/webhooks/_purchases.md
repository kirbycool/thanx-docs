## Purchases

A purchase webhook payload looks like this:

```json
{
  "purchase": {
    "id": "92b7b0dac4",
    "user": {
      "id": "weori235",
      "email": "bob@bob.com"
    },
    "merchant": {
      "id": "9a1f0772c9ac",
      "name": "Pizza Shack"
    },
    "location": {
      "id": "e7183da044",
      "street": "123 Pizza Lane",
      "city": "Smalltown",
      "state": "CA",
      "zip": "12345",
      "time_zone": "America/New_York",
      "latitude": "37.76271750294678",
      "longitude": "-122.42438230349147"
    },
    "purchased_at": "2020-01-01T20:00:00Z",
    "amount": 9.99,
    "order": {
      "provider": "OLO",
      "id": "RTF234S"
    }
  }
}
```

### Payload description:

Field | Type | Description
----- | ---- | -----------
`id` | string | The ID of the purchase record in Thanx
`user` | hash | User information
`user.id` | string | The ID of the user record in Thanx
`user.email` | string | The user's email
`merchant` | hash | Merchant information
`merchant.id` | string| The ID of the merchant record in Thanx
`merchant.name` | string | The name of the merchant
`location` | hash | Location information
`location.id` | The ID of the location record in Thanx
`location.street` | The street address of the location
`location.city` | The location's city
`location.state` | The location's state
`location.zip` | The location's zip code
`location.time_zone` | The location's time zone
`location.latitude` | The location's latitude
`location.longitude` | The location's longitude
`user_id` | string | User ID
`purchased_at` | string | Time the purchase was made in ISO8601-format
`amount` | decimal | The purchase amount
`order` | hash | The order information, if this purchase reflects an online order
`order.provider` | enum | ('OLO', 'TOAST')
`order.id` | string | The order ID in the provider's system
