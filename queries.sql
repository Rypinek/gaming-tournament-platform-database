-- find all players from team 2(G2)
Select * from PLAYER
where TEAM_ID = 2;

--Select all games with MOBA genre
select * from GAME
where GENRE = 'MOBA';

--Select tournaments starting after June 1st 2025
Select * from TOURNAMENT
where START_DATE > Date'2025-06-01';

--Show players born after 2000
select * from PLAYER
where DATE_OF_BIRTH > Date'2000-01-01';

--Show prizes worth more than 9000
select * from PRIZE
where VALUE > 9000;

--Show players and their team names
select p.nickname , t.name
from PLAYER p
join Team t  on p.TEAM_ID = t.ID;

--Show tournaments and games
select t.name , g.name
from TOURNAMENT t
join Game g on t.GAME_ID = g.ID;

--Show games and their platforms
select g.name , p.name
from game g
join platform p on g.PLATFORM_ID = p.ID;

--show matches and referees
select m.id , r.name_referee
from match m
join REFEREE r on m.REFEREE_ID = r.ID;

--show ranking points with player nicknames
select p.nickname , r.points
from ranking r
join player p on r.PLAYER_ID = p.ID;

--Group By

--Count players in each team
SELECT TEAM_ID , count(*) as Players
from PLAYER
group by TEAM_ID;

--Count games on each platform
SELECT PLATFORM_ID , count(*) as Games
from game
group by PLATFORM_ID ;

--Average ranking points in each tournament
select TOURNAMENT_id , avg(POINTS)
from RANKING
group by TOURNAMENT_id;

--Maximum score achieved in each match
select Match_id , max(score)
from MATCH_PLAYER
group by Match_id ;

--Number of matches supervised by each referee
select REFEREE_ID , count(*) as Match_count
from Match
group by referee_id;

--SUBQUERY

--Show all players with ranking points above average
SELECT nickname
from PLAYER
where id in (select PLAYER_ID from RANKING where POINTS >
                        (select avg(points) from RANKING));

-- Show players who won at least one match
SELECT nickname
FROM Player
WHERE id IN(SELECT Player_id from MATCH_PLAYER where IS_WINNER = 1);


-- Show players whose ranking is higher than the average ranking in the same tournament
SELECT p.nickname, r.points
FROM Player p
JOIN Ranking r ON p.id = r.Player_id
WHERE r.points >
(
    SELECT AVG(r2.points)
    FROM Ranking r2
    WHERE r2.Tournament_id = r.TOURNAMENT_ID
);









