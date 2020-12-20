select 姓名 from 作者 where 姓名 like '____Date';
select 名称 from 图书馆 where 名称 like '%北京%';
书上步骤三没做，因为作者没有类别
select ISBN,书名,出版日期,印刷日期 from 图书 where 印刷日期 is not null and 出版日期 is not null; 