
# Outdoor


## Getting Started

These instructions will guide you on how to deploy the app using Docker and how to run it locally for development.

### Deploying with Docker

1. Build the Docker image:

```bash
docker build -t outdoor-app .
```

2. Run the Docker container:

```bash
docker run -p 4000:4000 outdoor-app
```

### Running Database Migrations

Run the following command to execute database migrations:

```bash
mix ecto.migrate
```

### Running Locally for Development

To start the app locally for development, run the following command:

```bash
mix phx.server
```

The app will be available at `http://localhost:4000`.

