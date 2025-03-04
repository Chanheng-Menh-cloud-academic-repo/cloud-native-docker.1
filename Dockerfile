# Use official Nginx image
FROM nginx:latest

# Copy website files from the Moderna directory to the Nginx default directory
COPY Moderna/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]