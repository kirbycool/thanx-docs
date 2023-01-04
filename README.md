# Thanx API Docs

This repository powers the [Thanx API Docs](https://docs.thanx.com/). These docs
are powered by [Mintlify](https://mintlify.com/). See the
[Mintlify Docs](https://mintlify.com/docs/) for documentation.

## Development

Install dependencies (mainly [mintlify-cli](https://www.npmjs.com/package/mintlify))
```
yarn install
```

Start the mintlify dev server
```
yarn start
```

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

- Mintlify dev isn't running - Run `npx mintlify install` it'll re-install
  dependencies.
- Mintlify dev is updating really slowly - Run `npx mintlify clear` to clear the
  cache.

## Publishing Changes

Changes will be deployed to production automatically after pushing to the
default branch.

You can also preview changes using PRs, which generates a preview link of the
docs.
