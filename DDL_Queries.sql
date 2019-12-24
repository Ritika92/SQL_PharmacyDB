DROP TABLE IF EXISTS ORDER_ITEM;
DROP TABLE IF EXISTS CABINET_RETURN_ORDER;
DROP TABLE IF EXISTS PHARMACY_ORDER;
DROP TABLE IF EXISTS PRESCRIPTION;
DROP TABLE IF EXISTS PATIENT_ADMISSION;
DROP TABLE IF EXISTS SUPPLIER_RETURN_ORDER;
DROP TABLE IF EXISTS BATCH;
DROP TABLE IF EXISTS PURCHASE_ORDER;
DROP TABLE IF EXISTS NURSING_STATION;
DROP TABLE IF EXISTS EMPLOYEE ;
DROP TABLE IF EXISTS DEPARTMENT;
DROP TABLE IF EXISTS DRUG;
DROP TABLE IF EXISTS SUPPLIER;


CREATE TABLE `SUPPLIER` (
  `SUPPLIER_ID` INT NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(20) NULL,
  `PHONE_NUMBER` VARCHAR(20) NULL,
  `EMAIL` VARCHAR(20) NULL,
  `STREET` VARCHAR(20) NULL,
  `CITY` VARCHAR(20) NULL,
  `STATE` VARCHAR(20) NULL,
  `ZIP` VARCHAR(20) NULL,
  PRIMARY KEY (`SUPPLIER_ID`));
  
CREATE TABLE `DRUG` (
  `DRUG_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `BRAND` VARCHAR(45) NULL,
  `NAME` VARCHAR(45) NULL,
  `DESCRIPTION` VARCHAR(45) NULL,
  `UNIT_PRICE` DOUBLE NULL,
  PRIMARY KEY (`DRUG_ID`));
  
  CREATE UNIQUE INDEX DRUGIDS ON DRUG(DRUG_ID);
  
  CREATE UNIQUE INDEX DRUGS ON DRUG(NAME);
  

CREATE TABLE `DEPARTMENT` (			
	`DEPARTMENT_ID` INT(11) NOT NULL AUTO_INCREMENT,		
	`DEPARTMENT_NAME` VARCHAR(40),	
	PRIMARY KEY (`DEPARTMENT_ID`)	
);


CREATE TABLE `EMPLOYEE` (	
	`EMPLOYEE_ID` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`DEPARTMENT_ID` INT(11),
	`FIRST_NAME` VARCHAR(50), 
	`LAST_NAME` VARCHAR(50), 
	`STREET` VARCHAR(50), 
	`CITY` VARCHAR(50), 
	`STATE` VARCHAR(50), 
	`ZIP` VARCHAR(50), 
	`PHONE_NUMBER` VARCHAR(50), 
	`EMAIL` VARCHAR(50), 
	`JOB_TITLE` VARCHAR(50),
    FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENT(DEPARTMENT_ID)
)	;


CREATE TABLE  `NURSING_STATION` (			
	`STATION_ID` INT(11) NOT NULL AUTO_INCREMENT,
    `EMPLOYEE_ID`INT(11),
	`START_DATE` DATETIME,	
    `END_DATE` DATETIME,	
	PRIMARY KEY (`STATION_ID`),
	FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES EMPLOYEE(`EMPLOYEE_ID`)
);

CREATE TABLE `PURCHASE_ORDER` (
  `PURCHASE_ORDER_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `SUPPLIER_ID` INT(11),
  `DRUG_ID` INT(11) ,
  `PO_CREATION_DATE` DATETIME NOT NULL,
  `PO_APPROVAL_DATE` DATETIME NULL,
  `PURCHASE_MANAGER_ID` INT(11),
  `PHARMACY_MANAGER_ID` INT(11) ,
  `PO_DELIVERY_DATE` DATETIME NULL,
  `STATUS` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`PURCHASE_ORDER_ID`),
  FOREIGN KEY (`SUPPLIER_ID`) REFERENCES SUPPLIER(`SUPPLIER_ID`),
   FOREIGN KEY (`DRUG_ID`) REFERENCES DRUG(`DRUG_ID`),
    FOREIGN KEY (`PURCHASE_MANAGER_ID`) REFERENCES EMPLOYEE(`EMPLOYEE_ID`),
     FOREIGN KEY (`PHARMACY_MANAGER_ID`) REFERENCES EMPLOYEE(`EMPLOYEE_ID`)
  );
  
  CREATE TABLE `BATCH` (
`BATCH_ID` INT(11) NOT NULL AUTO_INCREMENT,
`DRUG_ID` INT(11) NOT NULL ,
`PURCHASE_ORDER_ID` INT(11),
`INITIAL_QUANTITY` DOUBLE,
`QUANTITY_USED` DOUBLE,
`QUANTITY_AVAILABLE` DOUBLE,
`EXPIRY_DATE` DATETIME,
`UNIT_PRICE` DOUBLE,
PRIMARY KEY(`BATCH_ID`),
FOREIGN KEY(`DRUG_ID`) REFERENCES DRUG(`DRUG_ID`),
FOREIGN KEY(`PURCHASE_ORDER_ID`) REFERENCES PURCHASE_ORDER(`PURCHASE_ORDER_ID`));
CREATE UNIQUE INDEX BATCH ON BATCH(BATCH_ID);


