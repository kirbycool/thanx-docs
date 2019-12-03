## Custom Ordering UI

> Example Olo API requests:

```
# Exchange Thanx Token for Olo Token:
POST /users/getorcreate
{
  provider:       'thanx', # name of loyalty provider
  providertoken:  '...',   # thanx access token
  provideruserid: '...'    # thanx user id
}

# Fetch Thanx Rewards:
GET /baskets/{uid}/loyaltyrewards/qualifying?authtoken={olo token}&...
```

For merchants looking to build a custom ordering UI, there is no additional
integration work required outside of the [SSO integration](#sso), since
ordering providers like Olo and Brandibble have already built integrations with
Thanx as documented in below.

![Custom Ordering UI](images/ordering-loyalty/custom-ui.png)

After the custom ordering UI authenticates the Thanx User, the Thanx token is
passed to the ordering provider. The ordering provider in turn uses that access
token to fetch qualifying rewards from the Thanx APIs.
