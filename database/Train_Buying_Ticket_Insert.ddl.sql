USE SWP391;

-- role 
INSERT INTO `role` (id_role, name_role) 
	VALUES (1, 'admin'),(2, 'manager'),(3, 'customer');
	
-- manager
INSERT INTO Manager (username_manager, password_manager, email_manager, id_role, status_manager)
	VALUES 
	('manager1', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'manager1@gmail.com', 2, 1), 
	('manager2', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'manager2@gmail.com', 2, 1);

-- admin
INSERT INTO Admin (username_admin, password_admin, email_admin, id_role)
	VALUES 
	('admin', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'admin1@example.com', 1); 
	
-- train brand
INSERT INTO Train_brand (id_manager, name_train_brand, description_train_brand,image_train_brand)
	VALUES 
	(1, 'Alpha', 'Train brand Alpha - High speed trains', null), 
	(2, 'Beta', 'Train brand Beta - Luxury trains', null);      

--	status
INSERT INTO Status (name_status)
	VALUES 
	-- Trạng thái cho Train
	('On Journey'),	
	('Waiting'),	 	
	('Maintenance'),	
	('Incident'),		
	
	-- Trạng thái cho Train_carriage, Train_seat
	('Available'),	 	
	('Booked'),			
	('Maintenance');	

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
	('Carriage 4 - Alpha 1 (Phổ thông)',  'Khoang có 40 ghế', 1, 5, 40),

	('Carriage 5 - Alpha 1 (Thương gia)',  'Khoang có 20 ghế', 1, 5, 20),
	('Carriage 6 - Alpha 1 (Thương gia)',  'Khoang có 20 ghế', 1, 5, 20),

	('Carriage 7 - Alpha 1 (VIP)',  'Khoang có 10 ghế', 1, 5, 10);
	
INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat, price_seat) 
VALUES 
		(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),
		(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),
		(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),
		(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),
		(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),
		(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),
		(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(1, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),
		(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),
		(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),
		(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),
		(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),
		(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),
		(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),(2, 5,'1',600000),
		(2, 5,'1',600000),(2, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),
		(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),
		(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),
		(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),
		(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),
		(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),
		(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),(3, 5,'1',600000),
		(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),
		(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),
		(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),
		(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),
		(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),
		(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),
		(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(4, 5,'1',600000),(5, 5,'1',600000),(5, 5,'1',600000),
		(5, 5,'1',600000),(5, 5,'1',600000),(5, 5,'1',600000),(5, 5,'1',600000),(5, 5,'1',600000),(5, 5,'1',600000),
		(5, 5,'1',600000),(5, 5,'1',600000),(5, 5,'1',600000),(5, 5,'1',600000),(5, 5,'1',600000),(5, 5,'1',600000),
		(5, 5,'1',600000),(5, 5,'1',600000),(5, 5,'1',600000),(5, 5,'1',600000),(5, 5,'1',600000),(5, 5,'1',600000),
		(6, 5,'1',600000),(6, 5,'1',600000),(6, 5,'1',600000),(6, 5,'1',600000),(6, 5,'1',600000),(6, 5,'1',600000),
		(6, 5,'1',600000),(6, 5,'1',600000),(6, 5,'1',600000),(6, 5,'1',600000),(6, 5,'1',600000),(6, 5,'1',600000),
		(6, 5,'1',600000),(6, 5,'1',600000),(6, 5,'1',600000),(6, 5,'1',600000),(6, 5,'1',600000),(6, 5,'1',600000),
		(6, 5,'1',600000),(6, 5,'1',600000),(7, 5,'1',600000),(7, 5,'1',600000),(7, 5,'1',600000),(7, 5,'1',600000),
		(7, 5,'1',600000),(7, 5,'1',600000),(7, 5,'1',600000),(7, 5,'1',600000),(7, 5,'1',600000),(7, 5,'1',600000);

-- train Beta
INSERT INTO Train (name_train, description_train, id_train_brand, id_status, image_train) 
	VALUES
	('Beta 1', ' ',2, 2, null),
	('Beta 2', ' ', 2, 2, null);
	
INSERT INTO Date_of_trip (date_details) VALUES 
('2025-02-01'),('2025-02-02'),('2025-02-03'),('2025-02-04'),('2025-02-05'),('2025-02-06'),('2025-02-07'),('2025-02-08'),
('2025-02-09'),('2025-02-10'),('2025-02-11'),('2025-02-12'),('2025-02-13'),('2025-02-14'),('2025-02-15'),('2025-02-16'),
('2025-02-17'),('2025-02-18'),('2025-02-19'),('2025-02-20'),('2025-02-21'),('2025-02-22'),('2025-02-23'),('2025-02-24'),
('2025-02-25'),('2025-02-26'),('2025-02-27'),('2025-02-28');

INSERT INTO Station (name_station, image_station, description_station) VALUES
('Hà Nội', NULL, 'Ga Hà Nội, trung tâm thủ đô, đầu mối giao thông quan trọng'),
('Phủ Lý', NULL, 'Ga Phủ Lý, tỉnh Hà Nam, phục vụ khu vực Đồng bằng sông Hồng'),
('Nam Định', NULL, 'Ga Nam Định, tỉnh Nam Định, trung tâm vùng Nam Đồng bằng sông Hồng'),
('Ninh Bình', NULL, 'Ga Ninh Bình, tỉnh Ninh Bình, gần khu du lịch Tràng An'),
('Bỉm Sơn', NULL, 'Ga Bỉm Sơn, tỉnh Thanh Hóa, phục vụ khu vực Bắc Trung Bộ'),
('Thanh Hóa', NULL, 'Ga Thanh Hóa, tỉnh Thanh Hóa, trung tâm vùng Bắc Trung Bộ'),
('Minh Khôi', NULL, 'Ga Minh Khôi, tỉnh Hải Dương, phục vụ khu vực Đồng bằng sông Hồng'),
('Chợ Sy', NULL, 'Ga Chợ Sy, tỉnh Lạng Sơn, gần biên giới Trung Quốc'),
('Vinh', NULL, 'Ga Vinh, tỉnh Nghệ An, trung tâm vùng Bắc Trung Bộ'),
('Yên Trung', NULL, 'Ga Yên Trung, tỉnh Hải Dương, phục vụ khu vực Đồng bằng sông Hồng'),
('Hương Phố', NULL, 'Ga Hương Phố, tỉnh Quảng Trị, phục vụ khu vực miền Trung'),
('Đồng Lê', NULL, 'Ga Đồng Lê, tỉnh Quảng Bình, phục vụ khu vực miền Trung'),
('Đồng Hới', NULL, 'Ga Đồng Hới, tỉnh Quảng Bình, gần di sản Phong Nha - Kẻ Bàng'),
('Đông Hà', NULL, 'Ga Đông Hà, tỉnh Quảng Trị, phục vụ khu vực miền Trung'),
('Huế', NULL, 'Ga Huế, thành phố Huế, tỉnh Thừa Thiên Huế, di sản văn hóa thế giới'),
('Lăng Cô', NULL, 'Ga Lăng Cô, tỉnh Thừa Thiên Huế, gần đèo Hải Vân'),
('Đà Nẵng', NULL, 'Ga Đà Nẵng, thành phố Đà Nẵng, trung tâm kinh tế miền Trung'),
('Trà Kiệu', NULL, 'Ga Trà Kiệu, tỉnh Quảng Nam, phục vụ khu vực miền Trung'),
('Phú Cang', NULL, 'Ga Phú Cang, tỉnh Thừa Thiên Huế, phục vụ khu vực miền Trung'),
('Tam Kỳ', NULL, 'Ga Tam Kỳ, tỉnh Quảng Nam, phục vụ khu vực miền Trung'),
('Núi Thành', NULL, 'Ga Núi Thành, tỉnh Quảng Nam, trên tuyến đường sắt Bắc - Nam'),
('Quảng Ngãi', NULL, 'Ga Quảng Ngãi, tỉnh Quảng Ngãi, trên tuyến đường sắt Bắc - Nam'),
('Đức Phổ', NULL, 'Ga Đức Phổ, tỉnh Quảng Ngãi, trên tuyến đường sắt Bắc - Nam'),
('Bồng Sơn', NULL, 'Ga Bồng Sơn, tỉnh Bình Định, trên tuyến đường sắt Bắc - Nam'),
('Quy Nhơn', NULL, 'Ga Quy Nhơn, tỉnh Bình Định, thành phố biển miền Trung'),
('Tuy Hòa', NULL, 'Ga Tuy Hòa, tỉnh Phú Yên, thành phố biển miền Trung'),
('Giã', NULL, 'Ga Giã, tỉnh Hải Dương, phục vụ khu vực Đồng bằng sông Hồng'),
('Ninh Hòa', NULL, 'Ga Ninh Hòa, tỉnh Khánh Hòa, phục vụ khu vực Nam Trung Bộ'),
('Nha Trang', NULL, 'Ga Nha Trang, tỉnh Khánh Hòa, thành phố biển nổi tiếng'),
('Ngã Ba', NULL, 'Ga Ngã Ba, tỉnh Thanh Hóa, nút giao quan trọng miền Trung'),
('Tháp Chàm', NULL, 'Ga Tháp Chàm, tỉnh Ninh Thuận, gần di tích Tháp Chàm'),
('Sông Mao', NULL, 'Ga Sông Mao, tỉnh Bình Thuận, trên tuyến đường sắt Bắc - Nam'),
('Ma Lâm', NULL, 'Ga Ma Lâm, tỉnh Bình Thuận, trên tuyến đường sắt Bắc - Nam'),
('Bình Thuận', NULL, 'Ga Bình Thuận, tỉnh Bình Thuận, trên tuyến đường sắt Bắc - Nam'),
('Long Khánh', NULL, 'Ga Long Khánh, tỉnh Đồng Nai, phục vụ khu vực Đông Nam Bộ'),
('Biên Hòa', NULL, 'Ga Biên Hòa, tỉnh Đồng Nai, phục vụ khu vực Đông Nam Bộ'),
('Sài Gòn', NULL, 'Ga Sài Gòn, thành phố Hồ Chí Minh, đầu mối giao thông phía Nam');

INSERT INTO Time_of_station (time_train_in_station) VALUES 
('04:30'), ('05:03'), ('05:30'), ('06:00'), ('06:37'), 
('07:04'), ('07:31'), ('08:00'), ('08:34'), ('09:04'), 
('09:30'), ('10:04'), ('10:35'), ('11:06'), ('11:34'), 
('12:01'), ('12:33'), ('13:00'), ('13:34'), ('14:03'), 
('14:27'), ('14:58'), ('15:33'), ('16:04'), ('16:40'), 
('17:08'), ('17:38'), ('18:05'), ('18:33'), ('19:05'), 
('19:40'), ('20:07'), ('20:34'), ('21:05'), ('21:33'), 
('22:01'), ('22:30');

INSERT INTO Time_station (id_station, id_time_of_station) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),
(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),
(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),
(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),
(37,37),
(37,1),(36,2),(35,3),(34,4),(33,5),(32,6),(31,7),(30,8),(29,9),
(28,10),(27,11),(26,12),(25,13),(24,14),(23,15),(22,16),(21,17),(20,18),
(19,19),(18,20),(17,21),(16,22),(15,23),(14,24),(13,25),(12,26),(11,27),
(10,28),(9,29),(8,30),(7,31),(6,32),(5,33),(4,34),(3,35),(2,36),
(1,37);

INSERT INTO Trip (id_time_station_start, id_time_station_end, id_train, price_trip) VALUES
(1, 2, 1, NULL),(2, 3, 1, NULL),(3, 4, 1, NULL),(4, 5, 1, NULL),(5, 6, 1, NULL),(6, 7, 1, NULL),(7, 8, 1, NULL),(8, 9, 1, NULL),(9, 10, 1, NULL),
(10, 11, 1, NULL),(11, 12, 1, NULL),(12, 13, 1, NULL),(13, 14, 1, NULL),(14, 15, 1, NULL),(15, 16, 1, NULL),(16, 17, 1, NULL),(17, 18, 1, NULL),(18, 19, 1, NULL),
(19, 20, 1, NULL),(20, 21, 1, NULL),(21, 22, 1, NULL),(22, 23, 1, NULL),(23, 24, 1, NULL),(24, 25, 1, NULL),(25, 26, 1, NULL),(26, 27, 1, NULL),(27, 28, 1, NULL),
(28, 29, 1, NULL),(29, 30, 1, NULL),(30, 31, 1, NULL),(31, 32, 1, NULL),(32, 33, 1, NULL),(33, 34, 1, NULL),(34, 35, 1, NULL),(35, 36, 1, NULL),(36, 37, 1, NULL),

(38, 39, 1, NULL),(39, 40, 1, NULL),(40, 41, 1, NULL),(41, 42, 1, NULL),(42, 43, 1, NULL),(43, 44, 1, NULL),(44, 45, 1, NULL),(45, 46, 1, NULL),
(46, 47, 1, NULL),(47, 48, 1, NULL),(48, 49, 1, NULL),(49, 50, 1, NULL),(50, 51, 1, NULL),(51, 52, 1, NULL),(52, 53, 1, NULL),(53, 54, 1, NULL),(54, 55, 1, NULL),
(55, 56, 1, NULL),(56, 57, 1, NULL),(57, 58, 1, NULL),(58, 59, 1, NULL),(59, 60, 1, NULL),(60, 61, 1, NULL),(61, 62, 1, NULL),(62, 63, 1, NULL),(63, 64, 1, NULL),
(64, 65, 1, NULL),(65, 66, 1, NULL),(66, 67, 1, NULL),(67, 68, 1, NULL),(68, 69, 1, NULL),(69, 70, 1, NULL),(70, 71, 1, NULL),(71, 72, 1, NULL),(72, 73, 1, NULL),
(73, 74, 1, NULL);

INSERT INTO Date_trip (id_trip,id_date_of_trip) VALUES
(1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),
(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),
(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),
(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),

(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),
(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2),
(41,2),(42,2),(43,2),(44,2),(45,2),(46,2),(47,2),(48,2),(49,2),(50,2),(51,2),(52,2),(53,2),(54,2),(55,2),(56,2),(57,2),(58,2),(59,2),(60,2),
(61,2),(62,2),(63,2),(64,2),(65,2),(66,2),(67,2),(68,2),(69,2),(70,2),(71,2),(72,2),

(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),
(21,3),(22,3),(23,3),(24,3),(25,3),(26,3),(27,3),(28,3),(29,3),(30,3),(31,3),(32,3),(33,3),(34,3),(35,3),(36,3),(37,3),(38,3),(39,3),(40,3),
(41,3),(42,3),(43,3),(44,3),(45,3),(46,3),(47,3),(48,3),(49,3),(50,3),(51,3),(52,3),(53,3),(54,3),(55,3),(56,3),(57,3),(58,3),(59,3),(60,3),
(61,3),(62,3),(63,3),(64,3),(65,3),(66,3),(67,3),(68,3),(69,3),(70,3),(71,3),(72,3),

(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4),(11,4),(12,4),(13,4),(14,4),(15,4),(16,4),(17,4),(18,4),(19,4),(20,4),
(21,4),(22,4),(23,4),(24,4),(25,4),(26,4),(27,4),(28,4),(29,4),(30,4),(31,4),(32,4),(33,4),(34,4),(35,4),(36,4),(37,4),(38,4),(39,4),(40,4),
(41,4),(42,4),(43,4),(44,4),(45,4),(46,4),(47,4),(48,4),(49,4),(50,4),(51,4),(52,4),(53,4),(54,4),(55,4),(56,4),(57,4),(58,4),(59,4),(60,4),
(61,4),(62,4),(63,4),(64,4),(65,4),(66,4),(67,4),(68,4),(69,4),(70,4),(71,4),(72,4),

(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(9,5),(10,5),(11,5),(12,5),(13,5),(14,5),(15,5),(16,5),(17,5),(18,5),(19,5),(20,5),
(21,5),(22,5),(23,5),(24,5),(25,5),(26,5),(27,5),(28,5),(29,5),(30,5),(31,5),(32,5),(33,5),(34,5),(35,5),(36,5),(37,5),(38,5),(39,5),(40,5),
(41,5),(42,5),(43,5),(44,5),(45,5),(46,5),(47,5),(48,5),(49,5),(50,5),(51,5),(52,5),(53,5),(54,5),(55,5),(56,5),(57,5),(58,5),(59,5),(60,5),
(61,5),(62,5),(63,5),(64,5),(65,5),(66,5),(67,5),(68,5),(69,5),(70,5),(71,5),(72,5),

(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(9,6),(10,6),(11,6),(12,6),(13,6),(14,6),(15,6),(16,6),(17,6),(18,6),(19,6),(20,6),
(21,6),(22,6),(23,6),(24,6),(25,6),(26,6),(27,6),(28,6),(29,6),(30,6),(31,6),(32,6),(33,6),(34,6),(35,6),(36,6),(37,6),(38,6),(39,6),(40,6),
(41,6),(42,6),(43,6),(44,6),(45,6),(46,6),(47,6),(48,6),(49,6),(50,6),(51,6),(52,6),(53,6),(54,6),(55,6),(56,6),(57,6),(58,6),(59,6),(60,6),
(61,6),(62,6),(63,6),(64,6),(65,6),(66,6),(67,6),(68,6),(69,6),(70,6),(71,6),(72,6),

(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(8,7),(9,7),(10,7),(11,7),(12,7),(13,7),(14,7),(15,7),(16,7),(17,7),(18,7),(19,7),(20,7),
(21,7),(22,7),(23,7),(24,7),(25,7),(26,7),(27,7),(28,7),(29,7),(30,7),(31,7),(32,7),(33,7),(34,7),(35,7),(36,7),(37,7),(38,7),(39,7),(40,7),
(41,7),(42,7),(43,7),(44,7),(45,7),(46,7),(47,7),(48,7),(49,7),(50,7),(51,7),(52,7),(53,7),(54,7),(55,7),(56,7),(57,7),(58,7),(59,7),(60,7),
(61,7),(62,7),(63,7),(64,7),(65,7),(66,7),(67,7),(68,7),(69,7),(70,7),(71,7),(72,7),

(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(8,8),(9,8),(10,8),(11,8),(12,8),(13,8),(14,8),(15,8),(16,8),(17,8),(18,8),(19,8),(20,8),
(21,8),(22,8),(23,8),(24,8),(25,8),(26,8),(27,8),(28,8),(29,8),(30,8),(31,8),(32,8),(33,8),(34,8),(35,8),(36,8),(37,8),(38,8),(39,8),(40,8),
(41,8),(42,8),(43,8),(44,8),(45,8),(46,8),(47,8),(48,8),(49,8),(50,8),(51,8),(52,8),(53,8),(54,8),(55,8),(56,8),(57,8),(58,8),(59,8),(60,8),
(61,8),(62,8),(63,8),(64,8),(65,8),(66,8),(67,8),(68,8),(69,8),(70,8),(71,8),(72,8),

(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(8,9),(9,9),(10,9),(11,9),(12,9),(13,9),(14,9),(15,9),(16,9),(17,9),(18,9),(19,9),(20,9),
(21,9),(22,9),(23,9),(24,9),(25,9),(26,9),(27,9),(28,9),(29,9),(30,9),(31,9),(32,9),(33,9),(34,9),(35,9),(36,9),(37,9),(38,9),(39,9),(40,9),
(41,9),(42,9),(43,9),(44,9),(45,9),(46,9),(47,9),(48,9),(49,9),(50,9),(51,9),(52,9),(53,9),(54,9),(55,9),(56,9),(57,9),(58,9),(59,9),(60,9),
(61,9),(62,9),(63,9),(64,9),(65,9),(66,9),(67,9),(68,9),(69,9),(70,9),(71,9),(72,9),

(1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(8,10),(9,10),(10,10),(11,10),(12,10),(13,10),(14,10),(15,10),(16,10),(17,10),(18,10),(19,10),(20,10),
(21,10),(22,10),(23,10),(24,10),(25,10),(26,10),(27,10),(28,10),(29,10),(30,10),(31,10),(32,10),(33,10),(34,10),(35,10),(36,10),(37,10),(38,10),(39,10),(40,10),
(41,10),(42,10),(43,10),(44,10),(45,10),(46,10),(47,10),(48,10),(49,10),(50,10),(51,10),(52,10),(53,10),(54,10),(55,10),(56,10),(57,10),(58,10),(59,10),(60,10),
(61,10),(62,10),(63,10),(64,10),(65,10),(66,10),(67,10),(68,10),(69,10),(70,10),(71,10),(72,10),

(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(8,11),(9,11),(10,11),
(11,11),(12,11),(13,11),(14,11),(15,11),(16,11),(17,11),(18,11),(19,11),(20,11),
(21,11),(22,11),(23,11),(24,11),(25,11),(26,11),(27,11),(28,11),(29,11),(30,11),
(31,11),(32,11),(33,11),(34,11),(35,11),(36,11),(37,11),(38,11),(39,11),(40,11),
(41,11),(42,11),(43,11),(44,11),(45,11),(46,11),(47,11),(48,11),(49,11),(50,11),
(51,11),(52,11),(53,11),(54,11),(55,11),(56,11),(57,11),(58,11),(59,11),(60,11),
(61,11),(62,11),(63,11),(64,11),(65,11),(66,11),(67,11),(68,11),(69,11),(70,11),
(71,11),(72,11),

(1,12),(2,12),(3,12),(4,12),(5,12),(6,12),(7,12),(8,12),(9,12),(10,12),
(11,12),(12,12),(13,12),(14,12),(15,12),(16,12),(17,12),(18,12),(19,12),(20,12),
(21,12),(22,12),(23,12),(24,12),(25,12),(26,12),(27,12),(28,12),(29,12),(30,12),
(31,12),(32,12),(33,12),(34,12),(35,12),(36,12),(37,12),(38,12),(39,12),(40,12),
(41,12),(42,12),(43,12),(44,12),(45,12),(46,12),(47,12),(48,12),(49,12),(50,12),
(51,12),(52,12),(53,12),(54,12),(55,12),(56,12),(57,12),(58,12),(59,12),(60,12),
(61,12),(62,12),(63,12),(64,12),(65,12),(66,12),(67,12),(68,12),(69,12),(70,12),
(71,12),(72,12),

(1,13),(2,13),(3,13),(4,13),(5,13),(6,13),(7,13),(8,13),(9,13),(10,13),
(11,13),(12,13),(13,13),(14,13),(15,13),(16,13),(17,13),(18,13),(19,13),(20,13),
(21,13),(22,13),(23,13),(24,13),(25,13),(26,13),(27,13),(28,13),(29,13),(30,13),
(31,13),(32,13),(33,13),(34,13),(35,13),(36,13),(37,13),(38,13),(39,13),(40,13),
(41,13),(42,13),(43,13),(44,13),(45,13),(46,13),(47,13),(48,13),(49,13),(50,13),
(51,13),(52,13),(53,13),(54,13),(55,13),(56,13),(57,13),(58,13),(59,13),(60,13),
(61,13),(62,13),(63,13),(64,13),(65,13),(66,13),(67,13),(68,13),(69,13),(70,13),
(71,13),(72,13),

(1,14),(2,14),(3,14),(4,14),(5,14),(6,14),(7,14),(8,14),(9,14),(10,14),
(11,14),(12,14),(13,14),(14,14),(15,14),(16,14),(17,14),(18,14),(19,14),(20,14),
(21,14),(22,14),(23,14),(24,14),(25,14),(26,14),(27,14),(28,14),(29,14),(30,14),
(31,14),(32,14),(33,14),(34,14),(35,14),(36,14),(37,14),(38,14),(39,14),(40,14),
(41,14),(42,14),(43,14),(44,14),(45,14),(46,14),(47,14),(48,14),(49,14),(50,14),
(51,14),(52,14),(53,14),(54,14),(55,14),(56,14),(57,14),(58,14),(59,14),(60,14),
(61,14),(62,14),(63,14),(64,14),(65,14),(66,14),(67,14),(68,14),(69,14),(70,14),
(71,14),(72,14),

(1,15),(2,15),(3,15),(4,15),(5,15),(6,15),(7,15),(8,15),(9,15),(10,15),
(11,15),(12,15),(13,15),(14,15),(15,15),(16,15),(17,15),(18,15),(19,15),(20,15),
(21,15),(22,15),(23,15),(24,15),(25,15),(26,15),(27,15),(28,15),(29,15),(30,15),
(31,15),(32,15),(33,15),(34,15),(35,15),(36,15),(37,15),(38,15),(39,15),(40,15),
(41,15),(42,15),(43,15),(44,15),(45,15),(46,15),(47,15),(48,15),(49,15),(50,15),
(51,15),(52,15),(53,15),(54,15),(55,15),(56,15),(57,15),(58,15),(59,15),(60,15),
(61,15),(62,15),(63,15),(64,15),(65,15),(66,15),(67,15),(68,15),(69,15),(70,15),
(71,15),(72,15),

(1,16),(2,16),(3,16),(4,16),(5,16),(6,16),(7,16),(8,16),(9,16),(10,16),
(11,16),(12,16),(13,16),(14,16),(15,16),(16,16),(17,16),(18,16),(19,16),(20,16),
(21,16),(22,16),(23,16),(24,16),(25,16),(26,16),(27,16),(28,16),(29,16),(30,16),
(31,16),(32,16),(33,16),(34,16),(35,16),(36,16),(37,16),(38,16),(39,16),(40,16),
(41,16),(42,16),(43,16),(44,16),(45,16),(46,16),(47,16),(48,16),(49,16),(50,16),
(51,16),(52,16),(53,16),(54,16),(55,16),(56,16),(57,16),(58,16),(59,16),(60,16),
(61,16),(62,16),(63,16),(64,16),(65,16),(66,16),(67,16),(68,16),(69,16),(70,16),
(71,16),(72,16),

(1,17),(2,17),(3,17),(4,17),(5,17),(6,17),(7,17),(8,17),(9,17),(10,17),
(11,17),(12,17),(13,17),(14,17),(15,17),(16,17),(17,17),(18,17),(19,17),(20,17),
(21,17),(22,17),(23,17),(24,17),(25,17),(26,17),(27,17),(28,17),(29,17),(30,17),
(31,17),(32,17),(33,17),(34,17),(35,17),(36,17),(37,17),(38,17),(39,17),(40,17),
(41,17),(42,17),(43,17),(44,17),(45,17),(46,17),(47,17),(48,17),(49,17),(50,17),
(51,17),(52,17),(53,17),(54,17),(55,17),(56,17),(57,17),(58,17),(59,17),(60,17),
(61,17),(62,17),(63,17),(64,17),(65,17),(66,17),(67,17),(68,17),(69,17),(70,17),
(71,17),(72,17),

(1,18),(2,18),(3,18),(4,18),(5,18),(6,18),(7,18),(8,18),(9,18),(10,18),
(11,18),(12,18),(13,18),(14,18),(15,18),(16,18),(17,18),(18,18),(19,18),(20,18),
(21,18),(22,18),(23,18),(24,18),(25,18),(26,18),(27,18),(28,18),(29,18),(30,18),
(31,18),(32,18),(33,18),(34,18),(35,18),(36,18),(37,18),(38,18),(39,18),(40,18),
(41,18),(42,18),(43,18),(44,18),(45,18),(46,18),(47,18),(48,18),(49,18),(50,18),
(51,18),(52,18),(53,18),(54,18),(55,18),(56,18),(57,18),(58,18),(59,18),(60,18),
(61,18),(62,18),(63,18),(64,18),(65,18),(66,18),(67,18),(68,18),(69,18),(70,18),
(71,18),(72,18),

(1,19),(2,19),(3,19),(4,19),(5,19),(6,19),(7,19),(8,19),(9,19),(10,19),
(11,19),(12,19),(13,19),(14,19),(15,19),(16,19),(17,19),(18,19),(19,19),(20,19),
(21,19),(22,19),(23,19),(24,19),(25,19),(26,19),(27,19),(28,19),(29,19),(30,19),
(31,19),(32,19),(33,19),(34,19),(35,19),(36,19),(37,19),(38,19),(39,19),(40,19),
(41,19),(42,19),(43,19),(44,19),(45,19),(46,19),(47,19),(48,19),(49,19),(50,19),
(51,19),(52,19),(53,19),(54,19),(55,19),(56,19),(57,19),(58,19),(59,19),(60,19),
(61,19),(62,19),(63,19),(64,19),(65,19),(66,19),(67,19),(68,19),(69,19),(70,19),
(71,19),(72,19),

(1,20),(2,20),(3,20),(4,20),(5,20),(6,20),(7,20),(8,20),(9,20),(10,20),
(11,20),(12,20),(13,20),(14,20),(15,20),(16,20),(17,20),(18,20),(19,20),(20,20),
(21,20),(22,20),(23,20),(24,20),(25,20),(26,20),(27,20),(28,20),(29,20),(30,20),
(31,20),(32,20),(33,20),(34,20),(35,20),(36,20),(37,20),(38,20),(39,20),(40,20),
(41,20),(42,20),(43,20),(44,20),(45,20),(46,20),(47,20),(48,20),(49,20),(50,20),
(51,20),(52,20),(53,20),(54,20),(55,20),(56,20),(57,20),(58,20),(59,20),(60,20),
(61,20),(62,20),(63,20),(64,20),(65,20),(66,20),(67,20),(68,20),(69,20),(70,20),
(71,20),(72,20),

(1,21),(2,21),(3,21),(4,21),(5,21),(6,21),(7,21),(8,21),(9,21),(10,21),
(11,21),(12,21),(13,21),(14,21),(15,21),(16,21),(17,21),(18,21),(19,21),(20,21),
(21,21),(22,21),(23,21),(24,21),(25,21),(26,21),(27,21),(28,21),(29,21),(30,21),
(31,21),(32,21),(33,21),(34,21),(35,21),(36,21),(37,21),(38,21),(39,21),(40,21),
(41,21),(42,21),(43,21),(44,21),(45,21),(46,21),(47,21),(48,21),(49,21),(50,21),
(51,21),(52,21),(53,21),(54,21),(55,21),(56,21),(57,21),(58,21),(59,21),(60,21),
(61,21),(62,21),(63,21),(64,21),(65,21),(66,21),(67,21),(68,21),(69,21),(70,21),
(71,21),(72,21),

(1,22),(2,22),(3,22),(4,22),(5,22),(6,22),(7,22),(8,22),(9,22),(10,22),
(11,22),(12,22),(13,22),(14,22),(15,22),(16,22),(17,22),(18,22),(19,22),(20,22),
(21,22),(22,22),(23,22),(24,22),(25,22),(26,22),(27,22),(28,22),(29,22),(30,22),
(31,22),(32,22),(33,22),(34,22),(35,22),(36,22),(37,22),(38,22),(39,22),(40,22),
(41,22),(42,22),(43,22),(44,22),(45,22),(46,22),(47,22),(48,22),(49,22),(50,22),
(51,22),(52,22),(53,22),(54,22),(55,22),(56,22),(57,22),(58,22),(59,22),(60,22),
(61,22),(62,22),(63,22),(64,22),(65,22),(66,22),(67,22),(68,22),(69,22),(70,22),
(71,22),(72,22),

(1,23),(2,23),(3,23),(4,23),(5,23),(6,23),(7,23),(8,23),(9,23),(10,23),
(11,23),(12,23),(13,23),(14,23),(15,23),(16,23),(17,23),(18,23),(19,23),(20,23),
(21,23),(22,23),(23,23),(24,23),(25,23),(26,23),(27,23),(28,23),(29,23),(30,23),
(31,23),(32,23),(33,23),(34,23),(35,23),(36,23),(37,23),(38,23),(39,23),(40,23),
(41,23),(42,23),(43,23),(44,23),(45,23),(46,23),(47,23),(48,23),(49,23),(50,23),
(51,23),(52,23),(53,23),(54,23),(55,23),(56,23),(57,23),(58,23),(59,23),(60,23),
(61,23),(62,23),(63,23),(64,23),(65,23),(66,23),(67,23),(68,23),(69,23),(70,23),
(71,23),(72,23),

(1,24),(2,24),(3,24),(4,24),(5,24),(6,24),(7,24),(8,24),(9,24),(10,24),
(11,24),(12,24),(13,24),(14,24),(15,24),(16,24),(17,24),(18,24),(19,24),(20,24),
(21,24),(22,24),(23,24),(24,24),(25,24),(26,24),(27,24),(28,24),(29,24),(30,24),
(31,24),(32,24),(33,24),(34,24),(35,24),(36,24),(37,24),(38,24),(39,24),(40,24),
(41,24),(42,24),(43,24),(44,24),(45,24),(46,24),(47,24),(48,24),(49,24),(50,24),
(51,24),(52,24),(53,24),(54,24),(55,24),(56,24),(57,24),(58,24),(59,24),(60,24),
(61,24),(62,24),(63,24),(64,24),(65,24),(66,24),(67,24),(68,24),(69,24),(70,24),
(71,24),(72,24),

(1,25),(2,25),(3,25),(4,25),(5,25),(6,25),(7,25),(8,25),(9,25),(10,25),
(11,25),(12,25),(13,25),(14,25),(15,25),(16,25),(17,25),(18,25),(19,25),(20,25),
(21,25),(22,25),(23,25),(24,25),(25,25),(26,25),(27,25),(28,25),(29,25),(30,25),
(31,25),(32,25),(33,25),(34,25),(35,25),(36,25),(37,25),(38,25),(39,25),(40,25),
(41,25),(42,25),(43,25),(44,25),(45,25),(46,25),(47,25),(48,25),(49,25),(50,25),
(51,25),(52,25),(53,25),(54,25),(55,25),(56,25),(57,25),(58,25),(59,25),(60,25),
(61,25),(62,25),(63,25),(64,25),(65,25),(66,25),(67,25),(68,25),(69,25),(70,25),
(71,25),(72,25),

(1,26),(2,26),(3,26),(4,26),(5,26),(6,26),(7,26),(8,26),(9,26),(10,26),
(11,26),(12,26),(13,26),(14,26),(15,26),(16,26),(17,26),(18,26),(19,26),(20,26),
(21,26),(22,26),(23,26),(24,26),(25,26),(26,26),(27,26),(28,26),(29,26),(30,26),
(31,26),(32,26),(33,26),(34,26),(35,26),(36,26),(37,26),(38,26),(39,26),(40,26),
(41,26),(42,26),(43,26),(44,26),(45,26),(46,26),(47,26),(48,26),(49,26),(50,26),
(51,26),(52,26),(53,26),(54,26),(55,26),(56,26),(57,26),(58,26),(59,26),(60,26),
(61,26),(62,26),(63,26),(64,26),(65,26),(66,26),(67,26),(68,26),(69,26),(70,26),
(71,26),(72,26),

(1,27),(2,27),(3,27),(4,27),(5,27),(6,27),(7,27),(8,27),(9,27),(10,27),
(11,27),(12,27),(13,27),(14,27),(15,27),(16,27),(17,27),(18,27),(19,27),(20,27),
(21,27),(22,27),(23,27),(24,27),(25,27),(26,27),(27,27),(28,27),(29,27),(30,27),
(31,27),(32,27),(33,27),(34,27),(35,27),(36,27),(37,27),(38,27),(39,27),(40,27),
(41,27),(42,27),(43,27),(44,27),(45,27),(46,27),(47,27),(48,27),(49,27),(50,27),
(51,27),(52,27),(53,27),(54,27),(55,27),(56,27),(57,27),(58,27),(59,27),(60,27),
(61,27),(62,27),(63,27),(64,27),(65,27),(66,27),(67,27),(68,27),(69,27),(70,27),
(71,27),(72,27),

(1,28),(2,28),(3,28),(4,28),(5,28),(6,28),(7,28),(8,28),(9,28),(10,28),
(11,28),(12,28),(13,28),(14,28),(15,28),(16,28),(17,28),(18,28),(19,28),(20,28),
(21,28),(22,28),(23,28),(24,28),(25,28),(26,28),(27,28),(28,28),(29,28),(30,28),
(31,28),(32,28),(33,28),(34,28),(35,28),(36,28),(37,28),(38,28),(39,28),(40,28),
(41,28),(42,28),(43,28),(44,28),(45,28),(46,28),(47,28),(48,28),(49,28),(50,28),
(51,28),(52,28),(53,28),(54,28),(55,28),(56,28),(57,28),(58,28),(59,28),(60,28),
(61,28),(62,28),(63,28),(64,28),(65,28),(66,28),(67,28),(68,28),(69,28),(70,28),
(71,28),(72,28);


UPDATE `station` SET `image_station` = '../SWP391/images/stations/hanoi.jpg' WHERE `id_station` = 1;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/phuly.jpg' WHERE `id_station` = 2;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/namdinh.jpg' WHERE `id_station` = 3;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ninhbinh.jpg' WHERE `id_station` = 4;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bimson.jpg' WHERE `id_station` = 5;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/thanhhoa.jpg' WHERE `id_station` = 6;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/minhkhoi.jpg' WHERE `id_station` = 7;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/chosy.jpg' WHERE `id_station` = 8;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/vinh.jpg' WHERE `id_station` = 9;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/yentrung.jpg' WHERE `id_station` = 10;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/huongpho.jpg' WHERE `id_station` = 11;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/dongle.jpg' WHERE `id_station` = 12;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/donghoi.jpg' WHERE `id_station` = 13;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/dongha.jpg' WHERE `id_station` = 14;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/hue.jpg' WHERE `id_station` = 15;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/langco.jpg' WHERE `id_station` = 16;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/danang.jpg' WHERE `id_station` = 17;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/trakieu.jpg' WHERE `id_station` = 18;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/phucang.jpg' WHERE `id_station` = 19;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/tamky.jpg' WHERE `id_station` = 20;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/nuithanh.jpg' WHERE `id_station` = 21;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/quangngai.jpg' WHERE `id_station` = 22;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ducpho.jpg' WHERE `id_station` = 23;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bongson.jpg' WHERE `id_station` = 24;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/quynhon.jpg' WHERE `id_station` = 25;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/tuyhoa.jpg' WHERE `id_station` = 26;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/gia.jpg' WHERE `id_station` = 27;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ninhhoa.jpg' WHERE `id_station` = 28;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/nhatrang.jpg' WHERE `id_station` = 29;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ngaba.jpg' WHERE `id_station` = 30;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/thapcham.jpg' WHERE `id_station` = 31;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/songmao.jpg' WHERE `id_station` = 32;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/malam.jpg' WHERE `id_station` = 33;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/binhthuan.jpg' WHERE `id_station` = 34;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/longkhanh.jpg' WHERE `id_station` = 35;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bienhoa.jpg' WHERE `id_station` = 36;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/saigon.jpg' WHERE `id_station` = 37;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/hanoi.jpg' WHERE `id_station` = 74;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/phuly.jpg' WHERE `id_station` = 73;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/namdinh.jpg' WHERE `id_station` = 72;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ninhbinh.jpg' WHERE `id_station` = 71;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bimson.jpg' WHERE `id_station` = 70;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/thanhhoa.jpg' WHERE `id_station` = 69;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/minhkhoi.jpg' WHERE `id_station` = 68;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/chosy.jpg' WHERE `id_station` = 67;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/vinh.jpg' WHERE `id_station` = 66;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/yentrung.jpg' WHERE `id_station` = 65;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/huongpho.jpg' WHERE `id_station` = 64;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/dongle.jpg' WHERE `id_station` = 63;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/donghoi.jpg' WHERE `id_station` = 62;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/dongha.jpg' WHERE `id_station` = 61;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/hue.jpg' WHERE `id_station` = 60;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/langco.jpg' WHERE `id_station` = 59;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/danang.jpg' WHERE `id_station` = 58;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/trakieu.jpg' WHERE `id_station` = 57;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/phucang.jpg' WHERE `id_station` = 56;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/tamky.jpg' WHERE `id_station` = 55;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/nuithanh.jpg' WHERE `id_station` = 54;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/quangngai.jpg' WHERE `id_station` = 53;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ducpho.jpg' WHERE `id_station` = 52;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bongson.jpg' WHERE `id_station` = 51;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/quynhon.jpg' WHERE `id_station` = 50;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/tuyhoa.jpg' WHERE `id_station` = 49;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/gia.jpg' WHERE `id_station` = 48;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ninhhoa.jpg' WHERE `id_station` = 47;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/nhatrang.jpg' WHERE `id_station` = 46;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ngaba.jpg' WHERE `id_station` = 45;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/thapcham.jpg' WHERE `id_station` = 44;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/songmao.jpg' WHERE `id_station` = 43;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/malam.jpg' WHERE `id_station` = 42;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/binhthuan.jpg' WHERE `id_station` = 41;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/longkhanh.jpg' WHERE `id_station` = 40;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bienhoa.jpg' WHERE `id_station` = 39;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/saigon.jpg' WHERE `id_station` = 38;

INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) VALUES ('Nguyễn Hữu Hiệp','hiepgacute1989@gmail.com','KOfLlsfqVZEOkuIN4BdPektNF9w=','0966755095',3,1); 
INSERT INTO `Train` (name_train, image_train, description_train, id_train_brand, id_status) VALUES ('21431432', NULL, '32432432', 0, 2);

INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 3, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 4, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 5, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 6, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 7, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 8, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 9, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 4, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 5, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 6, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 7, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 8, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 9, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 5, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 6, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 7, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 8, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 9, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 6, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 7, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 8, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 9, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 7, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 8, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 9, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 8, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 9, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 9, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 29, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 29, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 29, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 29, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 29, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 29, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 29, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 30, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 30, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 30, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 30, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 30, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 30, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 31, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 31, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 31, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 31, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 31, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 32, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 32, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 32, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 32, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 33, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 33, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 33, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 34, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 34, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 34, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 35, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 36, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 1, 1);
-- role 
INSERT INTO `role` (id_role, name_role) 
	VALUES (1, 'admin'),(2, 'manager'),(3, 'customer');
	
-- manager
INSERT INTO Manager (username_manager, password_manager, email_manager, id_role, status_manager)
	VALUES 
	('manager1', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'manager1@gmail.com', 2, 1), 
	('manager2', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'manager2@gmail.com', 2, 1);

-- admin
INSERT INTO Admin (username_admin, password_admin, email_admin, id_role)
	VALUES 
	('admin', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'admin1@example.com', 1); 
	
-- train brand
INSERT INTO Train_brand (id_manager, name_train_brand, description_train_brand,image_train_brand)
	VALUES 
	(1, 'Alpha', 'Train brand Alpha - High speed trains', null), 
	(2, 'Beta', 'Train brand Beta - Luxury trains', null);      

--	status
INSERT INTO Status (name_status)
	VALUES 
	-- Trạng thái cho Train
	('On Journey'),	
	('Waiting'),	 	
	('Maintenance'),	
	('Incident'),		
	
	-- Trạng thái cho Train_carriage, Train_seat
	('Available'),	 	
	('Booked'),			
	('Maintenance');	

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
	('Carriage 4 - Alpha 1 (Phổ thông)',  'Khoang có 40 ghế', 1, 5, 40),

	('Carriage 5 - Alpha 1 (Thương gia)',  'Khoang có 20 ghế', 1, 5, 20),
	('Carriage 6 - Alpha 1 (Thương gia)',  'Khoang có 20 ghế', 1, 5, 20),

	('Carriage 7 - Alpha 1 (VIP)',  'Khoang có 10 ghế', 1, 5, 10);
	
INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat, price_seat) 
VALUES 
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000);

-- train Beta
INSERT INTO Train (name_train, description_train, id_train_brand, id_status, image_train) 
	VALUES
	('Beta 1', ' ',2, 2, null),
	('Beta 2', ' ', 2, 2, null);
	
INSERT INTO Date_of_trip (date_details) VALUES 
('2025-02-01'),
('2025-02-02'),
('2025-02-03'),
('2025-02-04'),
('2025-02-05'),
('2025-02-06'),
('2025-02-07'),
('2025-02-08'),
('2025-02-09'),
('2025-02-10'),
('2025-02-11'),
('2025-02-12'),
('2025-02-13'),
('2025-02-14'),
('2025-02-15'),
('2025-02-16'),
('2025-02-17'),
('2025-02-18'),
('2025-02-19'),
('2025-02-20'),
('2025-02-21'),
('2025-02-22'),
('2025-02-23'),
('2025-02-24'),
('2025-02-25'),
('2025-02-26'),
('2025-02-27'),
('2025-02-28');

INSERT INTO Station (name_station, image_station, description_station) VALUES
('Hà Nội', NULL, 'Ga Hà Nội, trung tâm thủ đô, đầu mối giao thông quan trọng'),
('Phủ Lý', NULL, 'Ga Phủ Lý, tỉnh Hà Nam, phục vụ khu vực Đồng bằng sông Hồng'),
('Nam Định', NULL, 'Ga Nam Định, tỉnh Nam Định, trung tâm vùng Nam Đồng bằng sông Hồng'),
('Ninh Bình', NULL, 'Ga Ninh Bình, tỉnh Ninh Bình, gần khu du lịch Tràng An'),
('Bỉm Sơn', NULL, 'Ga Bỉm Sơn, tỉnh Thanh Hóa, phục vụ khu vực Bắc Trung Bộ'),
('Thanh Hóa', NULL, 'Ga Thanh Hóa, tỉnh Thanh Hóa, trung tâm vùng Bắc Trung Bộ'),
('Minh Khôi', NULL, 'Ga Minh Khôi, tỉnh Hải Dương, phục vụ khu vực Đồng bằng sông Hồng'),
('Chợ Sy', NULL, 'Ga Chợ Sy, tỉnh Lạng Sơn, gần biên giới Trung Quốc'),
('Vinh', NULL, 'Ga Vinh, tỉnh Nghệ An, trung tâm vùng Bắc Trung Bộ'),
('Yên Trung', NULL, 'Ga Yên Trung, tỉnh Hải Dương, phục vụ khu vực Đồng bằng sông Hồng'),
('Hương Phố', NULL, 'Ga Hương Phố, tỉnh Quảng Trị, phục vụ khu vực miền Trung'),
('Đồng Lê', NULL, 'Ga Đồng Lê, tỉnh Quảng Bình, phục vụ khu vực miền Trung'),
('Đồng Hới', NULL, 'Ga Đồng Hới, tỉnh Quảng Bình, gần di sản Phong Nha - Kẻ Bàng'),
('Đông Hà', NULL, 'Ga Đông Hà, tỉnh Quảng Trị, phục vụ khu vực miền Trung'),
('Huế', NULL, 'Ga Huế, thành phố Huế, tỉnh Thừa Thiên Huế, di sản văn hóa thế giới'),
('Lăng Cô', NULL, 'Ga Lăng Cô, tỉnh Thừa Thiên Huế, gần đèo Hải Vân'),
('Đà Nẵng', NULL, 'Ga Đà Nẵng, thành phố Đà Nẵng, trung tâm kinh tế miền Trung'),
('Trà Kiệu', NULL, 'Ga Trà Kiệu, tỉnh Quảng Nam, phục vụ khu vực miền Trung'),
('Phú Cang', NULL, 'Ga Phú Cang, tỉnh Thừa Thiên Huế, phục vụ khu vực miền Trung'),
('Tam Kỳ', NULL, 'Ga Tam Kỳ, tỉnh Quảng Nam, phục vụ khu vực miền Trung'),
('Núi Thành', NULL, 'Ga Núi Thành, tỉnh Quảng Nam, trên tuyến đường sắt Bắc - Nam'),
('Quảng Ngãi', NULL, 'Ga Quảng Ngãi, tỉnh Quảng Ngãi, trên tuyến đường sắt Bắc - Nam'),
('Đức Phổ', NULL, 'Ga Đức Phổ, tỉnh Quảng Ngãi, trên tuyến đường sắt Bắc - Nam'),
('Bồng Sơn', NULL, 'Ga Bồng Sơn, tỉnh Bình Định, trên tuyến đường sắt Bắc - Nam'),
('Quy Nhơn', NULL, 'Ga Quy Nhơn, tỉnh Bình Định, thành phố biển miền Trung'),
('Tuy Hòa', NULL, 'Ga Tuy Hòa, tỉnh Phú Yên, thành phố biển miền Trung'),
('Giã', NULL, 'Ga Giã, tỉnh Hải Dương, phục vụ khu vực Đồng bằng sông Hồng'),
('Ninh Hòa', NULL, 'Ga Ninh Hòa, tỉnh Khánh Hòa, phục vụ khu vực Nam Trung Bộ'),
('Nha Trang', NULL, 'Ga Nha Trang, tỉnh Khánh Hòa, thành phố biển nổi tiếng'),
('Ngã Ba', NULL, 'Ga Ngã Ba, tỉnh Thanh Hóa, nút giao quan trọng miền Trung'),
('Tháp Chàm', NULL, 'Ga Tháp Chàm, tỉnh Ninh Thuận, gần di tích Tháp Chàm'),
('Sông Mao', NULL, 'Ga Sông Mao, tỉnh Bình Thuận, trên tuyến đường sắt Bắc - Nam'),
('Ma Lâm', NULL, 'Ga Ma Lâm, tỉnh Bình Thuận, trên tuyến đường sắt Bắc - Nam'),
('Bình Thuận', NULL, 'Ga Bình Thuận, tỉnh Bình Thuận, trên tuyến đường sắt Bắc - Nam'),
('Long Khánh', NULL, 'Ga Long Khánh, tỉnh Đồng Nai, phục vụ khu vực Đông Nam Bộ'),
('Biên Hòa', NULL, 'Ga Biên Hòa, tỉnh Đồng Nai, phục vụ khu vực Đông Nam Bộ'),
('Sài Gòn', NULL, 'Ga Sài Gòn, thành phố Hồ Chí Minh, đầu mối giao thông phía Nam');

INSERT INTO Time_of_station (time_train_in_station) VALUES 
('04:30'), ('05:03'), ('05:30'), ('06:00'), ('06:37'), 
('07:04'), ('07:31'), ('08:00'), ('08:34'), ('09:04'), 
('09:30'), ('10:04'), ('10:35'), ('11:06'), ('11:34'), 
('12:01'), ('12:33'), ('13:00'), ('13:34'), ('14:03'), 
('14:27'), ('14:58'), ('15:33'), ('16:04'), ('16:40'), 
('17:08'), ('17:38'), ('18:05'), ('18:33'), ('19:05'), 
('19:40'), ('20:07'), ('20:34'), ('21:05'), ('21:33'), 
('22:01'), ('22:30');

INSERT INTO Time_station (id_station, id_time_of_station) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),
(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),
(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),
(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),
(37,37),
(37,1),(36,2),(35,3),(34,4),(33,5),(32,6),(31,7),(30,8),(29,9),
(28,10),(27,11),(26,12),(25,13),(24,14),(23,15),(22,16),(21,17),(20,18),
(19,19),(18,20),(17,21),(16,22),(15,23),(14,24),(13,25),(12,26),(11,27),
(10,28),(9,29),(8,30),(7,31),(6,32),(5,33),(4,34),(3,35),(2,36),
(1,37);

INSERT INTO Trip (id_time_station_start, id_time_station_end, id_train, price_trip) VALUES
(1, 2, 1, NULL),(2, 3, 1, NULL),(3, 4, 1, NULL),(4, 5, 1, NULL),(5, 6, 1, NULL),(6, 7, 1, NULL),(7, 8, 1, NULL),(8, 9, 1, NULL),(9, 10, 1, NULL),
(10, 11, 1, NULL),(11, 12, 1, NULL),(12, 13, 1, NULL),(13, 14, 1, NULL),(14, 15, 1, NULL),(15, 16, 1, NULL),(16, 17, 1, NULL),(17, 18, 1, NULL),(18, 19, 1, NULL),
(19, 20, 1, NULL),(20, 21, 1, NULL),(21, 22, 1, NULL),(22, 23, 1, NULL),(23, 24, 1, NULL),(24, 25, 1, NULL),(25, 26, 1, NULL),(26, 27, 1, NULL),(27, 28, 1, NULL),
(28, 29, 1, NULL),(29, 30, 1, NULL),(30, 31, 1, NULL),(31, 32, 1, NULL),(32, 33, 1, NULL),(33, 34, 1, NULL),(34, 35, 1, NULL),(35, 36, 1, NULL),(36, 37, 1, NULL),

(38, 39, 1, NULL),(39, 40, 1, NULL),(40, 41, 1, NULL),(41, 42, 1, NULL),(42, 43, 1, NULL),(43, 44, 1, NULL),(44, 45, 1, NULL),(45, 46, 1, NULL),
(46, 47, 1, NULL),(47, 48, 1, NULL),(48, 49, 1, NULL),(49, 50, 1, NULL),(50, 51, 1, NULL),(51, 52, 1, NULL),(52, 53, 1, NULL),(53, 54, 1, NULL),(54, 55, 1, NULL),
(55, 56, 1, NULL),(56, 57, 1, NULL),(57, 58, 1, NULL),(58, 59, 1, NULL),(59, 60, 1, NULL),(60, 61, 1, NULL),(61, 62, 1, NULL),(62, 63, 1, NULL),(63, 64, 1, NULL),
(64, 65, 1, NULL),(65, 66, 1, NULL),(66, 67, 1, NULL),(67, 68, 1, NULL),(68, 69, 1, NULL),(69, 70, 1, NULL),(70, 71, 1, NULL),(71, 72, 1, NULL),(72, 73, 1, NULL),
(73, 74, 1, NULL);

INSERT INTO Date_trip (id_trip,id_date_of_trip) VALUES
(1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),
(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),
(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),
(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),
(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),
(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),
(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),
(71,1),(72,1),

(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),
(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),
(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),
(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2),
(41,2),(42,2),(43,2),(44,2),(45,2),(46,2),(47,2),(48,2),(49,2),(50,2),
(51,2),(52,2),(53,2),(54,2),(55,2),(56,2),(57,2),(58,2),(59,2),(60,2),
(61,2),(62,2),(63,2),(64,2),(65,2),(66,2),(67,2),(68,2),(69,2),(70,2),
(71,2),(72,2),

(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),
(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),
(21,3),(22,3),(23,3),(24,3),(25,3),(26,3),(27,3),(28,3),(29,3),(30,3),
(31,3),(32,3),(33,3),(34,3),(35,3),(36,3),(37,3),(38,3),(39,3),(40,3),
(41,3),(42,3),(43,3),(44,3),(45,3),(46,3),(47,3),(48,3),(49,3),(50,3),
(51,3),(52,3),(53,3),(54,3),(55,3),(56,3),(57,3),(58,3),(59,3),(60,3),
(61,3),(62,3),(63,3),(64,3),(65,3),(66,3),(67,3),(68,3),(69,3),(70,3),
(71,3),(72,3),

(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4),
(11,4),(12,4),(13,4),(14,4),(15,4),(16,4),(17,4),(18,4),(19,4),(20,4),
(21,4),(22,4),(23,4),(24,4),(25,4),(26,4),(27,4),(28,4),(29,4),(30,4),
(31,4),(32,4),(33,4),(34,4),(35,4),(36,4),(37,4),(38,4),(39,4),(40,4),
(41,4),(42,4),(43,4),(44,4),(45,4),(46,4),(47,4),(48,4),(49,4),(50,4),
(51,4),(52,4),(53,4),(54,4),(55,4),(56,4),(57,4),(58,4),(59,4),(60,4),
(61,4),(62,4),(63,4),(64,4),(65,4),(66,4),(67,4),(68,4),(69,4),(70,4),
(71,4),(72,4),

(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(9,5),(10,5),
(11,5),(12,5),(13,5),(14,5),(15,5),(16,5),(17,5),(18,5),(19,5),(20,5),
(21,5),(22,5),(23,5),(24,5),(25,5),(26,5),(27,5),(28,5),(29,5),(30,5),
(31,5),(32,5),(33,5),(34,5),(35,5),(36,5),(37,5),(38,5),(39,5),(40,5),
(41,5),(42,5),(43,5),(44,5),(45,5),(46,5),(47,5),(48,5),(49,5),(50,5),
(51,5),(52,5),(53,5),(54,5),(55,5),(56,5),(57,5),(58,5),(59,5),(60,5),
(61,5),(62,5),(63,5),(64,5),(65,5),(66,5),(67,5),(68,5),(69,5),(70,5),
(71,5),(72,5),

(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(9,6),(10,6),
(11,6),(12,6),(13,6),(14,6),(15,6),(16,6),(17,6),(18,6),(19,6),(20,6),
(21,6),(22,6),(23,6),(24,6),(25,6),(26,6),(27,6),(28,6),(29,6),(30,6),
(31,6),(32,6),(33,6),(34,6),(35,6),(36,6),(37,6),(38,6),(39,6),(40,6),
(41,6),(42,6),(43,6),(44,6),(45,6),(46,6),(47,6),(48,6),(49,6),(50,6),
(51,6),(52,6),(53,6),(54,6),(55,6),(56,6),(57,6),(58,6),(59,6),(60,6),
(61,6),(62,6),(63,6),(64,6),(65,6),(66,6),(67,6),(68,6),(69,6),(70,6),
(71,6),(72,6),

(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(8,7),(9,7),(10,7),
(11,7),(12,7),(13,7),(14,7),(15,7),(16,7),(17,7),(18,7),(19,7),(20,7),
(21,7),(22,7),(23,7),(24,7),(25,7),(26,7),(27,7),(28,7),(29,7),(30,7),
(31,7),(32,7),(33,7),(34,7),(35,7),(36,7),(37,7),(38,7),(39,7),(40,7),
(41,7),(42,7),(43,7),(44,7),(45,7),(46,7),(47,7),(48,7),(49,7),(50,7),
(51,7),(52,7),(53,7),(54,7),(55,7),(56,7),(57,7),(58,7),(59,7),(60,7),
(61,7),(62,7),(63,7),(64,7),(65,7),(66,7),(67,7),(68,7),(69,7),(70,7),
(71,7),(72,7),

(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(8,8),(9,8),(10,8),
(11,8),(12,8),(13,8),(14,8),(15,8),(16,8),(17,8),(18,8),(19,8),(20,8),
(21,8),(22,8),(23,8),(24,8),(25,8),(26,8),(27,8),(28,8),(29,8),(30,8),
(31,8),(32,8),(33,8),(34,8),(35,8),(36,8),(37,8),(38,8),(39,8),(40,8),
(41,8),(42,8),(43,8),(44,8),(45,8),(46,8),(47,8),(48,8),(49,8),(50,8),
(51,8),(52,8),(53,8),(54,8),(55,8),(56,8),(57,8),(58,8),(59,8),(60,8),
(61,8),(62,8),(63,8),(64,8),(65,8),(66,8),(67,8),(68,8),(69,8),(70,8),
(71,8),(72,8),

(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(8,9),(9,9),(10,9),
(11,9),(12,9),(13,9),(14,9),(15,9),(16,9),(17,9),(18,9),(19,9),(20,9),
(21,9),(22,9),(23,9),(24,9),(25,9),(26,9),(27,9),(28,9),(29,9),(30,9),
(31,9),(32,9),(33,9),(34,9),(35,9),(36,9),(37,9),(38,9),(39,9),(40,9),
(41,9),(42,9),(43,9),(44,9),(45,9),(46,9),(47,9),(48,9),(49,9),(50,9),
(51,9),(52,9),(53,9),(54,9),(55,9),(56,9),(57,9),(58,9),(59,9),(60,9),
(61,9),(62,9),(63,9),(64,9),(65,9),(66,9),(67,9),(68,9),(69,9),(70,9),
(71,9),(72,9),

(1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(8,10),(9,10),(10,10),
(11,10),(12,10),(13,10),(14,10),(15,10),(16,10),(17,10),(18,10),(19,10),(20,10),
(21,10),(22,10),(23,10),(24,10),(25,10),(26,10),(27,10),(28,10),(29,10),(30,10),
(31,10),(32,10),(33,10),(34,10),(35,10),(36,10),(37,10),(38,10),(39,10),(40,10),
(41,10),(42,10),(43,10),(44,10),(45,10),(46,10),(47,10),(48,10),(49,10),(50,10),
(51,10),(52,10),(53,10),(54,10),(55,10),(56,10),(57,10),(58,10),(59,10),(60,10),
(61,10),(62,10),(63,10),(64,10),(65,10),(66,10),(67,10),(68,10),(69,10),(70,10),
(71,10),(72,10),

(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(8,11),(9,11),(10,11),
(11,11),(12,11),(13,11),(14,11),(15,11),(16,11),(17,11),(18,11),(19,11),(20,11),
(21,11),(22,11),(23,11),(24,11),(25,11),(26,11),(27,11),(28,11),(29,11),(30,11),
(31,11),(32,11),(33,11),(34,11),(35,11),(36,11),(37,11),(38,11),(39,11),(40,11),
(41,11),(42,11),(43,11),(44,11),(45,11),(46,11),(47,11),(48,11),(49,11),(50,11),
(51,11),(52,11),(53,11),(54,11),(55,11),(56,11),(57,11),(58,11),(59,11),(60,11),
(61,11),(62,11),(63,11),(64,11),(65,11),(66,11),(67,11),(68,11),(69,11),(70,11),
(71,11),(72,11),

(1,12),(2,12),(3,12),(4,12),(5,12),(6,12),(7,12),(8,12),(9,12),(10,12),
(11,12),(12,12),(13,12),(14,12),(15,12),(16,12),(17,12),(18,12),(19,12),(20,12),
(21,12),(22,12),(23,12),(24,12),(25,12),(26,12),(27,12),(28,12),(29,12),(30,12),
(31,12),(32,12),(33,12),(34,12),(35,12),(36,12),(37,12),(38,12),(39,12),(40,12),
(41,12),(42,12),(43,12),(44,12),(45,12),(46,12),(47,12),(48,12),(49,12),(50,12),
(51,12),(52,12),(53,12),(54,12),(55,12),(56,12),(57,12),(58,12),(59,12),(60,12),
(61,12),(62,12),(63,12),(64,12),(65,12),(66,12),(67,12),(68,12),(69,12),(70,12),
(71,12),(72,12),

(1,13),(2,13),(3,13),(4,13),(5,13),(6,13),(7,13),(8,13),(9,13),(10,13),
(11,13),(12,13),(13,13),(14,13),(15,13),(16,13),(17,13),(18,13),(19,13),(20,13),
(21,13),(22,13),(23,13),(24,13),(25,13),(26,13),(27,13),(28,13),(29,13),(30,13),
(31,13),(32,13),(33,13),(34,13),(35,13),(36,13),(37,13),(38,13),(39,13),(40,13),
(41,13),(42,13),(43,13),(44,13),(45,13),(46,13),(47,13),(48,13),(49,13),(50,13),
(51,13),(52,13),(53,13),(54,13),(55,13),(56,13),(57,13),(58,13),(59,13),(60,13),
(61,13),(62,13),(63,13),(64,13),(65,13),(66,13),(67,13),(68,13),(69,13),(70,13),
(71,13),(72,13),

(1,14),(2,14),(3,14),(4,14),(5,14),(6,14),(7,14),(8,14),(9,14),(10,14),
(11,14),(12,14),(13,14),(14,14),(15,14),(16,14),(17,14),(18,14),(19,14),(20,14),
(21,14),(22,14),(23,14),(24,14),(25,14),(26,14),(27,14),(28,14),(29,14),(30,14),
(31,14),(32,14),(33,14),(34,14),(35,14),(36,14),(37,14),(38,14),(39,14),(40,14),
(41,14),(42,14),(43,14),(44,14),(45,14),(46,14),(47,14),(48,14),(49,14),(50,14),
(51,14),(52,14),(53,14),(54,14),(55,14),(56,14),(57,14),(58,14),(59,14),(60,14),
(61,14),(62,14),(63,14),(64,14),(65,14),(66,14),(67,14),(68,14),(69,14),(70,14),
(71,14),(72,14),

(1,15),(2,15),(3,15),(4,15),(5,15),(6,15),(7,15),(8,15),(9,15),(10,15),
(11,15),(12,15),(13,15),(14,15),(15,15),(16,15),(17,15),(18,15),(19,15),(20,15),
(21,15),(22,15),(23,15),(24,15),(25,15),(26,15),(27,15),(28,15),(29,15),(30,15),
(31,15),(32,15),(33,15),(34,15),(35,15),(36,15),(37,15),(38,15),(39,15),(40,15),
(41,15),(42,15),(43,15),(44,15),(45,15),(46,15),(47,15),(48,15),(49,15),(50,15),
(51,15),(52,15),(53,15),(54,15),(55,15),(56,15),(57,15),(58,15),(59,15),(60,15),
(61,15),(62,15),(63,15),(64,15),(65,15),(66,15),(67,15),(68,15),(69,15),(70,15),
(71,15),(72,15),

(1,16),(2,16),(3,16),(4,16),(5,16),(6,16),(7,16),(8,16),(9,16),(10,16),
(11,16),(12,16),(13,16),(14,16),(15,16),(16,16),(17,16),(18,16),(19,16),(20,16),
(21,16),(22,16),(23,16),(24,16),(25,16),(26,16),(27,16),(28,16),(29,16),(30,16),
(31,16),(32,16),(33,16),(34,16),(35,16),(36,16),(37,16),(38,16),(39,16),(40,16),
(41,16),(42,16),(43,16),(44,16),(45,16),(46,16),(47,16),(48,16),(49,16),(50,16),
(51,16),(52,16),(53,16),(54,16),(55,16),(56,16),(57,16),(58,16),(59,16),(60,16),
(61,16),(62,16),(63,16),(64,16),(65,16),(66,16),(67,16),(68,16),(69,16),(70,16),
(71,16),(72,16),

(1,17),(2,17),(3,17),(4,17),(5,17),(6,17),(7,17),(8,17),(9,17),(10,17),
(11,17),(12,17),(13,17),(14,17),(15,17),(16,17),(17,17),(18,17),(19,17),(20,17),
(21,17),(22,17),(23,17),(24,17),(25,17),(26,17),(27,17),(28,17),(29,17),(30,17),
(31,17),(32,17),(33,17),(34,17),(35,17),(36,17),(37,17),(38,17),(39,17),(40,17),
(41,17),(42,17),(43,17),(44,17),(45,17),(46,17),(47,17),(48,17),(49,17),(50,17),
(51,17),(52,17),(53,17),(54,17),(55,17),(56,17),(57,17),(58,17),(59,17),(60,17),
(61,17),(62,17),(63,17),(64,17),(65,17),(66,17),(67,17),(68,17),(69,17),(70,17),
(71,17),(72,17),

(1,18),(2,18),(3,18),(4,18),(5,18),(6,18),(7,18),(8,18),(9,18),(10,18),
(11,18),(12,18),(13,18),(14,18),(15,18),(16,18),(17,18),(18,18),(19,18),(20,18),
(21,18),(22,18),(23,18),(24,18),(25,18),(26,18),(27,18),(28,18),(29,18),(30,18),
(31,18),(32,18),(33,18),(34,18),(35,18),(36,18),(37,18),(38,18),(39,18),(40,18),
(41,18),(42,18),(43,18),(44,18),(45,18),(46,18),(47,18),(48,18),(49,18),(50,18),
(51,18),(52,18),(53,18),(54,18),(55,18),(56,18),(57,18),(58,18),(59,18),(60,18),
(61,18),(62,18),(63,18),(64,18),(65,18),(66,18),(67,18),(68,18),(69,18),(70,18),
(71,18),(72,18),

(1,19),(2,19),(3,19),(4,19),(5,19),(6,19),(7,19),(8,19),(9,19),(10,19),
(11,19),(12,19),(13,19),(14,19),(15,19),(16,19),(17,19),(18,19),(19,19),(20,19),
(21,19),(22,19),(23,19),(24,19),(25,19),(26,19),(27,19),(28,19),(29,19),(30,19),
(31,19),(32,19),(33,19),(34,19),(35,19),(36,19),(37,19),(38,19),(39,19),(40,19),
(41,19),(42,19),(43,19),(44,19),(45,19),(46,19),(47,19),(48,19),(49,19),(50,19),
(51,19),(52,19),(53,19),(54,19),(55,19),(56,19),(57,19),(58,19),(59,19),(60,19),
(61,19),(62,19),(63,19),(64,19),(65,19),(66,19),(67,19),(68,19),(69,19),(70,19),
(71,19),(72,19),

(1,20),(2,20),(3,20),(4,20),(5,20),(6,20),(7,20),(8,20),(9,20),(10,20),
(11,20),(12,20),(13,20),(14,20),(15,20),(16,20),(17,20),(18,20),(19,20),(20,20),
(21,20),(22,20),(23,20),(24,20),(25,20),(26,20),(27,20),(28,20),(29,20),(30,20),
(31,20),(32,20),(33,20),(34,20),(35,20),(36,20),(37,20),(38,20),(39,20),(40,20),
(41,20),(42,20),(43,20),(44,20),(45,20),(46,20),(47,20),(48,20),(49,20),(50,20),
(51,20),(52,20),(53,20),(54,20),(55,20),(56,20),(57,20),(58,20),(59,20),(60,20),
(61,20),(62,20),(63,20),(64,20),(65,20),(66,20),(67,20),(68,20),(69,20),(70,20),
(71,20),(72,20),

(1,21),(2,21),(3,21),(4,21),(5,21),(6,21),(7,21),(8,21),(9,21),(10,21),
(11,21),(12,21),(13,21),(14,21),(15,21),(16,21),(17,21),(18,21),(19,21),(20,21),
(21,21),(22,21),(23,21),(24,21),(25,21),(26,21),(27,21),(28,21),(29,21),(30,21),
(31,21),(32,21),(33,21),(34,21),(35,21),(36,21),(37,21),(38,21),(39,21),(40,21),
(41,21),(42,21),(43,21),(44,21),(45,21),(46,21),(47,21),(48,21),(49,21),(50,21),
(51,21),(52,21),(53,21),(54,21),(55,21),(56,21),(57,21),(58,21),(59,21),(60,21),
(61,21),(62,21),(63,21),(64,21),(65,21),(66,21),(67,21),(68,21),(69,21),(70,21),
(71,21),(72,21),

(1,22),(2,22),(3,22),(4,22),(5,22),(6,22),(7,22),(8,22),(9,22),(10,22),
(11,22),(12,22),(13,22),(14,22),(15,22),(16,22),(17,22),(18,22),(19,22),(20,22),
(21,22),(22,22),(23,22),(24,22),(25,22),(26,22),(27,22),(28,22),(29,22),(30,22),
(31,22),(32,22),(33,22),(34,22),(35,22),(36,22),(37,22),(38,22),(39,22),(40,22),
(41,22),(42,22),(43,22),(44,22),(45,22),(46,22),(47,22),(48,22),(49,22),(50,22),
(51,22),(52,22),(53,22),(54,22),(55,22),(56,22),(57,22),(58,22),(59,22),(60,22),
(61,22),(62,22),(63,22),(64,22),(65,22),(66,22),(67,22),(68,22),(69,22),(70,22),
(71,22),(72,22),

(1,23),(2,23),(3,23),(4,23),(5,23),(6,23),(7,23),(8,23),(9,23),(10,23),
(11,23),(12,23),(13,23),(14,23),(15,23),(16,23),(17,23),(18,23),(19,23),(20,23),
(21,23),(22,23),(23,23),(24,23),(25,23),(26,23),(27,23),(28,23),(29,23),(30,23),
(31,23),(32,23),(33,23),(34,23),(35,23),(36,23),(37,23),(38,23),(39,23),(40,23),
(41,23),(42,23),(43,23),(44,23),(45,23),(46,23),(47,23),(48,23),(49,23),(50,23),
(51,23),(52,23),(53,23),(54,23),(55,23),(56,23),(57,23),(58,23),(59,23),(60,23),
(61,23),(62,23),(63,23),(64,23),(65,23),(66,23),(67,23),(68,23),(69,23),(70,23),
(71,23),(72,23),

(1,24),(2,24),(3,24),(4,24),(5,24),(6,24),(7,24),(8,24),(9,24),(10,24),
(11,24),(12,24),(13,24),(14,24),(15,24),(16,24),(17,24),(18,24),(19,24),(20,24),
(21,24),(22,24),(23,24),(24,24),(25,24),(26,24),(27,24),(28,24),(29,24),(30,24),
(31,24),(32,24),(33,24),(34,24),(35,24),(36,24),(37,24),(38,24),(39,24),(40,24),
(41,24),(42,24),(43,24),(44,24),(45,24),(46,24),(47,24),(48,24),(49,24),(50,24),
(51,24),(52,24),(53,24),(54,24),(55,24),(56,24),(57,24),(58,24),(59,24),(60,24),
(61,24),(62,24),(63,24),(64,24),(65,24),(66,24),(67,24),(68,24),(69,24),(70,24),
(71,24),(72,24),

(1,25),(2,25),(3,25),(4,25),(5,25),(6,25),(7,25),(8,25),(9,25),(10,25),
(11,25),(12,25),(13,25),(14,25),(15,25),(16,25),(17,25),(18,25),(19,25),(20,25),
(21,25),(22,25),(23,25),(24,25),(25,25),(26,25),(27,25),(28,25),(29,25),(30,25),
(31,25),(32,25),(33,25),(34,25),(35,25),(36,25),(37,25),(38,25),(39,25),(40,25),
(41,25),(42,25),(43,25),(44,25),(45,25),(46,25),(47,25),(48,25),(49,25),(50,25),
(51,25),(52,25),(53,25),(54,25),(55,25),(56,25),(57,25),(58,25),(59,25),(60,25),
(61,25),(62,25),(63,25),(64,25),(65,25),(66,25),(67,25),(68,25),(69,25),(70,25),
(71,25),(72,25),

(1,26),(2,26),(3,26),(4,26),(5,26),(6,26),(7,26),(8,26),(9,26),(10,26),
(11,26),(12,26),(13,26),(14,26),(15,26),(16,26),(17,26),(18,26),(19,26),(20,26),
(21,26),(22,26),(23,26),(24,26),(25,26),(26,26),(27,26),(28,26),(29,26),(30,26),
(31,26),(32,26),(33,26),(34,26),(35,26),(36,26),(37,26),(38,26),(39,26),(40,26),
(41,26),(42,26),(43,26),(44,26),(45,26),(46,26),(47,26),(48,26),(49,26),(50,26),
(51,26),(52,26),(53,26),(54,26),(55,26),(56,26),(57,26),(58,26),(59,26),(60,26),
(61,26),(62,26),(63,26),(64,26),(65,26),(66,26),(67,26),(68,26),(69,26),(70,26),
(71,26),(72,26),

(1,27),(2,27),(3,27),(4,27),(5,27),(6,27),(7,27),(8,27),(9,27),(10,27),
(11,27),(12,27),(13,27),(14,27),(15,27),(16,27),(17,27),(18,27),(19,27),(20,27),
(21,27),(22,27),(23,27),(24,27),(25,27),(26,27),(27,27),(28,27),(29,27),(30,27),
(31,27),(32,27),(33,27),(34,27),(35,27),(36,27),(37,27),(38,27),(39,27),(40,27),
(41,27),(42,27),(43,27),(44,27),(45,27),(46,27),(47,27),(48,27),(49,27),(50,27),
(51,27),(52,27),(53,27),(54,27),(55,27),(56,27),(57,27),(58,27),(59,27),(60,27),
(61,27),(62,27),(63,27),(64,27),(65,27),(66,27),(67,27),(68,27),(69,27),(70,27),
(71,27),(72,27),

(1,28),(2,28),(3,28),(4,28),(5,28),(6,28),(7,28),(8,28),(9,28),(10,28),
(11,28),(12,28),(13,28),(14,28),(15,28),(16,28),(17,28),(18,28),(19,28),(20,28),
(21,28),(22,28),(23,28),(24,28),(25,28),(26,28),(27,28),(28,28),(29,28),(30,28),
(31,28),(32,28),(33,28),(34,28),(35,28),(36,28),(37,28),(38,28),(39,28),(40,28),
(41,28),(42,28),(43,28),(44,28),(45,28),(46,28),(47,28),(48,28),(49,28),(50,28),
(51,28),(52,28),(53,28),(54,28),(55,28),(56,28),(57,28),(58,28),(59,28),(60,28),
(61,28),(62,28),(63,28),(64,28),(65,28),(66,28),(67,28),(68,28),(69,28),(70,28),
(71,28),(72,28);


UPDATE `station` SET `image_station` = '../SWP391/images/stations/hanoi.jpg' WHERE `id_station` = 1;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/phuly.jpg' WHERE `id_station` = 2;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/namdinh.jpg' WHERE `id_station` = 3;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ninhbinh.jpg' WHERE `id_station` = 4;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bimson.jpg' WHERE `id_station` = 5;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/thanhhoa.jpg' WHERE `id_station` = 6;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/minhkhoi.jpg' WHERE `id_station` = 7;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/chosy.jpg' WHERE `id_station` = 8;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/vinh.jpg' WHERE `id_station` = 9;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/yentrung.jpg' WHERE `id_station` = 10;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/huongpho.jpg' WHERE `id_station` = 11;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/dongle.jpg' WHERE `id_station` = 12;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/donghoi.jpg' WHERE `id_station` = 13;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/dongha.jpg' WHERE `id_station` = 14;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/hue.jpg' WHERE `id_station` = 15;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/langco.jpg' WHERE `id_station` = 16;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/danang.jpg' WHERE `id_station` = 17;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/trakieu.jpg' WHERE `id_station` = 18;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/phucang.jpg' WHERE `id_station` = 19;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/tamky.jpg' WHERE `id_station` = 20;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/nuithanh.jpg' WHERE `id_station` = 21;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/quangngai.jpg' WHERE `id_station` = 22;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ducpho.jpg' WHERE `id_station` = 23;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bongson.jpg' WHERE `id_station` = 24;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/quynhon.jpg' WHERE `id_station` = 25;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/tuyhoa.jpg' WHERE `id_station` = 26;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/gia.jpg' WHERE `id_station` = 27;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ninhhoa.jpg' WHERE `id_station` = 28;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/nhatrang.jpg' WHERE `id_station` = 29;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ngaba.jpg' WHERE `id_station` = 30;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/thapcham.jpg' WHERE `id_station` = 31;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/songmao.jpg' WHERE `id_station` = 32;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/malam.jpg' WHERE `id_station` = 33;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/binhthuan.jpg' WHERE `id_station` = 34;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/longkhanh.jpg' WHERE `id_station` = 35;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bienhoa.jpg' WHERE `id_station` = 36;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/saigon.jpg' WHERE `id_station` = 37;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/hanoi.jpg' WHERE `id_station` = 74;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/phuly.jpg' WHERE `id_station` = 73;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/namdinh.jpg' WHERE `id_station` = 72;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ninhbinh.jpg' WHERE `id_station` = 71;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bimson.jpg' WHERE `id_station` = 70;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/thanhhoa.jpg' WHERE `id_station` = 69;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/minhkhoi.jpg' WHERE `id_station` = 68;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/chosy.jpg' WHERE `id_station` = 67;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/vinh.jpg' WHERE `id_station` = 66;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/yentrung.jpg' WHERE `id_station` = 65;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/huongpho.jpg' WHERE `id_station` = 64;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/dongle.jpg' WHERE `id_station` = 63;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/donghoi.jpg' WHERE `id_station` = 62;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/dongha.jpg' WHERE `id_station` = 61;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/hue.jpg' WHERE `id_station` = 60;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/langco.jpg' WHERE `id_station` = 59;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/danang.jpg' WHERE `id_station` = 58;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/trakieu.jpg' WHERE `id_station` = 57;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/phucang.jpg' WHERE `id_station` = 56;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/tamky.jpg' WHERE `id_station` = 55;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/nuithanh.jpg' WHERE `id_station` = 54;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/quangngai.jpg' WHERE `id_station` = 53;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ducpho.jpg' WHERE `id_station` = 52;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bongson.jpg' WHERE `id_station` = 51;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/quynhon.jpg' WHERE `id_station` = 50;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/tuyhoa.jpg' WHERE `id_station` = 49;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/gia.jpg' WHERE `id_station` = 48;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ninhhoa.jpg' WHERE `id_station` = 47;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/nhatrang.jpg' WHERE `id_station` = 46;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ngaba.jpg' WHERE `id_station` = 45;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/thapcham.jpg' WHERE `id_station` = 44;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/songmao.jpg' WHERE `id_station` = 43;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/malam.jpg' WHERE `id_station` = 42;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/binhthuan.jpg' WHERE `id_station` = 41;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/longkhanh.jpg' WHERE `id_station` = 40;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bienhoa.jpg' WHERE `id_station` = 39;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/saigon.jpg' WHERE `id_station` = 38;

INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) VALUES ('Nguyễn Hữu Hiệp','hiepgacute1989@gmail.com','KOfLlsfqVZEOkuIN4BdPektNF9w=','0966755095',3,1); 
INSERT INTO `Train` (name_train, image_train, description_train, id_train_brand, id_status) VALUES ('21431432', NULL, '32432432', 0, 2);

INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 3, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 4, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 5, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 6, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 7, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 8, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 9, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 1, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 4, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 5, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 6, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 7, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 8, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 9, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 2, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 5, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 6, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 7, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 8, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 9, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 3, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 6, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 7, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 8, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 9, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 4, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 7, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 8, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 9, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 5, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 8, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 9, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 6, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 9, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 7, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 10, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 8, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 11, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 9, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 12, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 10, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 13, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 11, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 14, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 12, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 15, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 13, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 16, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 14, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 17, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 15, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 18, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 16, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 19, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 17, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 20, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 18, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 21, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 19, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 22, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 20, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 23, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 21, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 24, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 22, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 25, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 23, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 26, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 24, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 27, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 25, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 28, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 26, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 29, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 27, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 30, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 28, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 29, 31, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 29, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 29, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 29, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 29, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 29, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 29, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 30, 32, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 30, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 30, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 30, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 30, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 30, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 31, 33, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 31, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 31, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 31, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 31, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 32, 34, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 32, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 32, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 32, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 33, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 33, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 33, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 34, 35, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 34, 36, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 34, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 35, 37, 1);
INSERT INTO trip (price_trip, id__time_station_start, id_time_station_end, id_train) VALUES (0, 36, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 1, 1);
INSERT INTO `role` (id_role, name_role) 
	VALUES (1, 'admin'),(2, 'manager'),(3, 'customer');
	
-- manager
INSERT INTO Manager (username_manager, password_manager, email_manager, id_role, status_manager)
	VALUES 
	('manager1', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'manager1@gmail.com', 2, 1), 
	('manager2', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'manager2@gmail.com', 2, 1);

-- admin
INSERT INTO Admin (username_admin, password_admin, email_admin, id_role)
	VALUES 
	('admin', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'admin1@example.com', 1); 
	
-- train brand
INSERT INTO Train_brand (id_manager, name_train_brand, description_train_brand,image_train_brand)
	VALUES 
	(1, 'Alpha', 'Train brand Alpha - High speed trains', null), 
	(2, 'Beta', 'Train brand Beta - Luxury trains', null);      

--	status
INSERT INTO Status (name_status)
	VALUES 
	-- Trạng thái cho Train
	('On Journey'),	
	('Waiting'),	 	
	('Maintenance'),	
	('Incident'),		
	
	-- Trạng thái cho Train_carriage, Train_seat
	('Available'),	 	
	('Booked'),			
	('Maintenance');	

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
	('Carriage 4 - Alpha 1 (Phổ thông)',  'Khoang có 40 ghế', 1, 5, 40),

	('Carriage 5 - Alpha 1 (Thương gia)',  'Khoang có 20 ghế', 1, 5, 20),
	('Carriage 6 - Alpha 1 (Thương gia)',  'Khoang có 20 ghế', 1, 5, 20),

	('Carriage 7 - Alpha 1 (VIP)',  'Khoang có 10 ghế', 1, 5, 10);
	
INSERT INTO Train_seat (id_train_carriage, id_status, code_train_seat, price_seat) 
VALUES 
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(1, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(2, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(3, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(4, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(5, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(6, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000),
		(7, 5,'1',600000);

-- train Beta
INSERT INTO Train (name_train, description_train, id_train_brand, id_status, image_train) 
	VALUES
	('Beta 1', ' ',2, 2, null),
	('Beta 2', ' ', 2, 2, null);
	
INSERT INTO Date_of_trip (date_details) VALUES 
('2025-02-01'),
('2025-02-02'),
('2025-02-03'),
('2025-02-04'),
('2025-02-05'),
('2025-02-06'),
('2025-02-07'),
('2025-02-08'),
('2025-02-09'),
('2025-02-10'),
('2025-02-11'),
('2025-02-12'),
('2025-02-13'),
('2025-02-14'),
('2025-02-15'),
('2025-02-16'),
('2025-02-17'),
('2025-02-18'),
('2025-02-19'),
('2025-02-20'),
('2025-02-21'),
('2025-02-22'),
('2025-02-23'),
('2025-02-24'),
('2025-02-25'),
('2025-02-26'),
('2025-02-27'),
('2025-02-28');

INSERT INTO Station (name_station, image_station, description_station) VALUES
('Hà Nội', NULL, 'Ga Hà Nội, trung tâm thủ đô, đầu mối giao thông quan trọng'),
('Phủ Lý', NULL, 'Ga Phủ Lý, tỉnh Hà Nam, phục vụ khu vực Đồng bằng sông Hồng'),
('Nam Định', NULL, 'Ga Nam Định, tỉnh Nam Định, trung tâm vùng Nam Đồng bằng sông Hồng'),
('Ninh Bình', NULL, 'Ga Ninh Bình, tỉnh Ninh Bình, gần khu du lịch Tràng An'),
('Bỉm Sơn', NULL, 'Ga Bỉm Sơn, tỉnh Thanh Hóa, phục vụ khu vực Bắc Trung Bộ'),
('Thanh Hóa', NULL, 'Ga Thanh Hóa, tỉnh Thanh Hóa, trung tâm vùng Bắc Trung Bộ'),
('Minh Khôi', NULL, 'Ga Minh Khôi, tỉnh Hải Dương, phục vụ khu vực Đồng bằng sông Hồng'),
('Chợ Sy', NULL, 'Ga Chợ Sy, tỉnh Lạng Sơn, gần biên giới Trung Quốc'),
('Vinh', NULL, 'Ga Vinh, tỉnh Nghệ An, trung tâm vùng Bắc Trung Bộ'),
('Yên Trung', NULL, 'Ga Yên Trung, tỉnh Hải Dương, phục vụ khu vực Đồng bằng sông Hồng'),
('Hương Phố', NULL, 'Ga Hương Phố, tỉnh Quảng Trị, phục vụ khu vực miền Trung'),
('Đồng Lê', NULL, 'Ga Đồng Lê, tỉnh Quảng Bình, phục vụ khu vực miền Trung'),
('Đồng Hới', NULL, 'Ga Đồng Hới, tỉnh Quảng Bình, gần di sản Phong Nha - Kẻ Bàng'),
('Đông Hà', NULL, 'Ga Đông Hà, tỉnh Quảng Trị, phục vụ khu vực miền Trung'),
('Huế', NULL, 'Ga Huế, thành phố Huế, tỉnh Thừa Thiên Huế, di sản văn hóa thế giới'),
('Lăng Cô', NULL, 'Ga Lăng Cô, tỉnh Thừa Thiên Huế, gần đèo Hải Vân'),
('Đà Nẵng', NULL, 'Ga Đà Nẵng, thành phố Đà Nẵng, trung tâm kinh tế miền Trung'),
('Trà Kiệu', NULL, 'Ga Trà Kiệu, tỉnh Quảng Nam, phục vụ khu vực miền Trung'),
('Phú Cang', NULL, 'Ga Phú Cang, tỉnh Thừa Thiên Huế, phục vụ khu vực miền Trung'),
('Tam Kỳ', NULL, 'Ga Tam Kỳ, tỉnh Quảng Nam, phục vụ khu vực miền Trung'),
('Núi Thành', NULL, 'Ga Núi Thành, tỉnh Quảng Nam, trên tuyến đường sắt Bắc - Nam'),
('Quảng Ngãi', NULL, 'Ga Quảng Ngãi, tỉnh Quảng Ngãi, trên tuyến đường sắt Bắc - Nam'),
('Đức Phổ', NULL, 'Ga Đức Phổ, tỉnh Quảng Ngãi, trên tuyến đường sắt Bắc - Nam'),
('Bồng Sơn', NULL, 'Ga Bồng Sơn, tỉnh Bình Định, trên tuyến đường sắt Bắc - Nam'),
('Quy Nhơn', NULL, 'Ga Quy Nhơn, tỉnh Bình Định, thành phố biển miền Trung'),
('Tuy Hòa', NULL, 'Ga Tuy Hòa, tỉnh Phú Yên, thành phố biển miền Trung'),
('Giã', NULL, 'Ga Giã, tỉnh Hải Dương, phục vụ khu vực Đồng bằng sông Hồng'),
('Ninh Hòa', NULL, 'Ga Ninh Hòa, tỉnh Khánh Hòa, phục vụ khu vực Nam Trung Bộ'),
('Nha Trang', NULL, 'Ga Nha Trang, tỉnh Khánh Hòa, thành phố biển nổi tiếng'),
('Ngã Ba', NULL, 'Ga Ngã Ba, tỉnh Thanh Hóa, nút giao quan trọng miền Trung'),
('Tháp Chàm', NULL, 'Ga Tháp Chàm, tỉnh Ninh Thuận, gần di tích Tháp Chàm'),
('Sông Mao', NULL, 'Ga Sông Mao, tỉnh Bình Thuận, trên tuyến đường sắt Bắc - Nam'),
('Ma Lâm', NULL, 'Ga Ma Lâm, tỉnh Bình Thuận, trên tuyến đường sắt Bắc - Nam'),
('Bình Thuận', NULL, 'Ga Bình Thuận, tỉnh Bình Thuận, trên tuyến đường sắt Bắc - Nam'),
('Long Khánh', NULL, 'Ga Long Khánh, tỉnh Đồng Nai, phục vụ khu vực Đông Nam Bộ'),
('Biên Hòa', NULL, 'Ga Biên Hòa, tỉnh Đồng Nai, phục vụ khu vực Đông Nam Bộ'),
('Sài Gòn', NULL, 'Ga Sài Gòn, thành phố Hồ Chí Minh, đầu mối giao thông phía Nam');

INSERT INTO Time_of_station (time_train_in_station) VALUES 
('04:30'), ('05:03'), ('05:30'), ('06:00'), ('06:37'), 
('07:04'), ('07:31'), ('08:00'), ('08:34'), ('09:04'), 
('09:30'), ('10:04'), ('10:35'), ('11:06'), ('11:34'), 
('12:01'), ('12:33'), ('13:00'), ('13:34'), ('14:03'), 
('14:27'), ('14:58'), ('15:33'), ('16:04'), ('16:40'), 
('17:08'), ('17:38'), ('18:05'), ('18:33'), ('19:05'), 
('19:40'), ('20:07'), ('20:34'), ('21:05'), ('21:33'), 
('22:01'), ('22:30');

INSERT INTO Time_station (id_station, id_time_of_station) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),
(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),
(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),
(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),
(37,37),
(37,1),(36,2),(35,3),(34,4),(33,5),(32,6),(31,7),(30,8),(29,9),
(28,10),(27,11),(26,12),(25,13),(24,14),(23,15),(22,16),(21,17),(20,18),
(19,19),(18,20),(17,21),(16,22),(15,23),(14,24),(13,25),(12,26),(11,27),
(10,28),(9,29),(8,30),(7,31),(6,32),(5,33),(4,34),(3,35),(2,36),
(1,37);

INSERT INTO Trip (id_time_station_start, id_time_station_end, id_train, price_trip) VALUES
(1, 2, 1, NULL),(2, 3, 1, NULL),(3, 4, 1, NULL),(4, 5, 1, NULL),(5, 6, 1, NULL),(6, 7, 1, NULL),(7, 8, 1, NULL),(8, 9, 1, NULL),(9, 10, 1, NULL),
(10, 11, 1, NULL),(11, 12, 1, NULL),(12, 13, 1, NULL),(13, 14, 1, NULL),(14, 15, 1, NULL),(15, 16, 1, NULL),(16, 17, 1, NULL),(17, 18, 1, NULL),(18, 19, 1, NULL),
(19, 20, 1, NULL),(20, 21, 1, NULL),(21, 22, 1, NULL),(22, 23, 1, NULL),(23, 24, 1, NULL),(24, 25, 1, NULL),(25, 26, 1, NULL),(26, 27, 1, NULL),(27, 28, 1, NULL),
(28, 29, 1, NULL),(29, 30, 1, NULL),(30, 31, 1, NULL),(31, 32, 1, NULL),(32, 33, 1, NULL),(33, 34, 1, NULL),(34, 35, 1, NULL),(35, 36, 1, NULL),(36, 37, 1, NULL),

(38, 39, 1, NULL),(39, 40, 1, NULL),(40, 41, 1, NULL),(41, 42, 1, NULL),(42, 43, 1, NULL),(43, 44, 1, NULL),(44, 45, 1, NULL),(45, 46, 1, NULL),
(46, 47, 1, NULL),(47, 48, 1, NULL),(48, 49, 1, NULL),(49, 50, 1, NULL),(50, 51, 1, NULL),(51, 52, 1, NULL),(52, 53, 1, NULL),(53, 54, 1, NULL),(54, 55, 1, NULL),
(55, 56, 1, NULL),(56, 57, 1, NULL),(57, 58, 1, NULL),(58, 59, 1, NULL),(59, 60, 1, NULL),(60, 61, 1, NULL),(61, 62, 1, NULL),(62, 63, 1, NULL),(63, 64, 1, NULL),
(64, 65, 1, NULL),(65, 66, 1, NULL),(66, 67, 1, NULL),(67, 68, 1, NULL),(68, 69, 1, NULL),(69, 70, 1, NULL),(70, 71, 1, NULL),(71, 72, 1, NULL),(72, 73, 1, NULL),
(73, 74, 1, NULL);

INSERT INTO Date_trip (id_trip,id_date_of_trip) VALUES
(1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),
(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),
(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),
(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),
(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),
(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),
(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),
(71,1),(72,1),

(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),
(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),
(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),
(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2),
(41,2),(42,2),(43,2),(44,2),(45,2),(46,2),(47,2),(48,2),(49,2),(50,2),
(51,2),(52,2),(53,2),(54,2),(55,2),(56,2),(57,2),(58,2),(59,2),(60,2),
(61,2),(62,2),(63,2),(64,2),(65,2),(66,2),(67,2),(68,2),(69,2),(70,2),
(71,2),(72,2),

(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),
(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),
(21,3),(22,3),(23,3),(24,3),(25,3),(26,3),(27,3),(28,3),(29,3),(30,3),
(31,3),(32,3),(33,3),(34,3),(35,3),(36,3),(37,3),(38,3),(39,3),(40,3),
(41,3),(42,3),(43,3),(44,3),(45,3),(46,3),(47,3),(48,3),(49,3),(50,3),
(51,3),(52,3),(53,3),(54,3),(55,3),(56,3),(57,3),(58,3),(59,3),(60,3),
(61,3),(62,3),(63,3),(64,3),(65,3),(66,3),(67,3),(68,3),(69,3),(70,3),
(71,3),(72,3),

(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4),
(11,4),(12,4),(13,4),(14,4),(15,4),(16,4),(17,4),(18,4),(19,4),(20,4),
(21,4),(22,4),(23,4),(24,4),(25,4),(26,4),(27,4),(28,4),(29,4),(30,4),
(31,4),(32,4),(33,4),(34,4),(35,4),(36,4),(37,4),(38,4),(39,4),(40,4),
(41,4),(42,4),(43,4),(44,4),(45,4),(46,4),(47,4),(48,4),(49,4),(50,4),
(51,4),(52,4),(53,4),(54,4),(55,4),(56,4),(57,4),(58,4),(59,4),(60,4),
(61,4),(62,4),(63,4),(64,4),(65,4),(66,4),(67,4),(68,4),(69,4),(70,4),
(71,4),(72,4),

(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(9,5),(10,5),
(11,5),(12,5),(13,5),(14,5),(15,5),(16,5),(17,5),(18,5),(19,5),(20,5),
(21,5),(22,5),(23,5),(24,5),(25,5),(26,5),(27,5),(28,5),(29,5),(30,5),
(31,5),(32,5),(33,5),(34,5),(35,5),(36,5),(37,5),(38,5),(39,5),(40,5),
(41,5),(42,5),(43,5),(44,5),(45,5),(46,5),(47,5),(48,5),(49,5),(50,5),
(51,5),(52,5),(53,5),(54,5),(55,5),(56,5),(57,5),(58,5),(59,5),(60,5),
(61,5),(62,5),(63,5),(64,5),(65,5),(66,5),(67,5),(68,5),(69,5),(70,5),
(71,5),(72,5),

(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(9,6),(10,6),
(11,6),(12,6),(13,6),(14,6),(15,6),(16,6),(17,6),(18,6),(19,6),(20,6),
(21,6),(22,6),(23,6),(24,6),(25,6),(26,6),(27,6),(28,6),(29,6),(30,6),
(31,6),(32,6),(33,6),(34,6),(35,6),(36,6),(37,6),(38,6),(39,6),(40,6),
(41,6),(42,6),(43,6),(44,6),(45,6),(46,6),(47,6),(48,6),(49,6),(50,6),
(51,6),(52,6),(53,6),(54,6),(55,6),(56,6),(57,6),(58,6),(59,6),(60,6),
(61,6),(62,6),(63,6),(64,6),(65,6),(66,6),(67,6),(68,6),(69,6),(70,6),
(71,6),(72,6),

(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(8,7),(9,7),(10,7),
(11,7),(12,7),(13,7),(14,7),(15,7),(16,7),(17,7),(18,7),(19,7),(20,7),
(21,7),(22,7),(23,7),(24,7),(25,7),(26,7),(27,7),(28,7),(29,7),(30,7),
(31,7),(32,7),(33,7),(34,7),(35,7),(36,7),(37,7),(38,7),(39,7),(40,7),
(41,7),(42,7),(43,7),(44,7),(45,7),(46,7),(47,7),(48,7),(49,7),(50,7),
(51,7),(52,7),(53,7),(54,7),(55,7),(56,7),(57,7),(58,7),(59,7),(60,7),
(61,7),(62,7),(63,7),(64,7),(65,7),(66,7),(67,7),(68,7),(69,7),(70,7),
(71,7),(72,7),

(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(8,8),(9,8),(10,8),
(11,8),(12,8),(13,8),(14,8),(15,8),(16,8),(17,8),(18,8),(19,8),(20,8),
(21,8),(22,8),(23,8),(24,8),(25,8),(26,8),(27,8),(28,8),(29,8),(30,8),
(31,8),(32,8),(33,8),(34,8),(35,8),(36,8),(37,8),(38,8),(39,8),(40,8),
(41,8),(42,8),(43,8),(44,8),(45,8),(46,8),(47,8),(48,8),(49,8),(50,8),
(51,8),(52,8),(53,8),(54,8),(55,8),(56,8),(57,8),(58,8),(59,8),(60,8),
(61,8),(62,8),(63,8),(64,8),(65,8),(66,8),(67,8),(68,8),(69,8),(70,8),
(71,8),(72,8),

(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(8,9),(9,9),(10,9),
(11,9),(12,9),(13,9),(14,9),(15,9),(16,9),(17,9),(18,9),(19,9),(20,9),
(21,9),(22,9),(23,9),(24,9),(25,9),(26,9),(27,9),(28,9),(29,9),(30,9),
(31,9),(32,9),(33,9),(34,9),(35,9),(36,9),(37,9),(38,9),(39,9),(40,9),
(41,9),(42,9),(43,9),(44,9),(45,9),(46,9),(47,9),(48,9),(49,9),(50,9),
(51,9),(52,9),(53,9),(54,9),(55,9),(56,9),(57,9),(58,9),(59,9),(60,9),
(61,9),(62,9),(63,9),(64,9),(65,9),(66,9),(67,9),(68,9),(69,9),(70,9),
(71,9),(72,9),

(1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(8,10),(9,10),(10,10),
(11,10),(12,10),(13,10),(14,10),(15,10),(16,10),(17,10),(18,10),(19,10),(20,10),
(21,10),(22,10),(23,10),(24,10),(25,10),(26,10),(27,10),(28,10),(29,10),(30,10),
(31,10),(32,10),(33,10),(34,10),(35,10),(36,10),(37,10),(38,10),(39,10),(40,10),
(41,10),(42,10),(43,10),(44,10),(45,10),(46,10),(47,10),(48,10),(49,10),(50,10),
(51,10),(52,10),(53,10),(54,10),(55,10),(56,10),(57,10),(58,10),(59,10),(60,10),
(61,10),(62,10),(63,10),(64,10),(65,10),(66,10),(67,10),(68,10),(69,10),(70,10),
(71,10),(72,10),

(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(8,11),(9,11),(10,11),
(11,11),(12,11),(13,11),(14,11),(15,11),(16,11),(17,11),(18,11),(19,11),(20,11),
(21,11),(22,11),(23,11),(24,11),(25,11),(26,11),(27,11),(28,11),(29,11),(30,11),
(31,11),(32,11),(33,11),(34,11),(35,11),(36,11),(37,11),(38,11),(39,11),(40,11),
(41,11),(42,11),(43,11),(44,11),(45,11),(46,11),(47,11),(48,11),(49,11),(50,11),
(51,11),(52,11),(53,11),(54,11),(55,11),(56,11),(57,11),(58,11),(59,11),(60,11),
(61,11),(62,11),(63,11),(64,11),(65,11),(66,11),(67,11),(68,11),(69,11),(70,11),
(71,11),(72,11),

(1,12),(2,12),(3,12),(4,12),(5,12),(6,12),(7,12),(8,12),(9,12),(10,12),
(11,12),(12,12),(13,12),(14,12),(15,12),(16,12),(17,12),(18,12),(19,12),(20,12),
(21,12),(22,12),(23,12),(24,12),(25,12),(26,12),(27,12),(28,12),(29,12),(30,12),
(31,12),(32,12),(33,12),(34,12),(35,12),(36,12),(37,12),(38,12),(39,12),(40,12),
(41,12),(42,12),(43,12),(44,12),(45,12),(46,12),(47,12),(48,12),(49,12),(50,12),
(51,12),(52,12),(53,12),(54,12),(55,12),(56,12),(57,12),(58,12),(59,12),(60,12),
(61,12),(62,12),(63,12),(64,12),(65,12),(66,12),(67,12),(68,12),(69,12),(70,12),
(71,12),(72,12),

(1,13),(2,13),(3,13),(4,13),(5,13),(6,13),(7,13),(8,13),(9,13),(10,13),
(11,13),(12,13),(13,13),(14,13),(15,13),(16,13),(17,13),(18,13),(19,13),(20,13),
(21,13),(22,13),(23,13),(24,13),(25,13),(26,13),(27,13),(28,13),(29,13),(30,13),
(31,13),(32,13),(33,13),(34,13),(35,13),(36,13),(37,13),(38,13),(39,13),(40,13),
(41,13),(42,13),(43,13),(44,13),(45,13),(46,13),(47,13),(48,13),(49,13),(50,13),
(51,13),(52,13),(53,13),(54,13),(55,13),(56,13),(57,13),(58,13),(59,13),(60,13),
(61,13),(62,13),(63,13),(64,13),(65,13),(66,13),(67,13),(68,13),(69,13),(70,13),
(71,13),(72,13),

(1,14),(2,14),(3,14),(4,14),(5,14),(6,14),(7,14),(8,14),(9,14),(10,14),
(11,14),(12,14),(13,14),(14,14),(15,14),(16,14),(17,14),(18,14),(19,14),(20,14),
(21,14),(22,14),(23,14),(24,14),(25,14),(26,14),(27,14),(28,14),(29,14),(30,14),
(31,14),(32,14),(33,14),(34,14),(35,14),(36,14),(37,14),(38,14),(39,14),(40,14),
(41,14),(42,14),(43,14),(44,14),(45,14),(46,14),(47,14),(48,14),(49,14),(50,14),
(51,14),(52,14),(53,14),(54,14),(55,14),(56,14),(57,14),(58,14),(59,14),(60,14),
(61,14),(62,14),(63,14),(64,14),(65,14),(66,14),(67,14),(68,14),(69,14),(70,14),
(71,14),(72,14),

(1,15),(2,15),(3,15),(4,15),(5,15),(6,15),(7,15),(8,15),(9,15),(10,15),
(11,15),(12,15),(13,15),(14,15),(15,15),(16,15),(17,15),(18,15),(19,15),(20,15),
(21,15),(22,15),(23,15),(24,15),(25,15),(26,15),(27,15),(28,15),(29,15),(30,15),
(31,15),(32,15),(33,15),(34,15),(35,15),(36,15),(37,15),(38,15),(39,15),(40,15),
(41,15),(42,15),(43,15),(44,15),(45,15),(46,15),(47,15),(48,15),(49,15),(50,15),
(51,15),(52,15),(53,15),(54,15),(55,15),(56,15),(57,15),(58,15),(59,15),(60,15),
(61,15),(62,15),(63,15),(64,15),(65,15),(66,15),(67,15),(68,15),(69,15),(70,15),
(71,15),(72,15),

(1,16),(2,16),(3,16),(4,16),(5,16),(6,16),(7,16),(8,16),(9,16),(10,16),
(11,16),(12,16),(13,16),(14,16),(15,16),(16,16),(17,16),(18,16),(19,16),(20,16),
(21,16),(22,16),(23,16),(24,16),(25,16),(26,16),(27,16),(28,16),(29,16),(30,16),
(31,16),(32,16),(33,16),(34,16),(35,16),(36,16),(37,16),(38,16),(39,16),(40,16),
(41,16),(42,16),(43,16),(44,16),(45,16),(46,16),(47,16),(48,16),(49,16),(50,16),
(51,16),(52,16),(53,16),(54,16),(55,16),(56,16),(57,16),(58,16),(59,16),(60,16),
(61,16),(62,16),(63,16),(64,16),(65,16),(66,16),(67,16),(68,16),(69,16),(70,16),
(71,16),(72,16),

(1,17),(2,17),(3,17),(4,17),(5,17),(6,17),(7,17),(8,17),(9,17),(10,17),
(11,17),(12,17),(13,17),(14,17),(15,17),(16,17),(17,17),(18,17),(19,17),(20,17),
(21,17),(22,17),(23,17),(24,17),(25,17),(26,17),(27,17),(28,17),(29,17),(30,17),
(31,17),(32,17),(33,17),(34,17),(35,17),(36,17),(37,17),(38,17),(39,17),(40,17),
(41,17),(42,17),(43,17),(44,17),(45,17),(46,17),(47,17),(48,17),(49,17),(50,17),
(51,17),(52,17),(53,17),(54,17),(55,17),(56,17),(57,17),(58,17),(59,17),(60,17),
(61,17),(62,17),(63,17),(64,17),(65,17),(66,17),(67,17),(68,17),(69,17),(70,17),
(71,17),(72,17),

(1,18),(2,18),(3,18),(4,18),(5,18),(6,18),(7,18),(8,18),(9,18),(10,18),
(11,18),(12,18),(13,18),(14,18),(15,18),(16,18),(17,18),(18,18),(19,18),(20,18),
(21,18),(22,18),(23,18),(24,18),(25,18),(26,18),(27,18),(28,18),(29,18),(30,18),
(31,18),(32,18),(33,18),(34,18),(35,18),(36,18),(37,18),(38,18),(39,18),(40,18),
(41,18),(42,18),(43,18),(44,18),(45,18),(46,18),(47,18),(48,18),(49,18),(50,18),
(51,18),(52,18),(53,18),(54,18),(55,18),(56,18),(57,18),(58,18),(59,18),(60,18),
(61,18),(62,18),(63,18),(64,18),(65,18),(66,18),(67,18),(68,18),(69,18),(70,18),
(71,18),(72,18),

(1,19),(2,19),(3,19),(4,19),(5,19),(6,19),(7,19),(8,19),(9,19),(10,19),
(11,19),(12,19),(13,19),(14,19),(15,19),(16,19),(17,19),(18,19),(19,19),(20,19),
(21,19),(22,19),(23,19),(24,19),(25,19),(26,19),(27,19),(28,19),(29,19),(30,19),
(31,19),(32,19),(33,19),(34,19),(35,19),(36,19),(37,19),(38,19),(39,19),(40,19),
(41,19),(42,19),(43,19),(44,19),(45,19),(46,19),(47,19),(48,19),(49,19),(50,19),
(51,19),(52,19),(53,19),(54,19),(55,19),(56,19),(57,19),(58,19),(59,19),(60,19),
(61,19),(62,19),(63,19),(64,19),(65,19),(66,19),(67,19),(68,19),(69,19),(70,19),
(71,19),(72,19),

(1,20),(2,20),(3,20),(4,20),(5,20),(6,20),(7,20),(8,20),(9,20),(10,20),
(11,20),(12,20),(13,20),(14,20),(15,20),(16,20),(17,20),(18,20),(19,20),(20,20),
(21,20),(22,20),(23,20),(24,20),(25,20),(26,20),(27,20),(28,20),(29,20),(30,20),
(31,20),(32,20),(33,20),(34,20),(35,20),(36,20),(37,20),(38,20),(39,20),(40,20),
(41,20),(42,20),(43,20),(44,20),(45,20),(46,20),(47,20),(48,20),(49,20),(50,20),
(51,20),(52,20),(53,20),(54,20),(55,20),(56,20),(57,20),(58,20),(59,20),(60,20),
(61,20),(62,20),(63,20),(64,20),(65,20),(66,20),(67,20),(68,20),(69,20),(70,20),
(71,20),(72,20),

(1,21),(2,21),(3,21),(4,21),(5,21),(6,21),(7,21),(8,21),(9,21),(10,21),
(11,21),(12,21),(13,21),(14,21),(15,21),(16,21),(17,21),(18,21),(19,21),(20,21),
(21,21),(22,21),(23,21),(24,21),(25,21),(26,21),(27,21),(28,21),(29,21),(30,21),
(31,21),(32,21),(33,21),(34,21),(35,21),(36,21),(37,21),(38,21),(39,21),(40,21),
(41,21),(42,21),(43,21),(44,21),(45,21),(46,21),(47,21),(48,21),(49,21),(50,21),
(51,21),(52,21),(53,21),(54,21),(55,21),(56,21),(57,21),(58,21),(59,21),(60,21),
(61,21),(62,21),(63,21),(64,21),(65,21),(66,21),(67,21),(68,21),(69,21),(70,21),
(71,21),(72,21),

(1,22),(2,22),(3,22),(4,22),(5,22),(6,22),(7,22),(8,22),(9,22),(10,22),
(11,22),(12,22),(13,22),(14,22),(15,22),(16,22),(17,22),(18,22),(19,22),(20,22),
(21,22),(22,22),(23,22),(24,22),(25,22),(26,22),(27,22),(28,22),(29,22),(30,22),
(31,22),(32,22),(33,22),(34,22),(35,22),(36,22),(37,22),(38,22),(39,22),(40,22),
(41,22),(42,22),(43,22),(44,22),(45,22),(46,22),(47,22),(48,22),(49,22),(50,22),
(51,22),(52,22),(53,22),(54,22),(55,22),(56,22),(57,22),(58,22),(59,22),(60,22),
(61,22),(62,22),(63,22),(64,22),(65,22),(66,22),(67,22),(68,22),(69,22),(70,22),
(71,22),(72,22),

(1,23),(2,23),(3,23),(4,23),(5,23),(6,23),(7,23),(8,23),(9,23),(10,23),
(11,23),(12,23),(13,23),(14,23),(15,23),(16,23),(17,23),(18,23),(19,23),(20,23),
(21,23),(22,23),(23,23),(24,23),(25,23),(26,23),(27,23),(28,23),(29,23),(30,23),
(31,23),(32,23),(33,23),(34,23),(35,23),(36,23),(37,23),(38,23),(39,23),(40,23),
(41,23),(42,23),(43,23),(44,23),(45,23),(46,23),(47,23),(48,23),(49,23),(50,23),
(51,23),(52,23),(53,23),(54,23),(55,23),(56,23),(57,23),(58,23),(59,23),(60,23),
(61,23),(62,23),(63,23),(64,23),(65,23),(66,23),(67,23),(68,23),(69,23),(70,23),
(71,23),(72,23),

(1,24),(2,24),(3,24),(4,24),(5,24),(6,24),(7,24),(8,24),(9,24),(10,24),
(11,24),(12,24),(13,24),(14,24),(15,24),(16,24),(17,24),(18,24),(19,24),(20,24),
(21,24),(22,24),(23,24),(24,24),(25,24),(26,24),(27,24),(28,24),(29,24),(30,24),
(31,24),(32,24),(33,24),(34,24),(35,24),(36,24),(37,24),(38,24),(39,24),(40,24),
(41,24),(42,24),(43,24),(44,24),(45,24),(46,24),(47,24),(48,24),(49,24),(50,24),
(51,24),(52,24),(53,24),(54,24),(55,24),(56,24),(57,24),(58,24),(59,24),(60,24),
(61,24),(62,24),(63,24),(64,24),(65,24),(66,24),(67,24),(68,24),(69,24),(70,24),
(71,24),(72,24),

(1,25),(2,25),(3,25),(4,25),(5,25),(6,25),(7,25),(8,25),(9,25),(10,25),
(11,25),(12,25),(13,25),(14,25),(15,25),(16,25),(17,25),(18,25),(19,25),(20,25),
(21,25),(22,25),(23,25),(24,25),(25,25),(26,25),(27,25),(28,25),(29,25),(30,25),
(31,25),(32,25),(33,25),(34,25),(35,25),(36,25),(37,25),(38,25),(39,25),(40,25),
(41,25),(42,25),(43,25),(44,25),(45,25),(46,25),(47,25),(48,25),(49,25),(50,25),
(51,25),(52,25),(53,25),(54,25),(55,25),(56,25),(57,25),(58,25),(59,25),(60,25),
(61,25),(62,25),(63,25),(64,25),(65,25),(66,25),(67,25),(68,25),(69,25),(70,25),
(71,25),(72,25),

(1,26),(2,26),(3,26),(4,26),(5,26),(6,26),(7,26),(8,26),(9,26),(10,26),
(11,26),(12,26),(13,26),(14,26),(15,26),(16,26),(17,26),(18,26),(19,26),(20,26),
(21,26),(22,26),(23,26),(24,26),(25,26),(26,26),(27,26),(28,26),(29,26),(30,26),
(31,26),(32,26),(33,26),(34,26),(35,26),(36,26),(37,26),(38,26),(39,26),(40,26),
(41,26),(42,26),(43,26),(44,26),(45,26),(46,26),(47,26),(48,26),(49,26),(50,26),
(51,26),(52,26),(53,26),(54,26),(55,26),(56,26),(57,26),(58,26),(59,26),(60,26),
(61,26),(62,26),(63,26),(64,26),(65,26),(66,26),(67,26),(68,26),(69,26),(70,26),
(71,26),(72,26),

(1,27),(2,27),(3,27),(4,27),(5,27),(6,27),(7,27),(8,27),(9,27),(10,27),
(11,27),(12,27),(13,27),(14,27),(15,27),(16,27),(17,27),(18,27),(19,27),(20,27),
(21,27),(22,27),(23,27),(24,27),(25,27),(26,27),(27,27),(28,27),(29,27),(30,27),
(31,27),(32,27),(33,27),(34,27),(35,27),(36,27),(37,27),(38,27),(39,27),(40,27),
(41,27),(42,27),(43,27),(44,27),(45,27),(46,27),(47,27),(48,27),(49,27),(50,27),
(51,27),(52,27),(53,27),(54,27),(55,27),(56,27),(57,27),(58,27),(59,27),(60,27),
(61,27),(62,27),(63,27),(64,27),(65,27),(66,27),(67,27),(68,27),(69,27),(70,27),
(71,27),(72,27),

(1,28),(2,28),(3,28),(4,28),(5,28),(6,28),(7,28),(8,28),(9,28),(10,28),
(11,28),(12,28),(13,28),(14,28),(15,28),(16,28),(17,28),(18,28),(19,28),(20,28),
(21,28),(22,28),(23,28),(24,28),(25,28),(26,28),(27,28),(28,28),(29,28),(30,28),
(31,28),(32,28),(33,28),(34,28),(35,28),(36,28),(37,28),(38,28),(39,28),(40,28),
(41,28),(42,28),(43,28),(44,28),(45,28),(46,28),(47,28),(48,28),(49,28),(50,28),
(51,28),(52,28),(53,28),(54,28),(55,28),(56,28),(57,28),(58,28),(59,28),(60,28),
(61,28),(62,28),(63,28),(64,28),(65,28),(66,28),(67,28),(68,28),(69,28),(70,28),
(71,28),(72,28);


UPDATE `station` SET `image_station` = '../SWP391/images/stations/hanoi.jpg' WHERE `id_station` = 1;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/phuly.jpg' WHERE `id_station` = 2;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/namdinh.jpg' WHERE `id_station` = 3;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ninhbinh.jpg' WHERE `id_station` = 4;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bimson.jpg' WHERE `id_station` = 5;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/thanhhoa.jpg' WHERE `id_station` = 6;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/minhkhoi.jpg' WHERE `id_station` = 7;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/chosy.jpg' WHERE `id_station` = 8;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/vinh.jpg' WHERE `id_station` = 9;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/yentrung.jpg' WHERE `id_station` = 10;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/huongpho.jpg' WHERE `id_station` = 11;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/dongle.jpg' WHERE `id_station` = 12;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/donghoi.jpg' WHERE `id_station` = 13;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/dongha.jpg' WHERE `id_station` = 14;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/hue.jpg' WHERE `id_station` = 15;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/langco.jpg' WHERE `id_station` = 16;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/danang.jpg' WHERE `id_station` = 17;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/trakieu.jpg' WHERE `id_station` = 18;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/phucang.jpg' WHERE `id_station` = 19;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/tamky.jpg' WHERE `id_station` = 20;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/nuithanh.jpg' WHERE `id_station` = 21;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/quangngai.jpg' WHERE `id_station` = 22;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ducpho.jpg' WHERE `id_station` = 23;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bongson.jpg' WHERE `id_station` = 24;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/quynhon.jpg' WHERE `id_station` = 25;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/tuyhoa.jpg' WHERE `id_station` = 26;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/gia.jpg' WHERE `id_station` = 27;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ninhhoa.jpg' WHERE `id_station` = 28;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/nhatrang.jpg' WHERE `id_station` = 29;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ngaba.jpg' WHERE `id_station` = 30;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/thapcham.jpg' WHERE `id_station` = 31;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/songmao.jpg' WHERE `id_station` = 32;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/malam.jpg' WHERE `id_station` = 33;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/binhthuan.jpg' WHERE `id_station` = 34;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/longkhanh.jpg' WHERE `id_station` = 35;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bienhoa.jpg' WHERE `id_station` = 36;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/saigon.jpg' WHERE `id_station` = 37;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/hanoi.jpg' WHERE `id_station` = 74;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/phuly.jpg' WHERE `id_station` = 73;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/namdinh.jpg' WHERE `id_station` = 72;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ninhbinh.jpg' WHERE `id_station` = 71;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bimson.jpg' WHERE `id_station` = 70;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/thanhhoa.jpg' WHERE `id_station` = 69;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/minhkhoi.jpg' WHERE `id_station` = 68;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/chosy.jpg' WHERE `id_station` = 67;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/vinh.jpg' WHERE `id_station` = 66;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/yentrung.jpg' WHERE `id_station` = 65;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/huongpho.jpg' WHERE `id_station` = 64;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/dongle.jpg' WHERE `id_station` = 63;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/donghoi.jpg' WHERE `id_station` = 62;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/dongha.jpg' WHERE `id_station` = 61;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/hue.jpg' WHERE `id_station` = 60;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/langco.jpg' WHERE `id_station` = 59;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/danang.jpg' WHERE `id_station` = 58;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/trakieu.jpg' WHERE `id_station` = 57;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/phucang.jpg' WHERE `id_station` = 56;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/tamky.jpg' WHERE `id_station` = 55;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/nuithanh.jpg' WHERE `id_station` = 54;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/quangngai.jpg' WHERE `id_station` = 53;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ducpho.jpg' WHERE `id_station` = 52;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bongson.jpg' WHERE `id_station` = 51;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/quynhon.jpg' WHERE `id_station` = 50;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/tuyhoa.jpg' WHERE `id_station` = 49;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/gia.jpg' WHERE `id_station` = 48;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ninhhoa.jpg' WHERE `id_station` = 47;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/nhatrang.jpg' WHERE `id_station` = 46;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/ngaba.jpg' WHERE `id_station` = 45;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/thapcham.jpg' WHERE `id_station` = 44;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/songmao.jpg' WHERE `id_station` = 43;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/malam.jpg' WHERE `id_station` = 42;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/binhthuan.jpg' WHERE `id_station` = 41;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/longkhanh.jpg' WHERE `id_station` = 40;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/bienhoa.jpg' WHERE `id_station` = 39;
UPDATE `station` SET `image_station` = '../SWP391/images/stations/saigon.jpg' WHERE `id_station` = 38;

INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer) VALUES ('Nguyễn Hữu Hiệp','hiepgacute1989@gmail.com','KOfLlsfqVZEOkuIN4BdPektNF9w=','0966755095',3,1); 

INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 1, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 2, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 36, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 37, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 35, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 37, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 34, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 36, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 33, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 35, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 32, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 34, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 31, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 33, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 30, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 32, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 29, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 31, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 28, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 30, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 27, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 29, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 26, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 28, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 25, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 27, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 24, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 26, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 23, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 25, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 22, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 24, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 21, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 23, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 20, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 22, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 19, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 21, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 18, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 20, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 17, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 19, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 16, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 18, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 15, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 17, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 14, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 16, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 13, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 15, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 12, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 14, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 11, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 13, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 10, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 12, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 9, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 11, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 8, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 10, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 7, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 9, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 6, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 8, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 5, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 7, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 4, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 6, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 3, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 5, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 2, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 4, 1, 1);
INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (0, 3, 1, 1);

INSERT INTO `Train` (name_train, image_train, description_train, id_train_brand, id_status) VALUES ('Beta 3', NULL, '32678954754396547389567438956473892hngfvjkdlsg', 2, 4);


