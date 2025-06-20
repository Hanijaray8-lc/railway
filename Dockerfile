# Use official Nginx image
FROM nginx:alpine

# Remove the default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy build output to Nginx public directory
COPY build/ /usr/share/nginx/html

# Copy custom Nginx config (optional but recommended)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 to be used by container
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
