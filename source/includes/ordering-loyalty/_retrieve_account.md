## Retrieve Account

```bash
curl https://loyalty.thanxsandbox.com/api/account?location_uid=8bda69 \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd" \
  -H "Content-Type: application/json" \
  -H "Accept: application/vnd.thanx-v1+json" \
  -H "Merchant-Key: cb71e3"
```

> Response (200 OK)

```json
{
  "id": "wer23gtTT",
  "email": "john.smith@example.com.com",
  "rewards": [
    {
      "id": "gheTfR",
      "value": 10,
      "minimum": 20,
      "maximum": 20,
      "label": "A free hamburger",
      "state": "redeemable",
      "type": "amount",
      "products": [
        "234234-23423423",
        "3458-345345"
      ],
      "fine_print": "Cannot be applied to alcohol",
    }
  ],
  "progress": {
    "percentage": 20,
    "towards": "$5 off next purchase"
  }
}
```

> Response (401 Unauthorized)

```json
{
  "code": 401,
  "message": "There was an error authenticating you."
}
```

This endpoint allows the retrieval of a user account information, including the
user's rewards. By default, only rewards available to use at the current time
are returned.

### HTTP Request

`GET /account`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`location_uid` | string | Optional | The location identifier; this is what your system uses to identify a location. Providing this information allows Thanx to return rewards that can be used at this location.

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | The identifier for the user's account
`email` | string | The user's email
`rewards` | array(hash) | The user's available rewards for the merchant specified in the header. This array can be empty.
`rewards.id` | string | The Reward Identifier
`value` | number | The value of the discount, present for 'amount' and 'percent' types
`minimum` | number | The minimum spend for this reward, if applicable
`maximum` | number | The maximum discount possible for this reward, if applicable
`label` | string | The reward description
`state` | enum | The state of the reward (`redeemable`, `unredeemable`)
`type` | enum | The type of reward (`amount`, `percent`, `item`)
`products` | array(string) | POS Identifiers for items this discount applies to, if applicable
`fine_print` | string | Any fine print for the reward.
`progress` | hash | A user's progress toward their next loyalty reward
`progress.percentage` | integer | Percent progress toward the next loyalty reward
`progress.towards` | string | Description of progress toward the next loyalty reward
