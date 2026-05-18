DROP SCHEMA IF EXISTS BetfairSP;
CREATE SCHEMA BetfairSP;
USE BetfairSP;

CREATE TABLE events(
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    event_date DATE NOT NULL,
    location CHAR(4),
    UNIQUE(event_date, location)
);

CREATE TABLE races(
    race_id INT PRIMARY KEY,
    event_id INT NOT NULL,
    race_time DATETIME NOT NULL,
    length_furlong INT NOT NULL,
    race_type ENUM('Hcap', 'Hcap Hrd', 'Mdn Stks', 'Hcap Chs', 'Nov Hrd', 'Mdn Hrd', 'Mdn', 'NHF', 'Nov Chs', 'Claim Stks', 'Beg Chs', 'Listed', 'INHF', 'Sell Stks') NOT NULL,
    
    FOREIGN KEY (event_id) REFERENCES events(event_id),
    UNIQUE(race_time, event_id)
);

CREATE TABLE racers(
    selection_id INT PRIMARY KEY,
    race_id INT NOT NULL,
    -- 18 character limit enforced by BHA
    selection_name VARCHAR(18) NOT NULL,
    win_lose BOOL NOT NULL,
    
    -- prices 
    ppwap DECIMAL(10, 5) NOT NULL,
    morningwap DECIMAL(10, 5) NOT NULL,
    ppmax DECIMAL(10, 5) NOT NULL,
    ppmin DECIMAL(10, 5) NOT NULL,
    ipmax DECIMAL(10, 5) NOT NULL,
    ipmin DECIMAL(10, 5) NOT NULL,
    
    -- volume stats are all in GBP
    morningtradedvol DECIMAL(10, 2) NOT NULL,
    pptradedvol DECIMAL(10, 2) NOT NULL,
    iptradedvol DECIMAL(10, 2) NOT NULL,
    
    FOREIGN KEY (race_id) REFERENCES races(race_id),
    UNIQUE(race_id, selection_id)
);  