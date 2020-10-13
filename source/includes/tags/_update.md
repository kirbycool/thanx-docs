## Update Tags

```bash
curl https://api.thanxsandbox.com/tags \
  -X PUT \
  $AUTH_HEADERS
  -d '{
    "tag": {
      "key": "allergens",
      "merchant_id": "weroifs",
      "values": [
        "gluten",
        "soy",
        "dairy",
        "honey"
      ]
    }
  }'
```

> Response (200 OK)

```json
{
  "tag": {
    "id": "werwerr",
    "user_id": "werofsdf",
    "merchant_id": "weroif",
    "key": "allergens",
    "values": [
      "gluten",
      "soy",
      "dairy",
      "honey"
    ]
  }
}
```

This endpoint updates an attribute tag for the given user. The tag associated with
the key in the request will be created or updated with the values passed in.

### HTTP Request

`PUT /tags`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`merchant_id` | string | Required | Merchant ID
`key` | string | Required | Tag key
`values` | array(string) | Required | Array of attributes tags

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Tag ID
`user_id` | string | User ID
`merchant_id` | string | Merchant ID
`key` | string | Tag key
`values` | array(string) | Array of attribute tags
