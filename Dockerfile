ARG NGINX_TAG=1.23.2-alpine
FROM nginx:${NGINX_TAG}

COPY default.conf /etc/nginx/conf.d/default.conf

HEALTHCHECK --interval=5s --timeout=3s --retries=3 CMD curl -f http://localhost/ || exit 1
