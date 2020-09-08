## Send user to authentication flow

> Example Entrypoint

```bash
https://auth.thanxsandbox.com/oauth/authorize?\
  response_type=code&\
  client_id=abcdefghijklmnop0123456789&\
  redirect_uri=https%3A%2F%2Fwww.yourdomain.com%2Foauth%2Fcallback
```

This is the initial entrance into the authentication flow, rather than an API
endpoint. This is where your 'Login with Thanx' button should link to. Be sure
to escape your redirect uri! You will receive a callback at the redirect_url
specified with the session code in the parameters after authentication is
completed.

### HTTP Request

`GET /oauth/authorize`

### Request

Parameter | Type | Required | Description
--------- | ---- | -------- | -----------
`response_type` | string | Required | This should be `code`
`client_id` | string | Required | This is your client ID
`redirect_uri` | string | Required | A redirect_uri (escaped!) where Thanx will redirect to once the user has authenticated. This must be part of a whitelist in Thanx.
