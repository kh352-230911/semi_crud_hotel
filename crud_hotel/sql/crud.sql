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

drop table tb_pride;

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

-- drop table tb_member;

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


CREATE TABLE tb_room (
	room_num	varchar2(30)		NOT NULL,
	room_type	varchar2(50)		NOT NULL,
	room_bed_type	varchar2(30)		NOT NULL,
	room_people	number		NOT NULL,
	room_price	number		NOT NULL,
	room_brunch	number		NULL,
	room_pool	number		NULL,
	room_parking	number		NULL,
	room_manager_num 	varchar2(30)		NOT NULL,
    
    constraint pk_room_num primary key(room_num),
    constraint fk_room_manager_num foreign key(room_manager_num) REFERENCES tb_manager(manager_num) on delete set null,
    constraint ck_room_brunch check ( room_brunch in ( 0 , 1 ) ),
    constraint ck_room_pool check ( room_pool in ( 0 , 1 ) ),
    constraint ck_room_parking check ( room_parking in ( 0 , 1 ) ),
    constraint ck_room_people check ( room_people >= 0),
    constraint ck_room_price check ( room_price >= 0)
);

commit;

select * from tb_room;


CREATE TABLE tb_review (
	rev_num	 number		NOT NULL,
	rev_id	varchar2(100)		NOT NULL,
	rev_room_num	varchar2(30)		NOT NULL,
	rev_title	varchar2(100)		NULL,
	rev_content 	varchar2(3000)		NULL,
	rev_score	number		NULL,
	rev_date 	date	DEFAULT sysdate	NULL,
    
    constraint pk_rev_num primary key(rev_num),
    constraint fk_rev_id foreign key (rev_id) references tb_member(member_id) on delete set null,
    constraint fk_rev_room_num foreign key(rev_room_num) references tb_room(room_num) on delete set null,
    constraint ck_rev_score check (rev_score in (1, 2, 3, 4, 5))
);

create sequence seq_rev_num;

select * from tb_review;

commit;


CREATE TABLE tb_ask (
	ask_num	 number		NOT NULL,
	ask_id	varchar2(100)		NOT NULL,
	ask_room_num	varchar2(30)	NULL,
	ask_title	varchar2(200)		NULL,
	ask_case	 varchar2(50)		NOT NULL,
	ask_content	varchar2(3000)		NULL,
	ask_date 	date	DEFAULT sysdate	NULL,
    
    constraint pk_ask_num primary key(ask_num),
    constraint fk_ask_id foreign key(ask_id) references tb_member(member_id) on delete set null,
    constraint fk_ask_room_num foreign key(ask_room_num) references tb_room(room_num) on delete set null,
    constraint ck_ask_case check (ask_case in ('객실문의', '예약문의', '결제문의', '기타문의'))
);

create sequence seq_ask_num;

select * from tb_ask;

--alter table tb_ask drop column ask_room_num;

CREATE TABLE tb_review_comment (
	com_num number		NOT NULL,
	com_id	varchar2(100)		NULL,
	com_content	varchar2(1000)		NULL,
	com_date	date	DEFAULT sysdate	NULL,
	com_rev_num	number		NOT NULL,
    
    constraint pk_com_num primary key(com_num),
    constraint fk_com_id foreign key(com_id) references tb_member(member_id) on delete set null,
    constraint fk_com_rev_num foreign key(com_rev_num) references tb_review(rev_num) on delete cascade
);

create sequence seq_com_num;

select * from tb_review_comment;

commit;

CREATE TABLE tb_ask_answer (
	ans_num	 number		NOT NULL,
	ans_manager_num	varchar2(30)		NOT NULL,
	ans_title	varchar2(200)		NULL,
	ans_content	varchar2(3000)		NULL,
	ans_date	 date	DEFAULT sysdate	NULL,
	ans_ask_num	number		NOT NULL,
    
    constraint pk_ans_num primary key(ans_num),
    constraint fk_ans_manager_num foreign key(ans_manager_num) references tb_manager(manager_num) on delete set null,
    constraint fk_ans_ask_num foreign key(ans_ask_num) references tb_ask(ask_num) on delete cascade
);

create SEQUENCE seq_ans_num;

select
            *
        from
            tb_ask a left join tb_ask_answer b
                               on a.ask_num = b.ans_ask_num
        where
            ask_id = 'honggd';

select * from tb_ask_answer;

CREATE TABLE tb_tour (
	tour_num	number		NOT NULL,
	tour_name	varchar2(30)		NOT NULL,
	tour_addr	varchar2(50)		NULL,
	tour_price	number	DEFAULT 0	NOT NULL,
    
    constraint pk_tour_num primary key(tour_num)
);

create sequence seq_tb_tour;

select * from tb_tour;

