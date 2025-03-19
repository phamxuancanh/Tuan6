# Sử dụng Go làm base image
FROM golang:1.21-alpine AS builder

# Thiết lập thư mục làm việc
WORKDIR /app

# Copy file Go vào container
COPY main.go .

# Biên dịch ứng dụng Go
RUN go mod init app && go build -o main main.go

# Sử dụng Alpine Linux để giảm kích thước image
FROM alpine:latest

# Thiết lập thư mục làm việc
WORKDIR /root/

# Copy file thực thi từ builder
COPY --from=builder /app/main .

# Expose cổng 8080
EXPOSE 8080

# Chạy ứng dụng
CMD ["./main"]
