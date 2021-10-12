create database demo;
use demo

create table loai(
	id char(11) primary key not null,
	ten_loai nvarchar(50)
);
create table mathang(
	id char(11) primary key,
	tenmathang nvarchar(100),
	loai_id char(11),
	constraint fk_mathang_loai Foreign key (loai_id) references loai (id)
)

create table size(
	id char(11) primary key,
	ten_size char(11),
	loai_id char(11),
	constraint fk_size_loai Foreign key (loai_id) references loai (id)
)
 insert into loai values ('1',N'Quan Ao');
 insert into loai values ('2',N'Giay Dep');

 insert into size values ('1','M','1');
 insert into size values ('2','XL','1');
 insert into size values ('3','L','1');

 insert into size values ('4','40','2');
 insert into size values ('5','41','2');
 insert into size values ('6','42','2');

 insert into mathang values ('1',N'Ao the thao Adidas','1');
 insert into mathang values ('2',N'Quan the thao Adidas','1');
 insert into mathang values ('3',N'Giay the thao Adidas','2');
 insert into mathang values ('4',N'Dep the thao Adidas','2');

 

 select m.tenmathang , s.ten_size
 from loai l, size s, mathang m
 where l.id = m.loai_id and l.id=s.loai_id and m.loai_id = '2'