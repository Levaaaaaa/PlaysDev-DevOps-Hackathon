FROM nginx  

COPY nginx/www/index.html /var/www/html/index.html
COPY nginx/www/secondpage.html /var/www/html/secondpage.html
COPY nginx/www/music/music.mp3 /var/www/music/music.mp3

RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx/sites-available/default.conf /etc/nginx/conf.d/default.conf

RUN rm -f /etc/nginx/nginx.conf
COPY nginx/nginx.conf /etc/nginx/nginx.conf

VOLUME /var/log/nginx

EXPOSE 80