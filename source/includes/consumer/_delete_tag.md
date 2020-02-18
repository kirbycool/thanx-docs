## Delete Tag

```bash
curl https://api-v3.thanxsandbox.com/tags/92b7b0dac4 \
  -X DELETE \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

```json
{}
```

This endpoint deletes an attribute tag for the given user.

### HTTP Request

`DELETE /tags/:id`
