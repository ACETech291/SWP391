DROP DATABASE IF EXISTS SWP391;
CREATE DATABASE SWP391;
USE SWP391;

CREATE TABLE Admin (
  id_admin       int(11) NOT NULL AUTO_INCREMENT, 
  username_admin varchar(255) NOT NULL, 
  password_admin varchar(255) NOT NULL, 
  email_admin    varchar(255) NOT NULL, 
  image_admin    blob, 
  id_role        int(11) NOT NULL, 
  PRIMARY KEY (id_admin), 
  INDEX (id_admin));
  
CREATE TABLE Advertising (
  id_advertising          int(11) NOT NULL AUTO_INCREMENT, 
  image_advertising       blob, 
  description_advertising varchar(255), 
  id_manager              int(11) NOT NULL, 
  content                 LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  create_at               TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id_advertising), 
  INDEX (id_advertising));
  
CREATE TABLE Customer (
  id_customer           int(11) NOT NULL AUTO_INCREMENT, 
  name_customer         varchar(255) NOT NULL, 
  phone_number_customer varchar(11), 
  email_customer        varchar(255) NOT NULL, 
  password_customer     varchar(255) NOT NULL, 
  status_customer       bit(1) NOT NULL, 
  image_customer        VARCHAR(255) NULL, 
  id_role               int(11) NOT NULL, 
  PRIMARY KEY (id_customer), 
  INDEX (id_customer));
  
CREATE TABLE Feedback (
  id_feedback     INT(11) NOT NULL AUTO_INCREMENT, 
  voting_feedback INT(11) NOT NULL, 
  content         LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  id_customer     INT(11) NOT NULL, 
  id_advertising  INT(11) NOT NULL, 
  create_at               TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  	feedback_status           BIT(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (id_feedback), 
  FOREIGN KEY (id_advertising) REFERENCES Advertising(id_advertising)
);


  
CREATE TABLE Manager (
  id_manager       int(11) NOT NULL AUTO_INCREMENT, 
  username_manager varchar(255) NOT NULL, 
  password_manager varchar(255) NOT NULL, 
  email_manager    varchar(255) NOT NULL, 
  id_role          int(11) NOT NULL, 
  image_manager    blob, 
  status_manager   bit(1) NOT NULL, 
  PRIMARY KEY (id_manager), 
  INDEX (id_manager));
  
CREATE TABLE Otp (
  id_otp      int(11) NOT NULL AUTO_INCREMENT, 
  code_otp    varchar(255) NOT NULL, 
  expiry_time timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  is_used     bit(1) NOT NULL, 
  email       varchar(255) NOT NULL, 
  PRIMARY KEY (id_otp), 
  INDEX (id_otp));
  
CREATE TABLE Payment_method (
  id_payment_method   int(11) NOT NULL AUTO_INCREMENT, 
  name_payment_method varchar(255) NOT NULL, 
  PRIMARY KEY (id_payment_method));
  
CREATE TABLE Purchase_history (
  id_purchase_history int(11) NOT NULL AUTO_INCREMENT, 
  id_ticket          int(11) NOT NULL, 
  name_banking        NVARCHAR(255) NOT NULL, 
  account_number      int(11) NOT NULL, 
  id_customer         int(11) NOT NULL, 
  id_payment_method   int(11) NOT NULL, 
  name_user 		 NVARCHAR(255) NOT NULL,
  PRIMARY KEY (id_purchase_history), 
  INDEX (id_purchase_history));
  
CREATE TABLE Revenue (
  id_revenue int(11) NOT NULL AUTO_INCREMENT, 
  id_manager int(11) NOT NULL, 
  PRIMARY KEY (id_revenue));
  
CREATE TABLE Role (
  id_role   int(11) NOT NULL AUTO_INCREMENT, 
  name_role varchar(255) NOT NULL, 
  PRIMARY KEY (id_role));
  
CREATE TABLE Policy (
  id_policy   int(11) NOT NULL AUTO_INCREMENT, 
  content LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,  
  status_policy   INT(11) NOT NULL,
  create_at               TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id_policy));
  
CREATE TABLE Introduction (
  id_introduction   int(11) NOT NULL AUTO_INCREMENT, 
  content LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci, 
  status_introduction   INT(11) NOT NULL,
  create_at               TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id_introduction));
  
      
CREATE TABLE Station (
  id_station          int(11) NOT NULL AUTO_INCREMENT, 
  name_station        varchar(255) NOT NULL, 
  image_station       BLOB, 
  description_station varchar(255), 
  content                 LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,	
  PRIMARY KEY (id_station));
  
