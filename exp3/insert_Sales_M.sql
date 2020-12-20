insert into Customer(customerId,customerName,customerAge) values
	("180000","冯兄化吉",20),
	("180001","奔跑的蜗牛",49),
	("180002","水怪",20);
update Customer set customerAge = 21 where customerId = "180002";

insert into Customer(customerId,customerName,customerAge) values
	("180000","fzj",22);

insert into Supplier(supplierName,supplierCity,productId) values
	("0000","万达集团",000001);
update Supplier set supplierName = "万达集团",supplierCity = "大连" where productId = 1;

insert into Product(productId,productPrice) values
	(000001,10);

insert into Order_Form(orderFormId,orderFormAmount,orderFormTime) values
	("A0001",20.49,"2019-12-05"),
	("A0002",30,"2020-1-20"),
	("A0003",30.6,"2020-12-17");

insert into Seller(sellerId,sellerName,sellerAge) values
	("B000","陈平安",20),
	("B001","李富贵",30);

alter table Customer add column gender varchar(1);
alter table Customer add constraint gender check(gender in ("男","女"));
select count(*) from Order_Form where orderFormAmount >=30;