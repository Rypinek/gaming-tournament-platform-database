--Platform
insert into Platform values (1, 'PC');
insert into PLATFORM values (2 , 'PlayStation');
insert into PLATFORM values (3 , 'XBOX');
insert into PLATFORM values (4 , 'Nintendo');

--Game
insert into  Game values (1, 'Counter Strike 2' , 'FPS' , 1);
insert into Game values (2 , 'League of Legends' , 'MOBA' , 1);
insert into Game values (3 , 'Dota 2' ,'MOBA' , 1);
insert into game values (4 , 'fifa 26' , 'Sports' , 2);
insert into game values (5 , 'Mario Kart' , 'Racing' , 4);

--Team
insert into Team values (1 , 'Dragons' , DATE '2024-01-01');
insert into team values (2 , 'G2' , Date '2023-06-11');
insert into Team values (3 , 'T1' , Date '2024-12-13');
insert into team values (4 , 'Fnatic' , Date '2022-03-09');

--Referee
insert into REFEREE values (1 , 'Szymon Marciniak' , date '2020-01-01');
insert into REFEREE values (2 , 'John Smith' , date '2021-06-01');

--Tournament
INSERT INTO TOURNAMENT values (1,'CS2 Major' , Date '2025-06-01' , DATE '2025-06-07' , 1);
insert into TOURNAMENT values (2 , 'Worlds' , Date '2025-06-03' , Date '2025-06-10' , 2);
insert into TOURNAMENT values (3 , 'Fifa Cup' , DATE '2025-07-04' , Date '2025-07-12' ,4);

--Player
INSERT INTO PLAYER values
(1, 'Faker', Date'2002-05-10' , Date '2024-01-01' , 'fakerT1@gmail.com' , 1);
insert into PLAYER values
(2 , 'Caps' , Date '2003-09-12' , Date '2023-05-12' , 'capsG2@gmail.com' , 1 );
insert into Player values
(3 , 'Biceps' , Date '1993-12-11' , date '2020-07-19' , 'virtusPro2gmail.com' , 2);
insert into PLAYER values
(4 , 'Rypin' , Date'2006-06-11' , date'2023-09-17' , 'rypinek@gmail.com' , 2);
insert into PLAYER values
(5 , 'Snax' , Date '1992-08-02' , Date'2019-05-02' , 'snaxVP@gmail.com' , 3);
insert into PLAyer values
(6 , 'Dopa' , date'2001-02-02' , date'2020-08-08' , 'dopaLol@gmail.com' , 3);

--Prize
insert into PRIZE values (1, '1st Place' , 10000 , 1);
insert into prize values (2 , '1st Place' , 15000 , 2);
insert into prize values (3 , '1st Place' , 7500 , 3);

--Match
insert into Match values (1 , Date'2025-06-02' , 1, 1);
insert into Match values (2 , Date'2025-06-05' , 2, 2);
insert into Match values (3 , Date'2025-07-08' , 1, 3);

--Player_Tournament
insert into PLAYER_TOURNAMENT values (1,1);
insert into PLAYER_TOURNAMENT values (2,1);
insert into PLAYER_TOURNAMENT values (3,2);
insert into PLAYER_TOURNAMENT values (4,2);
insert into  PLAYER_TOURNAMENT values (5,3);
insert into PLAYER_TOURNAMENT values (6,3);

--Team_Match

insert into TEAM_MATCH values (1,1);
insert into TEAM_MATCH values (1,2);

insert into TEAM_MATCH values(2,2);
insert into TEAM_MATCH values (2,3);

insert into TEAM_MATCH values (3,3);
insert into TEAM_MATCH values (3,4);

--Match_player
insert into MATCH_PLAYER values (1,1,16,1);
insert into  Match_Player VALUES (2,1,12,0);
INSERT INTO Match_Player VALUES (3,2,20,1);
insert into Match_Player VALUES (4,2,15,0);
INSERT INTO Match_Player VALUES (5,3,10,1);
INSERT INTO Match_Player VALUES (6,3,7,0);

--Ranking
INSERT INTO Ranking VALUES (1,100,1,1,1);
INSERT INTO Ranking VALUES (2,85,2,2,1);
INSERT INTO Ranking VALUES (3,120,1,3,2);
INSERT INTO Ranking VALUES (4,95,2,4,2);
INSERT INTO Ranking VALUES (5,110,1,5,3);
INSERT INTO Ranking VALUES (6,90,2,6,3);
commit ;


