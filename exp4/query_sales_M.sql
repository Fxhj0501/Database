select customerName from Customer where customerName like '冯___';
select customerName from Customer where customerName like '%冯%';
select distinct customerAge from Customer;
select customerName from Customer where gender is not null; 
select * from Order_Form where orderFormTime >="2020-1-1" and orderFormAmount >20 and orderFormAmount <40;
select customerId,customerName from Customer where customerAge in(20,21);
select orderFormId from Order_Form where orderFormAmount not in(30,30.6);
select orderFormId,orderFormAmount from Order_Form where orderFormTime in (select min(orderFormTime) from Order_Form);
insert into Order_Form(orderFormId,orderFormTime,orderFormAmount) values
	("A0004","2020-2-23",25.23);
select orderFormId,OrderFormTime from Order_Form order by orderFormAmount asc;
select * from Order_Form order by orderFormTime desc,orderFormAmount asc;
insert into Order_Form(orderFormId,orderFormTime,orderFormAmount) values
	("A0005","2020-02-23",26.23);

select * from Order_Form order by orderFormTime desc,orderFormAmount asc;

