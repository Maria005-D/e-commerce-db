CREATE TABLE brand (
  brand_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  description TEXT
);

CREATE TABLE product_category (
  category_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  description TEXT
);

CREATE TABLE product (
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  brand_id INT,
  category_id INT,
  base_price DECIMAL(10,2),
  description TEXT,
  FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
  FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

CREATE TABLE product_item (
  item_id INT PRIMARY KEY AUTO_INCREMENT,
  product_id INT,
  sku VARCHAR(100),
  stock_quantity INT,
  FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE product_image (
  image_id INT PRIMARY KEY AUTO_INCREMENT,
  product_id INT,
  image_url TEXT,
  is_primary BOOLEAN,
  FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE color (
  color_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  hex_code CHAR(7)
);

CREATE TABLE size_category (
  size_category_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100)
);

CREATE TABLE size_option (
  size_id INT PRIMARY KEY AUTO_INCREMENT,
  size_category_id INT,
  label VARCHAR(20),
  FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

CREATE TABLE product_variation (
  variation_id INT PRIMARY KEY AUTO_INCREMENT,
  item_id INT,
  color_id INT,
  size_id INT,
  FOREIGN KEY (item_id) REFERENCES product_item(item_id),
  FOREIGN KEY (color_id) REFERENCES color(color_id),
  FOREIGN KEY (size_id) REFERENCES size_option(size_id)
);

CREATE TABLE attribute_category (
  attribute_category_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100)
);

CREATE TABLE attribute_type (
  type_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50)
);

CREATE TABLE product_attribute (
  attribute_id INT PRIMARY KEY AUTO_INCREMENT,
  product_id INT,
  attribute_category_id INT,
  type_id INT,
  name VARCHAR(100),
  value TEXT,
  FOREIGN KEY (product_id) REFERENCES product(product_id),
  FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id),
  FOREIGN KEY (type_id) REFERENCES attribute_type(type_id)
);
