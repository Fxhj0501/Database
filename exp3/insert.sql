insert into 作者 (编号,姓名,性别,出生年代,国籍) values
("A1000001","雨果","男",1802,"法国"),
("A0000000","巴金","男",1904,"中国"),
("A000003","罗贯中","男","元末清初","中国");

insert into 作者 (编号,姓名,性别,出生年代,国籍) values
("A0000004","吴承恩", null,null,null),
("A0000005","胡中为",null,null,null);

update 作者 set 出生年代 = '明' where 姓名  = '吴承恩';

insert into 作者(编号,姓名,性别,出生年代,国籍) values
("B0000001","张三",null,null,null),
("B0000002","巴金",null,null,null);

delete from 作者 where 编号 in('B0000001','B0000002');

insert into 作者 (编号,姓名,性别,出生年代,国籍) values
("A0000006","徐伟彪","男","当代","中国");

insert into 图书 (ISBN,书名,类型,语言,价格,开本,千字数,页数,印数,出版日期,印刷日期,出版社号) values
("7020058594","家","中国文学","中文",23,null,null,null,null,"1953-01-01",null,
"P000008");

insert into 出版社(编号,名称,国家,城市,地址,邮编,网址) values
("P000008","人民文学出版社","中国",null,null,null,null);

insert into 图书 (ISBN,书名,类型,语言,价格,开本,千字数,页数,印数,出版日期,印刷日期,出版社号) values
("7070002323","三国演义","中国文学","中文",47.2,"850*1168",null,null,null,"1953-01-01",null,
"P000008");

insert into 图书馆(编号,名称,地址,电话) values
("L00001","首都图书馆","朝阳区东三环路88号","01067358111");

insert into 图书馆(编号,名称,地址,电话) values
("L00002","国家图书馆分馆","西城区文津街7号","01066126165"),
("L00003","东城区图书馆","东城区交道口东大街85号","01064051155");

update 图书馆 set 地址 = "北京市首都图书馆分馆",电话 = "01066126165" where 编号 = "L00001";

update 图书馆 set 地址 = "北京市国家图书馆分馆" where 编号 = "L00002";
update 图书馆	 set 地址 = "北京市东城区图书馆" where 编号 = "L00003";

insert into 图书馆 (编号,名称,地址,电话) values
("L11001","图书馆1",null,null),
("L11002","新图分馆1",null,null),
("L11003","新图分馆2",null,null);

delete from 图书馆 where 编号 = "L11001";
delete from 图书馆 where 编号 in("L11002","L11003");

insert into 图书 (ISBN,书名,类型,语言,价格,开本,千字数,页数,印数,出版日期,印刷日期,出版社号) values
("7030230522","行星科学","天文学",null,null,null,null,null,null,"2008-01-01",null,"P000005");

insert into 图书馆(编号,名称,地址,电话)values
("L00001","图书馆1",null,null);

insert into 收藏(图书馆号,ISBN,收藏日期) values
("L00001",7805674322,"2007-02-01");

insert into 图书 (ISBN,书名,类型,语言,价格,开本,千字数,页数,印数,出版日期,印刷日期,出版社号) values
(7805674322,"巴黎圣母院","外国文学",null,null,null,null,null,null,"2002-02-01",null,"P000010");

update 图书馆 set 电话 = "67358111" where 编号 = "L00001";

CREATE TABLE 图书馆1(
	编号 CHAR(6) NOT NULL,
	名称 VARCHAR(50) NOT NULL,
	PRIMARY KEY(编号)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

insert into 图书馆1(编号,名称) select 编号,名称 from 图书馆;

insert into 图书馆 (编号,名称,地址,电话) values
("L00004","北京大学图书馆",null,null);

insert into 图书 (ISBN,书名,类型,语言,价格,开本,千字数,页数,印数,出版日期,印刷日期,出版社号) values
(7030230523,"行星科学","天文学",null,null,null,null,null,null,"2008-01-01",null,"P000005");

insert into 收藏(图书馆号,ISBN,收藏日期) values
("L00001","7020058594","2010-12-01"),
("L00002","7070002323","1999-01-01"),
("L00003","7030230522","2008-01-01");

delete from 收藏 where 图书馆号 = "L00001";
	