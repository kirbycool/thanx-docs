## Get Communication Settings

```bash
curl https://api.thanxsandbox.com/communication_settings \
  -H "Accept-Version: v4.0" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

```json
{
  "communication_settings": [
    {
      "id": "weori234098",
      "merchant_id": "owierywtwt",
      "user_id": "woeruijsfwer",
      "reward_earned": {
        "notification": true,
        "email": true
      },
      "reward_unused": {
        "notification": true,
        "email": true
      },
      "reward_progress": {
        "notification": true,
        "email": true
      },
      "reward_offer": {
        "notification": true,
        "email": true
      },
      "feedback_available": {
        "notification": true,
        "email": true
      },
      "marketing_general": {
        "email": true
      }
    }
  ]
}
```

This endpoint returns a user's communication settings. The `notification` key
reflects a user's settings for receiving push notifications in their app or
via text if they don't have an app installed. The `email` key reflects a user's
settings for receiving emails.

### HTTP Request

`GET /communication_settings`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`merchant_id` | string | Optional | Merchant ID

### Response

Field | Type | Description
----- | ---- | -----------
`id` | String | The ID of the settings record
`merchant_id` | String | The ID of the merchant
`user_id` | String | The ID of the user
`reward_earned` | hash | Settings for when a user earns a loyalty reward
`reward_earned.notification` | boolean | app notification setting
`reward_earned.email` | boolean | email setting
`reward_unused` | hash | Settings for when a user has an unused reward
`reward_unused.notification` | boolean | app notification setting
`reward_unused.email` | boolean | email setting
`reward_progress` | hash | Settings for when a user earns loyalty progress
`reward_progress.notification` | boolean | app notification setting
`reward_progress.email` | boolean | email setting
`reward_offer` | hash | Settings for when a merchant sends an offer
`reward_offer.notification` | boolean | app notification setting
`reward_offer.email` | boolean | email setting
`feedback_available` | hash | Settings for when a user has the opportunity to leave feedback for a purchase
`feedback_available.notification` | boolean | app notification setting
`feedback_available.email` | boolean | email setting
`marketing_general` | hash | Settings for when a merchant sends general marketing
`marketing_general.email` | boolean | email setting
