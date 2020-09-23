## Grant Reward

```bash
curl https://api.thanxsandbox.com/rewards/ \
  -X POST \
  -H "Accept-Version: v4.0" \
  -d '{
    "reward": {
      "user_id": "weoru",
      "campaign_id": "weroui234890f"
    }
  }'
```

> Response (200 OK)

```json
{
  "reward": {
    "id": "222441e34626",
    "user_id": "werofsdf",
    "merchant_id": "weroif",
    "campaign_id": "85133c3c1258",
    "state": "active",
    "earn": {
      "type": "intro",
      "text": "Signing up"
    },
    "redeem": {
      "type": "manual",
      "text": "$10 off",
      "window": 60,
    },
    "coupon_code": {
      "code": null,
      "type": null,
      "display": null
    },
    "redemption_venue": "all",
    "fine_print": "Can't be used for alcohol purchases",
    "instructions": "Example staff instructions",
    "activated_at": "2020-01-01T20:00:00Z",
    "retire_at": null,
    "used_at": null
  }
}
```

This endpoint grants the user a reward associated with the campaign provided.
**This endpoint is only available in SANDBOX**

### HTTP Request

`POST /rewards`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`campaign_id` | string | Required | The campaign id to grant the reward for
`user_id` | string | Required | The user to grant the reward for

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Reward ID
`campaign_id` | string | Campaign ID
`state` | enum | Reward State (`available`, `active`, `used`)
`fine_print` | string | Fine print for the reward
`instructions` | string | Staff instructions for the reward
`redemption_venue` | enum | Where the reward can be used: (`instore`, `online`, `all`)
`activated_at` | string | Time the reward was activated in ISO8601-format
`used_at` | string | Time the reward was marked as used in ISO8601-format
`retire_at` | string | Time the reward will be automatically retired in ISO8601-format
`coupon_code` | hash | This hash will be populated if the reward is 'active' or 'used' and the merchant uses coupon codes.
`coupon_code.code` | string | The raw coupon code value that should be rendered based on the `coupon_code_type` enum
`coupon_code.type` | enum | The type of coupon code that should be used to render the `coupon_code` value (`raw`, `qrcode`, `barcode39`, `barcode39extended`, `barcode93`, `barcode128`, `barcode_upc_a`, `barcode_ean_8`, `barcode_ean_13`, `barcode25interleaved`)
`coupon_code.display` | string | If set, should be displayed instead of the raw coupon code value
`earn` | hash | Details of how the reward was earned
`earn.type` | enum | Type of program the reward was earned with
`earn.text` | string | Description of how the reward was earned
`redeem` | hash | Details of how the reward can be redeemed
`redeem.type` | enum | How the reward can be redeemed (`manual`, `automatic`, `multiple`)
`redeem.text` | string | Description of how the reward can be redeemed
`redeem.window` | integer | Number of minutes the reward is available for use after activation
