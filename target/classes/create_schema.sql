USE petease;

#DROP TABLE user;

CREATE TABLE user
(
user_id varchar(40) NOT NULL,
password varchar(20) NOT NULL,
auth_type char(2) NOT NULL,
first_name varchar(40) NOT NULL,
last_name varchar(40) NOT NULL,
gender char(2) NOT NULL,
DOB date,
address varchar(100),
city varchar(40),
state varchar(2),
prefer_pets varchar(50),
feeding_pets boolean,
pey_name varchar(40),
career char(2),
created_date  datetime NOT NULL,
deleted_date datetime,
CONSTRAINT pk_user_user_id PRIMARY KEY (user_id)
);
#Alter table User;

#DROP TABLE post;

CREATE TABLE post
(
post_id bigint NOT NULL AUTO_INCREMENT,
user_id varchar(40) NOT NULL,
topic varchar(100) NOT NULL,
content longtext NOT NULL,
pic_url varchar(900),
created_date  datetime NOT NULL,
reported boolean,
date_reported datetime,
comment_admin tinytext,
status char(2),
deleted_date datetime,
CONSTRAINT pk_post_post_id PRIMARY KEY (post_id)
);
#ALTER TABLE post
#ADD CONSTRAINT fk_post_user_user_id FOREIGN KEY (user_id) REFERENCES user(user_id);

##DROP TABLE post_status;

CREATE TABLE post_status
(
status_id bigint NOT NULL AUTO_INCREMENT,
post_id bigint NOT NULL,
rate tinyint NOT NULL,
view_count int,
comments_count int,
CONSTRAINT pk_post_status_status_id PRIMARY KEY (status_id)
);
#ALTER TABLE post_status 
#ADD CONSTRAINT fk_post_status_post_post_id FOREIGN KEY (post_id) REFERENCES post(post_id);


#DROP TABLE qa;

CREATE TABLE qa
(
qa_id int NOT NULL AUTO_INCREMENT,
user_id varchar(40) NOT NULL,
question_title varchar(100) NOT NULL,
q_content text NOT NULL,
a_content text,
server_id varchar(40),
CONSTRAINT pk_qa_qa_id PRIMARY KEY (qa_id)
);
#ALTER TABLE qa 
#ADD CONSTRAINT fk_qa_user_user_id FOREIGN KEY (user_id) REFERENCES user(user_id);
#ALTER TABLE qa 
#ADD CONSTRAINT fk_qa_user_server_id FOREIGN KEY (server_id) REFERENCES user(user_id);


#DROP TABLE rate;

CREATE TABLE rate
(
rate_id bigint NOT NULL AUTO_INCREMENT,
user_id varchar(40) NOT NULL,
post_id bigint NOT NULL,
rate tinyint NOT NULL,
CONSTRAINT pk_rate_rate_id PRIMARY KEY (rate_id)
);
#ALTER TABLE rate
#ADD CONSTRAINT fk_rate_user_user_id FOREIGN KEY (user_id) REFERENCES user(user_id);
#ALTER TABLE rate
#ADD CONSTRAINT fk_rate_post_post_id FOREIGN KEY (post_id) REFERENCES post(post_id);


#DROP TABLE comment;

CREATE TABLE comment
(
comment_id bigint NOT NULL AUTO_INCREMENT,
user_id varchar(40) NOT NULL,
post_id bigint NOT NULL,
comment tinytext NOT NULL,
create_date datetime NOT NULL,
delete_date datetime,
status char(2),
CONSTRAINT pk_comment_comment_id PRIMARY KEY (comment_id)
);
#ALTER TABLE comment
#ADD CONSTRAINT fk_comment_user_user_id FOREIGN KEY (user_id) REFERENCES user(user_id);
#ALTER TABLE comment
#ADD CONSTRAINT fk_comment_post_post_id FOREIGN KEY (post_id) REFERENCES post(post_id);

#DROP TABLE news;

CREATE TABLE news
(
news_id bigint NOT NULL AUTO_INCREMENT,
admin_id varchar(40) NOT NULL,
news_title varchar(255) NOT NULL,
content longtext NOT NULL,
pic_url varchar(900),
created_date datetime NOT NULL,
delated_date datetime,
CONSTRAINT pk_news_news_id PRIMARY KEY (news_id)
);
#ALTER TABLE news
#ADD CONSTRAINT fk_news_user_user_id FOREIGN KEY (admin_id) REFERENCES user(user_id);
