# Use official nginx image

FROM nginx:latest


# Copy your custom HTML file

COPY index.html /usr/share/nginx/html/

# Expose port 80

EXPOSE 80

# Start nginx

CMD ["nginx", "-g", "daemon off;"]

