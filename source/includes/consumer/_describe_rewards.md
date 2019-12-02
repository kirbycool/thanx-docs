## Describe Rewards

```bash
curl https://api-v3.thanxsandbox.com/rewards \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

```json
{
  "rewards": [
    {
      "id": "576a2522-ec0e-4835-8d42-8680806443ca",
      "program_id": "85133c3c1258",
      "merchant_id": "9a1f0772c9ac",
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
      "redemption_venue": "all",
      "fine_print": "Example reward fine print",
      "instructions": "Example staff instructions",
      "activated_at": "2020-01-01T20:00:00Z",
      "retire_at": null,
      "finalized_at": null,
      "coupon_code_display": null,
      "coupon_code": null,
      "coupon_code_type": null
    }
  ]
}
```

This endpoint describes all available rewards for the given user.

### HTTP Request

`GET /rewards`

### Reward Resource

Field | Type | Description
----- | ---- | -----------
`id` | string | Reward ID
`program_id` | string | Program ID
`merchant_id` | string | Merchant ID
`state` | enum | Reward State (`delivered`, `active`, `used`)
`earn` | hash | Details of how the reward was earned
`earn.type` | enum | Type of program the reward was earned with
`earn.text` | string | Description of how the reward was earned
`redeem` | hash | Details of how the reward can be redeemed
`redeem.type` | enum | How the reward can be redeemed (`manual`, `automatic`, `multiple`)
`redeem.text` | string | Description of how the reward can be redeemed
`redeem.window` | integer | Number of minutes the reward is available for use after activation
`redemption_venue` | enum | The venue the reward can be redeemed on (`all`, `instore`, `online`)
`fine_print` | string | Fine print for the reward
`instructions` | string | Staff instructions for the reward
`activated_at` | string | Time the reward was activated in ISO8601-format
`finalized_at` | string | Time the reward was finalized in ISO8601-format
`retire_at` | string | Time the reward will be automatically retired in ISO8601-format
`coupon_code_display` | string | If set, should be displayed instead of the raw coupon code value
`coupon_code` | string | The raw coupon code value that should be rendered based on the `coupon_code_type` enum
`coupon_code_type` | enum | The type of coupon code that should be used to render the `coupon_code` value (`raw`, `qrcode`, `barcode39`, `barcode39extended`, `barcode93`, `barcode128`, `barcode_upc_a`, `barcode_ean_8`, `barcode_ean_13`, `barcode25interleaved`)
