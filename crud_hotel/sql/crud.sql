-- crud계정 생성 (관리자)
show user;

create user crud
identified by "dydwns_HotelC1!" 
default tablespace users;

grant connect, resource to crud;

alter user crud quota unlimited on users;