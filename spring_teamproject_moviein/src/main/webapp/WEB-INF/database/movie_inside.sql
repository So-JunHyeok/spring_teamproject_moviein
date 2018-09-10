 /* 현재상영작 게시판 테이블 */
create table movie_introduction_present(
	bNum number(4) primary key,
	bTitle varchar2(100) not null,
	bContent varchar2(4000),
	bRelease varchar2(10) not null,
	bDate date default sysdate,
	safeFile varchar2(2000),
	bstar number(10),
	bHit number(4) default 0
);

select * from movie_introduction_present where bNum between 1 and 12;
select * from movie_introduction_board 
SELECT * FROM movie_introduction_board  WHERE ROWNUM >= 1 AND ROWNUM <= 15;

select *from(select rownum rnum, dDate, dTitle from movie_introduction_board order by rnum asc) where rnum between 1 and 12 order by rnum asc;







select count(*) from movie_introduction_board;
/* 독립영화 게시판 테이블 */
create table movie_introduction_board( 
	dNum number(4) primary key,
	dTitle varchar2(100) not null,
	dContent varchar2(4000),
	dRelease varchar2(10) not null,
	dDate date default sysdate,
	safeFile varchar2(200),
	bstar number(10),
	dHit number(4) default 0
);

drop table movie_introduction_present;
drop table movie_introduction_board;

select * from movie_introduction_present;
select * from movie_introduction_board;

alter sequence movie_introduction_seq increment by 1;

create sequence movie_introduction_present_seq;
create sequence movie_introduction_board_seq;

drop sequence movie_introduction_present_seq;
drop sequence movie_introduction_board_seq;





/* 네티즌(사용자)영화추천 게시판 */
create table PM_recommend_board (
	dAI_Id number(4) primary key,
	dAI_Title varchar2(100),
	dAI_Content varchar2(1000),
	dAI_Name varchar2(100),
	safeFile varchar2(200),
	dAI_Date date default sysdate,
	dAI_Hit number(10) default 0
);

/* 배우 인터뷰 테이블 */
create table DAI_people_board (
	dAI_Id number(4) primary key,
	dAI_Title varchar2(100),
	dAI_Content varchar2(1000),
	dAI_Name varchar2(100),
	safeFile varchar2(200),
	dAI_Date date default sysdate,
	dAI_Hit number(10) default 0
);

/* 감독 인터뷰 테이블 */
create table DAI_director_board (
	dAI_Id number(4) primary key,
	dAI_Title varchar2(100),
	dAI_Content varchar2(1000),
	dAI_Name varchar2(100),
	safeFile varchar2(200),
	dAI_Date date default sysdate,
	dAI_Hit number(10) default 0
);

/* 테이블 드롭 */
drop table PM_recommend_board;
drop table DAI_people_board;
drop table DAI_director_board;


/* 테이블 검색 */
select * from DAI_people_board;
select * from DAI_director_board;
select * from PM_recommend_board;

/* 시퀀스 생성 */
create sequence PM_recommend_board_seq;
create sequence DAI_people_board_seq;
create sequence DAI_director_board_seq;

/* 시퀀스 드롭 */
drop sequence PM_recommend_board_seq;
drop sequence DAI_people_board_seq;
drop sequence DAI_director_board_seq;





/* 현재상영작 댓글 테이블*/
create table repple_present(
	num number(4) primary key,
	content varchar2(1500),
	writer varchar2(50),
	star number(4) default 0,
	rgroup number(4) default 0
);


/* 독립영화 소개 댓글 테이블*/
create table repple_board(
	num number(4) primary key,
	content varchar2(1500),
	writer varchar2(50),
	star number(4) default 0,
	rgroup number(4) default 0
);




create sequence repple_present_seq;
create sequence repple_board_seq;

select * from repple_present;


drop sequence repple_present_seq;
drop sequence repple_board_seq;

