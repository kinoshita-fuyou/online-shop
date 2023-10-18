-- 创建耳机商品表
CREATE TABLE headphones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    image_url VARCHAR(255),
    price DECIMAL(10, 2) NOT NULL,
    headphone_type VARCHAR(50) NOT NULL,
    brand VARCHAR(100),
    stock_quantity INT NOT NULL,
    product_status ENUM('上架', '下架') NOT NULL,
    seller_id INT,
    FOREIGN KEY (seller_id) REFERENCES sellers(id)
);

-- 创建交易记录表
CREATE TABLE transaction_records (
    id INT PRIMARY KEY AUTO_INCREMENT,
    headphone_id INT,
    buyer_name VARCHAR(100) NOT NULL,
    contact_phone VARCHAR(20) NOT NULL,
    shipping_address TEXT NOT NULL,
    transaction_status ENUM('成功', '失败') NOT NULL
);

-- 创建卖家表
CREATE TABLE sellers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);
