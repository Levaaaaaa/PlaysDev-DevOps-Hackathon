# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy the static HTML site to the Nginx directory
COPY ./html /usr/share/nginx/html

# Copy custom Nginx configuration
COPY ./nginx/default.conf /etc/nginx/conf.d/

# Expose port 80 for the website
EXPOSE 80

# CMD для запуска Nginx
CMD ["nginx", "-g", "daemon off;"]
