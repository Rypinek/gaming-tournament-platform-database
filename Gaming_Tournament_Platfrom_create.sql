-- Created by Redgate Data Modeler (https://datamodeler.redgate-platform.com)
-- Last modification date: 2026-05-30 00:05:01.757

-- tables
-- Table: Game
CREATE TABLE Game (
    id integer  NOT NULL,
    name varchar2(20)  NOT NULL,
    genre varchar2(20)  NOT NULL,
    Platform_id integer  NOT NULL,
    CONSTRAINT Game_pk PRIMARY KEY (id)
) ;

-- Table: Match
CREATE TABLE Match (
    id integer  NOT NULL,
    match_date date  NOT NULL,
    Referee_id integer  NOT NULL,
    Tournament_id integer  NOT NULL,
    CONSTRAINT Match_pk PRIMARY KEY (id)
) ;

-- Table: Match_Player
CREATE TABLE Match_Player (
    Player_id integer  NOT NULL,
    Match_id integer  NOT NULL,
    score integer  NOT NULL,
    is_winner number(1,0)  NOT NULL,
    CONSTRAINT Match_Player_pk PRIMARY KEY (Player_id,Match_id)
) ;

-- Table: Platform
CREATE TABLE Platform (
    id integer  NOT NULL,
    name varchar2(20)  NOT NULL,
    CONSTRAINT Platform_pk PRIMARY KEY (id)
) ;

-- Table: Player
CREATE TABLE Player (
    id integer  NOT NULL,
    nickname varchar2(30)  NOT NULL,
    date_of_birth date  NOT NULL,
    join_date date  NOT NULL,
    email varchar2(40)  NOT NULL,
    Team_id integer  NULL,
    CONSTRAINT Player_pk PRIMARY KEY (id)
) ;

-- Table: Player_Tournament
CREATE TABLE Player_Tournament (
    Player_id integer  NOT NULL,
    Tournament_id integer  NOT NULL,
    CONSTRAINT Player_Tournament_pk PRIMARY KEY (Player_id,Tournament_id)
) ;

-- Table: Prize
CREATE TABLE Prize (
    id integer  NOT NULL,
    description varchar2(30)  NOT NULL,
    value number(10,2)  NOT NULL,
    Tournament_id integer  NOT NULL,
    CONSTRAINT Prize_pk PRIMARY KEY (id)
) ;

-- Table: Ranking
CREATE TABLE Ranking (
    id integer  NOT NULL,
    points integer  NOT NULL,
    positon integer  NOT NULL,
    Player_id integer  NOT NULL,
    Tournament_id integer  NOT NULL,
    CONSTRAINT Ranking_pk PRIMARY KEY (id)
) ;

-- Table: Referee
CREATE TABLE Referee (
    id integer  NOT NULL,
    name_referee varchar2(20)  NOT NULL,
    referee_hire_date date  NOT NULL,
    CONSTRAINT Referee_pk PRIMARY KEY (id)
) ;

-- Table: Team
CREATE TABLE Team (
    id integer  NOT NULL,
    name varchar2(20)  NOT NULL,
    creation_date date  NOT NULL,
    CONSTRAINT Team_pk PRIMARY KEY (id)
) ;

-- Table: Team_Match
CREATE TABLE Team_Match (
    Match_id integer  NOT NULL,
    Team_id integer  NOT NULL,
    CONSTRAINT Team_Match_pk PRIMARY KEY (Match_id,Team_id)
) ;

-- Table: Tournament
CREATE TABLE Tournament (
    id integer  NOT NULL,
    name varchar2(20)  NOT NULL,
    start_date date  NOT NULL,
    end_date date  NULL,
    Game_id integer  NOT NULL,
    CONSTRAINT Tournament_pk PRIMARY KEY (id)
) ;

-- foreign keys
-- Reference: Game_Platform (table: Game)
ALTER TABLE Game ADD CONSTRAINT Game_Platform
    FOREIGN KEY (Platform_id)
    REFERENCES Platform (id);

-- Reference: Match_Player_Match (table: Match_Player)
ALTER TABLE Match_Player ADD CONSTRAINT Match_Player_Match
    FOREIGN KEY (Match_id)
    REFERENCES Match (id);

-- Reference: Match_Player_Players (table: Match_Player)
ALTER TABLE Match_Player ADD CONSTRAINT Match_Player_Players
    FOREIGN KEY (Player_id)
    REFERENCES Player (id);

-- Reference: Match_Referee (table: Match)
ALTER TABLE Match ADD CONSTRAINT Match_Referee
    FOREIGN KEY (Referee_id)
    REFERENCES Referee (id);

-- Reference: Match_Tournament (table: Match)
ALTER TABLE Match ADD CONSTRAINT Match_Tournament
    FOREIGN KEY (Tournament_id)
    REFERENCES Tournament (id);

-- Reference: Player_Team (table: Player)
ALTER TABLE Player ADD CONSTRAINT Player_Team
    FOREIGN KEY (Team_id)
    REFERENCES Team (id);

-- Reference: Players_Tournament_Players (table: Player_Tournament)
ALTER TABLE Player_Tournament ADD CONSTRAINT Players_Tournament_Players
    FOREIGN KEY (Player_id)
    REFERENCES Player (id);

-- Reference: Players_Tournament_Tournament (table: Player_Tournament)
ALTER TABLE Player_Tournament ADD CONSTRAINT Players_Tournament_Tournament
    FOREIGN KEY (Tournament_id)
    REFERENCES Tournament (id);

-- Reference: Prize_Tournament (table: Prize)
ALTER TABLE Prize ADD CONSTRAINT Prize_Tournament
    FOREIGN KEY (Tournament_id)
    REFERENCES Tournament (id);

-- Reference: Ranking_Player (table: Ranking)
ALTER TABLE Ranking ADD CONSTRAINT Ranking_Player
    FOREIGN KEY (Player_id)
    REFERENCES Player (id);

-- Reference: Ranking_Tournament (table: Ranking)
ALTER TABLE Ranking ADD CONSTRAINT Ranking_Tournament
    FOREIGN KEY (Tournament_id)
    REFERENCES Tournament (id);

-- Reference: Team_Match_Match (table: Team_Match)
ALTER TABLE Team_Match ADD CONSTRAINT Team_Match_Match
    FOREIGN KEY (Match_id)
    REFERENCES Match (id);

-- Reference: Team_Match_Team (table: Team_Match)
ALTER TABLE Team_Match ADD CONSTRAINT Team_Match_Team
    FOREIGN KEY (Team_id)
    REFERENCES Team (id);

-- Reference: Tournament_Game (table: Tournament)
ALTER TABLE Tournament ADD CONSTRAINT Tournament_Game
    FOREIGN KEY (Game_id)
    REFERENCES Game (id);

-- End of file.

