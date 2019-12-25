FROM nginx
RUN mkdir -p /var/www/cache /var/www/cache/tmp && chown -R nginx:nginx /var/www/cache
COPY nginx_conf/sites-available/xy.com.conf /etc/nginx/conf.d/
COPY self_signed* /etc/nginx/conf.d/