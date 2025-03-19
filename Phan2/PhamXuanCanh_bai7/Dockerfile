# Sử dụng Python 3.9 làm base image
FROM python:3.9

# Thiết lập thư mục làm việc
WORKDIR /app

# Copy file app.py vào container
COPY app.py .

# Định nghĩa biến môi trường APP_ENV
ENV APP_ENV=development

# Chạy ứng dụng
CMD ["python", "app.py"]
