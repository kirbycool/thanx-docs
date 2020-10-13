## Describe Tier Status

```bash
curl https://api.thanxsandbox.com/tier_statuses \
  $AUTH_HEADERS
```

> Response (200 OK)

```json
{
  "tier_statuses": [
    {
      "id": "weourif",
      "user_id": "woeru",
      "merchant_id": "werouwer",
      "level": "bronze",
      "action_text": "Spend $100 before the end of the year to earn Silver.",
      "progress": 50,
      "expires_at": "2021-01-01T20:00:00Z",
      "current_tier_name": "Bronze",
      "next_tier_name": "Silver"
    }
  ]
}
```

This endpoint describes the user's current tier statuses.

### HTTP Request

`GET /tier_statuses`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`merchant_id` | string | Optional | Only return tier status for this merchant

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | The ID of the tier status record
`user_id` | string | The user ID
`merchant_id` | string | The merchant ID
`level` | enum | Current tier state (`bronze`, `silver`, `gold`)
`action_text` | string | Description of what the user needs to do in order to earn the next tier
`progress` | decimal | Amount spent so far
`expires_at` | string | Current tier status expiration in ISO8601-format
`current_tier_name` | string | Name of current tier
`next_tier_name` | string | Name of next tier. This will be blank if the user has `gold` status
