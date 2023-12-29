-- crud계정 생성 (관리자)
show user;

create user crud
identified by "dydwns_HotelC1!" 
default tablespace users;

grant connect, resource to crud;

alter user crud quota unlimited on users;


CREATE TABLE tb_pride (
	pride	varchar2(20) NOT NULL,
	discount	 number NOT NULL,
	res_count number NOT NULL,	
    
    constraint pk_pride primary key(pride),
    constraint ck_pride check(pride in ('bronze', 'silver', 'gold', 'platinum', 'diamond'))
);

--drop table tb_pride;

commit;

select * from tb_pride;


CREATE TABLE tb_member (
	member_id	varchar2(100)		NOT NULL,
	member_password	varchar2(100)		NOT NULL,
	member_name	varchar2(50)		NOT NULL,
	member_phone	varchar2(100)		NOT NULL,
	member_email	varchar2(100)	    ,
	member_address	 varchar2(200)		,
	member_login_date	date	DEFAULT sysdate ,
	member_pride 	varchar2(20)	DEFAULT 'BRONZE'	NOT NULL,
    
    constraint pk_member_id primary key(member_id),
    constraint fk_member_pride foreign key(member_pride) REFERENCES tb_pride(pride)
);

 drop table tb_member;

select * from tb_member;



CREATE TABLE tb_manager (
	manager_num	varchar2(30)		NOT NULL,
	manager_id	 varchar2(100)		NOT NULL,
	manager_pwd	varchar2(100)		NOT NULL,
	manager_name	varchar2(50)		NOT NULL,
	manager_phone	varchar2(100)		NOT NULL,
	manager_email	varchar2(100)		,
    
    constraint pk_manager_num primary key(manager_num)
);

--drop table tb_manager;

select * from tb_manager;


