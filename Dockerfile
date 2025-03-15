FROM nginx  

COPY nginx/www/index.html /var/www/html/index.html
COPY nginx/www/secondpage.html /var/www/html/secondpage.html

RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx/sites-available/default.conf /etc/nginx/conf.d/default.conf

RUN rm -f /etc/nginx/nginx.conf
COPY nginx/nginx.conf /etc/nginx/nginx.conf

VOLUME /var/log/nginx

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]