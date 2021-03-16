.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet from students where color="blue" and pet="dog";


CREATE TABLE bluedog_songs AS
  SELECT color, pet, song from students where color="blue" and pet="dog";


CREATE TABLE smallest_int AS
  SELECT time, smallest from students where smallest > 2 ORDER BY smallest LIMIT 20;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color
  FROM students AS a, students AS b
  WHERE a.time < b.time and
        a.pet  = b.pet and
        a.song = b.song;


CREATE TABLE sevens AS
  SELECT seven FROM students AS a, numbers as b
  WHERE a.time = b.time and
        a.number = 7 and 
        b."7" = "True";

