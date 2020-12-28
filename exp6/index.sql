create index IX_orderFormId on Order_Form(orderFormId);
create unique index indexcustomerid on Customer(customerId);
create index orderindex on Order_Form(orderFormId);
show index from Customer;
show index from Order_Form;