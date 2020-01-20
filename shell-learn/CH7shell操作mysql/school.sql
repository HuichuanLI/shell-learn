--建表
--学生表
CREATE TABLE `student`(
    `s_id` VARCHAR(20),
    `s_name` VARCHAR(20) NOT NULL DEFAULT '',
    `s_birth` VARCHAR(20) NOT NULL DEFAULT '',
    `s_sex` VARCHAR(10) NOT NULL DEFAULT '',
    PRIMARY KEY(`s_id`)
);
--课程表
CREATE TABLE `course`(
    `c_id`  VARCHAR(20),
    `c_name` VARCHAR(20) NOT NULL DEFAULT '',
    `t_id` VARCHAR(20) NOT NULL,
    PRIMARY KEY(`c_id`)
);
--教师表
CREATE TABLE `teacher`(
    `t_id` VARCHAR(20),
    `t_name` VARCHAR(20) NOT NULL DEFAULT '',
    PRIMARY KEY(`t_id`)
);
--成绩表
CREATE TABLE `score`(
    `s_id` VARCHAR(20),
    `c_id`  VARCHAR(20),
    `s_score` INT(3),
    PRIMARY KEY(`s_id`,`c_id`)
);
--插入学生表测试数据
insert into student values('1001' , 'zhaolei' , '1990-1001-1001' , 'male');
insert into student values('1002' , 'lihang' , '1990-12-21' , 'male');
insert into student values('1003' , 'yanwen' , '1990-1005-20' , 'male');
insert into student values('1004' , 'hongfei' , '1990-1008-1006' , 'male');
insert into student values('1005' , 'ligang' , '1991-12-1001' , 'female');
insert into student values('1006' , 'zhousheng' , '1992-1003-1001' , 'female');
insert into student values('1007' , 'wangjun' , '1989-1007-1001' , 'female');
insert into student values('1008' , 'zhoufei' , '1990-1001-20' , 'female');
--课程表测试数据
insert into course values('1001' , 'chinese' , '1002');
insert into course values('1002' , 'math' , '1001');
insert into course values('1003' , 'english' , '1003');
 
--教师表测试数据
insert into teacher values('1001' , 'aidisheng');
insert into teacher values('1002' , 'aiyinsitan');
insert into teacher values('1003' , 'qiansanqiang');
 
--成绩表测试数据
insert into score values('1001' , '1001' , 80);
insert into score values('1001' , '1002' , 90);
insert into score values('1001' , '1003' , 99);
insert into score values('1002' , '1001' , 70);
insert into score values('1002' , '1002' , 60);
insert into score values('1002' , '1003' , 80);
insert into score values('1003' , '1001' , 80);
insert into score values('1003' , '1002' , 80);
insert into score values('1003' , '1003' , 80);
insert into score values('1004' , '1001' , 50);
insert into score values('1004' , '1002' , 30);
insert into score values('1004' , '1003' , 20);
insert into score values('1005' , '1001' , 76);
insert into score values('1005' , '1002' , 87);
insert into score values('1006' , '1001' , 31);
insert into score values('1006' , '1003' , 34);
insert into score values('1007' , '1002' , 89);
insert into score values('1007' , '1003' , 98);
