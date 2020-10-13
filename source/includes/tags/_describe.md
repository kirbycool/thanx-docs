## Describe Tags

```bash
curl https://api.thanxsandbox.com/tags \
  $AUTH_HEADERS
```

> Response (200 OK)

```json
{
  "tags": [
    {
      "id": "92b7b0dac4",
      "user_id": "werofsdf",
      "merchant_id": "weroif",
      "key": "allergens",
      "values": [
        "gluten",
        "soy",
        "dairy"
      ]
    }
  ]
}
```

This endpoint describes all attribute tags for the given user.

### HTTP Request

`GET /tags`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`merchant_id` | string | Optional | Only return tags for this merchant

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Tag ID
`user_id` | string | User ID
`merchant_id` | string | Merchant ID
`key` | string | Tag key
`values` | array(string) | Array of attribute tags
