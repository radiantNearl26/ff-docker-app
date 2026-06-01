FROM alpine:3.22.4

WORKDIR /app

RUN apk upgrade && \
    apk add fastfetch bash

ENV SHELL=/bin/bash

COPY . .

CMD ["fastfetch", "--config", "config.jsonc"]
