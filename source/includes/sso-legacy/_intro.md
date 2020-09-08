# [LEGACY] SSO

> API Endpoint

```
https://auth.thanxsandbox.com
```

This section describes the process of authenticating with Thanx via Thanx
SSO. Thanx SSO authenticates the user via a password-less flow using email
authentication, rather than a password. This reduces the friction of a user
having to manage yet another password as well as reduces the friction of
transitioning an existing user-base to Thanx.

Thanx follows the standard OAuth 2.0 spec, using the Authorization Code grant
type. Refer to the
[OAuth 2.0 Authorization Framework RFC: Section 4.1](https://tools.ietf.org/html/rfc6749#section-4.1)
for additional details.

There are two primary options for implementing SSO with Thanx:

* Thanx-hosted SSO Form
* Self-hosted SSO Form
