## Headers

All Ordering / Loyalty integration API endpoints described below must include
the following headers.

Header | Type | Required | Description
------ | ---- | -------- | -----------
`Authorization` | string | Required | All Thanx Loyalty API endpoints are protected and must be authorized via end user access tokens. These access tokens can be retrieved through an integration with Thanx SSO. The format of the header should be: `Bearer access_token`
`Content-Type` | string | Required | The only accepted value is `application/json`
`Accept` | string | Required | The Accept header specifies which version of the Thanx API that should be used. The current version is `v1` for the vendor `thanx`. This header is required for every request. The value should be `application/vnd.thanx-v1+json`. Thanx will notify you when a new API version is available.
`Merchant-Key` | string | Required | The Merchant key header identifies the merchant in Thanx. The value for this key will be provided to you by Thanx and is the same in production and sandbox.
