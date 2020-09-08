## Get Notification Settings

```bash
curl https://api.thanxsandbox.com/notification_settings \
  -H "Accept: application/vnd.thanx-v1.0+json" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

```json
{
  "settings": {
    "notification": {
      "reward_earned": true,
      "reward_unused": true,
      "reward_progress": true,
      "feedback_available": true
    },
    "email": {
      "reward_earned": true,
      "reward_unused": true,
      "reward_offer": true,
      "marketing_general": true
    }
  }
}
```

This endpoint returns a user's notification settings. The `notification` key
contains a user's settings for receiving push notifications in their app or
via text if they don't have an app installed. The `email` key contains a user's
settings for receiving emails.

### HTTP Request

`GET /notification_settings`

### Response

Field | Type | Description
----- | ---- | -----------
`notification` | hash | The user's push and sms settings
`notification.reward_earned` | boolean | whether the user can be notified when they have earned a reward
`notification.reward_unused` | boolean | whether the user can be notified when they have an unused reward
`notification.reward_progress` | boolean | whether the user can be notified when they have earned loyalty progress
`notification.feedback_available` | boolean | whether the user can be notified that they can leave feedback for a purchase
`email` | hash | The user's email settings
`email.reward_earned` | boolean | whether the user can be emailed when they have earned a reward
`email.reward_unused` | boolean | whether the user can be emailed when they have an unused reward
`email.reward_offer` | boolean | whether the user can be emailed when a merchant has sent them an offer
`email.marketing_general` | boolean | whether the user can receive marketing updates via email
