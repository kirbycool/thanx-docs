## Describe Presigned URL

```bash
curl https://api.thanxsandbox.com/upload_url?upload_type=receipt \
  -H "Accept-Version: v4.0" \
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
```

> Response (200 OK)

```json
{
  "upload_url": {
    "url": "https://thanx.s3.amazonaws.com/uploads/receipts/image_5051555_1534872299.jpeg?AWS-PARAMS",
    "file_path": "uploads/receipts/image_5051555_1534872299.jpeg"
  }
}
```

This endpoint provides a presigned url where an image or file can be uploaded.
The `file_path` can be used as the input to the `POST /receipts` endpoint.

### HTTP Request

`GET /upload_url`

### Request

Field | Type | Required | Description
----- | ---- | -------- | -----------
upload_type | enum | Required | The type of upload; currently only option is (`receipt`)

### Response

Field | Type | Description
----- | ---- | -----------
`url` | string | Url to upload the image to
`file_path` | string | Path where the image will be saved
