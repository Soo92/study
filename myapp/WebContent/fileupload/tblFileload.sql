create table tblFileload(
 num int primary key auto_increment,
 file char(50) not null,
 size int default 0
)