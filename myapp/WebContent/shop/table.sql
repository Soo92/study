
CREATE TABLE tblProduct (
	no                  int(5)                      auto_increment  ,
	name            varchar(20)           NULL      ,
	price             int                           NULL      ,
	detail            text                          NULL      ,
	date              varchar(20)           NULL      ,
	stock            int                            NULL      ,
	image           varchar(20)           NULL      ,
	PRIMARY KEY ( no )
);

CREATE TABLE tblOrder (
	no                    int                          auto_increment  ,
	productNo      int                            NULL  ,
	quantity          int                           NULL      ,
	date                varchar(20)           NULL      ,
	state               varchar(10)           NULL      ,
	id                     varchar(10)           NULL      ,
	PRIMARY KEY ( no )
);



CREATE TABLE tblAdmin (
	admin_id                 varchar(20)          NOT NULL  ,
	admin_pass      varchar(20)          NOT NULL      ,
	PRIMARY KEY       ( admin_id )
);

CREATE TABLE tblRegister(
 id                  varchar(20)          NOT NULL  ,
 pass              varchar(20)          NOT NULL      ,
 name                varchar(20)          NOT NULL      ,
 email              varchar(30)          NOT NULL      ,
 phone               varchar(30)          NOT NULL      ,
 zipcode             varchar(7)           NOT NULL      ,
 address             varchar(60)          NOT NULL      ,
 job                 varchar(30)         NOT  NULL      ,
 hobby            varchar(5)         NOT  NULL      ,
 PRIMARY KEY ( id )
);

CREATE TABLE tblZipcode (
 zipcode             char(7)              NOT NULL  ,
 area1               char(10)             NULL      ,
 area2               char(20)             NULL      ,
 area3               char(40)             NULL      ,
 area4               char(20)             NULL      
);

insert tblProduct(name,price,detail,date,stock,image)
values ('삼성폰',1000000,'삼성폰 상세설명',
now(), 100, 'data1.jpg');

insert tblProduct(name,price,detail,date,stock,image)
values ('LG폰',900000,'LG폰 상세설명',
now(), 100, 'data2.jpg');

insert tblProduct(name,price,detail,date,stock,image)
values ('SKY폰',800000,'SKY폰 상세설명',
now(), 100, 'data3.jpg')