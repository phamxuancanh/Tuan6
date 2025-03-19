# Sử dụng PostgreSQL 15 làm base image
FROM postgres:15

# Thiết lập biến môi trường mặc định
ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=admin123
ENV POSTGRES_DB=defaultdb

# Copy file SQL vào thư mục khởi tạo của PostgreSQL
COPY init-db.sql /docker-entrypoint-initdb.d/

# Expose cổng 5432 (PostgreSQL)
EXPOSE 5432
