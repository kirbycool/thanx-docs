# Receipts

> API Endpoint

Sandbox:
```
https://api.thanxsandbox.com/receipts
```

This section describes endpoints that enable a third party to submit and view
receipts for a user. In order to submit a receipt to Thanx, you must first make a request
to the API to get a presigned upload URL. Once you have uploaded the image to this URL,
make a `POST /receipts` request to create the receipt in Thanx.

<aside class="notice">
  Note that these APIs are in <b>private beta</b> and are subject to change.
</aside>
