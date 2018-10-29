# Using the latest version to get the latest security patches
FROM certbot/certbot:latest

COPY ./entrypoint.sh /entrypoint
RUN sed -i 's/\r//' /entrypoint && \
    chmod +x /entrypoint

ENTRYPOINT ["/entrypoint"]