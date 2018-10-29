FROM nginx:1.15-alpine

COPY ./entrypoint.sh /entrypoint
RUN sed -i 's/\r//' /entrypoint && \
    chmod +x /entrypoint

COPY ./get_cert.template.conf /etc/nginx/conf.d/default.conf.template

ENTRYPOINT ["/entrypoint"]