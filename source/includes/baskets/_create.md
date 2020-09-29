## Create & Update Basket

```bash
curl https://api.thanxsandbox.com/baskets \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Accept-Version: v4.0" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd" \
  -d '{
    "basket": {
      "uid": "gwer-werwr-2134-rty",
      "merchant_id": "werwerwt",
      "state": "billed",
      "order_timestamp": "2019-05-08T18:02:05Z",
      "location_uid": "LG-567fhwer",
      "rewards": [
        "fheTRR"
      ],
      "payments": [
        {
          "issuer": "visa",
          "last4": "1234",
          "amount": 10.45,
          "authorized_at": "2019-05-07T18:02:05Z"
        }
      ],
      "items": [
        {
          "id": "ng-23492",
          "name": "Cheese Pizza",
          "price": 9.95,
          "categories": [
            "pizza",
            "vegetarian"
          ]
        }
      ],
      "subtotal": 23.45
    }
  }'
```

> Response (200 OK)

```json
{
  "basket": {
    "uid": "fhwerwe-23663-ryryre",
    "user_id": "weourf",
    "merchant_id": "werwerwt",
    "state": "checkout",
    "discount": 10.25
  }
}
```

This endpoint is used to create a basket in Thanx (and update it) and
receive reward redemption information in return. A basket can be in one of the
following states:

* `checkout`
  * refers to any point before the order is placed. Any time the user updates
    their basket or rewards, Thanx expects to receive a request to check if
    discount information should be updated.
* `placed`
  * refers to when an order has been submitted to the system and a user can no
    longer modify their order through the website.
* `billed`
  * refers to when the order has been trasmitted to the POS and the user's
    credit card has been charged.
* `completed`
  * refers to when the order has been made and transferred to the customer.
* `voided`
  * refers to an order that got canceled after entering the placed state and
    before entering the billed state.
* `refunded`
  * refers to an order being refunded / canceled any time after it enters the
    billed state.

<aside class="notice">
  Thanx will mark a reward as used and grant loyalty reward progress when the
  reward enters the `billed` state.
</aside>

### HTTP Request

`POST /baskets`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`uid` | string | Required | Basket unique ID
`state` | enum | Required | Basket state (`checkout`, `placed`, `billed`, `completed`, `voided`, `refunded`)
`merchant_id` | string | Required | The merchant ID
`order_timestamp` | string | Optional | When the order is wanted in (ISO 8601 format). If this timestamp is not provided, Thanx assumes the order is wanted ASAP. Providing this timestamp allows Thanx to determine if a reward will be valid in the future (for example, for a weekend only promotion where the user orders in advance)
`location_uid` | string | Optional | The location identifier; this is what your system uses to identify a location. Providing this information allows Thanx to apply location restricted rewards.
`rewards` | array[string] | Required | Reward IDs to apply to the basket. If you are integrating with reward codes, provide the reward code here instead.
`payments` | array[hash] | Required | Array of payment methods
`payments.issuer` | enum | Required | Issuer of the payment method, (`visa`, `mastercard`, `amex`, `discover`)
`payments.last4` | string | Required | Last 4 digits of the payment method
`payments.amount` | decimal | Required | Amount used for the payment method
`payments.authorized_at` | string | Required | The timestamp of when the authorization was submitted to the issuer, in ISO8601 format
`items` | array(hash) | Required | Array of items
`items.uid` | string | Required | Item ID in your system / POS
`items.name` | string | Required | Item name
`items.price` | decimal | Required | Item amount
`items.categories` | array(string) | Optional | categories that describe this item
`subtotal` | decimal | Required | The subtotal of the basket in USD (before taxes & tips)

### Response

Field | Type | Description
----- | ---- | -----------
`uid` | string | Response ID
`state` | enum | Basket state (`checkout`, `placed`, `billed`, `completed`, `voided`, `refunded`)
`discount` | decimal | Discount to apply
`merchant_id` | string | Merchant ID
`user_id` | string | User ID