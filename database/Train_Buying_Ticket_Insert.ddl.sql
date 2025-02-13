USE SWP391;

-- role 
INSERT INTO `role` (id_role, name_role) 
	VALUES (1, 'admin'),(2, 'manager'),(3, 'customer');
	
-- customer
INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) 
	VALUES ('BenKei','dungquentena@gmail.com','LwwQbBAWkqpsESVxiB0LwFd7fDc=','123456789',3,1); 
INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) 
	VALUES ('Gà Hp','st1989mp3@gmail.com','JzKOKpzxikm6sWiQvTqU8B3WZOg=','0966755095',3,1); 
INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) 
	VALUES ('Gà Hp','hiepnhhe181338@fpt.edu.vn','62BNYU3mbXUmmlJnctlLNdXK+FU=','0966755095',3,1); 
INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) 
	VALUES ('Nguy?n B� Hi?n','hiennbhe181773@fpt.edu.vnsadsadd','6NWFIsI1V5KNFeeazNcq35qxRUE=','0332671182',3,1); 
INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) 
	VALUES ('122','djas@gdsk.com','6NWFIsI1V5KNFeeazNcq35qxRUE=','123',3,1); 
INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) 
	VALUES ('122','nguyenbahien170604@gmail.com','6NWFIsI1V5KNFeeazNcq35qxRUE=','123',3,1); 
INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) 
	VALUES ('122','djas@gdsk.comn','6NWFIsI1V5KNFeeazNcq35qxRUE=','123',3,1); 
INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) 
	VALUES ('122','123@gmail','6NWFIsI1V5KNFeeazNcq35qxRUE=','123',3,1); 
INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) 
	VALUES ('Nguy?n B� Hi?n','hiennbhe181773@fpt.edu.vnsadsaddd','6NWFIsI1V5KNFeeazNcq35qxRUE=','0332671182',3,1); 
INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) 
	VALUES ('Nguy?n B� Hi?n','hiennbhe181773@fpt.edu.vnsadsadddd','6NWFIsI1V5KNFeeazNcq35qxRUE=','0332671182',3,1); 
INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) 
	VALUES ('122','djas@gdsk.coma','6NWFIsI1V5KNFeeazNcq35qxRUE=','123',3,1); 
INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) 
	VALUES ('Nguyễn Hữu Hiệp','admin@gmail.com','Gzy3BSM1BTMz8WpR7DvTP17/IxU=','0123456789',3,1); 
INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) 
	VALUES ('Dinh Phu QP1281 Duong','ddinhphu2004@gmail.com','tpG2ZscAgcBKEZ89b1f4u3BUGaA=','0123456',3,1); 

-- manager
INSERT INTO Manager (username_manager, password_manager, email_manager, id_role, status_manager)
	VALUES 
	('manager1', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'manager1@example.com', 2, 1), 
	('manager2', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'manager2@example.com', 2, 1);

-- admin
INSERT INTO Admin (username_admin, password_admin, email_admin, id_role)
	VALUES 
	('admin', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'admin1@example.com', 1); 
	
-- train brand
INSERT INTO Train_brand (id_manager, name_train_brand, description_train_brand,image_train_brand)
	VALUES 
	(1, 'Alpha', 'Train brand Alpha - High speed trains', null), -- id_manager = 1 (manager1)
	(2, 'Beta', 'Train brand Beta - Luxury trains', null);      -- id_manager = 2 (manager2)

--	status
INSERT INTO Status (name_status)
	VALUES 
	-- Trạng thái cho Train
	('On Journey'),	-- 1
	('Waiting'),	 	-- 2
	('Maintenance'),	-- 3
	('Incident'),		-- 4
	
	-- Trạng thái cho Train_carriage, Train_seat
	('Available'),	 	-- 5
	('Booked'),			-- 6
	('Maintenance');	-- 7
	
-- train Alpha
INSERT INTO Train (name_train, description_train, id_train_brand, id_status, image_train) 
	VALUES
	('Alpha 1', ' ',1, 2, null),
	('Alpha 2', ' ', 1, 2, null);

-- train carriage Alpha 1 Phổ thông
INSERT INTO Train_carriage (name_train_carriage, description_train_carriage, id_train, id_status, total_seat) 
	VALUES
	('Carriage 1 - Alpha 1 (Phổ thông)',  'Khoang có 40 ghế', 1, 5, 40),
	('Carriage 2 - Alpha 1 (Phổ thông)',  'Khoang có 40 ghế', 1, 5, 40),
	('Carriage 3 - Alpha 1 (Phổ thông)',  'Khoang có 40 ghế', 1, 5, 40),
	('Carriage 4 - Alpha 1 (Phổ thông)',  'Khoang có 40 ghế', 1, 5, 40);

DELIMITER $$
CREATE PROCEDURE AddAlpha1PT()
BEGIN
    DECLARE counter INT DEFAULT 1;
    WHILE counter <= 40 DO
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (1, 5, 'Carriage 1 - Alpha 1');
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (2, 5, 'Carriage 2 - Alpha 1');
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (3, 5, 'Carriage 3 - Alpha 1');
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (4, 5, 'Carriage 4 - Alpha 1');
		SET counter = counter + 1;
    END WHILE;
END$$
DELIMITER ;
CALL AddAlpha1PT();

-- train carriage Alpha 1 Thương gia
INSERT INTO Train_carriage (name_train_carriage, description_train_carriage, id_train, id_status, total_seat) 
	VALUES
	('Carriage 5 - Alpha 1 (Thương gia)',  'Khoang có 20 ghế', 1, 5, 20),
	('Carriage 6 - Alpha 1 (Thương gia)',  'Khoang có 20 ghế', 1, 5, 20);

DELIMITER $$
CREATE PROCEDURE AddAlpha1TG()
BEGIN
    DECLARE counter INT DEFAULT 1;
    WHILE counter <= 20 DO
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (5, 5, 'Carriage 5 - Alpha 1');
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (6, 5, 'Carriage 6 - Alpha 1');
		SET counter = counter + 1;
    END WHILE;
END$$
DELIMITER ;
CALL AddAlpha1TG();

-- train carriage Alpha 1 VIP
INSERT INTO Train_carriage (name_train_carriage, description_train_carriage, id_train, id_status, total_seat) 
	VALUES
	('Carriage 7 - Alpha 1 (VIP)',  'Khoang có 10 ghế', 1, 5, 10);

DELIMITER $$
CREATE PROCEDURE AddAlpha1VIP()
BEGIN
    DECLARE counter INT DEFAULT 1;
    WHILE counter <= 10 DO
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (7, 5, 'Carriage 7 - Alpha 1');
		SET counter = counter + 1;
    END WHILE;
END$$
DELIMITER ;
CALL AddAlpha1VIP();

-- train carriage Alpha 2 Phổ thông
INSERT INTO Train_carriage (name_train_carriage, description_train_carriage, id_train, id_status, total_seat) 
	VALUES
	('Carriage 8 - Alpha 2 (Phổ thông)',  'Khoang có 40 ghế', 2, 5, 40),
	('Carriage 9 - Alpha 2 (Phổ thông)',  'Khoang có 40 ghế', 2, 5, 40),
	('Carriage 10 - Alpha 2 (Phổ thông)',  'Khoang có 40 ghế', 2, 5, 40);

DELIMITER $$
CREATE PROCEDURE AddAlpha2PT()
BEGIN
    DECLARE counter INT DEFAULT 1;
    WHILE counter <= 40 DO
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (8, 5, 'Carriage 8 - Alpha 2');
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (9, 5, 'Carriage 9 - Alpha 2');
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (10, 5, 'Carriage 10 - Alpha 2');
		SET counter = counter + 1;
    END WHILE;
END$$
DELIMITER ;
CALL AddAlpha2PT();

-- train carriage Alpha 2 Thương gia
INSERT INTO Train_carriage (name_train_carriage, description_train_carriage, id_train, id_status, total_seat) 
	VALUES
	('Carriage 11 - Alpha 2 (Thương gia)',  'Khoang có 20 ghế', 2, 5, 20),
	('Carriage 12 - Alpha 2 (Thương gia)',  'Khoang có 20 ghế', 2, 5, 20);

DELIMITER $$
CREATE PROCEDURE AddAlpha2TG()
BEGIN
    DECLARE counter INT DEFAULT 1;
    WHILE counter <= 20 DO
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (11, 5, 'Carriage 11 - Alpha 2');
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (12, 5, 'Carriage 12 - Alpha 2');
		SET counter = counter + 1;
    END WHILE;
END$$
DELIMITER ;
CALL AddAlpha2TG();

-- train carriage Alpha 2 VIP
INSERT INTO Train_carriage (name_train_carriage, description_train_carriage, id_train, id_status, total_seat) 
	VALUES
	('Carriage 13 - Alpha 2 (VIP)',  'Khoang có 15 ghế', 2, 5, 15);

DELIMITER $$
CREATE PROCEDURE AddAlpha2VIP()
BEGIN
    DECLARE counter INT DEFAULT 1;
    WHILE counter <= 15 DO
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (13, 5, 'Carriage 13 - Alpha 2');
		SET counter = counter + 1;
    END WHILE;
END$$
DELIMITER ;
CALL AddAlpha2VIP();

-- train Beta
INSERT INTO Train (name_train, description_train, id_train_brand, id_status, image_train) 
	VALUES
	('Beta 1', ' ',2, 2, null),
	('Beta 2', ' ', 2, 2, null);

-- train carriage Beta 1 Phổ thông
INSERT INTO Train_carriage (name_train_carriage, description_train_carriage, id_train, id_status, total_seat) 
	VALUES
	('Carriage 14 - Beta 1 (Phổ thông)',  'Khoang có 25 ghế', 1, 5, 25),
	('Carriage 15 - Beta 1 (Phổ thông)',  'Khoang có 25 ghế', 1, 5, 25),
	('Carriage 16 - Beta 1 (Phổ thông)',  'Khoang có 25 ghế', 1, 5, 25),
	('Carriage 17 - Beta 1 (Phổ thông)',  'Khoang có 25 ghế', 1, 5, 25),
	('Carriage 18 - Beta 1 (Phổ thông)',  'Khoang có 25 ghế', 1, 5, 25);

