# Use the official NGINX base image
FROM nginx:alpine

# Create a file named sre.txt with the content "Hello SRE!"
RUN echo "Hello SRE!" > /usr/share/nginx/html/sre.txt

# Create a default index.html with some text
RUN echo "Welcome to the Nginx App on EKS with ALB!" > /usr/share/nginx/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]