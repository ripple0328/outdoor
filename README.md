[![Build](https://github.com/ripple0328/outdoor/actions/workflows/ci.yml/badge.svg)](https://github.com/ripple0328/outdoor/actions/workflows/ci.yml)

[![codecov](https://codecov.io/gh/ripple0328/outdoor/branch/main/graph/badge.svg?token=TINR4BBPHQ)](https://codecov.io/gh/ripple0328/outdoor)

# Outdoor

Outdoor is a application that allow creating and sharing outdoor activities.

## Getting Started

These instructions will guide you on how start the app locally for development

1. Install dependencies
```bash
brew bundle
asdf install
mix deps.get
```
2. Sart DB, Create and migrate your database

```bash
docker compose up
mix ecto.create
mix ecto.migrate
```

3. Start the app
To start the app locally for development, run the following command:

```bash
mix phx.server
```
try accessing it via http://localhost:4000

4. Run tests

```bash
mix test
```

5. format code

```bash
mix format
```
