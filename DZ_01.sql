DROP TABLE IF EXISTS mobile_phones;

CREATE TABLE mobile_phones(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(45),
manufacturer VARCHAR(45),
product_count INT,
price INT
);

INSERT INTO mobile_phones (product_name, manufacturer, product_count, price)
VALUES
 ('iPhone X', 'Apple', 3, 76000),
 ('iPhone 8', 'Apple', 2, 51000),
 ('Galaxy S9', 'Samsung', 2, 56000),
 ('Galaxy S8', 'Samsung', 1, 41000),
 ('P20 Pro', 'Huawei', 5, 36000);
 
 -- Название, производитель, цена -> количество товаров больше 2
 SELECT product_name, manufacturer, price
 FROM mobile_phones
 WHERE product_count > 2;
 
 -- Весь ассорнтимент товаров марки 'Samsung'
 SELECT product_name
 FROM mobile_phones
 WHERE manufacturer = 'Samsung';
 
 -- Все товары, где упоминается iPhone
 SELECT product_name, manufacturer
 FROM mobile_phones
 WHERE product_name LIKE '%iPhone%' OR
	   manufacturer LIKE '%iPhone%';

-- Все товары, где упоминается Samsung
 SELECT product_name
 FROM mobile_phones
 WHERE product_name LIKE '%Samsung%' OR
	   manufacturer LIKE '%Samsung%';
       
 -- Все товары, где есть цифры
 SELECT product_name
 FROM mobile_phones
 WHERE product_name LIKE '[0-9]' OR
	   manufacturer LIKE '[0-9]';
       
 -- Все товары, где есть цифра 8
 SELECT product_name
 FROM mobile_phones
 WHERE product_name LIKE '%8%' OR
	   manufacturer LIKE '%8%';