CREATE TABLE Time_of_station  (
	id_time_of_station INT(11) NOT NULL auto_increment,
	time_train_in_station TIME,
	PRIMARY KEY (id_time_of_station)
);

CREATE TABLE Time_station(
	id_time_station INT(11) NOT NULL AUTO_INCREMENT,
	id_station 		INT(11),
	id_time_of_station INT(11),
	PRIMARY KEY (id_time_station)
);

CREATE TABLE Status (
  id_status   int(11) NOT NULL AUTO_INCREMENT, 
  name_status varchar(255) NOT NULL, 
  PRIMARY KEY (id_status));
  
CREATE TABLE Ticket (
  id_ticket           int(11) NOT NULL AUTO_INCREMENT, 
  name_ticket         varchar(255) NOT NULL, 
  booking_time_ticket datetime NOT NULL, 
  id_date_trip				 INT(11) NOT NULL,
  id_customer         int(11) NOT NULL, 
  id_train_seat       int(11) NOT NULL, 
  total_bill 			 FLOAT8,
  status ENUM('Preparing', 'Completed', 'Awaiting Departure','Cancelled') NOT NULL DEFAULT 'Cancelled',
  PRIMARY KEY (id_ticket), 
  INDEX (id_ticket));
  
CREATE TABLE Token_forget_password (
  id_token    int(11) NOT NULL AUTO_INCREMENT, 
  token       varchar(255) NOT NULL, 
  expiry_time timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  is_used     bit(1) NOT NULL, 
  id_user     int(11) NOT NULL, 
  PRIMARY KEY (id_token), 
  INDEX (id_token));
  
CREATE TABLE Train (
  id_train          int(11) NOT NULL AUTO_INCREMENT, 
  name_train        varchar(255) NOT NULL, 
  image_train       BLOB, 
  content                 LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  description_train varchar(255) NOT NULL, 
  id_train_brand    int(11) NOT NULL, 
  id_status         int(11) NOT NULL, 
  PRIMARY KEY (id_train));
  
CREATE TABLE Train_brand (
  id_train_brand          int(11) NOT NULL AUTO_INCREMENT, 
  id_manager              int(11) NOT NULL, 
  name_train_brand        varchar(255) NOT NULL, 
  image_train_brand       blob, 
  description_train_brand LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci, 
  PRIMARY KEY (id_train_brand), 
  INDEX (id_train_brand));
  
CREATE TABLE Train_carriage (
  id_train_carriage          int(11) NOT NULL AUTO_INCREMENT, 
  name_train_carriage        varchar(255) NOT NULL, 
  description_train_carriage varchar(255) NOT NULL, 
  id_train                   int(11) NOT NULL, 
  id_status                  int(11) NOT NULL, 
  total_seat                 int(11), 
  PRIMARY KEY (id_train_carriage), 
  INDEX (id_train_carriage));
  
CREATE TABLE Train_seat (
  id_train_seat     int(11) NOT NULL AUTO_INCREMENT, 
  code_train_seat   varchar(255) NOT NULL, 
  price_seat        int(11) NOT NULL, 
  id_train_carriage int(11) NOT NULL, 
  id_status         int(11) NOT NULL, 
  PRIMARY KEY (id_train_seat), 
  INDEX (id_train_seat));
  
CREATE TABLE Trip (
  id_trip                int(11) NOT NULL AUTO_INCREMENT, 
  price_trip	INT(11),
  id_time_station_start int(11) NOT NULL, 
  id_time_station_end   int(11) NOT NULL, 
  id_train               int(11) NOT NULL,  

  PRIMARY KEY (id_trip));
  
CREATE TABLE Date_of_trip (
  id_date_of_trip			INT(11) NOT NULL AUTO_INCREMENT,
  date_details      		DATE NOT NULL,
  PRIMARY KEY(id_date_of_trip));
  
