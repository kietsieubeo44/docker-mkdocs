# Sử dụng hình ảnh Python chính thức làm cơ sở
FROM python:3.9-slim

# Cài đặt các phụ thuộc hệ thống cần thiết
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# Cài đặt MkDocs và các phụ thuộc khác
RUN pip install mkdocs mkdocs-material mkdocs-bootswatch

# Đặt thư mục làm việc
WORKDIR /docs

# Expose cổng MkDocs mặc định
EXPOSE 8000

# Lệnh để phục vụ tài liệu
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
