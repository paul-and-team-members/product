SET NAMES UTF8;
DROP DATABASE IF EXISTS the_dog_world;
CREATE DATABASE the_dog_world CHARSET UTF8;
USE the_dog_world;
CREATE TABLE userlist(
  uid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(32),
  upwd VARCHAR(16),
  email VARCHAR(64),
  phone CHAR(11) NOT NULL UNIQUE, #手机号码
  avatar VARCHAR(128),            #头像图片路径
  gender INT #0-女,1-男	
)
INSERT INTO userlist VALUES(NULL,"tom",md5('123456'),"tom@qq.com",18111111111,"tom.jpg",1);
INSERT INTO userlist VALUES(NULL,"jerry",md5('123456'),"jerry@qq.com",18111111112,"jerry.jpg",1);

CREATE TABLE blogs(
  send_time BIGINT,               #发送时间
  read_count INT,                 #阅读量
  blogs_content VARCHAR(1000),    #博客内容
  blogs_comment VARCHAR(200)      #博客评论		 
)
