## Describe Tiers Configuration

```bash
curl https://api.thanxsandbox.com/tier_configurations \
  $STANDARD_HEADERS
```

> Response (200 OK)

```json
{
  "tier_configurations": [
    {
      "merchant_id": "weoru",
      "bronze_tier": {
        "id": "wyreo23",
        "name": "Bronze",
        "description": "- $10 off purchase of $25+ - complimentary birthday dessert - special event invitations",
        "color": "#ba7556",
        "spend_threshold": 0,
        "progress_paddle_image": {
          "small": "https://d1uv7brpxddy46.cloudfront.net/images/401/two_x/two_x-792ff91da8f50f9b5bfed570cef94295.png?1607038403",
          "default": "https://d1uv7brpxddy46.cloudfront.net/images/401/three_x/three_x-792ff91da8f50f9b5bfed570cef94295.png?1607038403",
          "large": "https://d1uv7brpxddy46.cloudfront.net/images/401/three_x/three_x-792ff91da8f50f9b5bfed570cef94295.png?1607038403"
        },
        "background_image": {
          "small": "https://d1uv7brpxddy46.cloudfront.net/images/400/two_x/two_x-463afd8be775b5ac6909bbaabf692353.jpg?1607038403",
          "default": "https://d1uv7brpxddy46.cloudfront.net/images/400/three_x/three_x-463afd8be775b5ac6909bbaabf692353.jpg?1607038403",
          "large": "https://d1uv7brpxddy46.cloudfront.net/images/400/three_x/three_x-463afd8be775b5ac6909bbaabf692353.jpg?1607038403"
        },
        "icon_image": {
          "small": "https://d1uv7brpxddy46.cloudfront.net/images/397/two_x/two_x-73db1207a1143a6f68374b119f826aa9.png?1607038181",
          "default": "https://d1uv7brpxddy46.cloudfront.net/images/397/three_x/three_x-73db1207a1143a6f68374b119f826aa9.png?1607038181",
          "large": "https://d1uv7brpxddy46.cloudfront.net/images/397/three_x/three_x-73db1207a1143a6f68374b119f826aa9.png?1607038181"
        }
      },
      "silver_tier": {
        "id": "fh457",
        "name": "Silver",
        "description": "Everything in Bronze, plus: - early reservations to community dinners when you reach Silver Tier",
        "color": "#bdbec0",
        "spend_threshold": 1500,
        "progress_paddle_image": {
          "small": "https://d1uv7brpxddy46.cloudfront.net/images/403/two_x/two_x-432dd66aa8b2f7aededebc434fa36232.png?1607038424",
          "default": "https://d1uv7brpxddy46.cloudfront.net/images/403/three_x/three_x-432dd66aa8b2f7aededebc434fa36232.png?1607038424",
          "large": "https://d1uv7brpxddy46.cloudfront.net/images/403/three_x/three_x-432dd66aa8b2f7aededebc434fa36232.png?1607038424"
        },
        "background_image": {
          "small": "https://d1uv7brpxddy46.cloudfront.net/images/402/two_x/two_x-1fbd60df2de3891d3f41d915bd2afef4.jpg?1607038423",
          "default": "https://d1uv7brpxddy46.cloudfront.net/images/402/three_x/three_x-1fbd60df2de3891d3f41d915bd2afef4.jpg?1607038423",
          "large": "https://d1uv7brpxddy46.cloudfront.net/images/402/three_x/three_x-1fbd60df2de3891d3f41d915bd2afef4.jpg?1607038423"
        },
        "icon_image": {
          "small": "https://d1uv7brpxddy46.cloudfront.net/images/398/two_x/two_x-f7a86c1434d71199a717d2b0caa256ac.png?1607038197",
          "default": "https://d1uv7brpxddy46.cloudfront.net/images/398/three_x/three_x-f7a86c1434d71199a717d2b0caa256ac.png?1607038197",
          "large": "https://d1uv7brpxddy46.cloudfront.net/images/398/three_x/three_x-f7a86c1434d71199a717d2b0caa256ac.png?1607038197"
        }
      },
      "gold_tier": {
        "id": "ert235",
        "name": "Gold",
        "description": "Everything in Silver, plus: - complimentary seasonal pizza per year when you reach Gold Tier",
        "color": "#c8b55e",
        "spend_threshold": 3000,
        "progress_paddle_image": {
          "small": "https://d1uv7brpxddy46.cloudfront.net/images/405/two_x/two_x-33c3dc14517c5d08b2c0869ef52c652b.png?1607038443",
          "default": "https://d1uv7brpxddy46.cloudfront.net/images/405/three_x/three_x-33c3dc14517c5d08b2c0869ef52c652b.png?1607038443",
          "large": "https://d1uv7brpxddy46.cloudfront.net/images/405/three_x/three_x-33c3dc14517c5d08b2c0869ef52c652b.png?1607038443"
        },
        "background_image": {
          "small": "https://d1uv7brpxddy46.cloudfront.net/images/404/two_x/two_x-3fbfb464595f7e136cfccebf36f2b1d8.jpg?1607038443",
          "default": "https://d1uv7brpxddy46.cloudfront.net/images/404/three_x/three_x-3fbfb464595f7e136cfccebf36f2b1d8.jpg?1607038443",
          "large": "https://d1uv7brpxddy46.cloudfront.net/images/404/three_x/three_x-3fbfb464595f7e136cfccebf36f2b1d8.jpg?1607038443"
        },
        "icon_image": {
          "small": "https://d1uv7brpxddy46.cloudfront.net/images/399/two_x/two_x-a44437b769db59fb777c922088ec840d.png?1607038208",
          "default": "https://d1uv7brpxddy46.cloudfront.net/images/399/three_x/three_x-a44437b769db59fb777c922088ec840d.png?1607038208",
          "large": "https://d1uv7brpxddy46.cloudfront.net/images/399/three_x/three_x-a44437b769db59fb777c922088ec840d.png?1607038208"
        }
      },
      "progress_bar_image": {
        "small": "https://d1uv7brpxddy46.cloudfront.net/images/423/two_x/two_x-ecbb385cc1850f090c6305fcc427293b.png?1608147464",
        "default": "https://d1uv7brpxddy46.cloudfront.net/images/423/three_x/three_x-ecbb385cc1850f090c6305fcc427293b.png?1608147464",
        "large": "https://d1uv7brpxddy46.cloudfront.net/images/423/three_x/three_x-ecbb385cc1850f090c6305fcc427293b.png?1608147464"
      }
    }
  ]
}
```

