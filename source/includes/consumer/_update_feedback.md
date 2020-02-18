## Update Feedback

```bash
curl https://api-v3.thanxsandbox.com/feedback/590485d6f0 \
  -X PATCH \
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
    "id": "590485d6f0"
    "merchant_id": "9a1f0772c",
    "location_id": "fgr2349gh"
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

This endpoint will update the user's feedback

### HTTP Request

`PATCH /feedback/:id`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`rating` | integer | Required | NPS Score
`review` | string | Optional | Customer feedback

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Feedback ID
`merchant_id` | string | Merchant ID
`location_id` | string | Location ID
`expires_at` | string | Time the feedback expires in ISO8601-format
`rating` | integer | NPS score
`review` | string | Customer feedback
`purchase.id` | string | Purchase ID
`purchase.purchased_at` | string | Time the purchase was made in ISO8601-format
`purchase.amount` | decimal | Purchase amount