DELIMITER $$
CREATE PROCEDURE AddBeta1PT()
BEGIN
    DECLARE counter INT DEFAULT 1;
    WHILE counter <= 25 DO
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (14, 5, 'Carriage 14 - Beta 1');
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (15, 5, 'Carriage 15 - Beta 1');
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (16, 5, 'Carriage 16 - Beta 1');
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (17, 5, 'Carriage 17 - Beta 1');
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (18, 5, 'Carriage 18 - Beta 1');
		SET counter = counter + 1;
    END WHILE;
END$$
DELIMITER ;
CALL AddBeta1PT();

-- train carriage Beta 1 Thương gia
INSERT INTO Train_carriage (name_train_carriage, description_train_carriage, id_train, id_status, total_seat) 
	VALUES
	('Carriage 19 - Beta 1 (Thương gia)',  'Khoang có 15 ghế', 1, 5, 15);

DELIMITER $$
CREATE PROCEDURE AddBeta1TG()
BEGIN
    DECLARE counter INT DEFAULT 1;
    WHILE counter <= 15 DO
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (19, 5, 'Carriage 19 - Beta 1');
		SET counter = counter + 1;
    END WHILE;
END$$
DELIMITER ;
CALL AddBeta1TG();

-- train carriage Beta 1 VIP
INSERT INTO Train_carriage (name_train_carriage, description_train_carriage, id_train, id_status, total_seat) 
	VALUES
	('Carriage 20 - Beta 1 (VIP)',  'Khoang có 10 ghế', 1, 5, 10);

DELIMITER $$
CREATE PROCEDURE AddBeta1VIP()
BEGIN
    DECLARE counter INT DEFAULT 1;
    WHILE counter <= 10 DO
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (20, 5, 'Carriage 20 - Beta 1');
		SET counter = counter + 1;
    END WHILE;
END$$
DELIMITER ;
CALL AddBeta1VIP();

-- train carriage Beta 2 Phổ thông
INSERT INTO Train_carriage (name_train_carriage, description_train_carriage, id_train, id_status, total_seat) 
	VALUES
	('Carriage 21 - Beta 2 (Phổ thông)',  'Khoang có 30 ghế', 2, 5, 30),
	('Carriage 22 - Beta 2 (Phổ thông)',  'Khoang có 30 ghế', 2, 5, 30),
	('Carriage 23 - Beta 2 (Phổ thông)',  'Khoang có 30 ghế', 2, 5, 30);

DELIMITER $$
CREATE PROCEDURE AddBeta2PT()
BEGIN
    DECLARE counter INT DEFAULT 1;
    WHILE counter <= 30 DO
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (21, 5, 'Carriage 21 - Beta 2');
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (22, 5, 'Carriage 22 - Beta 2');
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (23, 5, 'Carriage 23 - Beta 2');
		SET counter = counter + 1;
    END WHILE;
END$$
DELIMITER ;
CALL AddBeta2PT();

-- train carriage Beta 2 Thương gia
INSERT INTO Train_carriage (name_train_carriage, description_train_carriage, id_train, id_status, total_seat) 
	VALUES
	('Carriage 24 - Beta 2 (Thương gia)',  'Khoang có 15 ghế', 2, 5, 15),
	('Carriage 25 - Beta 2 (Thương gia)',  'Khoang có 15 ghế', 2, 5, 15);

DELIMITER $$
CREATE PROCEDURE AddBeta2TG()
BEGIN
    DECLARE counter INT DEFAULT 1;
    WHILE counter <= 15 DO
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (24, 5, 'Carriage 24 - Beta 2');
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (25, 5, 'Carriage 25 - Beta 2');
		SET counter = counter + 1;
    END WHILE;
END$$
DELIMITER ;
CALL AddBeta2TG();

-- train carriage Beta 2 VIP
INSERT INTO Train_carriage (name_train_carriage, description_train_carriage, id_train, id_status, total_seat) 
	VALUES
	('Carriage 26 - Beta 2 (VIP)',  'Khoang có 5 ghế', 2, 5, 5),
	('Carriage 27 - Beta 2 (VIP)',  'Khoang có 5 ghế', 2, 5, 5);

DELIMITER $$
CREATE PROCEDURE AddBeta2VIP()
BEGIN
    DECLARE counter INT DEFAULT 1;
    WHILE counter <= 5 DO
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (26, 5, 'Carriage 26 - Beta 2');
		INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat) VALUES (27, 5, 'Carriage 27 - Beta 2');
		SET counter = counter + 1;
    END WHILE;
END$$
DELIMITER ;
CALL AddBeta2VIP();

INSERT INTO Station (name_station, image_station, description_station) VALUES
('Biên Hòa', NULL, 'Ga Biên Hòa, tỉnh Đồng Nai, phục vụ khu vực Đông Nam Bộ'),
('Bình Thuận', NULL, 'Ga Bình Thuận, tỉnh Bình Thuận, trên tuyến đường sắt Bắc - Nam'),
('Bảo Hà', NULL, 'Ga Bảo Hà, tỉnh Lào Cai, gần khu vực biên giới Trung Quốc'),
('Bỉm Sơn', NULL, 'Ga Bỉm Sơn, tỉnh Thanh Hóa, phục vụ khu vực Bắc Trung Bộ'),
('Bồng Sơn', NULL, 'Ga Bồng Sơn, tỉnh Bình Định, trên tuyến đường sắt Bắc - Nam'),
('Chợ Sy', NULL, 'Ga Chợ Sy, tỉnh Lạng Sơn, gần biên giới Trung Quốc'),
('Ga Kép', NULL, 'Ga Kép, tỉnh Bắc Giang, nút giao quan trọng phía Bắc'),
('Giã', NULL, 'Ga Giã, tỉnh Hải Dương, phục vụ khu vực Đồng bằng sông Hồng'),
('Huế', NULL, 'Ga Huế, thành phố Huế, tỉnh Thừa Thiên Huế, di sản văn hóa thế giới'),
('Hà Nội', NULL, 'Ga Hà Nội, trung tâm thủ đô, đầu mối giao thông quan trọng'),
('Hương Phố', NULL, 'Ga Hương Phố, tỉnh Quảng Trị, phục vụ khu vực miền Trung'),
('Hạ Long', NULL, 'Ga Hạ Long, tỉnh Quảng Ninh, gần Vịnh Hạ Long'),
('Hải Dương', NULL, 'Ga Hải Dương, tỉnh Hải Dương, phục vụ khu vực Đồng bằng sông Hồng'),
('Hải Phòng', NULL, 'Ga Hải Phòng, thành phố cảng lớn nhất phía Bắc'),
('Long Khánh', NULL, 'Ga Long Khánh, tỉnh Đồng Nai, phục vụ khu vực Đông Nam Bộ'),
('Lào Cai', NULL, 'Ga Lào Cai, tỉnh Lào Cai, cửa ngõ giao thương với Trung Quốc'),
('Lăng Cô', NULL, 'Ga Lăng Cô, tỉnh Thừa Thiên Huế, gần đèo Hải Vân'),
('Ma Lâm', NULL, 'Ga Ma Lâm, tỉnh Bình Thuận, trên tuyến đường sắt Bắc - Nam'),
('Minh Khôi', NULL, 'Ga Minh Khôi, tỉnh Hải Dương, phục vụ khu vực Đồng bằng sông Hồng'),
('Nam Định', NULL, 'Ga Nam Định, tỉnh Nam Định, trung tâm vùng Nam Đồng bằng sông Hồng'),
('Ngã Ba', NULL, 'Ga Ngã Ba, tỉnh Thanh Hóa, nút giao quan trọng miền Trung'),
('Nha Trang', NULL, 'Ga Nha Trang, tỉnh Khánh Hòa, thành phố biển nổi tiếng'),
('Ninh Bình', NULL, 'Ga Ninh Bình, tỉnh Ninh Bình, gần khu du lịch Tràng An'),
('Ninh Hòa', NULL, 'Ga Ninh Hòa, tỉnh Khánh Hòa, phục vụ khu vực Nam Trung Bộ'),
('Núi Thành', NULL, 'Ga Núi Thành, tỉnh Quảng Nam, trên tuyến đường sắt Bắc - Nam'),
('Phú Cang', NULL, 'Ga Phú Cang, tỉnh Thừa Thiên Huế, phục vụ khu vực miền Trung'),
('Phú Thọ', NULL, 'Ga Phú Thọ, tỉnh Phú Thọ, trung tâm vùng Đông Bắc'),
('Phố Lu', NULL, 'Ga Phố Lu, tỉnh Lào Cai, gần khu vực biên giới Trung Quốc'),
('Phủ Lý', NULL, 'Ga Phủ Lý, tỉnh Hà Nam, phục vụ khu vực Đồng bằng sông Hồng'),
('Quy Nhơn', NULL, 'Ga Quy Nhơn, tỉnh Bình Định, thành phố biển miền Trung'),
('Quân Triều', NULL, 'Ga Quân Triều, tỉnh Thái Nguyên, phục vụ khu vực Đông Bắc'),
('Quảng Ngãi', NULL, 'Ga Quảng Ngãi, tỉnh Quảng Ngãi, trên tuyến đường sắt Bắc - Nam'),
('Sài Gòn', NULL, 'Ga Sài Gòn, thành phố Hồ Chí Minh, đầu mối giao thông phía Nam'),
('Sông Mao', NULL, 'Ga Sông Mao, tỉnh Bình Thuận, trên tuyến đường sắt Bắc - Nam'),
('Tam Kỳ', NULL, 'Ga Tam Kỳ, tỉnh Quảng Nam, phục vụ khu vực miền Trung'),
('Thanh Hóa', NULL, 'Ga Thanh Hóa, tỉnh Thanh Hóa, trung tâm vùng Bắc Trung Bộ'),
('Thái Nguyên', NULL, 'Ga Thái Nguyên, tỉnh Thái Nguyên, trung tâm công nghiệp phía Bắc'),
('Tháp Chàm', NULL, 'Ga Tháp Chàm, tỉnh Ninh Thuận, gần di tích Tháp Chàm'),
('Trà Kiệu', NULL, 'Ga Trà Kiệu, tỉnh Quảng Nam, phục vụ khu vực miền Trung'),
('Tuy Hòa', NULL, 'Ga Tuy Hòa, tỉnh Phú Yên, thành phốt biển miền Trung'),
('Uông Bí', NULL, 'Ga Uông Bí, tỉnh Quảng Ninh, gần khu vực khai thác than'),
('Vinh', NULL, 'Ga Vinh, tỉnh Nghệ An, trung tâm vùng Bắc Trung Bộ'),
('Việt Trì', NULL, 'Ga Việt Trì, tỉnh Phú Thọ, trung tâm vùng Đông Bắc'),
('Yên Bái', NULL, 'Ga Yên Bái, tỉnh Yên Bái, phục vụ khu vực Tây Bắc'),
('Yên Trung', NULL, 'Ga Yên Trung, tỉnh Hải Dương, phục vụ khu vực Đồng bằng sông Hồng'),
('Đà Nẵng', NULL, 'Ga Đà Nẵng, thành phố Đà Nẵng, trung tâm kinh tế miền Trung'),
('Đông Anh', NULL, 'Ga Đông Anh, Hà Nội, phục vụ khu vực ngoại thành thủ đô'),
('Đông Hà', NULL, 'Ga Đông Hà, tỉnh Quảng Trị, phục vụ khu vực miền Trung'),
('Đồng Hới', NULL, 'Ga Đồng Hới, tỉnh Quảng Bình, gần di sản Phong Nha - Kẻ Bàng'),
('Đồng Lê', NULL, 'Ga Đồng Lê, tỉnh Quảng Bình, phục vụ khu vực miền Trung'),
('Đồng Đăng', NULL, 'Ga Đồng Đăng, tỉnh Lạng Sơn, cửa khẩu biên giới Trung Quốc'),
('Đức Phổ', NULL, 'Ga Đức Phổ, tỉnh Quảng Ngãi, trên tuyến đường sắt Bắc - Nam'),
('Bồng Sơn', NULL, 'Ga Bồng Sơn, tỉnh Bình Định, trên tuyến đường sắt Bắc - Nam');

