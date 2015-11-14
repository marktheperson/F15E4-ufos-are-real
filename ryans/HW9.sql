-- HW9.sql -- Homework 9
--
-- Ryan Spiegelman
-- UT EID: rs47796, UTCS username: rspiegel
-- C S f347, Summer 2014, Dr. P. Cannata
-- Department of Computer Science, The University of Texas at Austin
--

--14.01
DECLARE
	count_left INTEGER := 0;
BEGIN
	DELETE FROM addresses
	where customer_id = 8;
	DELETE FROM customers
	where customer_id = 8;

	COMMIT;
EXCEPTION
	WHEN others THEN
		ROLLBACK;
END;

--14.02
BEGIN
	INSERT INTO orders VALUES
	(DEFAULT, 3, NOW(), '10.00', '0.00', NULL, 4,
	'American Express', '378282246310005', '04/2013', 4);
	INSERT INTO order_items VALUES
	(DEFAULT, order_id, 6, '415.00', '161.85', 1);
	INSERT INTO order_items VALUES
	(DEFAULT, order_id, 1, '699.00', '209.70', 1);

	COMMIT;
EXCEPTION
	WHEN others THEN
		ROLLBACK;
END;

--15.01
CREATE OR REPLACE PROCEDURE insert_category
	(cat_name IN VARCHAR2)
IS
BEGIN
	INSERT INTO categories (category_name)
	VALUES (cat_name);
END insert_category;

CALL insert_category('lions');
CALL insert_category('tigers');

--15.02
CREATE OR REPLACE FUNCTION discount_price
	(itm_id IN INTEGER)
	return INTEGER
IS
	itm_pce INTEGER:=0;
	disc_amt INTEGER:=0;
	disc_prc INTEGER:=0;
BEGIN
	select item_price, discount_amount
	INTO itm_pce, disc_amt
	from order_items
	where item_id = itm_id;

	disc_prc = itm_pce - disc_amt;

	return disc_prc;
END discount_price;
--15.03
--15.04
--15.05

--16.01

--16.02
--16.03