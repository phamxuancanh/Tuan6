# Sử dụng Nginx làm base image
FROM nginx:latest

# Copy file index.html vào thư mục /usr/share/nginx/html/
COPY html /usr/share/nginx/html

# Expose cổng 80 để truy cập trang web
EXPOSE 80

# Chạy Nginx
CMD ["nginx", "-g", "daemon off;"]
