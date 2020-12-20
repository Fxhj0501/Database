create view view_sales_M as select orderFormTime from Order_Form where orderFormTime >= "2020-1-1";
select * from view_sales_M where orderFormTime = "2020-01-20";
alter view view_sales_M as select orderFormTime,orderFormAmount from Order_Form where orderFormTime >= "2020-1-1";
//insert into view_sales_M values ("2020-03-23","100.2");
select * from view_sales_M order by orderFormTime asc;
update view_sales_M set orderFormAmount = 1000.2 where orderFormTime = "2020-12-17";
delete from view_sales_M where orderFormId = "A0005";
create view view_sales_M_2  with ENCRYPTION as select orderFormTime,orderFormAmount from Order_Form;

create index IX_orderFormId on Order_Form(orderFormId);