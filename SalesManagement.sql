CREATE TABLE Customer(
	customerId varchar(20) NOT NULL,
	customerName VARCHAR(100) NOT NULL,
	customerAge INT NOT NULL,
	PRIMARY KEY(customerId)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE Order_Form(
	orderFormId varchar(20) NOT NULL,
	orderFormAmount DOUBLE NOT NULL,
	orderFormTime DATE NOT NULL,
	PRIMARY KEY(orderFormId)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE Seller(
	sellerId varchar(20) NOT NULL,
	sellerAge INT NOT NULL,
	sellerName VARCHAR(100) NOT NULL,
	PRIMARY KEY(sellerId)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE Product(
	productId INT NOT NULL,
	productPrice INT NOT NULL,
	PRIMARY KEY(productId)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE Supplier(
	supplierName VARCHAR(100) NOT NULL,
	supplierCity VARCHAR(100) NOT NULL,
	productId INT,
	FOREIGN KEY (productId) REFERENCES Product(productId),
	PRIMARY KEY(supplierName,supplierCity)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;
alert table Order_Form drop column orderFormAmount;

alter table Order_Form alter column orderFormAmount set DEFAULT 0.00;