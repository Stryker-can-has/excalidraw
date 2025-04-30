FROM nginx:1.27-alpine

COPY ./excalidraw-app/build /usr/share/nginx/html
# COPY ./nginx.conf /etc/nginx/nginx.conf

HEALTHCHECK CMD wget -q -O /dev/null http://localhost || exit 1