-- ---------------------------------------------------------------------------
INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(10, 29, '2025-02-01 06:10:00', '2025-02-01 07:11:00', 1, 233), -- 1
(29, 20, '2025-02-01 07:14:00', '2025-02-01 07:46:00', 1, 164), -- 2
(20, 23, '2025-02-01 07:49:00', '2025-02-01 08:22:00', 1, 216), -- 3 
(23, 4, '2025-02-01 08:25:00', '2025-02-01 08:55:00', 1, 61),	-- 4
(4, 36, '2025-02-01 08:58:00', '2025-02-01 09:32:00', 1, 107), -- 5
(36, 19, '2025-02-01 09:35:00', '2025-02-01 09:56:00', 1, 188), -- 6
(19, 6, '2025-02-01 10:00:00', '2025-02-01 11:16:00', 1, 70),-- 7
(6, 42, '2025-02-01 11:20:00', '2025-02-01 12:26:00', 1, 75), -- 8
(42, 45, '2025-02-01 13:00:00', '2025-02-01 13:22:00', 1, 63), -- 9
(45, 11, '2025-02-01 13:25:00', '2025-02-01 14:18:00', 1, 110), -- 10
(11, 50, '2025-02-01 14:21:00', '2025-02-01 15:20:00', 1, 52),
(50, 49, '2025-02-01 15:23:00', '2025-02-01 17:04:00', 1, 171),
(49, 48, '2025-02-01 17:07:00', '2025-02-01 18:47:00', 1, 120),
(48, 9, '2025-02-01 18:50:00', '2025-02-01 20:23:00', 1, 143),
(9, 17, '2025-02-01 20:26:00', '2025-02-01 21:45:00', 1, 113),
(17, 46, '2025-02-01 21:48:00', '2025-02-01 23:22:00', 1, 202),
(46, 39, '2025-02-01 23:25:00', '2025-02-02 00:08:00', 1, 227),
(39, 26, '2025-02-02 00:11:00', '2025-02-02 00:33:00', 1, 50),
(26, 35, '2025-02-02 00:36:00', '2025-02-02 01:06:00', 1, 87),
(35, 25, '2025-02-02 01:09:00', '2025-02-02 01:39:00', 1, 206),
(25, 32, '2025-02-02 01:42:00', '2025-02-02 02:26:00', 1, 91),
(32, 52, '2025-02-02 02:30:00', '2025-02-02 03:16:00', 1, 160),
(52, 53, '2025-02-02 03:20:00', '2025-02-02 04:11:00', 1, 50),
(53, 30, '2025-02-02 04:14:00', '2025-02-02 06:14:00', 1, 81),
(30, 40, '2025-02-02 06:17:00', '2025-02-02 08:32:00', 1, 206),
(40, 8, '2025-02-02 08:35:00', '2025-02-02 09:36:00', 1, 188),
(8, 24, '2025-02-02 10:00:00', '2025-02-02 10:28:00', 1, 82),
(24, 22, '2025-02-02 10:30:00', '2025-02-02 11:07:00', 1, 140),
(22, 21, '2025-02-02 11:10:00', '2025-02-02 12:20:00', 1, 211),
(21, 38, '2025-02-02 12:23:00', '2025-02-02 14:03:00', 1, 162),
(38, 34, '2025-02-02 14:06:00', '2025-02-02 15:18:00', 1, 233),
(34, 18, '2025-02-02 16:00:00', '2025-02-02 16:54:00', 1, 64),
(18, 2, '2025-02-02 17:00:00', '2025-02-02 17:51:00', 1, 224),
(2, 15, '2025-02-02 17:54:00', '2025-02-02 19:33:00', 1, 125),
(15, 1, '2025-02-02 19:36:00', '2025-02-02 20:38:00', 1, 168),
(1, 33, '2025-02-02 20:40:00', '2025-02-02 21:30:00', 1, 170); -- 36

INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(33, 1, '2025-02-03 06:10:00', '2025-02-03 07:12:00', 1, 62), -- 37
(1, 15, '2025-02-03 07:15:00', '2025-02-03 07:44:00', 1, 247),
(15, 2, '2025-02-03 07:47:00', '2025-02-03 08:20:00', 1, 153),
(2, 18, '2025-02-03 08:25:00', '2025-02-03 08:55:00', 1, 155),
(18, 34, '2025-02-03 8:58:00', '2025-02-03 9:32:00', 1, 73),
(34, 38, '2025-02-03 9:35:00', '2025-02-03 9:56:00', 1, 222),
(38, 21, '2025-02-03 10:00:00', '2025-02-03 11:16:00', 1, 200),
(21, 22, '2025-02-03 11:20:00', '2025-02-03 12:26:00', 1, 64),
(22, 24, '2025-02-03 13:00:00', '2025-02-03 13:22:00', 1, 248),
(24, 8, '2025-02-03 13:25:00', '2025-02-03 14:18:00', 1, 175),
(8, 40, '2025-02-03 14:21:00', '2025-02-03 15:20:00', 1, 201),
(40, 30, '2025-02-03 15:23:00', '2025-02-03 17:04:00', 1, 54),
(30, 53, '2025-02-03 17:07:00', '2025-02-03 18:47:00', 1, 186),
(53, 52, '2025-02-03 18:50:00', '2025-02-03 20:23:00', 1, 189),
(52, 32, '2025-02-03 20:26:00', '2025-02-03 21:45:00', 1, 158),
(32, 25, '2025-02-03 21:48:00', '2025-02-03 23:22:00', 1, 78),
(25, 35, '2025-02-03 23:25:00', '2025-02-04 00:08:00', 1, 82),
(35, 26, '2025-02-04 00:11:00', '2025-02-04 00:33:00', 1, 81),
(26, 39, '2025-02-04 00:36:00', '2025-02-04 01:06:00', 1, 58),
(39, 46, '2025-02-04 01:09:00', '2025-02-04 01:39:00', 1, 222),
(46, 17, '2025-02-04 01:42:00', '2025-02-04 02:26:00', 1, 123),
(17, 9, '2025-02-04 02:30:00', '2025-02-04 03:16:00', 1, 145),
(9, 48, '2025-02-04 03:20:00', '2025-02-04 04:11:00', 1, 87),
(48, 49, '2025-02-04 04:14:00', '2025-02-04 06:14:00', 1, 164),
(49, 50, '2025-02-04 6:17:00', '2025-02-04 8:32:00', 1, 209),
(50, 11, '2025-02-04 8:35:00', '2025-02-04 9:36:00', 1, 119),
(11, 45, '2025-02-04 10:00:00', '2025-02-04 10:28:00', 1, 210),
(45, 42, '2025-02-04 10:30:00', '2025-02-04 11:08:00', 1, 211),
(42, 6, '2025-02-04 11:10:00', '2025-02-04 12:20:00', 1, 121),
(6, 19, '2025-02-04 12:24:00', '2025-02-04 14:03:00', 1, 101),
(19, 36, '2025-02-04 14:06:00', '2025-02-04 15:18:00', 1, 191),
(36, 4, '2025-02-04 16:00:00', '2025-02-04 16:54:00', 1, 128),
(4, 23, '2025-02-04 17:00:00', '2025-02-04 17:51:00', 1, 86),
(23, 20, '2025-02-04 17:54:00', '2025-02-04 19:33:00', 1, 92),
(20, 29, '2025-02-04 19:36:00', '2025-02-04 20:38:00', 1, 95),
(29, 10, '2025-02-04 20:40:00', '2025-02-04 21:30:00', 1, 160); -- 72

INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(10, 29, '2025-02-01 06:10:00', '2025-02-01 07:11:00', 1, 58),-- 73
(29, 20, '2025-02-01 07:14:00', '2025-02-01 07:46:00', 1, 198),
(20, 23, '2025-02-01 07:49:00', '2025-02-01 08:22:00', 1, 187),
(23, 4, '2025-02-01 08:25:00', '2025-02-01 08:55:00', 1, 96),
(4, 36, '2025-02-01 08:58:00', '2025-02-01 09:32:00', 1, 203),
(36, 19, '2025-02-01 09:35:00', '2025-02-01 09:56:00', 1, 168),
(19, 6, '2025-02-01 10:00:00', '2025-02-01 11:16:00', 1, 167),
(6, 42, '2025-02-01 11:20:00', '2025-02-01 12:26:00', 1, 173),
(42, 45, '2025-02-01 13:00:00', '2025-02-01 13:22:00', 1, 91),
(45, 11, '2025-02-01 13:25:00', '2025-02-01 14:18:00', 1, 127),
(11, 50, '2025-02-01 14:21:00', '2025-02-01 15:20:00', 1, 64),
(50, 49, '2025-02-01 15:23:00', '2025-02-01 17:04:00', 1, 121),
(49, 48, '2025-02-01 17:07:00', '2025-02-01 18:47:00', 1, 74),
(48, 9, '2025-02-01 18:50:00', '2025-02-01 20:23:00', 1, 238),
(9, 17, '2025-02-01 20:26:00', '2025-02-01 21:45:00', 1, 166),
(17, 46, '2025-02-01 21:48:00', '2025-02-01 23:22:00', 1, 196),
(46, 39, '2025-02-01 23:25:00', '2025-02-02 00:08:00', 1, 74),
(39, 26, '2025-02-02 00:11:00', '2025-02-02 00:33:00', 1, 133),
(26, 35, '2025-02-02 00:36:00', '2025-02-02 01:06:00', 1, 123),
(35, 25, '2025-02-02 01:09:00', '2025-02-02 01:39:00', 1, 183),
(25, 32, '2025-02-02 01:42:00', '2025-02-02 02:26:00', 1, 101),
(32, 52, '2025-02-02 02:30:00', '2025-02-02 03:16:00', 1, 96),
(52, 53, '2025-02-02 03:20:00', '2025-02-02 04:11:00', 1, 96),
(53, 30, '2025-02-02 04:14:00', '2025-02-02 06:14:00', 1, 134),
(30, 40, '2025-02-02 06:17:00', '2025-02-02 08:32:00', 1, 79),
(40, 8, '2025-02-02 08:35:00', '2025-02-02 09:36:00', 1, 95),
(8, 24, '2025-02-02 10:00:00', '2025-02-02 10:28:00', 1, 81),
(24, 22, '2025-02-02 10:30:00', '2025-02-02 11:07:00', 1, 64),
(22, 21, '2025-02-02 11:10:00', '2025-02-02 12:20:00', 1, 205),
(21, 38, '2025-02-02 12:23:00', '2025-02-02 14:03:00', 1, 131),
(38, 34, '2025-02-02 14:06:00', '2025-02-02 15:18:00', 1, 70),
(34, 18, '2025-02-02 16:00:00', '2025-02-02 16:54:00', 1, 156),
(18, 2, '2025-02-02 17:00:00', '2025-02-02 17:51:00', 1, 91),
(2, 15, '2025-02-02 17:54:00', '2025-02-02 19:33:00', 1, 197),
(15, 1, '2025-02-02 19:36:00', '2025-02-02 20:38:00', 1, 207),
(1, 33, '2025-02-02 20:40:00', '2025-02-02 21:30:00', 1, 75); -- 108

INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(33, 1, '2025-02-03 06:10:00', '2025-02-03 07:12:00', 1, 235),-- 109
(1, 15, '2025-02-03 07:15:00', '2025-02-03 07:44:00', 1, 170),
(15, 2, '2025-02-03 07:47:00', '2025-02-03 08:20:00', 1, 212),
(2, 18, '2025-02-03 08:25:00', '2025-02-03 08:55:00', 1, 121),
(18, 34, '2025-02-03 8:58:00', '2025-02-03 9:32:00', 1, 153),
(34, 38, '2025-02-03 9:35:00', '2025-02-03 9:56:00', 1, 86),
(38, 21, '2025-02-03 10:00:00', '2025-02-03 11:16:00', 1, 195),
(21, 22, '2025-02-03 11:20:00', '2025-02-03 12:26:00', 1, 127),
(22, 24, '2025-02-03 13:00:00', '2025-02-03 13:22:00', 1, 227),
(24, 8, '2025-02-03 13:25:00', '2025-02-03 14:18:00', 1, 220),
(8, 40, '2025-02-03 14:21:00', '2025-02-03 15:20:00', 1, 193),
(40, 30, '2025-02-03 15:23:00', '2025-02-03 17:04:00', 1, 206),
(30, 53, '2025-02-03 17:07:00', '2025-02-03 18:47:00', 1, 230),
(53, 52, '2025-02-03 18:50:00', '2025-02-03 20:23:00', 1, 72),
(52, 32, '2025-02-03 20:26:00', '2025-02-03 21:45:00', 1, 202),
(32, 25, '2025-02-03 21:48:00', '2025-02-03 23:22:00', 1, 158),
(25, 35, '2025-02-03 23:25:00', '2025-02-04 00:08:00', 1, 242),
(35, 26, '2025-02-04 00:11:00', '2025-02-04 00:33:00', 1, 169),
(26, 39, '2025-02-04 00:36:00', '2025-02-04 01:06:00', 1, 64),
(39, 46, '2025-02-04 01:09:00', '2025-02-04 01:39:00', 1, 134),
(46, 17, '2025-02-04 01:42:00', '2025-02-04 02:26:00', 1, 177),
(17, 9, '2025-02-04 02:30:00', '2025-02-04 03:16:00', 1, 188),
(9, 48, '2025-02-04 03:20:00', '2025-02-04 04:11:00', 1, 221),
(48, 49, '2025-02-04 04:14:00', '2025-02-04 06:14:00', 1, 246),
(49, 50, '2025-02-04 6:17:00', '2025-02-04 8:32:00', 1, 57),
(50, 11, '2025-02-04 8:35:00', '2025-02-04 9:36:00', 1, 118),
(11, 45, '2025-02-04 10:00:00', '2025-02-04 10:28:00', 1, 186),
(45, 42, '2025-02-04 10:30:00', '2025-02-04 11:08:00', 1, 75),
(42, 6, '2025-02-04 11:10:00', '2025-02-04 12:20:00', 1, 171),
(6, 19, '2025-02-04 12:24:00', '2025-02-04 14:03:00', 1, 131),
(19, 36, '2025-02-04 14:06:00', '2025-02-04 15:18:00', 1, 182),
(36, 4, '2025-02-04 16:00:00', '2025-02-04 16:54:00', 1, 136),
(4, 23, '2025-02-04 17:00:00', '2025-02-04 17:51:00', 1, 79),
(23, 20, '2025-02-04 17:54:00', '2025-02-04 19:33:00', 1, 216),
(20, 29, '2025-02-04 19:36:00', '2025-02-04 20:38:00', 1, 178),
(29, 10, '2025-02-04 20:40:00', '2025-02-04 21:30:00', 1, 226);-- 144

INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(10, 29, '2025-02-05 06:10:00', '2025-02-05 07:11:00', 1, 111),-- 145
(29, 20, '2025-02-05 07:14:00', '2025-02-05 07:46:00', 1, 181),
(20, 23, '2025-02-05 07:49:00', '2025-02-05 08:22:00', 1, 248),
(23, 4, '2025-02-05 08:25:00', '2025-02-05 08:55:00', 1, 150),
(4, 36, '2025-02-05 08:58:00', '2025-02-05 09:32:00', 1, 65),
(36, 19, '2025-02-05 09:35:00', '2025-02-05 09:56:00', 1, 86),
(19, 6, '2025-02-05 10:00:00', '2025-02-05 11:16:00', 1, 248),
(6, 42, '2025-02-05 11:20:00', '2025-02-05 12:26:00', 1, 94),
(42, 45, '2025-02-05 13:00:00', '2025-02-05 13:22:00', 1, 113),
(45, 11, '2025-02-05 13:25:00', '2025-02-05 14:18:00', 1, 146),
(11, 50, '2025-02-05 14:21:00', '2025-02-05 15:20:00', 1, 54),
(50, 49, '2025-02-05 15:23:00', '2025-02-05 17:04:00', 1, 104),
(49, 48, '2025-02-05 17:07:00', '2025-02-05 18:47:00', 1, 224),
(48, 9, '2025-02-05 18:50:00', '2025-02-05 20:23:00', 1, 141),
(9, 17, '2025-02-05 20:26:00', '2025-02-05 21:45:00', 1, 59),
(17, 46, '2025-02-05 21:48:00', '2025-02-05 23:22:00', 1, 119),
(46, 39, '2025-02-05 23:25:00', '2025-02-06 00:08:00', 1, 167),
(39, 26, '2025-02-06 00:11:00', '2025-02-06 00:33:00', 1, 72),
(26, 35, '2025-02-06 00:36:00', '2025-02-06 01:06:00', 1, 57),
(35, 25, '2025-02-06 01:09:00', '2025-02-06 01:39:00', 1, 195),
(25, 32, '2025-02-06 01:42:00', '2025-02-06 02:26:00', 1, 113),
(32, 52, '2025-02-06 02:30:00', '2025-02-06 03:16:00', 1, 121),
(52, 53, '2025-02-06 03:20:00', '2025-02-06 04:11:00', 1, 84),
(53, 30, '2025-02-06 04:14:00', '2025-02-06 06:14:00', 1, 249),
(30, 40, '2025-02-06 06:17:00', '2025-02-06 08:32:00', 1, 226),
(40, 8, '2025-02-06 08:35:00', '2025-02-06 09:36:00', 1, 116),
(8, 24, '2025-02-06 10:00:00', '2025-02-06 10:28:00', 1, 167),
(24, 22, '2025-02-06 10:30:00', '2025-02-06 11:07:00', 1, 102),
(22, 21, '2025-02-06 11:10:00', '2025-02-06 12:20:00', 1, 145),
(21, 38, '2025-02-06 12:23:00', '2025-02-06 14:03:00', 1, 136),
(38, 34, '2025-02-06 14:06:00', '2025-02-06 15:18:00', 1, 80),
(34, 18, '2025-02-06 16:00:00', '2025-02-06 16:54:00', 1, 104),
(18, 2, '2025-02-06 17:00:00', '2025-02-06 17:51:00', 1, 102),
(2, 15, '2025-02-06 17:54:00', '2025-02-06 19:33:00', 1, 58),
(15, 1, '2025-02-06 19:36:00', '2025-02-06 20:38:00', 1, 69),
(1, 33, '2025-02-06 20:40:00', '2025-02-06 21:30:00', 1, 142); -- 180

INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(33, 1, '2025-02-07 06:10:00', '2025-02-07 07:12:00', 1, 194),-- 181
(1, 15, '2025-02-07 07:15:00', '2025-02-07 07:44:00', 1, 185),
(15, 2, '2025-02-07 07:47:00', '2025-02-07 08:20:00', 1, 84),
(2, 18, '2025-02-07 08:25:00', '2025-02-07 08:55:00', 1, 54),
(18, 34, '2025-02-07 8:58:00', '2025-02-07 9:32:00', 1, 106),
(34, 38, '2025-02-07 9:35:00', '2025-02-07 9:56:00', 1, 165),
(38, 21, '2025-02-07 10:00:00', '2025-02-07 11:16:00', 1, 71),
(21, 22, '2025-02-07 11:20:00', '2025-02-07 12:26:00', 1, 92),
(22, 24, '2025-02-07 13:00:00', '2025-02-07 13:22:00', 1, 50),
(24, 8, '2025-02-07 13:25:00', '2025-02-07 14:18:00', 1, 72),
(8, 40, '2025-02-07 14:21:00', '2025-02-07 15:20:00', 1, 195),
(40, 30, '2025-02-07 15:23:00', '2025-02-07 17:04:00', 1, 90),
(30, 53, '2025-02-07 17:07:00', '2025-02-07 18:47:00', 1, 240),
(53, 52, '2025-02-07 18:50:00', '2025-02-07 20:23:00', 1, 172),
(52, 32, '2025-02-07 20:26:00', '2025-02-07 21:45:00', 1, 132),
(32, 25, '2025-02-07 21:48:00', '2025-02-07 23:22:00', 1, 221),
(25, 35, '2025-02-07 23:25:00', '2025-02-08 00:08:00', 1, 148),
(35, 26, '2025-02-08 00:11:00', '2025-02-08 00:33:00', 1, 218),
(26, 39, '2025-02-08 00:36:00', '2025-02-08 01:06:00', 1, 152),
(39, 46, '2025-02-08 01:09:00', '2025-02-08 01:39:00', 1, 183),
(46, 17, '2025-02-08 01:42:00', '2025-02-08 02:26:00', 1, 139),
(17, 9, '2025-02-08 02:30:00', '2025-02-08 03:16:00', 1, 141),
(9, 48, '2025-02-08 03:20:00', '2025-02-08 04:11:00', 1, 133),
(48, 49, '2025-02-08 04:14:00', '2025-02-08 06:14:00', 1, 56),
(49, 50, '2025-02-08 6:17:00', '2025-02-08 8:32:00', 1, 181),
(50, 11, '2025-02-08 8:35:00', '2025-02-08 9:36:00', 1, 159),
(11, 45, '2025-02-08 10:00:00', '2025-02-08 10:28:00', 1, 87),
(45, 42, '2025-02-08 10:30:00', '2025-02-08 11:08:00', 1, 105),
(42, 6, '2025-02-08 11:10:00', '2025-02-08 12:20:00', 1, 214),
(6, 19, '2025-02-08 12:24:00', '2025-02-08 14:03:00', 1, 163),
(19, 36, '2025-02-08 14:06:00', '2025-02-08 15:18:00', 1, 243),
(36, 4, '2025-02-08 16:00:00', '2025-02-08 16:54:00', 1, 74),
(4, 23, '2025-02-08 17:00:00', '2025-02-08 17:51:00', 1, 61),
(23, 20, '2025-02-08 17:54:00', '2025-02-08 19:33:00', 1, 117),
(20, 29, '2025-02-08 19:36:00', '2025-02-08 20:38:00', 1, 124),
(29, 10, '2025-02-08 20:40:00', '2025-02-08 21:30:00', 1, 148); -- 216

INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(10, 29, '2025-02-09 06:10:00', '2025-02-09 07:11:00', 1, 114), -- 217
(29, 20, '2025-02-09 07:14:00', '2025-02-09 07:46:00', 1, 105),
(20, 23, '2025-02-09 07:49:00', '2025-02-09 08:22:00', 1, 89),
(23, 4, '2025-02-09 08:25:00', '2025-02-09 08:55:00', 1, 61),
(4, 36, '2025-02-09 08:58:00', '2025-02-09 09:32:00', 1, 144),
(36, 19, '2025-02-09 09:35:00', '2025-02-09 09:56:00', 1, 226),
(19, 6, '2025-02-09 10:00:00', '2025-02-09 11:16:00', 1, 55),
(6, 42, '2025-02-09 11:20:00', '2025-02-09 12:26:00', 1, 143),
(42, 45, '2025-02-09 13:00:00', '2025-02-09 13:22:00', 1, 98),
(45, 11, '2025-02-09 13:25:00', '2025-02-09 14:18:00', 1, 69),
(11, 50, '2025-02-09 14:21:00', '2025-02-09 15:20:00', 1, 55),
(50, 49, '2025-02-09 15:23:00', '2025-02-09 17:04:00', 1, 224),
(49, 48, '2025-02-09 17:07:00', '2025-02-09 18:47:00', 1, 248),
(48, 9, '2025-02-09 18:50:00', '2025-02-09 20:23:00', 1, 175),
(9, 17, '2025-02-09 20:26:00', '2025-02-09 21:45:00', 1, 76),
(17, 46, '2025-02-09 21:48:00', '2025-02-09 23:22:00', 1, 113),
(46, 39, '2025-02-09 23:25:00', '2025-02-10 00:08:00', 1, 164),
(39, 26, '2025-02-10 00:11:00', '2025-02-10 00:33:00', 1, 167),
(26, 35, '2025-02-10 00:36:00', '2025-02-10 01:06:00', 1, 70),
(35, 25, '2025-02-10 01:09:00', '2025-02-10 01:39:00', 1, 193),
(25, 32, '2025-02-10 01:42:00', '2025-02-10 02:26:00', 1, 151),
(32, 52, '2025-02-10 02:30:00', '2025-02-10 03:16:00', 1, 132),
(52, 53, '2025-02-10 03:20:00', '2025-02-10 04:11:00', 1, 222),
(53, 30, '2025-02-10 04:14:00', '2025-02-10 06:14:00', 1, 92),
(30, 40, '2025-02-10 06:17:00', '2025-02-10 08:32:00', 1, 149),
(40, 8, '2025-02-10 08:35:00', '2025-02-10 09:36:00', 1, 129),
(8, 24, '2025-02-10 10:00:00', '2025-02-10 10:28:00', 1, 212),
(24, 22, '2025-02-10 10:30:00', '2025-02-10 11:07:00', 1, 78),
(22, 21, '2025-02-10 11:10:00', '2025-02-10 12:20:00', 1, 98),
(21, 38, '2025-02-10 12:23:00', '2025-02-10 14:03:00', 1, 80),
(38, 34, '2025-02-10 14:06:00', '2025-02-10 15:18:00', 1, 75),
(34, 18, '2025-02-10 16:00:00', '2025-02-10 16:54:00', 1, 72),
(18, 2, '2025-02-10 17:00:00', '2025-02-10 17:51:00', 1, 112),
(2, 15, '2025-02-10 17:54:00', '2025-02-10 19:33:00', 1, 224),
(15, 1, '2025-02-10 19:36:00', '2025-02-10 20:38:00', 1, 207),
(1, 33, '2025-02-10 20:40:00', '2025-02-10 21:30:00', 1, 93); -- 252

INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(33, 1, '2025-02-11 06:10:00', '2025-02-11 07:12:00', 1, 184)1 -- 253,
(1, 15, '2025-02-11 07:15:00', '2025-02-11 07:44:00', 1, 99),
(15, 2, '2025-02-11 07:47:00', '2025-02-11 08:20:00', 1, 57),
(2, 18, '2025-02-11 08:25:00', '2025-02-11 08:55:00', 1, 249),
(18, 34, '2025-02-11 8:58:00', '2025-02-11 9:32:00', 1, 177),
(34, 38, '2025-02-11 9:35:00', '2025-02-11 9:56:00', 1, 244),
(38, 21, '2025-02-11 10:00:00', '2025-02-11 11:16:00', 1, 190),
(21, 22, '2025-02-11 11:20:00', '2025-02-11 12:26:00', 1, 69),
(22, 24, '2025-02-11 13:00:00', '2025-02-11 13:22:00', 1, 148),
(24, 8, '2025-02-11 13:25:00', '2025-02-11 14:18:00', 1, 88),
(8, 40, '2025-02-11 14:21:00', '2025-02-11 15:20:00', 1, 214),
(40, 30, '2025-02-11 15:23:00', '2025-02-11 17:04:00', 1, 188),
(30, 53, '2025-02-11 17:07:00', '2025-02-11 18:47:00', 1, 85),
(53, 52, '2025-02-11 18:50:00', '2025-02-11 20:23:00', 1, 182),
(52, 32, '2025-02-11 20:26:00', '2025-02-11 21:45:00', 1, 136),
(32, 25, '2025-02-11 21:48:00', '2025-02-11 23:22:00', 1, 153),
(25, 35, '2025-02-11 23:25:00', '2025-02-12 00:08:00', 1, 88),
(35, 26, '2025-02-12 00:11:00', '2025-02-12 00:33:00', 1, 209),
(26, 39, '2025-02-12 00:36:00', '2025-02-12 01:06:00', 1, 50),
(39, 46, '2025-02-12 01:09:00', '2025-02-12 01:39:00', 1, 191),
(46, 17, '2025-02-12 01:42:00', '2025-02-12 02:26:00', 1, 206),
(17, 9, '2025-02-12 02:30:00', '2025-02-12 03:16:00', 1, 173),
(9, 48, '2025-02-12 03:20:00', '2025-02-12 04:11:00', 1, 52),
(48, 49, '2025-02-12 04:14:00', '2025-02-12 06:14:00', 1, 102),
(49, 50, '2025-02-12 6:17:00', '2025-02-12 8:32:00', 1, 133),
(50, 11, '2025-02-12 8:35:00', '2025-02-12 9:36:00', 1, 119),
(11, 45, '2025-02-12 10:00:00', '2025-02-12 10:28:00', 1, 126),
(45, 42, '2025-02-12 10:30:00', '2025-02-12 11:08:00', 1, 206),
(42, 6, '2025-02-12 11:10:00', '2025-02-12 12:20:00', 1, 220),
(6, 19, '2025-02-12 12:24:00', '2025-02-12 14:03:00', 1, 110),
(19, 36, '2025-02-12 14:06:00', '2025-02-12 15:18:00', 1, 58),
(36, 4, '2025-02-12 16:00:00', '2025-02-12 16:54:00', 1, 189),
(4, 23, '2025-02-12 17:00:00', '2025-02-12 17:51:00', 1, 164),
(23, 20, '2025-02-12 17:54:00', '2025-02-12 19:33:00', 1, 124),
(20, 29, '2025-02-12 19:36:00', '2025-02-12 20:38:00', 1, 77),
(29, 10, '2025-02-12 20:40:00', '2025-02-12 21:30:00', 1, 83); -- 288

INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(10, 29, '2025-02-13 06:10:00', '2025-02-13 07:11:00', 1, 210), -- 289
(29, 20, '2025-02-13 07:14:00', '2025-02-13 07:46:00', 1, 235),
(20, 23, '2025-02-13 07:49:00', '2025-02-13 08:22:00', 1, 98),
(23, 4, '2025-02-13 08:25:00', '2025-02-13 08:55:00', 1, 156),
(4, 36, '2025-02-13 08:58:00', '2025-02-13 09:32:00', 1, 130),
(36, 19, '2025-02-13 09:35:00', '2025-02-13 09:56:00', 1, 192),
(19, 6, '2025-02-13 10:00:00', '2025-02-13 11:16:00', 1, 99),
(6, 42, '2025-02-13 11:20:00', '2025-02-13 12:26:00', 1, 77),
(42, 45, '2025-02-13 13:00:00', '2025-02-13 13:22:00', 1, 212),
(45, 11, '2025-02-13 13:25:00', '2025-02-13 14:18:00', 1, 185),
(11, 50, '2025-02-13 14:21:00', '2025-02-13 15:20:00', 1, 202),
(50, 49, '2025-02-13 15:23:00', '2025-02-13 17:04:00', 1, 173),
(49, 48, '2025-02-13 17:07:00', '2025-02-13 18:47:00', 1, 170),
(48, 9, '2025-02-13 18:50:00', '2025-02-13 20:23:00', 1, 187),
(9, 17, '2025-02-13 20:26:00', '2025-02-13 21:45:00', 1, 70),
(17, 46, '2025-02-13 21:48:00', '2025-02-13 23:22:00', 1, 236),
(46, 39, '2025-02-13 23:25:00', '2025-02-14 00:08:00', 1, 207),
(39, 26, '2025-02-14 00:11:00', '2025-02-14 00:33:00', 1, 114),
(26, 35, '2025-02-14 00:36:00', '2025-02-14 01:06:00', 1, 90),
(35, 25, '2025-02-14 01:09:00', '2025-02-14 01:39:00', 1, 64),
(25, 32, '2025-02-14 01:42:00', '2025-02-14 02:26:00', 1, 131),
(32, 52, '2025-02-14 02:30:00', '2025-02-14 03:16:00', 1, 237),
(52, 53, '2025-02-14 03:20:00', '2025-02-14 04:11:00', 1, 163),
(53, 30, '2025-02-14 04:14:00', '2025-02-14 06:14:00', 1, 114),
(30, 40, '2025-02-14 06:17:00', '2025-02-14 08:32:00', 1, 78),
(40, 8, '2025-02-14 08:35:00', '2025-02-14 09:36:00', 1, 130),
(8, 24, '2025-02-14 10:00:00', '2025-02-14 10:28:00', 1, 223),
(24, 22, '2025-02-14 10:30:00', '2025-02-14 11:07:00', 1, 86),
(22, 21, '2025-02-14 11:10:00', '2025-02-14 12:20:00', 1, 84),
(21, 38, '2025-02-14 12:23:00', '2025-02-14 14:03:00', 1, 200),
(38, 34, '2025-02-14 14:06:00', '2025-02-14 15:18:00', 1, 213),
(34, 18, '2025-02-14 16:00:00', '2025-02-14 16:54:00', 1, 75),
(18, 2, '2025-02-14 17:00:00', '2025-02-14 17:51:00', 1, 137),
(2, 15, '2025-02-14 17:54:00', '2025-02-14 19:33:00', 1, 152),
(15, 1, '2025-02-14 19:36:00', '2025-02-14 20:38:00', 1, 167),
(1, 33, '2025-02-14 20:40:00', '2025-02-14 21:30:00', 1, 233); -- 324

INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(33, 1, '2025-02-15 06:10:00', '2025-02-15 07:12:00', 1, 54), -- 325
(1, 15, '2025-02-15 07:15:00', '2025-02-15 07:44:00', 1, 75),
(15, 2, '2025-02-15 07:47:00', '2025-02-15 08:20:00', 1, 133),
(2, 18, '2025-02-15 08:25:00', '2025-02-15 08:55:00', 1, 129),
(18, 34, '2025-02-15 8:58:00', '2025-02-15 9:32:00', 1, 233),
(34, 38, '2025-02-15 9:35:00', '2025-02-15 9:56:00', 1, 67),
(38, 21, '2025-02-15 10:00:00', '2025-02-15 11:16:00', 1, 236),
(21, 22, '2025-02-15 11:20:00', '2025-02-15 12:26:00', 1, 234),
(22, 24, '2025-02-15 13:00:00', '2025-02-15 13:22:00', 1, 65),
(24, 8, '2025-02-15 13:25:00', '2025-02-15 14:18:00', 1, 219),
(8, 40, '2025-02-15 14:21:00', '2025-02-15 15:20:00', 1, 65),
(40, 30, '2025-02-15 15:23:00', '2025-02-15 17:04:00', 1, 124),
(30, 53, '2025-02-15 17:07:00', '2025-02-15 18:47:00', 1, 129),
(53, 52, '2025-02-15 18:50:00', '2025-02-15 20:23:00', 1, 245),
(52, 32, '2025-02-15 20:26:00', '2025-02-15 21:45:00', 1, 111),
(32, 25, '2025-02-15 21:48:00', '2025-02-15 23:22:00', 1, 166),
(25, 35, '2025-02-15 23:25:00', '2025-02-16 00:08:00', 1, 194),
(35, 26, '2025-02-16 00:11:00', '2025-02-16 00:33:00', 1, 184),
(26, 39, '2025-02-16 00:36:00', '2025-02-16 01:06:00', 1, 66),
(39, 46, '2025-02-16 01:09:00', '2025-02-16 01:39:00', 1, 106),
(46, 17, '2025-02-16 01:42:00', '2025-02-16 02:26:00', 1, 66),
(17, 9, '2025-02-16 02:30:00', '2025-02-16 03:16:00', 1, 142),
(9, 48, '2025-02-16 03:20:00', '2025-02-16 04:11:00', 1, 206),
(48, 49, '2025-02-16 04:14:00', '2025-02-16 06:14:00', 1, 224),
(49, 50, '2025-02-16 6:17:00', '2025-02-16 8:32:00', 1, 118),
(50, 11, '2025-02-16 8:35:00', '2025-02-16 9:36:00', 1, 86),
(11, 45, '2025-02-16 10:00:00', '2025-02-16 10:28:00', 1, 195),
(45, 42, '2025-02-16 10:30:00', '2025-02-16 11:08:00', 1, 72),
(42, 6, '2025-02-16 11:10:00', '2025-02-16 12:20:00', 1, 92),
(6, 19, '2025-02-16 12:24:00', '2025-02-16 14:03:00', 1, 63),
(19, 36, '2025-02-16 14:06:00', '2025-02-16 15:18:00', 1, 205),
(36, 4, '2025-02-16 16:00:00', '2025-02-16 16:54:00', 1, 151),
(4, 23, '2025-02-16 17:00:00', '2025-02-16 17:51:00', 1, 84),
(23, 20, '2025-02-16 17:54:00', '2025-02-16 19:33:00', 1, 249),
(20, 29, '2025-02-16 19:36:00', '2025-02-16 20:38:00', 1, 106),
(29, 10, '2025-02-16 20:40:00', '2025-02-16 21:30:00', 1, 232); -- 360

INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(10, 29, '2025-02-17 06:10:00', '2025-02-17 07:11:00', 1, 246),
(29, 20, '2025-02-17 07:14:00', '2025-02-17 07:46:00', 1, 113),
(20, 23, '2025-02-17 07:49:00', '2025-02-17 08:22:00', 1, 74),
(23, 4, '2025-02-17 08:25:00', '2025-02-17 08:55:00', 1, 204),
(4, 36, '2025-02-17 08:58:00', '2025-02-17 09:32:00', 1, 94),
(36, 19, '2025-02-17 09:35:00', '2025-02-17 09:56:00', 1, 146),
(19, 6, '2025-02-17 10:00:00', '2025-02-17 11:16:00', 1, 248),
(6, 42, '2025-02-17 11:20:00', '2025-02-17 12:26:00', 1, 68),
(42, 45, '2025-02-17 13:00:00', '2025-02-17 13:22:00', 1, 170),
(45, 11, '2025-02-17 13:25:00', '2025-02-17 14:18:00', 1, 191),
(11, 50, '2025-02-17 14:21:00', '2025-02-17 15:20:00', 1, 238),
(50, 49, '2025-02-17 15:23:00', '2025-02-17 17:04:00', 1, 61),
(49, 48, '2025-02-17 17:07:00', '2025-02-17 18:47:00', 1, 238),
(48, 9, '2025-02-17 18:50:00', '2025-02-17 20:23:00', 1, 103),
(9, 17, '2025-02-17 20:26:00', '2025-02-17 21:45:00', 1, 116),
(17, 46, '2025-02-17 21:48:00', '2025-02-17 23:22:00', 1, 183),
(46, 39, '2025-02-17 23:25:00', '2025-02-18 00:08:00', 1, 145),
(39, 26, '2025-02-18 00:11:00', '2025-02-18 00:33:00', 1, 204),
(26, 35, '2025-02-18 00:36:00', '2025-02-18 01:06:00', 1, 113),
(35, 25, '2025-02-18 01:09:00', '2025-02-18 01:39:00', 1, 204),
(25, 32, '2025-02-18 01:42:00', '2025-02-18 02:26:00', 1, 51),
(32, 52, '2025-02-18 02:30:00', '2025-02-18 03:16:00', 1, 54),
(52, 53, '2025-02-18 03:20:00', '2025-02-18 04:11:00', 1, 57),
(53, 30, '2025-02-18 04:14:00', '2025-02-18 06:14:00', 1, 177),
(30, 40, '2025-02-18 06:17:00', '2025-02-18 08:32:00', 1, 128),
(40, 8, '2025-02-18 08:35:00', '2025-02-18 09:36:00', 1, 239),
(8, 24, '2025-02-18 10:00:00', '2025-02-18 10:28:00', 1, 206),
(24, 22, '2025-02-18 10:30:00', '2025-02-18 11:07:00', 1, 158),
(22, 21, '2025-02-18 11:10:00', '2025-02-18 12:20:00', 1, 169),
(21, 38, '2025-02-18 12:23:00', '2025-02-18 14:03:00', 1, 153),
(38, 34, '2025-02-18 14:06:00', '2025-02-18 15:18:00', 1, 67),
(34, 18, '2025-02-18 16:00:00', '2025-02-18 16:54:00', 1, 174),
(18, 2, '2025-02-18 17:00:00', '2025-02-18 17:51:00', 1, 238),
(2, 15, '2025-02-18 17:54:00', '2025-02-18 19:33:00', 1, 191),
(15, 1, '2025-02-18 19:36:00', '2025-02-18 20:38:00', 1, 101),
(1, 33, '2025-02-18 20:40:00', '2025-02-18 21:30:00', 1, 68);-- 396

INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(33, 1, '2025-02-19 06:10:00', '2025-02-19 07:12:00', 1, 164),
(1, 15, '2025-02-19 07:15:00', '2025-02-19 07:44:00', 1, 124),
(15, 2, '2025-02-19 07:47:00', '2025-02-19 08:20:00', 1, 248),
(2, 18, '2025-02-19 08:25:00', '2025-02-19 08:55:00', 1, 69),
(18, 34, '2025-02-19 8:58:00', '2025-02-19 9:32:00', 1, 220),
(34, 38, '2025-02-19 9:35:00', '2025-02-19 9:56:00', 1, 220),
(38, 21, '2025-02-19 10:00:00', '2025-02-19 11:16:00', 1, 51),
(21, 22, '2025-02-19 11:20:00', '2025-02-19 12:26:00', 1, 194),
(22, 24, '2025-02-19 13:00:00', '2025-02-19 13:22:00', 1, 216),
(24, 8, '2025-02-19 13:25:00', '2025-02-19 14:18:00', 1, 53),
(8, 40, '2025-02-19 14:21:00', '2025-02-19 15:20:00', 1, 241),
(40, 30, '2025-02-19 15:23:00', '2025-02-19 17:04:00', 1, 53),
(30, 53, '2025-02-19 17:07:00', '2025-02-19 18:47:00', 1, 137),
(53, 52, '2025-02-19 18:50:00', '2025-02-19 20:23:00', 1, 92),
(52, 32, '2025-02-19 20:26:00', '2025-02-19 21:45:00', 1, 83),
(32, 25, '2025-02-19 21:48:00', '2025-02-19 23:22:00', 1, 231),
(25, 35, '2025-02-19 23:25:00', '2025-02-20 00:08:00', 1, 236),
(35, 26, '2025-02-20 00:11:00', '2025-02-20 00:33:00', 1, 123),
(26, 39, '2025-02-20 00:36:00', '2025-02-20 01:06:00', 1, 236),
(39, 46, '2025-02-20 01:09:00', '2025-02-20 01:39:00', 1, 199),
(46, 17, '2025-02-20 01:42:00', '2025-02-20 02:26:00', 1, 106),
(17, 9, '2025-02-20 02:30:00', '2025-02-20 03:16:00', 1, 80),
(9, 48, '2025-02-20 03:20:00', '2025-02-20 04:11:00', 1, 222),
(48, 49, '2025-02-20 04:14:00', '2025-02-20 06:14:00', 1, 230),
(49, 50, '2025-02-20 6:17:00', '2025-02-20 8:32:00', 1, 202),
(50, 11, '2025-02-20 8:35:00', '2025-02-20 9:36:00', 1, 180),
(11, 45, '2025-02-20 10:00:00', '2025-02-20 10:28:00', 1, 121),
(45, 42, '2025-02-20 10:30:00', '2025-02-20 11:08:00', 1, 209),
(42, 6, '2025-02-20 11:10:00', '2025-02-20 12:20:00', 1, 83),
(6, 19, '2025-02-20 12:24:00', '2025-02-20 14:03:00', 1, 164),
(19, 36, '2025-02-20 14:06:00', '2025-02-20 15:18:00', 1, 200),
(36, 4, '2025-02-20 16:00:00', '2025-02-20 16:54:00', 1, 144),
(4, 23, '2025-02-20 17:00:00', '2025-02-20 17:51:00', 1, 113),
(23, 20, '2025-02-20 17:54:00', '2025-02-20 19:33:00', 1, 84),
(20, 29, '2025-02-20 19:36:00', '2025-02-20 20:38:00', 1, 187),
(29, 10, '2025-02-20 20:40:00', '2025-02-20 21:30:00', 1, 185);-- 432

INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(10, 29, '2025-02-21 06:10:00', '2025-02-21 07:11:00', 1, 151),
(29, 20, '2025-02-21 07:14:00', '2025-02-21 07:46:00', 1, 60),
(20, 23, '2025-02-21 07:49:00', '2025-02-21 08:22:00', 1, 204),
(23, 4, '2025-02-21 08:25:00', '2025-02-21 08:55:00', 1, 178),
(4, 36, '2025-02-21 08:58:00', '2025-02-21 09:32:00', 1, 179),
(36, 19, '2025-02-21 09:35:00', '2025-02-21 09:56:00', 1, 213),
(19, 6, '2025-02-21 10:00:00', '2025-02-21 11:16:00', 1, 242),
(6, 42, '2025-02-21 11:20:00', '2025-02-21 12:26:00', 1, 145),
(42, 45, '2025-02-21 13:00:00', '2025-02-21 13:22:00', 1, 187),
(45, 11, '2025-02-21 13:25:00', '2025-02-21 14:18:00', 1, 241),
(11, 50, '2025-02-21 14:21:00', '2025-02-21 15:20:00', 1, 242),
(50, 49, '2025-02-21 15:23:00', '2025-02-21 17:04:00', 1, 197),
(49, 48, '2025-02-21 17:07:00', '2025-02-21 18:47:00', 1, 75),
(48, 9, '2025-02-21 18:50:00', '2025-02-21 20:23:00', 1, 190),
(9, 17, '2025-02-21 20:26:00', '2025-02-21 21:45:00', 1, 124),
(17, 46, '2025-02-21 21:48:00', '2025-02-21 23:22:00', 1, 80),
(46, 39, '2025-02-21 23:25:00', '2025-02-22 00:08:00', 1, 104),
(39, 26, '2025-02-22 00:11:00', '2025-02-22 00:33:00', 1, 84),
(26, 35, '2025-02-22 00:36:00', '2025-02-22 01:06:00', 1, 126),
(35, 25, '2025-02-22 01:09:00', '2025-02-22 01:39:00', 1, 64),
(25, 32, '2025-02-22 01:42:00', '2025-02-22 02:26:00', 1, 153),
(32, 52, '2025-02-22 02:30:00', '2025-02-22 03:16:00', 1, 124),
(52, 53, '2025-02-22 03:20:00', '2025-02-22 04:11:00', 1, 140),
(53, 30, '2025-02-22 04:14:00', '2025-02-22 06:14:00', 1, 206),
(30, 40, '2025-02-22 06:17:00', '2025-02-22 08:32:00', 1, 119),
(40, 8, '2025-02-22 08:35:00', '2025-02-22 09:36:00', 1, 147),
(8, 24, '2025-02-22 10:00:00', '2025-02-22 10:28:00', 1, 105),
(24, 22, '2025-02-22 10:30:00', '2025-02-22 11:07:00', 1, 137),
(22, 21, '2025-02-22 11:10:00', '2025-02-22 12:20:00', 1, 152),
(21, 38, '2025-02-22 12:23:00', '2025-02-22 14:03:00', 1, 126),
(38, 34, '2025-02-22 14:06:00', '2025-02-22 15:18:00', 1, 56),
(34, 18, '2025-02-22 16:00:00', '2025-02-22 16:54:00', 1, 199),
(18, 2, '2025-02-22 17:00:00', '2025-02-22 17:51:00', 1, 53),
(2, 15, '2025-02-22 17:54:00', '2025-02-22 19:33:00', 1, 179),
(15, 1, '2025-02-22 19:36:00', '2025-02-22 20:38:00', 1, 194),
(1, 33, '2025-02-22 20:40:00', '2025-02-22 21:30:00', 1, 152);-- 468

INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(33, 1, '2025-02-23 06:10:00', '2025-02-23 07:12:00', 1, 112),
(1, 15, '2025-02-23 07:15:00', '2025-02-23 07:44:00', 1, 180),
(15, 2, '2025-02-23 07:47:00', '2025-02-23 08:20:00', 1, 74),
(2, 18, '2025-02-23 08:25:00', '2025-02-23 08:55:00', 1, 98),
(18, 34, '2025-02-23 8:58:00', '2025-02-23 9:32:00', 1, 133),
(34, 38, '2025-02-23 9:35:00', '2025-02-23 9:56:00', 1, 181),
(38, 21, '2025-02-23 10:00:00', '2025-02-23 11:16:00', 1, 194),
(21, 22, '2025-02-23 11:20:00', '2025-02-23 12:26:00', 1, 87),
(22, 24, '2025-02-23 13:00:00', '2025-02-23 13:22:00', 1, 187),
(24, 8, '2025-02-23 13:25:00', '2025-02-23 14:18:00', 1, 203),
(8, 40, '2025-02-23 14:21:00', '2025-02-23 15:20:00', 1, 135),
(40, 30, '2025-02-23 15:23:00', '2025-02-23 17:04:00', 1, 142),
(30, 53, '2025-02-23 17:07:00', '2025-02-23 18:47:00', 1, 127),
(53, 52, '2025-02-23 18:50:00', '2025-02-23 20:23:00', 1, 151),
(52, 32, '2025-02-23 20:26:00', '2025-02-23 21:45:00', 1, 58),
(32, 25, '2025-02-23 21:48:00', '2025-02-23 23:22:00', 1, 68),
(25, 35, '2025-02-23 23:25:00', '2025-02-24 00:08:00', 1, 168),
(35, 26, '2025-02-24 00:11:00', '2025-02-24 00:33:00', 1, 113),
(26, 39, '2025-02-24 00:36:00', '2025-02-24 01:06:00', 1, 160),
(39, 46, '2025-02-24 01:09:00', '2025-02-24 01:39:00', 1, 190),
(46, 17, '2025-02-24 01:42:00', '2025-02-24 02:26:00', 1, 71),
(17, 9, '2025-02-24 02:30:00', '2025-02-24 03:16:00', 1, 122),
(9, 48, '2025-02-24 03:20:00', '2025-02-24 04:11:00', 1, 236),
(48, 49, '2025-02-24 04:14:00', '2025-02-24 06:14:00', 1, 114),
(49, 50, '2025-02-24 6:17:00', '2025-02-24 8:32:00', 1, 122),
(50, 11, '2025-02-24 8:35:00', '2025-02-24 9:36:00', 1, 144),
(11, 45, '2025-02-24 10:00:00', '2025-02-24 10:28:00', 1, 208),
(45, 42, '2025-02-24 10:30:00', '2025-02-24 11:08:00', 1, 181),
(42, 6, '2025-02-24 11:10:00', '2025-02-24 12:20:00', 1, 62),
(6, 19, '2025-02-24 12:24:00', '2025-02-24 14:03:00', 1, 146),
(19, 36, '2025-02-24 14:06:00', '2025-02-24 15:18:00', 1, 175),
(36, 4, '2025-02-24 16:00:00', '2025-02-24 16:54:00', 1, 206),
(4, 23, '2025-02-24 17:00:00', '2025-02-24 17:51:00', 1, 146),
(23, 20, '2025-02-24 17:54:00', '2025-02-24 19:33:00', 1, 181),
(20, 29, '2025-02-24 19:36:00', '2025-02-24 20:38:00', 1, 112),
(29, 10, '2025-02-24 20:40:00', '2025-02-24 21:30:00', 1, 141); -- 504

INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(10, 29, '2025-02-25 06:10:00', '2025-02-25 07:11:00', 1, 231),
(29, 20, '2025-02-25 07:14:00', '2025-02-25 07:46:00', 1, 139),
(20, 23, '2025-02-25 07:49:00', '2025-02-25 08:22:00', 1, 55),
(23, 4, '2025-02-25 08:25:00', '2025-02-25 08:55:00', 1, 128),
(4, 36, '2025-02-25 08:58:00', '2025-02-25 09:32:00', 1, 169),
(36, 19, '2025-02-25 09:35:00', '2025-02-25 09:56:00', 1, 113),
(19, 6, '2025-02-25 10:00:00', '2025-02-25 11:16:00', 1, 92),
(6, 42, '2025-02-25 11:20:00', '2025-02-25 12:26:00', 1, 147),
(42, 45, '2025-02-25 13:00:00', '2025-02-25 13:22:00', 1, 167),
(45, 11, '2025-02-25 13:25:00', '2025-02-25 14:18:00', 1, 98),
(11, 50, '2025-02-25 14:21:00', '2025-02-25 15:20:00', 1, 248),
(50, 49, '2025-02-25 15:23:00', '2025-02-25 17:04:00', 1, 57),
(49, 48, '2025-02-25 17:07:00', '2025-02-25 18:47:00', 1, 201),
(48, 9, '2025-02-25 18:50:00', '2025-02-25 20:23:00', 1, 185),
(9, 17, '2025-02-25 20:26:00', '2025-02-25 21:45:00', 1, 99),
(17, 46, '2025-02-25 21:48:00', '2025-02-25 23:22:00', 1, 66),
(46, 39, '2025-02-25 23:25:00', '2025-02-26 00:08:00', 1, 193),
(39, 26, '2025-02-26 00:11:00', '2025-02-26 00:33:00', 1, 66),
(26, 35, '2025-02-26 00:36:00', '2025-02-26 01:06:00', 1, 155),
(35, 25, '2025-02-26 01:09:00', '2025-02-26 01:39:00', 1, 193),
(25, 32, '2025-02-26 01:42:00', '2025-02-26 02:26:00', 1, 166),
(32, 52, '2025-02-26 02:30:00', '2025-02-26 03:16:00', 1, 250),
(52, 53, '2025-02-26 03:20:00', '2025-02-26 04:11:00', 1, 199),
(53, 30, '2025-02-26 04:14:00', '2025-02-26 06:14:00', 1, 77),
(30, 40, '2025-02-26 06:17:00', '2025-02-26 08:32:00', 1, 101),
(40, 8, '2025-02-26 08:35:00', '2025-02-26 09:36:00', 1, 204),
(8, 24, '2025-02-26 10:00:00', '2025-02-26 10:28:00', 1, 246),
(24, 22, '2025-02-26 10:30:00', '2025-02-26 11:07:00', 1, 110),
(22, 21, '2025-02-26 11:10:00', '2025-02-26 12:20:00', 1, 201),
(21, 38, '2025-02-26 12:23:00', '2025-02-26 14:03:00', 1, 224),
(38, 34, '2025-02-26 14:06:00', '2025-02-26 15:18:00', 1, 75),
(34, 18, '2025-02-26 16:00:00', '2025-02-26 16:54:00', 1, 52),
(18, 2, '2025-02-26 17:00:00', '2025-02-26 17:51:00', 1, 66),
(2, 15, '2025-02-26 17:54:00', '2025-02-26 19:33:00', 1, 145),
(15, 1, '2025-02-26 19:36:00', '2025-02-26 20:38:00', 1, 229),
(1, 33, '2025-02-26 20:40:00', '2025-02-26 21:30:00', 1, 223); -- 540

INSERT INTO Trip (id_station_from_ticket, id_station_to_ticket, time_start_ticket, time_end_ticket, id_train, ordered_seat) VALUES
(33, 1, '2025-02-27 06:10:00', '2025-02-27 07:12:00', 1, 229),
(1, 15, '2025-02-27 07:15:00', '2025-02-27 07:44:00', 1, 170),
(15, 2, '2025-02-27 07:47:00', '2025-02-27 08:20:00', 1, 189),
(2, 18, '2025-02-27 08:25:00', '2025-02-27 08:55:00', 1, 240),
(18, 34, '2025-02-27 8:58:00', '2025-02-27 9:32:00', 1, 225),
(34, 38, '2025-02-27 9:35:00', '2025-02-27 9:56:00', 1, 119),
(38, 21, '2025-02-27 10:00:00', '2025-02-27 11:16:00', 1, 162),
(21, 22, '2025-02-27 11:20:00', '2025-02-27 12:26:00', 1, 72),
(22, 24, '2025-02-27 13:00:00', '2025-02-27 13:22:00', 1, 125),
(24, 8, '2025-02-27 13:25:00', '2025-02-27 14:18:00', 1, 79),
(8, 40, '2025-02-27 14:21:00', '2025-02-27 15:20:00', 1, 57),
(40, 30, '2025-02-27 15:23:00', '2025-02-27 17:04:00', 1, 167),
(30, 53, '2025-02-27 17:07:00', '2025-02-27 18:47:00', 1, 159),
(53, 52, '2025-02-27 18:50:00', '2025-02-27 20:23:00', 1, 141),
(52, 32, '2025-02-27 20:26:00', '2025-02-27 21:45:00', 1, 55),
(32, 25, '2025-02-27 21:48:00', '2025-02-27 23:22:00', 1, 241),
(25, 35, '2025-02-27 23:25:00', '2025-02-28 00:08:00', 1, 230),
(35, 26, '2025-02-28 00:11:00', '2025-02-28 00:33:00', 1, 54),
(26, 39, '2025-02-28 00:36:00', '2025-02-28 01:06:00', 1, 69),
(39, 46, '2025-02-28 01:09:00', '2025-02-28 01:39:00', 1, 156),
(46, 17, '2025-02-28 01:42:00', '2025-02-28 02:26:00', 1, 65),
(17, 9, '2025-02-28 02:30:00', '2025-02-28 03:16:00', 1, 211),
(9, 48, '2025-02-28 03:20:00', '2025-02-28 04:11:00', 1, 188),
(48, 49, '2025-02-28 04:14:00', '2025-02-28 06:14:00', 1, 82),
(49, 50, '2025-02-28 6:17:00', '2025-02-28 8:32:00', 1, 139),
(50, 11, '2025-02-28 8:35:00', '2025-02-28 9:36:00', 1, 244),
(11, 45, '2025-02-28 10:00:00', '2025-02-28 10:28:00', 1, 75),
(45, 42, '2025-02-28 10:30:00', '2025-02-28 11:08:00', 1, 166),
(42, 6, '2025-02-28 11:10:00', '2025-02-28 12:20:00', 1, 145),
(6, 19, '2025-02-28 12:24:00', '2025-02-28 14:03:00', 1, 188),
(19, 36, '2025-02-28 14:06:00', '2025-02-28 15:18:00', 1, 127),
(36, 4, '2025-02-28 16:00:00', '2025-02-28 16:54:00', 1, 87),
(4, 23, '2025-02-28 17:00:00', '2025-02-28 17:51:00', 1, 145),
(23, 20, '2025-02-28 17:54:00', '2025-02-28 19:33:00', 1, 224),
(20, 29, '2025-02-28 19:36:00', '2025-02-28 20:38:00', 1, 56),
(29, 10, '2025-02-28 20:40:00', '2025-02-28 21:30:00', 1, 101); -- 576
-- ---------------------------------------------------------------------------



