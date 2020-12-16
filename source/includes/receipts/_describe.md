## Describe Receipts

```bash
curl https://api.thanxsandbox.com/receipts \
  $AUTH_HEADERS
```

> Response (200 OK)

```json
{
  "receipts": [
    {
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
        "small": "https://d1uv7brpxddy46.cloudfront.net/images/363/thumbnail/thumbnail-612c5e1821440637c0137be46d141e07.jpg?1604507010",
        "large": "https://d1uv7brpxddy46.cloudfront.net/images/363/medium/medium-612c5e1821440637c0137be46d141e07.jpg?1604507010",
        "default": "https://d1uv7brpxddy46.cloudfront.net/images/363/mobile/mobile-612c5e1821440637c0137be46d141e07.jpg?1604507010"
      }
    }
  ]
}
```

This endpoint describes the receipts in Thanx.

### HTTP Request

`GET /receipts`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`user_id` | string | Optional | User ID. Note: the bearer token will be used to determine which user's receipts are being requested when the request is made by a logged in user.
`merchant_id` | string | Optional | Merchant ID

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
`image` | hash | The uploaded receipt image information
`image.small` | string | The url for the small version of this image
`image.large` | string | The url for the large version of this image
`image.default` | string | The url for the version of the image usually used by Thanx
