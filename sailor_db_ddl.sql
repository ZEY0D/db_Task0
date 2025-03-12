DROP TABLE IF EXISTS  sailors;
DROP TABLE IF EXISTS boats;
DROP TABLE IF EXISTS  reserves;

CREATE TABLE sailors(
    sid INT PRIMARY KEY ,
    sname VARCHAR(40),
    rating INT,
    age INT
);

CREATE TABLE boats (
    bid INT PRIMARY KEY ,
    bname VARCHAR(40),
    color VARCHAR(20)
);

CREATE TABLE reserves (
    sid INT,
    bid INT,
    day DATE,
    PRIMARY KEY (sid , bid , day),
    FOREIGN KEY (sid) REFERENCES
                      Sailors(sid),
    FOREIGN KEY (bid) REFERENCES
                      boats(bid)
);
