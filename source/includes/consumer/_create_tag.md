## Create Tag

```bash
curl https://api-v3.thanxsandbox.com/tags \
  -X POST \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd" \
  -d '{
    "tag": {
      "key": "allergens",
      "values": [
        "gluten",
        "soy",
        "dairy"
      ]
    }
  }'
```

> Response (200 OK)

```json
{
  "tag": {
    "id": "92b7b0dac4",
    "key": "allergens",
    "values": [
      "gluten",
      "soy",
      "dairy"
    ]
  }
}
```

This endpoint creates a new attribute tag for the given user.

### HTTP Request

`POST /tags`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`key` | string | Required | Tag key
`values` | array(string) | Required | Array of attributes tags

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Tag ID
`key` | string | Tag key
`values` | array(string) | Array of attribute tags
