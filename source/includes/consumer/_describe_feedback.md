## Describe Feedback

```bash
curl https://api-v3.thanxsandbox.com/feedback \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

```json
{
  "feedback": [
    {
      "id": "590485d6f0"
      "merchant_id": "9a1f0772c",
      "location_id": "fgr2349gh"
      "expires_at": "2020-01-07T20:00:00Z",
      "rating": null,
      "review": null,
      "purchase": {
        "id": "916895d48a",
        "purchased_at": "2020-01-01T20:00:00Z",
        "amount": 16.0
      }
    }
  ]
}
```

This endpoint describes the user's current feedback

### HTTP Request

`GET /feedback`

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
