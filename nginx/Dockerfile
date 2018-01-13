FROM nginx
RUN rm /etc/nginx/conf.d/*.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Have to run as root for ports less than 1024
# RUN touch /var/run/nginx.pid && \
#  chown -R www-data:www-data /var/run/nginx.pid && \
#  chown -R www-data:www-data /var/cache/nginx

# USER www-data

