# Use a base image - here, we're using nginx as it's lightweight and great for serving static content
FROM nginx:alpine

# Copy the website files to the appropriate location within the container
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

# Expose the port nginx is listening on
EXPOSE 80

# Command to start the nginx server when the container runs
CMD ["nginx", "-g", "daemon off;"]
