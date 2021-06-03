CREATE DATABASE InventoryManagement;
use InventoryManagement;

CREATE TABLE products
(
   prod_id integer,
   prod_type varchar(100),
   prod_name varchar(100),
   qty integer,
   price decimal(7,2),
   price_eff_st_date date,
   price_eff_en_date date
   );
alter table products add constraint products PRIMARY key (prod_id);
INSERT INTO Products VALUES(1,'food','cupcakes',12,3.25,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(2,'food','cookies',12,2.50,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(3,'food','donuts',12,4.75,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(4,'food','kidzeeybars',12,7.25,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(5,'food','eggs',12,2.25,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(6,'frozen','icecream',1,3.25,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(7,'frozen','springrolls',12,5.75,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(8,'frozen','pizza',1,3.25,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(9,'frozen','pasta',1,3.25,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(10,'frozen','vegsandwich',12,8.25,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(11,'office','printer',1,100.00,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(12,'office','keyboard',1,20.00,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(13,'office','pens',12,3.25,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(14,'office','headset',1,10.00,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(15,'office','officechair',1,75.00,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(16,'cleaningsupplies','dishliquid',1,2.25,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(17,'cleaningsupplies','bathtissues',12,8.00,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(18,'cleaningsupplies','papertowels',12,12.00,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(19,'cleaningsupplies','laundrydetergent',1,5.50,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(20,'cleaningsupplies','cabinetcleaner',1,3.25,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(21,'apparel','shirt',1,13.25,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(22,'apparel','jeans',1,22.00,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(23,'apparel','sweatshirt',1,10.50,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(24,'apparel','pajamaset',1,15.00,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
INSERT INTO Products VALUES(25,'apparel','cardigan',1,8.25,STR_TO_DATE('2000/01/01','%Y/%m/%d'),STR_TO_DATE('3000/01/01','%Y/%m/%d'));
CREATE TABLE store
(
   store_id integer,
   store_address varchar(500)
   );
   alter table store add constraint store PRIMARY key (store_id);
   INSERT INTO store VALUES(1,'17700 NE 76th St, Redmond, WA 98052');
   INSERT INTO store VALUES(2,'8629 120th Ave NE, Kirkland, WA 98033');
   INSERT INTO store VALUES(3,'516 228th Ave NE, Sammamish, WA 98074');
   INSERT INTO store VALUES(4,'6200 E Lake Sammamish Pkwy SE, Issaquah, WA 98029');
   CREATE TABLE billdata
   (
      bill_id integer,
      store_id integer,
      bill_date date,
      bill_total decimal
      );
      alter table billdata add constraint billdata PRIMARY key (bill_id);
      ALTER TABLE billdata ADD CONSTRAINT FK_store_id FOREIGN KEY (store_id) REFERENCES store(store_id);
      CREATE TABLE billdetails
      (
         billdetail_id integer,
         bill_id integer,
         prod_id integer,
         qty integer,
         line_total decimal(10,2)
         );
         alter table billdetails add constraint billdetails PRIMARY key (billdetail_id);
		 ALTER TABLE billdetails ADD CONSTRAINT FK_bill_id FOREIGN KEY (bill_id) REFERENCES billdata(store_id);
		 ALTER TABLE billdetails ADD CONSTRAINT FK_prod_id FOREIGN KEY (prod_id) REFERENCES products(prod_id);
         
