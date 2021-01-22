## Create or Update Purchase Feedback

```bash
curl https://api.thanxsandbox.com/purchases/wourhfiwer/feedbacks \
  -X PUT \
  $STANDARD_HEADERS
  -d '{
    "feedback": {
      "rating": 10,
      "review": "Lorem ipsum dolor sit amet"
    }
  }'
```

> Response (200 OK)

```json
{
  "feedback": {
    "id": "590485d6f0",
    "user_id": "weorifsdf",
    "merchant_id": "9a1f0772c",
    "location_id": "fgr2349gh",
    "purchase_id": "wourhfiwer",
    "expires_at": "2020-01-07T20:00:00Z",
    "rating": 10,
    "review": "Lorem ipsum dolor sit amet",
  }
}
```

This endpoint creates or updates a feedback record for a purchase.

### HTTP Request

`PUT /purchases/:purchase_id/feedbacks`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`rating` | integer | Required | NPS Score, 1-10
`review` | string | Optional | Customer feedback

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Feedback ID
`user_id` | string | User ID
`merchant_id` | string | Merchant ID
`location_id` | string | Location ID
`expires_at` | string | Time the feedback expires in ISO8601-format
`rating` | integer | NPS score
`review` | string | Customer feedback
`purchase_id` | string | Purchase ID
