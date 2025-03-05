# Use the official nginx image as the base image
FROM nginx:latest

# Copy the static website files into the default nginx directory
COPY ./NiceAdmin /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]