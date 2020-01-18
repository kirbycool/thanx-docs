## Describe Tiers

```bash
curl https://api-v3.thanxsandbox.com/tiers \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

```json
{
  "tiers": [
    {
      "merchant_id": "9a1f0772c9ac",
      "state": "bronze",
      "action_text": "Spend $100 before the end of the year to earn Silver.",
      "progress": 50,
      "expired_at": "2021-01-01T20:00:00Z",
      "current_tier_name": "Bronze",
      "next_tier_name": "Silver"
    }
  ]
}
```

This endpoint describes the user's current tier status

### HTTP Request

`GET /tiers`

### Response

Field | Type | Description
----- | ---- | -----------
`merchant_id` | string | Merchant ID
`state` | enum | Current tier state (`bronze`, `silver`, `gold`)
`action_text` | string | Description of what the user needs to do in order to earn the next tier
`progress` | integer | Progress percent toward the next tier (0-99)
`expired_at` | string | Current tier status expiration in ISO8601-format
`current_tier_name` | string | Name of current tier
`next_tier_name` | string | Name of next tier
