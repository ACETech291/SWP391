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
  PRIMARY KEY (id_advertising), 
  INDEX (id_advertising));
  
CREATE TABLE Customer (
  id_customer           int(11) NOT NULL AUTO_INCREMENT, 
  name_customer         varchar(255) NOT NULL, 
  phone_number_customer varchar(11), 
  email_customer        varchar(255) NOT NULL, 
  password_customer     varchar(255) NOT NULL, 
  status_customer       bit(1) NOT NULL, 
  image_customer        blob, 
  id_role               int(11) NOT NULL, 
  PRIMARY KEY (id_customer), 
  INDEX (id_customer));
  
CREATE TABLE Feedback (
  id_feedback     int(11) NOT NULL AUTO_INCREMENT, 
  voting_feedback int(11) NOT NULL, 
  content         varchar(255), 
  id_customer     int(11) NOT NULL, 
  PRIMARY KEY (id_feedback), 
  INDEX (id_feedback));
  
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
  
CREATE TABLE Purchase_detail_history (
  id_purchase_detail_history int(11) NOT NULL AUTO_INCREMENT, 
  id_purchase_history        int(11) NOT NULL, 
  id_ticket                  int(11) NOT NULL, 
  PRIMARY KEY (id_purchase_detail_history));
  
CREATE TABLE Purchase_history (
  id_purchase_history int(11) NOT NULL AUTO_INCREMENT, 
  code_order          varchar(255) NOT NULL, 
  name_banking        int(11) NOT NULL, 
  account_number      int(11) NOT NULL, 
  id_customer         int(11) NOT NULL, 
  id_payment_method   int(11) NOT NULL, 
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
  
CREATE TABLE Station (
  id_station          int(11) NOT NULL AUTO_INCREMENT, 
  name_station        varchar(255) NOT NULL, 
  image_station       blob, 
  description_station varchar(255), 	
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
  image_train       blob, 
  description_train varchar(255) NOT NULL, 
  id_train_brand    int(11) NOT NULL, 
  id_status         int(11) NOT NULL, 
  PRIMARY KEY (id_train));
  
CREATE TABLE Train_brand (
  id_train_brand          int(11) NOT NULL AUTO_INCREMENT, 
  id_manager              int(11) NOT NULL, 
  name_train_brand        varchar(255) NOT NULL, 
  image_train_brand       blob, 
  description_train_brand varchar(255), 
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
  id_station_start int(11) NOT NULL, 
  id_station_end   int(11) NOT NULL, 
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
	PRIMARY KEY (id_date_trip)
);
  
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

ALTER TABLE Purchase_detail_history ADD CONSTRAINT FKPurchase_d794887 FOREIGN KEY (id_purchase_history) REFERENCES Purchase_history (id_purchase_history);
ALTER TABLE Purchase_detail_history ADD CONSTRAINT FKPurchase_d53355 FOREIGN KEY (id_ticket) REFERENCES Ticket (id_ticket);

ALTER TABLE Trip ADD CONSTRAINT FKTrip894600 FOREIGN KEY (id_station_start) REFERENCES Station (id_station);
ALTER TABLE Trip ADD CONSTRAINT FKTrip894609 FOREIGN KEY (id_station_end) REFERENCES Station (id_station);
ALTER TABLE Trip ADD CONSTRAINT FKTrip442899 FOREIGN KEY (id_train) REFERENCES Train (id_train);

ALTER TABLE Token_forget_password ADD CONSTRAINT FKToken_forg905909 FOREIGN KEY (id_user) REFERENCES Customer (id_customer);

ALTER TABLE Date_trip ADD CONSTRAINT FKdate_trip45678 FOREIGN KEY (id_trip) REFERENCES Trip (id_trip);
ALTER TABLE Date_trip ADD CONSTRAINT FKdate_trip45890 FOREIGN KEY (id_date_of_trip) REFERENCES Date_of_trip (id_date_of_trip);

ALTER TABLE Time_station ADD CONSTRAINT FKtime_station56744 FOREIGN KEY (id_station) REFERENCES station (id_station);
ALTER TABLE Time_station ADD CONSTRAINT FKtime_station56774 FOREIGN KEY (id_time_of_station) REFERENCES time_of_station (id_time_of_station);