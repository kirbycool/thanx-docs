# Thanx Docs

Contains source for public Thanx platform documentation.

## Slate

This project is powered by [Slate](https://github.com/slatedocs/slate).

Installation:

```
# either run this to run locally
bundle install
bundle exec middleman server

# OR run this to run with docker
docker-compose up
```

Development:

```
source/index.html.md # base API document
source/includes/*.md # API sections
```

* [Slate Markdown Syntax](https://github.com/slatedocs/slate/wiki/Markdown-Syntax)
* To embed content into a markdown file:
  * Append `.erb` to the name of the file you want to embed within
    (e.g., `_get.md` &rarr; `_get.md.erb`)
  * Add an `.erb` file for the desired reusable content to the `shared` folder
    * Conventions:
      * Attribute tables: `shared/model_name/_attributes.md.erb`
      * Singular object payloads: `shared/model_name/_object.md.erb`
        or `shared/model_name/_object_variant.md.erb`
      * Collection payloads: `shared/model_name/_collection.md.erb`
  * Embed the partial: `<%= partial 'shared/model_name/attributes' %>`

Deployment:

Run `./build.sh` to compile the markdown files in `/source` into a deployable
static website in the `/docs` directory.

* [Deploying Slate](https://github.com/slatedocs/slate/wiki/Deploying-Slate)

## Contributing

Slate documentation should follow the following format:

    ## API Action

    ```bash
    curl ...
    ```

    > Response (200)

    ```json
    {
      ...
    }
    ```

    > Response (400)

    ```json
    {
      ...
    }
    ```

    Description of the API action

    ### HTTP Request

    `POST /...`

    ### Request

    Parameter | Type | Required | Description
    --------- | ---- | -------- | -----------
    `example1` | string | Required | Example required parameter
    `example2` | string | Optional | Example optional parameter

    ### Response

    Field | Type | Description
    ----- | ---- | -----------
    `field1` | string | Example response field


Example values:

Key | Value
--- | -----
id alphanumeric | fgr2349gh
identifier alphanumeric | 11650a5cad69
email | john.smith@example.com
first_name | John
last_name | Smith
website | https://www.example.com
client_id | f4bf04a6fc27b5fa926a7318933b76440642c25cde037d8e867b3d18d771ad86
client_secret | 83c08861ce6302e0e73d28cea30aa3f8f3ea98446e133fde60a86231f50f5c82
authorization code | c13a4ba07f27cfc69a03a5c9cda630205e5f2833331fb761d38eef10c091f371
access_token | 945148251b603ae34561d90acfe4050e67494d6d1e65d4d3d52798407f03c0bd
refresh_token | c74334301a7c74d21b714c905fd3047177dab56de6a86899e6f6b7f71bab7d55
unix timestamp | 1577836800
datestamp | 2020-01-01
birthdate | 1980-12-15
merchant_key | cb71e3

For other structural conventions, here are a few examples:

* [Coinbase API Reference](https://developers.coinbase.com/api/v2)
* [Sony Ci API Reference](https://developers.cimediacloud.com/)
