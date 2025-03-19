# Sử dụng Redis latest làm base image
FROM redis:latest

# Thiết lập thư mục làm việc
WORKDIR /usr/local/etc/redis

# Copy file redis.conf vào container
COPY redis.conf .

# Expose cổng Redis (mặc định là 6379, nhưng đã đổi thành 6380 trong redis.conf)
EXPOSE 6380

# Chạy Redis với cấu hình tùy chỉnh
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
