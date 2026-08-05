FROM nginx:alpine

COPY onwards.html /usr/share/nginx/html/index.html

RUN sed -i 's/listen[[:space:]]*80;/listen 8080;/' /etc/nginx/conf.d/default.conf

EXPOSE 8080
