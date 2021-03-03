## Get Single Feedback

```bash
curl https://api.thanxsandbox.com/feedbacks/590485d6f0 \
  $AUTH_HEADERS
```

> Response (200 OK)

```json
{
  "feedback": {
    "id": "590485d6f0",
    "user_id": "fsjlk",
    "merchant_id": "woeri34",
    "location_id": "fgr2349gh",
    "expires_at": "2020-01-07T20:00:00Z",
    "rating": null,
    "review": null,
    "purchase": {
      "id": "916895d48a",
      "purchased_at": "2020-01-01T20:00:00Z",
      "amount": 16.0
    }
  }
}
```

This endpoint returns the feedback record corresponding with the ID in the path. If the user
is no longer able to leave feedback for this purchase, a 404 will be returned instead.

### HTTP Request

`GET /feedbacks/:id`

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Feedback ID
`user_id` | string | User ID
`merchant_id` | string | Merchant ID
`location_id` | string | Location ID
`expires_at` | string | Time the feedback expires in ISO8601-format
`rating` | integer | NPS score, null or 1-10
`review` | string | Customer feedback
`purchase.id` | string | Purchase ID
`purchase.purchased_at` | string | Time the purchase was made in ISO8601-format
`purchase.amount` | decimal | Purchase amount