CREATE TABLE `SUPPLIER_RETURN_ORDER` (
`RETURN_ORDER_ID` INT(11) NOT NULL AUTO_INCREMENT,
`BATCH_ID` INT(11),
`RETURN_DATE` DATETIME,
`QUANTITY_RETURNED` DOUBLE,
`REASON` VARCHAR(100),
`STATUS` VARCHAR(20),
PRIMARY KEY(`RETURN_ORDER_ID`),
FOREIGN KEY(`BATCH_ID`) REFERENCES BATCH(`PURCHASE_ORDER_ID`));



CREATE TABLE `PATIENT_ADMISSION` (
`PATIENT_ADMIT_ID` INT(11) NOT NULL AUTO_INCREMENT,
`PT_ID` INT(11),
PRIMARY KEY(`PATIENT_ADMIT_ID`));



CREATE TABLE `PRESCRIPTION` (
`PRESCRIPTION_ID` INT(11) NOT NULL AUTO_INCREMENT,
`PRESCRIPTION_NOTES` VARCHAR(150),
`PATIENT_ADMIT_ID` INT(11) ,
PRIMARY KEY(`PRESCRIPTION_ID`),
FOREIGN KEY(`PATIENT_ADMIT_ID`) REFERENCES PATIENT_ADMISSION(`PATIENT_ADMIT_ID`));



CREATE TABLE `PHARMACY_ORDER` (	
	`ORDER_ID` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`PRESCRIPTION_ID` INT(11),
	`NURSE_EMPLOYEE_ID` INT(11)	NOT NULL, 
	`PHARMACIST_EMPLOYEE_ID` INT(11), 
	`ORDER_PLACED_TIME` DATETIME	NOT NULL, 
	`ORDER_QUEUE_TIME` DATETIME, 
	`ORDER_FULFILLED_TIME` DATETIME , 
	`STATUS` VARCHAR(50)	NOT NULL,
	`PARENT_ORDER_ID` INT(11), 
	`ORDER_TYPE` VARCHAR(50)	NOT NULL,
    
   FOREIGN KEY (PRESCRIPTION_ID) REFERENCES PRESCRIPTION(PRESCRIPTION_ID),
   FOREIGN KEY (NURSE_EMPLOYEE_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID),
   FOREIGN KEY (PHARMACIST_EMPLOYEE_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID) 
)	;

CREATE UNIQUE INDEX ORDERS ON PHARMACY_ORDER(ORDER_ID);


CREATE TABLE `CABINET_RETURN_ORDER` (	
	`RETURN_ORDER_ID` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`ORDER_ID` INT(11),
	`BATCH_ID` INT(11) , 
	`NURSE_ID` INT(11), 
	`RETURN_DATE` DATETIME	NOT NULL, 
	`REASON` VARCHAR(50), 
	`STATUS` VARCHAR(50),
    `QUANTITY_RETURNED` DOUBLE,
    FOREIGN KEY (NURSE_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID),
    FOREIGN KEY (ORDER_ID) REFERENCES PHARMACY_ORDER(ORDER_ID),
   FOREIGN KEY (BATCH_ID) REFERENCES BATCH(BATCH_ID)	
)	;

  
CREATE TABLE `ORDER_ITEM` (			
	`ORDER_ITEM_ID` INT(11) NOT NULL AUTO_INCREMENT,		
	`ORDER_ID` INT(11) ,		
	`DRUG_ID` INT(11),		
	`BATCH_ID` INT(11),		
	`QUANTITY_ORDERED` INT(11),		
	`QUANTITY_DELIVERED` INT(11),		
	`UNIT_PRICE` DOUBLE,		
	`ITEM_TOTAL` DOUBLE,		
	PRIMARY KEY (`ORDER_ITEM_ID`),
	FOREIGN KEY (`ORDER_ID`) REFERENCES PHARMACY_ORDER(`ORDER_ID`),
    FOREIGN KEY (`DRUG_ID`) REFERENCES DRUG(`DRUG_ID`),
    FOREIGN KEY (`BATCH_ID`) REFERENCES BATCH(`BATCH_ID`)
);	