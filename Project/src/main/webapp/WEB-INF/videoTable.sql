CREATE TABLE admin (
	id		 		VARCHAR2(30)  PRIMARY KEY, 	-- 식별번호
	name     		VARCHAR2(20)  NOT NULL, 	-- 관리자이름
	pwd      	 	VARCHAR2(20)  NOT NULL 		-- 비밀번호
);

CREATE TABLE video_board (
	num       		NUMBER		  PRIMARY KEY,  -- 식별번호
	admin_id 		VARCHAR2(30)  NOT NULL, 	-- 관리자식별번호
	writer 	  	    VARCHAR2(30)  NOT NULL,	    -- 글작성자
	title    		VARCHAR2(100) NOT NULL, 	-- 글제목
	content 		CLOB          NOT NULL, 	-- 글내용
	orgFileName 	VARCHAR2(200) NOT NULL, 	-- 원본파일명
	saveFileName   	VARCHAR2(200) NOT NULL, 	-- 저장파일명
	fileSize   		NUMBER        NOT NULL, 	-- 파일크기
	imgSrc			VARCHAR2(200) NOT NULL,		-- 이미지경로
	videoUrl   		VARCHAR2(200) NOT NULL, 	-- 웹경로
	viewCount 		NUMBER        NULL,     	-- 조회수
	regdate   		DATE          NULL      	-- 작성일
);

CREATE SEQUENCE video_board_seq NOCACHE;

INSERT INTO video_board
values(
video_board_seq.NEXTVAL,
'admin',
'관리자',
'2015년 불꽃축제',
'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam dolorem iusto laboriosam accusamus culpa, nam similique sunt assumenda vel maiores nemo eligendi, recusandae quod quae. Atque facilis quibusdam ex, magni.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam dolorem iusto laboriosam accusamus culpa, nam similique sunt assumenda vel maiores nemo eligendi, recusandae quod quae. Atque facilis quibusdam ex, magni.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam dolorem iusto laboriosam accusamus culpa, nam similique sunt assumenda vel maiores nemo eligendi, recusandae quod quae. Atque facilis quibusdam ex, magni.',
'dummy orgFileName',
'dummy saveFileName',
12345,
'/Project_video/resource/images/festival01.png',
'https://www.youtube.com/embed/9gTw2EDkaDQ',
1,
SYSDATE)

CREATE TABLE vb_comment (
	num           	NUMBER        PRIMARY KEY, 	-- 식별번호
	admin_id    	VARCHAR2(30)  NOT NULL, 	-- 해당글관리자식별번호
	users_id  	    VARCHAR2(30)  NOT NULL, 	-- 댓글작성자
	content    	    VARCHAR2(200) NOT NULL, 	-- 댓글내용
	ref_group   	NUMBER        NOT NULL, 	-- 댓글그룹
	regdate      	DATE          NULL      	-- 작성일
);

DROP TABLE vb_comment;
