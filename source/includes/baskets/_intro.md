# Basket Discounts

> API Endpoint

```
https://api.thanxsandbox.com/baskets
```

This section describes API endpoints that enable an online ordering platform to
integrate with Thanx. This API provides a way to apply discounts to a user's basket.
An online ordering platform with a Thanx merchant as a customer can use this API
to allow Thanx users to use their discounts when making purchases online.
The `GET /rewards` endpoint provides a user's available rewards. The `POST /baskets`
endpoint computes a discount and marks rewards as used in the Thanx system.
Integrators are expected to apply the discount to the basket.
