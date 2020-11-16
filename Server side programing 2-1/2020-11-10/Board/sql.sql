use mvc;
drop table member;
create table member(
id varchar(10),
pwd varchar(10),
name varchar(50),
email varchar(50),
joinDate datetime
);


select * from member;
insert into member values('jin', '1111','이요신','jins@gmail.com', now());
insert into member values('lee', '1111','이순신','lee@gmail.com', now());
insert into member values('song', '1111','이주신','song@gmail.com', now());
