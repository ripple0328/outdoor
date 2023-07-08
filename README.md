

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

### Deploying to fly.io

1. Install the fly.io CLI by running `brew install flyctl` on MacOS or `curl -L https://fly.io/install.sh | sh` on Linux.
2. Login to fly.io by running `flyctl auth login`.
3. Create a new app on fly.io by running `flyctl apps create`.
4. Deploy the app by running `flyctl deploy`.
5. Check the status of the deployment by running `flyctl status`.

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