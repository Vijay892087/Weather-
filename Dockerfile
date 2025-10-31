# Step 1: Use official Nginx image
FROM nginx:latest

# Step 2: Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your website files to nginx html folder
COPY . /usr/share/nginx/html

# Step 4: Expose port 80 for web traffic
EXPOSE 80

# Step 5: Start nginx when container launches
CMD ["nginx", "-g", "daemon off;"]
