# ====== STAGE 1: Build Code ======
FROM node:18 AS builder

# Thiết lập thư mục làm việc
WORKDIR /app

# Copy package.json và cài đặt dependencies
COPY package.json ./
RUN npm install

# Copy toàn bộ source code vào container
COPY . .

# Build ứng dụng (tuỳ dự án, có thể là Webpack, Babel, TypeScript, v.v.)
RUN npm run build


# ====== STAGE 2: Run Application ======
FROM node:18-alpine

# Thiết lập thư mục làm việc
WORKDIR /app

# Copy ứng dụng từ stage 1 (builder)
COPY --from=builder /app .

# Expose cổng 3000
EXPOSE 3000

# Chạy ứng dụng
CMD ["npm", "start"]
