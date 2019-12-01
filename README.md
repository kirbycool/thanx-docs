# Thanx Docs

Contains source for public Thanx platform documentation.

## Spectacle

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

## Slate

Slate API docs are currently in development.

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
