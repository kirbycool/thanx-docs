## Update Communication Settings

```bash
curl https://api.thanxsandbox.com/communication_settings/woerihfslkwer \
  -X PATCH \
  $AUTH_HEADERS
  -d '{
    "communication_settings": {
      "reward_earned": {
        "notification": false,
        "email": false
      },
      "feedback_available": {
        "notification": true
      }
    }
  }'
```

> Response (200 OK)

```json
{
  "settings": [
    {
      "id": "weoruoisdhf",
      "merchant_id": "owierywtwt",
      "user_id": "woerushfwe",
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
        "notification": true
      },
      "marketing_general": {
        "email": true
      }
    }
  ]
}
```

This endpoint allows the update of a user's notification / email settings.

### HTTP Request

`PATCH /communication_settings/:id`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`id` | String | required | The ID of the settings record
`reward_earned` | hash | optional | Settings for when a user earns a loyalty reward
`reward_earned.notification` | boolean | optional | app notification setting
`reward_earned.email` | boolean | optional | email setting
`reward_unused` | hash | optional | Settings for when a user has an unused reward
`reward_unused.notification` | boolean | optional | app notification setting
`reward_unused.email` | boolean | optional | email setting
`reward_progress` | hash | optional | Settings for when a user earns loyalty progress
`reward_progress.notification` | boolean | optional | app notification setting
`reward_progress.email` | boolean | optional | email setting
`reward_offer` | hash | optional | Settings for when a merchant sends an offer
`reward_offer.notification` | boolean | optional | app notification setting
`reward_offer.email` | boolean | optional | email setting
`feedback_available` | hash | optional | Settings for when a user has the opportunity to leave feedback for a purchase
`feedback_available.notification` | boolean | optional | app notification setting
`marketing_general` | hash | optional | Settings for when a merchant sends general marketing
`marketing_general.email` | boolean | optional | email setting

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
