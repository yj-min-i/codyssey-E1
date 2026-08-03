FROM nginx:alpine
LABEL org.opencontainers.image.title=my-web
LABEL maintainer=yj-min-i
ENV APP_ENV=dev
COPY site/ /usr/share/nginx/html/
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s CMD wget -q --spider http://localhost/ || exit 1
