FROM wordpress:6.7.2-php8.1-apache

RUN rm -rf /var/www/html/*

COPY wordpress-6.7.2-fa_IR.tar.gz /var/www/html/

RUN tar -xvf /var/www/html/wordpress-6.7.2-fa_IR.tar.gz  && \
    mv /var/www/html/wordpress/* /var/www/html/ && \
    rm -rf /var/www/html/wordpress /var/www/html/wordpress-6.7.2-fa_IR.tar.gz
COPY plugins /var/www/html/wp-content/plugins/
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

EXPOSE 80
