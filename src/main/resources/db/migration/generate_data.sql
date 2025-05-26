/** Generate brands */
INSERT INTO brand (name, description, url, created_time, deleted_time)
VALUES ('Adidas', 'Sportswear', 'https://adidas.com', now(), null),
       ('Apple', 'We are champions', 'https://apple.com', now(), null),
       ('Xiaomi', 'Hmm..', 'https://mi.com', now() - '7 days', null);

/** Generate categories */
INSERT INTO category (name, description, image_url, created_time, deleted_time)
VALUES ('Electronics', 'This is electronics', 'https://ya.ru/image.png', now(), null),
       ('Cars', 'Description of car showroom', 'https://car.com/porsche.jpg', now() - '1 day', null),
       ('Kitchen appliances', 'Appliances for kitchen', 'https://kitchen.com/appliances/knife.jpeg', now() - '1 week', null);

/** Generate products */
INSERT INTO product (name, description, price, currency, stock_quantity, created_time, deleted_time, brand_id, category_id)
VALUES ('Apple iPhone 15 Pro Max', null, 89.990, 643, 11, now(), null, 1, 1),
       ('Xiaomi Mijia Super Pro Cleaner', 'This is the best cleaner', 12.990, 643, 2, now(), null, 2, 1);