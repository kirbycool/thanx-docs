## Get Signature

```bash
curl https://api.thanxsandbox.com/card_signature?card_type=amex \
  $AUTH_HEADERS
```

> Response (200 OK)

```json
{
  "card_signature": {
    "amex": {
      "public_key": "sfjwoiruweoirw20394jf09wr80294",
      "certificate": "woeurshfoiweurwerfsdf"
    }
  }
}
```

This endpoint provides a way to retrieve a signature for card encryption. The public key
and certificate returned can be used with the card encryption SDK.

### HTTP Request

`GET /card_signature`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`card_type` | string | Required | Card type (`visa`, `mastercard`, `amex`)

### Response

Field | Type | Description
----- | ---- | -----------
`visa` | hash | Signature information for Visa
`visa.public_key` | The public key to use for encryption.
`mastercard` | hash | Signature information for Mastercard
`mastercard.public_key` | The public key to use for encryption.
`mastercard.certificate` | The certificate to use for encryption.
`amex` | hash | Signature information for American Express
`amex.public_key` | The public key to use for encryption.
`amex.certificate` | The certificate to use for encryption.