CREATE TABLE tb_booking (
	booking_num	number		NOT NULL,
	booking_member_id 	varchar2(100)		NOT NULL,
	booking_room_num	 varchar2(30)		NOT NULL,
	booking_name	varchar2(50)		NULL,
	checkin_date	date	DEFAULT sysdate	NULL,
	checkout_date 	date	DEFAULT sysdate	NULL,
	booking_tour_num 	number		NULL,
    
    constraint pk_booking_num primary key(booking_num),
    constraint fk_booking_member_id foreign key(booking_member_id) references tb_member(member_id) on delete cascade,
    constraint fk_booking_room_num foreign key(booking_room_num) references tb_room(room_num) on delete cascade,
    constraint fk_booking_tour_num foreign key(booking_tour_num) references tb_tour(tour_num) on delete set null
);

create sequence seq_booking_num;

select * from tb_booking;


select * from tb_manager;
select * from tb_ask_answer;
select * from tb_ask;

alter table tb_ask add constraints ck_tb_ask_ask_case check(ask_case in('객실문의', '예약문의', '결제문의', '기타문의'));

update 
    tb_member
set
    member_password = 'DrXk6Hf+b7FpHqZRnQT9o1GiMOOBN+ky/tgiZtZfnAdUwPmZcZ3kFwbY1BVLJBqd/SGoFmqmTqfKK4UVl4+CCA=='
where
    member_id = 'honggd';
    
update tb_manager
set manager_pwd=' lAlSA/IyJ70vfZOfply3XR2apz5ZIHzl7iiCwndng7EyOjBFQ5FWFcZK/BBdibmzShV4GLYJSccfwRePB19GSw=='
where
    manager_id='sd02';
    
    
select * from tb_ask;   

select * from tb_review;

select * from tb_review_picture;

commit;


select * from tb_member;

select * from tb_booking;

-- 예약 횟수 컬럼 추가
alter table tb_member add booking_count number default 0 not null;
-- booking_count ck 제약조건 추가
alter table tb_member add constraints ck_booking_count check(booking_count >= 0);



-- 콘솔출력 set serveroutput on (세션마다)
set serveroutput on;

-- tb_member 테이블 booking_count 컬럼 값을 tb_booking테이블에 행추가 될때 마다 1씩 증가하도록 trigger 추가
create or replace trigger trig_count_increase
after insert
on tb_booking
for each row
begin
    update tb_member
    set booking_count = booking_count + 1
    where member_id = :new.booking_member_id; 
end;
/
    

-- 회원 테이블 booking_count 컬럼 값 :  예약 테이블에 행추가 될때 마다 1씩 감소하도록 trigger 추가
create or replace trigger trig_count_decrease
after delete
on tb_booking
for each row
begin
    update tb_member
    set booking_count = booking_count - 1
    where member_id = :old.booking_member_id; 
end;
/


-- 예약 테이블 추가 및 회원 트리거 테스트
insert into tb_booking values(seq_booking_num.nextval, 'honggd', 'Q603', '홍길동', '2024/01/10', '2024/01/11', default);

delete from 
    tb_booking
where
   booking_member_id = 'honggd' and booking_room_num = 'Q603';

select * from tb_member; -- 증가/감소 정상 작동



select * from tb_order;
    

commit;

select * from tb_review;

select * from tb_room;

select * from tb_tour;


select * from tb_booking;

CREATE TABLE tb_order (
	order_num	number		NOT NULL, -- 주문번호
	order_member_id 	varchar2(100)		NOT NULL,
	order_room_num	 varchar2(30)		NOT NULL,
	order_name	varchar2(50)		NULL,
	checkin_date	date	DEFAULT sysdate	NULL,
	checkout_date 	date	DEFAULT sysdate	NULL,
    order_date date DEFAULT sysdate NULL, -- 주문날짜
	order_tour_num 	number		NULL,
    
    constraint pk_order_num primary key(order_num),
    constraint fk_order_member_id foreign key(order_member_id) references tb_member(member_id) on delete cascade,
    constraint fk_order_room_num foreign key(order_room_num) references tb_room(room_num) on delete cascade,
    constraint fk_order_tour_num foreign key(order_tour_num) references tb_tour(tour_num) on delete set null
);

commit;

select * from tb_order;

select * from tb_pay;

CREATE TABLE tb_pay (
	pay_num	number		NOT NULL,
	pay_choice	number	DEFAULT 0	NULL,
	pay_discount	number	DEFAULT 0	NULL,
	pay_all_price	number	DEFAULT 0	NULL,
	pay_booking_num	number	NULL,
    pay_order_num number NULL,
    
    constraint pk_pay_num primary key(pay_num),
    constraint fk_pay_booking_num foreign key(pay_booking_num) references tb_booking(booking_num) on delete cascade,
    constraint fk_pay_order_num foreign key(pay_order_num) references tb_order(order_num) on delete cascade
);

select * from tb_booking;

select * from tb_room;


SELECT 
    *
FROM
    tb_room r
WHERE   
    r.room_type = '스탠다드'
    and
    r.room_people >= 3
    AND NOT EXISTS (
        SELECT 1
        FROM tb_booking b
        WHERE b.booking_room_num = r.room_num
            AND (
                (b.checkin_date < '2024/01/14' AND b.checkout_date > '2024/01/13')
            )
);
