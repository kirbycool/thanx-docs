# Thanx API Docs

This repository powers the [Thanx API Docs](https://docs.thanx.com/). These docs
are powered by [Mintlify](https://mintlify.com/). See the
[Mintlify Docs](https://mintlify.com/docs/) for documentation.

## Development

Install the [Mintlify CLI](https://www.npmjs.com/package/mintlify) to preview
the documentation changes locally. To install, use the following command

    npm i mintlify -g

Run the following command at the root of your documentation (where mint.json is)

    mintlify dev

### Naming & Style

API endpoint file names should be in the format `{action}-{resource}.mdx` and
listed in CRUD order.

| Action | API | File |
| ------ | --- | ---- |
| `create` | `POST /resources` | `create-resource.mdx` |
| `read` | `GET /resources` | `get-resources.mdx` |
| `read` | `GET /resources/{id}` | `get-resource.mdx` |
| `update` | `PATCH /resources/{id}` | `update-resource.mdx` |
| `delete` | `DELETE /resources/{id}` | `delete-resource.mdx` |

### Troubleshooting

- Mintlify dev isn't running - Run `mintlify install` it'll re-install
  dependencies.
- Mintlify dev is updating really slowly - Run `mintlify clear` to clear the
  cache.

## Publishing Changes

Changes will be deployed to production automatically after pushing to the
default branch.

You can also preview changes using PRs, which generates a preview link of the
docs.
