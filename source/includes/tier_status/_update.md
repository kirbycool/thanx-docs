## Grant Tier Status

```bash
curl https://api.thanxsandbox.com/tier_statuses/:id \
  -X PATCH \
  -H "Content-Type: application/json" \
  -d '{
    "tier_status": {
      "level": "silver"
    }
  }'
```

> Response (200 OK)

```json
{
  "tier_status": {
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
}
```

This endpoint allows you to modify a user's tier status.

### HTTP Request

`PATCH /tier_statuses/:id`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`level` | enum | Required | The desired tier (`bronze`, `silver`, `gold`)

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | The ID of the tier status record
`user_id` | string | The user ID
`merchant_id` | string | The merchant ID
`level` | enum | Current tier state (`bronze`, `silver`, `gold`)
`action_text` | string | Description of what the user needs to do in order to earn the next tier
`progress` | integer | Progress percent toward the next tier (0-99)
`expires_at` | string | Current tier status expiration in ISO8601-format
`current_tier_name` | string | Name of current tier
`next_tier_name` | string | Name of next tier. This will be blank if the user has `gold` status
