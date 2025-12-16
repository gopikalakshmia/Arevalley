FROM nginx:stable-alpine

# Set the working directory inside the container
# This is where Nginx typically serves static files from.
WORKDIR /usr/share/nginx/html

# Copy all your website files (HTML, CSS, JS, images, etc.) into the Nginx serving directory
# Make sure your website files (index.html, style.css, script.js, etc.) are in the same directory as this Dockerfile.
COPY . .

# Expose port 80, which is the default HTTP port Nginx listens on
# This tells Docker that the container will listen on this port at runtime.
EXPOSE 80

# The default command for the nginx:stable-alpine image starts Nginx.
# No need to specify CMD here unless you want to override it.
# CMD ["nginx", "-g", "daemon off;"]
