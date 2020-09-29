## Create Receipt

```bash
curl https://api.thanxsandbox.com/receipts \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Accept-Version: v4.0" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd" \
  -d '{
    "receipt": {
      "merchant_id": "weoru",
      "amount": 13.45,
      "payment_type": "cash",
      "purchased_at": "2020-09-15T00:52:10.655+00:00",
      "image_path": "uploads/receipts/image_5051555_1534872299.jpeg",
      "user_comments": "credit card reader was not working",
      "card_id": null
    }
  }'
```

> Response (201 CREATED)

```json
{
  "receipt": {
    "id": "92b7b0dac4",
    "user_id": "weorufsdf",
    "merchant_id": "werouf",
    "state": "pending",
    "rejection_text": null,
    "amount": 13.45,
    "payment_type": "cash",
    "purchased_at": "2020-09-15T00:52:10.655+00:00",
    "user_comments": "credit card reader was not working",
    "card_id": null,
    "image": {
      
    }
  }
}
```

This endpoint submits a receipt for processing.

### HTTP Request

`POST /receipts`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`merchant_id` | string | Required | Merchant ID
`amount` | decimal | Required | The amount of the receipt
`payment_type` | enum | Required | (`card`, `cash`, `other`)
`purchased_at` | string | Required | The timestamp of the purchase, in ISO8601
`image_path` | string | Required | The path of the uploaded image
`user_comments` | string | Optional | Any user-entered notes
`card_id` | string | Optional | The card the user used, if it is registered in Thanx

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | The receipt ID
`merchant_id` | string | Merchant ID
`user_id` | string | User ID
`state` | enum | The processing state of the receipt (`pending`, `processing`, `applied`, `denied`)
`rejection_text` | string | If the receipt is denied, the reason provided
`amount` | decimal | The amount of the receipt
`payment_type` | enum | (`card`, `cash`, `other`)
`purchased_at` | string | The timestamp of the purchase, in ISO8601
`user_comments` | string | Any user-entered notes
`card_id` | string | The card the user used, if it is registered in Thanx
`image` | hash | The uploaded image information