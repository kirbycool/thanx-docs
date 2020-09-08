## Errors

Thanx uses standard HTTP error codes to communicate the success / failure of a request.

> Response (401 Unauthorized)

```json
{
  "error": {
    "code":    "AUTHENTICATION_GENERIC",
    "message": "There was an error authenticating you."
  }
}
```

> Response (404 NOT FOUND)

```json
{
  "error": {
    "code": "RESOURCE_NOT_FOUND",
    "message": "The resource you requested was not found."
  }
}
```

> Response (400 Bad Request)

```json
{
  "error": {
    "code": "USER_EMAIL_INVALID",
    "message": "The email entered is invalid."
  }
}
```


An HTTP 400 Bad Request will always be accompanied by an object containing
two properties: code (see below) and message. The code will remain static though
the associated message may change at any time. Thanx can expand this list at any time.

Code | Sample Message
---- | -------
GENERIC_ERROR | "Something went wrong"
RESOURCE_NOT_FOUND | "The resource you requested was not found."
AUTHENTICATION_GENERIC | "There was an error authenticating you."
USER_EMAIL_INVALID | "The email entered is invalid."
USER_PHONE_INVALID | "The phone entered is invalid."
USER_NAME_REQUIRED | "First and last name are required fields."
REWARD_ALREADY_USED | "This reward has already been used."
REWARD_EXPIRED | "This reward is no longer valid."
REWARD_INAPPLICABLE | "Required item not present."
REWARD_FRAUDULENT | "You appear to have already used one of these rewards."
CARD_GENERIC | "Unable to register this card due to an issue at Visa."
CARD_INVALID | "This type of card is not accepted."
