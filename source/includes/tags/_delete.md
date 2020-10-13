## Delete Tag

```bash
curl https://api.thanxsandbox.com/tags/92b7b0dac4 \
  -X DELETE \
  $AUTH_HEADERS
```

> Response (200 OK)

```json
{}
```

This endpoint deletes an attribute tag with the given ID.

### HTTP Request

`DELETE /tags/:id`
