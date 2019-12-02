## Thanx-hosted SSO Form

![SSO with Thanx-hosted Form](images/sso/thanx-hosted-form.png)

1. User navigates to the merchant website and clicks an authentication button.
2. The merchant website redirects to Thanx Auth, as described in the
`GET /oauth/authorize` endpoint described below.
3. User enters their email address in the Thanx-hosted form.
4. If the email address is new to Thanx, the user is prompted to input their
first and last name to create an account, after which an authorization code is
returned to the `redirect_uri` (skip to step 6). If the email address already
exists in Thanx, Thanx Auth sends an auth email to the specified email.
5. The user clicks the auth email link which redirects to the merchant website
at the specified `redirect_uri` with an authorization code in the params.
6. Merchant website exchanges the authorization code for an access token via
the POST /oauth/token endpoint described below. User is now authenticated with
the Thanx system through the returned access token.

##  Self-hosted SSO Form

![SSO with Self-hosted Form - New User](images/sso/self-hosted-form-new.png)
![SSO with Self-hosted Form - Existing User](images/sso/self-hosted-form-existing.png)

1. User navigates to the merchant website and clicks an authentication button.
2. The merchant website prompts the user to input an email address
3. The merchant website makes a request to the `POST /oauth/authorize` endpoint
described below. *(Continue to #4 or #5)*
4. If no account exists for the specified email address, a 401 error is thrown.
The merchant website should then reprompt the user to input a first and last
name and resend the request to `POST /oauth/authorize` with the `first_name`
and `last_name` parameters. Upon successful creation of the user, a 201 HTTP
response is returned with an authorization code in the response body.
*(Continue to #6)*
5. If an account exists for the specified email address, an auth email is sent
to specified email. The user clicks the auth email link which redirects to the
merchant website at the specified `redirect_uri` with an authorization code in
the params.
6. Merchant website exchanges the authorization code for an access token via
the `POST /oauth/token` endpoint described below. User is now authenticated
with the Thanx system through the returned access token.