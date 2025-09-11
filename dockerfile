# Use official Nginx image as base
FROM nginx:alpine

# Set working directory in container
WORKDIR /usr/share/nginx/html

# Remove default nginx static files
RUN rm -rf ./*

# Copy your project files into container
COPY index.html .
COPY style.css .
# If you have images, JS, or other assets, copy them too
# COPY assets/ ./assets/

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

