## Describe Tags

```bash
curl https://api-v3.thanxsandbox.com/tags \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

```json
{
  "tags": [
    {
      "id": "92b7b0dac4",
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

### Response

Field | Type | Description
----- | ---- | -----------
`id` | string | Tag ID
`key` | string | Tag key
`values` | array(string) | Array of attribute tags
