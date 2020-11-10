## Describe Referral Links

```bash
curl https://api.thanxsandbox.com/referral_links \
  $AUTH_HEADERS
```

> Response (200 OK)

```json
{
  "referral_links": [
    {
      "merchant_id": "9a1f0772c9ac",
      "link": "https://signup.thanx.com/pizza_bob/Jane-23uow234243"
    }
  ]
}
```

This endpoint returns a user's referral links, one for each merchant the credentials have access to.

### HTTP Request

`GET /referral_links`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`merchant_id` | string | Optional | Only return referral links for this merchant


### Response

Field | Type | Description
----- | ---- | -----------
`merchant_id` | string | Merchant ID
`link` | string | The URL a user can share with others
