## Describe Loyalty

```bash
curl https://api-v3.thanxsandbox.com/loyalty \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

```json
{
  "loyalty": [
    {
      "merchant_id": "9a1f0772c9ac",
      "progress": 50,
      "earn_text": "Spend $50 more",
      "redeem_text": "$10 off your next purchase",
      "fine_print": "Example fine print"
    }
  ]
}
```

This endpoint describes the user's current loyalty status

### HTTP Request

`GET /loyalty`

### Response

Field | Type | Description
----- | ---- | -----------
`merchant_id` | string | Merchant ID
`progress` | integer | Current loyalty progress (0-100)
`earn_text` | string | Description of what the user needs to do in order to earn the loyalty reward
`redeem_text` | string | Description of what the user will receive as their next loyalty reward
`fine_print` | string | Loyalty program fine print
