CREATE TABLE Customer(
	customerId INT NOT NULL,
	customerName VARCHAR(100) NOT NULL,
	customerAge INT NOT NULL,
	PRIMARY KEY(customerId)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE Order_Form(
	orderFormId INT NOT NULL,
	orderFormAmount INT NOT NULL,
	orderFormTime DATE NOT NULL,
	PRIMARY KEY(orderFormId)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE Seller(
	sellerId INT NOT NULL,
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
	PRIMARY KEY(supplierName,supplierCity)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO Customer(customerId,customerName,customerAge)
VALUES("18072004","冯子健","20");