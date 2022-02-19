FROM certbot/certbot:latest

RUN apk add --no-cache --virtual build-dependencies gcc musl-dev python3-dev libffi-dev openssl-dev cargo make && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir azure-cli && \
    pip cache purge && \
    apk del build-dependencies
