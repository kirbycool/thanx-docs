## Update Purchase Tags

```bash
curl https://api.thanxsandbox.com/purchases/wourhfiwer/tags \
  -X PUT \
  $STANDARD_HEADERS
  -d '{
    "tag": {
      "key": "server_satisfaction",
      "values": [
        "10"
      ]
    }
  }'
```

> Response (200 OK)

```json
{
  "tag": {
    "id": "werwerr",
    "purchase_id": "wourhfiwer",
    "key": "server_satisfaction",
    "values": [
      "10"
    ]
  }
}
```

This endpoint updates an attribute tag for the given purchase. The tag associated with
the key in the request will be created or updated with the values passed in.

### HTTP Request

`PUT /purchases/:purchase_id/tags`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`key` | string | Required | Tag key
`values` | array(string) | Required | Array of attributes tags

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Tag ID
`purchase_id` | string | Purchase ID
`key` | string | Tag key
`values` | array(string) | Array of attribute tags
