-- Tạo database mới
CREATE DATABASE mydatabase;

-- Tạo user mới với quyền truy cập
CREATE USER myuser WITH ENCRYPTED PASSWORD 'mypassword';

-- Gán quyền cho user trên database
GRANT ALL PRIVILEGES ON DATABASE mydatabase TO myuser;
