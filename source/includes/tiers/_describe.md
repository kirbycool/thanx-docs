## Describe Tiers Configuration

```bash
curl https://api.thanxsandbox.com/tiers_configurations \
  -H "Accept-Version: v4.0"
```

> Response (200 OK)

```json
{
  "tiers_configurations": [
    {
      "merchant_id": "weoru",
      "bronze_tier": {
        "id": "wyreo23",
        "name": "Bronze",
        "description": "- $10 off purchase of $25+ - complimentary birthday dessert - special event invitations",
        "color": "#ba7556",
        "spend_threshold": 0
      },
      "silver_tier": {
        "id": "fh457",
        "name": "Silver",
        "description": "Everything in Bronze, plus: - early reservations to community dinners when you reach Silver Tier",
        "color": "#bdbec0",
        "spend_threshold": 1500
      },
      "gold_tier": {
        "id": "ert235",
        "name": "Gold",
        "description": "Everything in Silver, plus: - complimentary seasonal pizza per year when you reach Gold Tier",
        "color": "#c8b55e",
        "spend_threshold": 3000
      }
    }
  ]
}
```

This endpoint describes tier configurations for the merchants accessible via the
provided credentials. The gold tier may not be present if the merchant opts to have only 2 tiers.

### HTTP Request

`GET /tiers_configurations`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`merchant_id` | string | Optional | Only return tier configuration for this merchant

### Response

Field | Type | Description
----- | ---- | -----------
`merchant_id` | string | The merchant ID
`bronze_tier` | hash | Describes the configuration for the bronze tier
`bronze_tier.id` | string | The identifer of the tier record
`bronze_tier.name` | string | The display name for the tier
`bronze_tier.description` | string | Describes the perks of the tier. Can return markdown.
`bronze_tier.color` | string | The hex color to use for this tier.
`bronze_tier.spend_threshold` | integer | How much the user needs to spend to be part of the tier.
`silver_tier` | hash | Describes the configuration for the silver tier
`silver_tier.id` | string | The identifer of the tier record
`silver_tier.name` | string | The display name for the tier
`silver_tier.description` | string | Describes the perks of the tier. Can return markdown.
`silver_tier.color` | string | The hex color to use for this tier.
`silver_tier.spend_threshold` | integer | How much the user needs to spend to be part of the tier.
`gold_tier` | hash | Describes the configuration for the gold tier
`gold_tier.id` | string | The identifer of the tier record
`gold_tier.name` | string | The display name for the tier
`gold_tier.description` | string | Describes the perks of the tier. Can return markdown.
`gold_tier.color` | string | The hex color to use for this tier.
`gold_tier.spend_threshold` | integer | How much the user needs to spend to be part of the tier.
