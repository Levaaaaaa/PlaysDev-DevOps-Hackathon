FROM nginx  

COPY www /var/www/
# COPY nginx/www/secondpage.html /var/www/html/secondpage.html
# COPY nginx/www/music/music.mp3 /var/www/music/music.mp3
COPY ssl /etc/nginx/ssl/
RUN rm -f /etc/nginx/conf.d/default.conf
COPY sites-available/default.conf /etc/nginx/conf.d/default.conf

RUN rm -f /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

VOLUME /var/log/nginx

EXPOSE 443 80