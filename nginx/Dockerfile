FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /etc/ssl/certs
COPY greetings_key.crt /etc/ssl/certs/
RUN mkdir -p /etc/ssl/private
COPY greetings_key.key /etc/ssl/private/

