## Create Purchase

```bash
curl https://api.thanxsandbox.com/purchases \
  -X POST \
  $STANDARD_HEADERS
  -d '{
    "purchase": {
      "merchant_id":  "weoru",
      "location_id":  "hljkfd2345",
      "user_id":      "wgljsdwer23",
      "amount":       13.45,
      "purchased_at": "2020-09-15T00:52:10.655+00:00",
      "card_id":      null
    }
  }'
```

> Response (201 CREATED)

```json
{}
```

This endpoint submits a purchase to our system for processing. Because this
purchase is processed asynchronously, there is no response JSON. Please allow up
to a couple minutes to receive this purchase back from the GET /purchases endpoint.
**This endpoint is only available in SANDBOX**

### HTTP Request

`POST /purchases`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`merchant_id` | string | Required | Merchant ID
`location_id` | string | Required | Location ID
`user_id` | string | Required | User ID
`amount` | decimal | Required | The amount of the receipt
`purchased_at` | string | Required | The timestamp of the purchase, in ISO8601
`card_id` | string | Optional | The card the user used, if it is registered in Thanx
