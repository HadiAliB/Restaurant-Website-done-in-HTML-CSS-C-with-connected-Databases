use restaurant
use master

--customer
INSERT INTO customer (cust_id, cust_name, cust_phone, cust_area_code, cust_address, cust_email, points, cust_pass)
VALUES ('C001', 'John Doe', '1234567890', '12345', '123 Main St', 'john@example.com', 100, 'password1');

INSERT INTO customer (cust_id, cust_name, cust_phone, cust_area_code, cust_address, cust_email, points, cust_pass)
VALUES ('C002', 'Jane Smith', '9876543210', '54321', '456 Elm St', 'jane@example.com', 50, 'password2');

INSERT INTO customer (cust_id, cust_name, cust_phone, cust_area_code, cust_address, cust_email, points, cust_pass)
VALUES ('C003', 'Michael Johnson', '1112223333', '11111', '789 Oak St', 'michael@example.com', 200, 'password3');

INSERT INTO customer (cust_id, cust_name, cust_phone, cust_area_code, cust_address, cust_email, points, cust_pass)
VALUES ('C004', 'Emily Davis', '4445556666', '22222', '321 Pine St', 'emily@example.com', 75, 'password4');

INSERT INTO customer (cust_id, cust_name, cust_phone, cust_area_code, cust_address, cust_email, points, cust_pass)
VALUES ('C005', 'David Wilson', '7778889999', '33333', '654 Cedar St', 'david@example.com', 150, 'password5');



--rider

INSERT INTO rider (rider_id, rider_name, rider_phone, rider_area_code, rider_status)
VALUES ('R001', 'John Doe', '1234567890', '12345', 'Available');

INSERT INTO rider (rider_id, rider_name, rider_phone, rider_area_code, rider_status)
VALUES ('R002', 'Jane Smith', '9876543210', '54321', 'Busy');

INSERT INTO rider (rider_id, rider_name, rider_phone, rider_area_code, rider_status)
VALUES ('R003', 'Michael Johnson', '1112223333', '11111', 'Available');

INSERT INTO rider (rider_id, rider_name, rider_phone, rider_area_code, rider_status)
VALUES ('R004', 'Emily Davis', '4445556666', '22222', 'Busy');

INSERT INTO rider (rider_id, rider_name, rider_phone, rider_area_code, rider_status)
VALUES ('R005', 'David Wilson', '7778889999', '33333', 'Available');


--discount
INSERT INTO discount (discount_id, discount_value, points_required)
VALUES ('D001', 0.1, 100);

INSERT INTO discount (discount_id, discount_value, points_required)
VALUES ('D002', 0.15, 150);

INSERT INTO discount (discount_id, discount_value, points_required)
VALUES ('D003', 0.2, 200);

INSERT INTO discount (discount_id, discount_value, points_required)
VALUES ('D004', 0.25, 250);

INSERT INTO discount (discount_id, discount_value, points_required)
VALUES ('D005', 0.3, 300);


--orders
INSERT INTO orders (order_id, cust_id, rider_id, payment_mode, order_cost, discount_id, order_total, tip)
VALUES ('O001', 'C001', 'R001', 'Online', 50.0, 'D001', 40.0, 5.0);

INSERT INTO orders (order_id, cust_id, rider_id, payment_mode, order_cost, discount_id, order_total, tip)
VALUES ('O002', 'C002', 'R002', 'CoD', 75.0, NULL, 75.0, 10.0);

INSERT INTO orders (order_id, cust_id, rider_id, payment_mode, order_cost, discount_id, order_total, tip)
VALUES ('O003', 'C003', 'R001', 'Online', 100.0, 'D002', 85.0, 0.0);

INSERT INTO orders (order_id, cust_id, rider_id, payment_mode, order_cost, discount_id, order_total, tip)
VALUES ('O004', 'C004', 'R003', 'CoD', 60.0, NULL, 60.0, 5.0);

INSERT INTO orders (order_id, cust_id, rider_id, payment_mode, order_cost, discount_id, order_total, tip)
VALUES ('O005', 'C005', 'R002', 'Online', 120.0, 'D003', 100.0, 10.0);



--menu
INSERT INTO menu (item_id, item_name, category, item_cost, item_desc)
VALUES ('I001', 'Burger', 'Fast Food', 599, 'Juicy beef patty');

INSERT INTO menu (item_id, item_name, category, item_cost, item_desc)
VALUES ('I002', 'Pizza', 'Italian', 999, 'Thin crust delight');

INSERT INTO menu (item_id, item_name, category, item_cost, item_desc)
VALUES ('I003', 'Salad', 'Healthy', 699, 'Fresh greens mix');

INSERT INTO menu (item_id, item_name, category, item_cost, item_desc)
VALUES ('I004', 'Sushi', 'Japanese', 1299, 'Assorted fish rolls');

INSERT INTO menu (item_id, item_name, category, item_cost, item_desc)
VALUES ('I005', 'Smoothie', 'Beverages', 499, 'Refreshing fruit blend');

--items
INSERT INTO items (order_id, item_id, quantity)
VALUES ('O001', 'I001', 2);

INSERT INTO items (order_id, item_id, quantity)
VALUES ('O001', 'I003', 1);

INSERT INTO items (order_id, item_id, quantity)
VALUES ('O002', 'I002', 1);

INSERT INTO items (order_id, item_id, quantity)
VALUES ('O003', 'I005', 3);

INSERT INTO items (order_id, item_id, quantity)
VALUES ('O004', 'I004', 2);



--reviews
INSERT INTO reviews (review_id, cust_id, rating, review_desc)
VALUES ('R001', 'C001', 4, 'Great food, excellent');

INSERT INTO reviews (review_id, cust_id, rating, review_desc)
VALUES ('R002', 'C002', 5, 'Amazing service, friendly');

INSERT INTO reviews (review_id, cust_id, rating, review_desc)
VALUES ('R003', 'C003', 3, 'Average experience, okay');

INSERT INTO reviews (review_id, cust_id, rating, review_desc)
VALUES ('R004', 'C004', 4, 'Delicious dishes, satisfying');

INSERT INTO reviews (review_id, cust_id, rating, review_desc)
VALUES ('R005', 'C005', 5, 'Highly recommended, superb');