CREATE TABLE Date_trip(
	id_date_trip INT(11) NOT NULL AUTO_INCREMENT,
	id_trip INT(11) NOT NULL,
	id_date_of_trip INT(11) NOT NULL,
		trip_status           BIT(1) NOT NULL DEFAULT b'0',
	PRIMARY KEY (id_date_trip)
);
CREATE TABLE Authorization (
  id_authorization       INT(11) NOT NULL AUTO_INCREMENT,
  role_id                INT(11) NOT NULL,
  url_authorization      VARCHAR(255) NOT NULL,
  feature_authorization  VARCHAR(255) NOT NULL,
  status_authorization   INT(11) NOT NULL,
  PRIMARY KEY (id_authorization)
);
CREATE TABLE Comment (
  id_comment     INT(11) NOT NULL AUTO_INCREMENT, 
  voting_comment INT(11) NOT NULL, 
  content         LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  id_customer     INT(11) NOT NULL, 
  id_train_brand  INT(11) NOT NULL, 
  create_at               TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  	comment_status           BIT(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (id_comment), 
  FOREIGN KEY (id_train_brand) REFERENCES train_brand(id_train_brand)
);

ALTER TABLE purchase_history ADD CONSTRAINT FKPurchaseHistory465121 FOREIGN KEY (id_ticket) REFERENCES ticket(id_ticket);
ALTER TABLE Admin ADD CONSTRAINT FKAdmin775394 FOREIGN KEY (id_role) REFERENCES Role (id_role);
ALTER TABLE Manager ADD CONSTRAINT FKManager24576 FOREIGN KEY (id_role) REFERENCES Role (id_role);
ALTER TABLE Customer ADD CONSTRAINT FKCustomer71540 FOREIGN KEY (id_role) REFERENCES Role (id_role);

ALTER TABLE Train_brand ADD CONSTRAINT FKTrain_bran376661 FOREIGN KEY (id_manager) REFERENCES Manager (id_manager);

ALTER TABLE Train ADD CONSTRAINT FKTrain834987 FOREIGN KEY (id_status) REFERENCES Status (id_status);
ALTER TABLE Train ADD CONSTRAINT FKTrain713859 FOREIGN KEY (id_train_brand) REFERENCES Train_brand (id_train_brand);

ALTER TABLE Train_carriage ADD CONSTRAINT FKTrain_carr450355 FOREIGN KEY (id_train) REFERENCES Train (id_train);
ALTER TABLE Train_carriage ADD CONSTRAINT FKTrain_carr696581 FOREIGN KEY (id_status) REFERENCES Status (id_status);

ALTER TABLE Train_seat ADD CONSTRAINT FKTrain_seat492502 FOREIGN KEY (id_train_carriage) REFERENCES Train_carriage (id_train_carriage);
ALTER TABLE Train_seat ADD CONSTRAINT FKTrain_seat106453 FOREIGN KEY (id_status) REFERENCES Status (id_status);

ALTER TABLE Ticket ADD CONSTRAINT FKTicket453453 FOREIGN KEY (id_customer) REFERENCES Customer (id_customer);
ALTER TABLE Ticket ADD CONSTRAINT FKTicket760332 FOREIGN KEY (id_train_seat) REFERENCES Train_seat (id_train_seat);
ALTER TABLE Ticket ADD CONSTRAINT FKTicket783330 FOREIGN KEY (id_date_trip) REFERENCES Date_trip (id_date_trip); 

ALTER TABLE Feedback ADD CONSTRAINT FKFeedback691333 FOREIGN KEY (id_customer) REFERENCES Customer (id_customer);

ALTER TABLE Advertising ADD CONSTRAINT FKAdvertisin553227 FOREIGN KEY (id_manager) REFERENCES Manager (id_manager);

ALTER TABLE Revenue ADD CONSTRAINT FKRevenue325678 FOREIGN KEY (id_manager) REFERENCES Manager (id_manager);

ALTER TABLE Purchase_history ADD CONSTRAINT FKPurchase_h933427 FOREIGN KEY (id_customer) REFERENCES Customer (id_customer);
ALTER TABLE Purchase_history ADD CONSTRAINT FKPurchase_h731114 FOREIGN KEY (id_payment_method) REFERENCES Payment_method (id_payment_method);


ALTER TABLE Trip ADD CONSTRAINT FKTrip894600 FOREIGN KEY (id_time_station_start) REFERENCES Time_station (id_time_station);
ALTER TABLE Trip ADD CONSTRAINT FKTrip894609 FOREIGN KEY (id_time_station_end) REFERENCES Time_station (id_time_station);
ALTER TABLE Trip ADD CONSTRAINT FKTrip442899 FOREIGN KEY (id_train) REFERENCES Train (id_train);

ALTER TABLE Token_forget_password ADD CONSTRAINT FKToken_forg905909 FOREIGN KEY (id_user) REFERENCES Customer (id_customer);

ALTER TABLE Date_trip ADD CONSTRAINT FKdate_trip45678 FOREIGN KEY (id_trip) REFERENCES Trip (id_trip);
ALTER TABLE Date_trip ADD CONSTRAINT FKdate_trip45890 FOREIGN KEY (id_date_of_trip) REFERENCES Date_of_trip (id_date_of_trip);

ALTER TABLE Time_station ADD CONSTRAINT FKtime_station56744 FOREIGN KEY (id_station) REFERENCES station (id_station);
ALTER TABLE Time_station ADD CONSTRAINT FKtime_station56774 FOREIGN KEY (id_time_of_station) REFERENCES time_of_station (id_time_of_station);