## Patterns

This section calls out some patterns in this API.

- Every ID returned by the API is an alphanumeric, lowercase string.
- Every endpoint's payload contains a top-level key (aside from SSO).
- A bearer token is required for a user to access their own resources. If an endpoint
provides filtering by `user_id` and the bearer token is provided, the `user_id` filter is ignored.
