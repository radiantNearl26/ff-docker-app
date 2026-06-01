# First attempt at containerzation with Docker

Running fastfetch with given configuation on a basic alpine distribution with the necessary dependencies installed.

## Steps to start the container

1. Build the image

```bash
docker build -t ff-alpine:abc .
```

2. Run the container

```bash
docker run --rm ff-alpine:abc
```

3. Bash into the container (optional)

```bash
docker run -it --rm ff-alpine:abc bash
```

## Self Notes

- The Dockerfile is based on the alpine image, and hence it is very lightweight.
- Avoid using the latest tag for the image name (good practive).
- Bash is installed seperately as it is not included in the alpine image by default. Alpine uses the default 'sh' shell.
- The configuration file for fastfetch is copied into the container.
- The container is deleted after it is run, as specified by the `--rm` flag in the `docker run` command.
