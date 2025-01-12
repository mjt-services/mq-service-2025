# [MJT Services](https://github.com/mjt-services) Message Queue Service 2025

See the scripts directory for building and running

## Documentation

For detailed documentation, please visit the [project documentation](https://mjt-services.github.io/mq-service-2025/).

## Environment Configuration

The `.env` file is used to configure environment variables for the project. You should create a `.env` file in the root directory of the project. You can use the following example as a template:

```properties
IMAGE_TAG=nats:latest
NAME=mq
NETWORK_NAME=mq_network
CF_TUNNEL=<your_cloudflare_tunnel_token_here>
NATS_AUTH_TOKEN=<your_nats_auth_token_here>
```

### Environment Variables

- `IMAGE_TAG`: The Docker image tag to use for the NATS server.
- `NAME`: The name of the Docker container.
- `NETWORK_NAME`: The name of the Docker network.
- `CF_TUNNEL`: The Cloudflare tunnel token.
- `NATS_AUTH_TOKEN`: The authentication token for the NATS server.

Make sure to replace `your_nats_auth_token_here` with your actual NATS authentication token.
