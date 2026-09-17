DROP TABLE IF EXISTS student_course;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS course;

CREATE TABLE student (
    sid INT PRIMARY KEY AUTO_INCREMENT,
    sname VARCHAR(50) NOT NULL
);

CREATE TABLE course (
    cid INT PRIMARY KEY AUTO_INCREMENT,
    cname VARCHAR(50) NOT NULL
);

CREATE TABLE student_course (
    sid INT,
    cid INT,
    PRIMARY KEY(sid, cid),
    FOREIGN KEY(sid) REFERENCES student(sid),
    FOREIGN KEY(cid) REFERENCES course(cid)
);

INSERT INTO student(sname)
VALUES ("rushi"), ("anirudh"), ("mansi");

INSERT INTO course(cname)
VALUES ("java"), ("dsa"), ("c"), ("da");

