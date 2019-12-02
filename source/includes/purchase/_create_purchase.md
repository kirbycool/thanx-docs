## Create Purchase

```bash
curl https://transaction.thanxsandbox.com/purchases \
  -X POST
  -H "Authorization: Bearer 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd"
  -d "{
    "purchase": {
      "user_id": "fe7bd47d6284",
      "amount": 15.25,
      "purchased_at": "2020-01-01T20:00:00Z",
      "uid": "29e82ad6-e87e-4cfd-afa1-4944a462d1c1",
      "location_id": "1796409a-ea4d-4ed2-941d-321e99ac3b3c",
      "items": [
        {
          "uid": "bb102d6d-ef3b-4b75-86a3-c2e94297b61f",
          "name": "Spaghetti and Meatballs",
          "quantity": 2
        },
        {
          "uid": "d3ee3d61-80be-4b12-ac2c-9e8523b32d06",
          "name": "Garlic Bread",
          "quantity": 1
        },
        {
          "uid": "aff795ec-6652-4898-82e8-5beb40abcd55",
          "name": "Coke",
          "quantity": 1
        },
        {
          "uid": "480a2734-a5c0-4608-96b7-76ad4b2b3a00",
          "name": "Sprite",
          "quantity": 1
        }
      ]
    }
  }"
```

> Response (200 OK)

```json
""
```

This endpoint allows creation of a purchase for a specified user.

### HTTP Request

`POST /purchases`

### Parameters

**`purchase` parameter**:

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`user_id` | string | Required | Thanx User ID
`amount` | decimal | Required | Purchase Amount
`purchased_at` | string | Required | Purchase Timestamp in ISO8601-format
`uid` | string | Required | Purchase Unique ID
`location_id` | string | Required | Purchase's Location ID
`items` | array | Optional | Purchase's Items

**`items` parameter**:

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`id` | string | Required | Item Unique ID
`name` | string | Required | Item Name
`quantity` | integer | Required | Item Quantity
