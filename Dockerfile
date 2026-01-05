# Use official Nginx image
FROM nginx:alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy our Nginx config
COPY nginx/default.conf /etc/nginx/conf.d/

# Copy website files
COPY html/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
