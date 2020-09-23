## Delete Card

```bash
curl https://api.thanxsandbox.com/cards/92b7b0dac4 \
  -X DELETE \
  -H "Accept-Version: v4.0" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (204 NO_CONTENT)

```json
{}
```

This endpoint archives a registered card. The card is unenrolled from Visa/Mastercard/Amex.

### HTTP Request

`DELETE /cards/:id`
