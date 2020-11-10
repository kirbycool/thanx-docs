## Get Features

```bash
curl https://api.thanxsandbox.com/features \
  $STANDARD_HEADERS
```

> Response (200 OK)

```json
{
  "features": [
    {
      "merchant_id": "wourhfslur",
      "loyalty": {
        "earn": {
          "description": "Spend $150",
          "threshold": 150,
          "type": "spend"
        },
        "redeem": {
          "type": "manual",
          "text": "$10 off",
          "venue": "all"
        }
      },
      "intro": {
        "earn": {
          "description": "Sign up"
        },
        "redeem": {
          "type": "manual",
          "text": "free sandwich",
          "venue": "online"
        }
      },
      "birthday": {
        "earn": {
          "description": "Provide your birthday"
        },
        "redeem": {
          "type": "automatic",
          "text": "10% off",
          "venue": "instore"
        }
      }
    }
  ]
}
```

This endpoint returns the configuration for a merchant's features. If a merchant
does not have a particular feature defined or enabled, the value for the associated
feature key will be empty.

### HTTP Request

`GET /features`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`merchant_id` | string | Optional | Only return features for this merchant if you have access to multiple merchants

### Response

Field | Type | Description
----- | ---- | -----------
`merchant_id` | string | The merchant ID
`loyalty` | hash | Describes the configuration for the loyalty campaign
`loyalty.earn` | hash | Describes how the loyalty reward is earned
`loyalty.earn.description` | string | What the user should do to earn the reward
`loyalty.earn.type` | enum | Whether the user earns progress via how much they spend or how many times they visit. Returns 'spend' or 'visit'.
`loyalty.earn.threshold` | integer | How much the user needs to spend or how many visits the user needs to make to earn the reward.
`loyalty.redeem` | hash | Describes what the reward is
`loyalty.redeem.type` | enum | How the reward can be redeemed (`manual`, `automatic`)
`loyalty.redeem.text` | string | Description of what the loyalty reward is
`loyalty.redeem.venue` | enum | Where the reward can be used: (`instore`, `online`, `all`)
`intro` | hash | Describes the configuration for the introductory campaign
`intro.earn` | hash | Describes how the introductory reward is earned
`intro.earn.description` | string | What the user should do to earn the reward
`intro.redeem` | hash | Describes what the reward is
`intro.redeem.type` | enum | How the reward can be redeemed (`manual`, `automatic`)
`intro.redeem.text` | string | Description of what the introductory reward is
`intro.redeem.venue` | enum | Where the reward can be used: (`instore`, `online`, `all`)
`birthday` | hash | Describes the configuration for the birthday campaign
`birthday.earn` | hash | Describes how the birthday reward is earned
`birthday.earn.description` | string | What the user should do to earn the reward
`birthday.redeem` | hash | Describes what the reward is
`birthday.redeem.type` | enum | How the reward can be redeemed (`manual`, `automatic`)
`birthday.redeem.text` | string | Description of what the birthday reward is
`birthday.redeem.venue` | enum | Where the reward can be used: (`instore`, `online`, `all`)
