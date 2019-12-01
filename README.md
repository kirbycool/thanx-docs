# Thanx Docs

Contains source for public Thanx platform documentation.

## Usage

Install spectacle:

```
npm install -g spectacle-docs
```

Modify `swagger/*.json` using [Swagger Editor](https://editor.swagger.io/). Once
complete, File > Convert and save as JSON > Update swagger/*.json.

Regenerate API docs:

```
./spectacle/generate.sh
```
