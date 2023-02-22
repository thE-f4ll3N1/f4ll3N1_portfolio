# Use an official Nginx runtime as a parent image
FROM nginx:latest

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the contents of the my-website directory to the working directory
COPY ./ ./

# Expose port 80 for HTTP traffic
EXPOSE 80

# docker build -t my-nginx-image .
# docker run -p 8080:80 my-nginx-image

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]