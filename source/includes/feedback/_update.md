## Update Feedback

```bash
curl https://api.thanxsandbox.com/feedbacks/590485d6f0 \
  -X PATCH \
  -H "Accept-Version: v4.0" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd" \
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
    "expires_at": "2020-01-07T20:00:00Z",
    "rating": 10,
    "review": "Lorem ipsum dolor sit amet",
    "purchase": {
      "id": "916895d48a",
      "purchased_at": "2020-01-01T20:00:00Z",
      "amount": 16.0
    }
  }
}
```

This endpoint will update a user's feedback record.

### HTTP Request

`PATCH /feedbacks/:id`

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
`purchase.id` | string | Purchase ID
`purchase.purchased_at` | string | Time the purchase was made in ISO8601-format
`purchase.amount` | decimal | Purchase amount
