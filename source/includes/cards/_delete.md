## Delete Card

```bash
curl https://api.thanxsandbox.com/cards/92b7b0dac4 \
  -X DELETE \
  $AUTH_HEADERS
```

> Response (204 NO_CONTENT)

```json
{}
```

This endpoint archives a registered card. The card is unenrolled from Visa/Mastercard/Amex.

### HTTP Request

`DELETE /cards/:id`
