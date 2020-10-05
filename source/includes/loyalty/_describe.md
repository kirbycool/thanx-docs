## Describe Loyalty Status

```bash
curl https://api.thanxsandbox.com/loyalty_statuses \
  -H "Accept-Version: v4.0" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

```json
{
  "loyalty_statuses": [
    {
      "id": "wruflst",
      "user_id": "weorui",
      "merchant_id": "weoru",
      "status": {
        "progress": 45,
        "type": "spend",
        "threshold": 150
      },
      "redeem": {
        "type": "manual",
        "text": "$10 off",
        "venue": "all"
      }
    }
  ]
}
```

This endpoint describes the user's current loyalty statuses.

### HTTP Request

`GET /loyalty_statuses`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`merchant_id` | string | Optional | Only return loyalty status for this merchant

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | The ID of the loyalty status record
`user_id` | string | The user ID
`merchant_id` | string | The merchant ID
`status` | hash | The user's loyalty information
`status.progress` | integer | The user's progress toward their reward, out of 100
`status.type` | enum | Whether the user earns progress via how much they spend or how many times they visit. Returns 'spend' or 'visit'.
`status.threshold` | integer | How much the user needs to spend or how many visits the user needs to make to earn the reward.
`redeem` | hash | Describes the reward the user would earn
`redeem.type` | enum | How the reward can be redeemed (`manual`, `automatic`)
`redeem.text` | string | Description of what the reward is
`redeem.venue` | enum | Where the reward can be used: (`instore`, `online`, `all`)