This endpoint describes tier configurations for the merchants accessible via the
provided credentials. The gold tier may not be present if the merchant opts to have only 2 tiers.

### HTTP Request

`GET /tier_configurations`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`merchant_id` | string | Optional | Only return tier configuration for this merchant

### Response

Field | Type | Description
----- | ---- | -----------
`merchant_id` | string | The merchant ID
`bronze_tier` | hash | Describes the configuration for the bronze tier
`bronze_tier.id` | string | The identifer of the tier record
`bronze_tier.name` | string | The display name for the tier
`bronze_tier.description` | string | Describes the perks of the tier. Can return markdown.
`bronze_tier.color` | string | The hex color to use for this tier.
`bronze_tier.spend_threshold` | integer | How much the user needs to spend to be part of the tier.
`bronze_tier.progress_paddle_image` | hash | The image configured to render on the progress bar for tiers
`bronze_tier.progress_paddle_image.small` | string | The url for the small version of this image
`bronze_tier.progress_paddle_image.large` | string | The url for the large version of this image
`bronze_tier.progress_paddle_image.default` | string | The url for the version of the image usually used by Thanx
`bronze_tier.background_image` | hash | The image configured to render as the background for the tier
`bronze_tier.background_image.small` | string | The url for the small version of this image
`bronze_tier.background_image.large` | string | The url for the large version of this image
`bronze_tier.background_image.default` | string | The url for the version of the image usually used by Thanx
`bronze_tier.icon_image` | hash | The image configured to render as the icon for the tier
`bronze_tier.icon_image.small` | string | The url for the small version of this image
`bronze_tier.icon_image.large` | string | The url for the large version of this image
`bronze_tier.icon_image.default` | string | The url for the version of the image usually used by Thanx
`silver_tier` | hash | Describes the configuration for the silver tier
`silver_tier.id` | string | The identifer of the tier record
`silver_tier.name` | string | The display name for the tier
`silver_tier.description` | string | Describes the perks of the tier. Can return markdown.
`silver_tier.color` | string | The hex color to use for this tier.
`silver_tier.spend_threshold` | integer | How much the user needs to spend to be part of the tier.
`silver_tier.progress_paddle_image` | hash | The image configured to render on the progress bar for tiers
`silver_tier.progress_paddle_image.small` | string | The url for the small version of this image
`silver_tier.progress_paddle_image.large` | string | The url for the large version of this image
`silver_tier.progress_paddle_image.default` | string | The url for the version of the image usually used by Thanx
`silver_tier.background_image` | hash | The image configured to render as the background for the tier
`silver_tier.background_image.small` | string | The url for the small version of this image
`silver_tier.background_image.large` | string | The url for the large version of this image
`silver_tier.background_image.default` | string | The url for the version of the image usually used by Thanx
`silver_tier.icon_image` | hash | The image configured to render as the icon for the tier
`silver_tier.icon_image.small` | string | The url for the small version of this image
`silver_tier.icon_image.large` | string | The url for the large version of this image
`silver_tier.icon_image.default` | string | The url for the version of the image usually used by Thanx
`gold_tier` | hash | Describes the configuration for the gold tier
`gold_tier.id` | string | The identifer of the tier record
`gold_tier.name` | string | The display name for the tier
`gold_tier.description` | string | Describes the perks of the tier. Can return markdown.
`gold_tier.color` | string | The hex color to use for this tier.
`gold_tier.spend_threshold` | integer | How much the user needs to spend to be part of the tier.
`gold_tier.progress_paddle_image` | hash | The image configured to render on the progress bar for tiers
`gold_tier.progress_paddle_image.small` | string | The url for the small version of this image
`gold_tier.progress_paddle_image.large` | string | The url for the large version of this image
`gold_tier.progress_paddle_image.default` | string | The url for the version of the image usually used by Thanx
`gold_tier.background_image` | hash | The image configured to render as the background for the tier
`gold_tier.background_image.small` | string | The url for the small version of this image
`gold_tier.background_image.large` | string | The url for the large version of this image
`gold_tier.background_image.default` | string | The url for the version of the image usually used by Thanx
`gold_tier.icon_image` | hash | The image configured to render as the icon for the tier
`gold_tier.icon_image.small` | string | The url for the small version of this image
`gold_tier.icon_image.large` | string | The url for the large version of this image
`gold_tier.icon_image.default` | string | The url for the version of the image usually used by Thanx
`progress_bar_image` | hash | The image configured to render as the progress bar for tiers
`progress_bar_image.small` | string | The url for the small version of this image
`progress_bar_image.large` | string | The url for the large version of this image
`progress_bar_image.default` | string | The url for the version of the image usually used by Thanx
