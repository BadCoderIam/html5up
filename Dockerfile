# Use a lightweight Nginx base image
FROM nginx:alpine

# Remove the default Nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into the Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80 (this is optional as ECS task definitions define the port mapping)
EXPOSE 80
