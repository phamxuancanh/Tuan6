# Sử dụng Node.js 18 trên Alpine Linux (nhẹ)
FROM node:18-alpine AS build

# Đặt thư mục làm việc trong container
WORKDIR /app

# Sao chép file package.json và package-lock.json trước
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Build ứng dụng React
RUN npm run build

# ---- Production Stage ----
FROM node:18-alpine AS production

WORKDIR /app

# Cài đặt serve để chạy React app
RUN npm install -g serve

# Sao chép thư mục build từ build stage
COPY --from=build /app/dist /app

# Expose cổng 3000
EXPOSE 3000

# Chạy ứng dụng React
CMD ["serve", "-s", "/app", "-l", "3000"]
