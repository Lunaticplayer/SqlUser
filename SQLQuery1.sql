create table i_users(
  userId int primary key,
  username varchar(50),
  emailaddress varchar(50),
  isActive bit,
  password varchar(50),
  gender char(10)
);
create table i_user_login_logs(
  userId int,
  login_date date,
  primary key(userId, login_date),
  foreign key(userId) references i_users(userId)
);

insert into i_users values
(1,'Administrator','Admin@piworks.net','1','+0DwMILC1/jkwiFgFUQhArgq7Jcg8zaQ',' ')	;
insert into i_users values
(2,'Johnathan','Jonathan@gmail.com ','1','58i29OWBbPda+P/zCdvoJAT/JNBGCBbA ','M')	;
insert into i_users values
(3,'Rita','Rita@yahoo.com','1','ADYuhdya+rmEv5uOCvt4sgzqUqkFnqow','F')	;
insert into i_users values
(4,'Christopher','Christopher@hotmail.com','1','BjjiAgun94ZBcNPASyT8BNgb0f0v6b0Q','M')	;
insert into i_users values
(5,'Kenzo','Kenzo@gmail.com','1','HmqRFxe5LhYPF3ZdilondB0axx68uqln','M')	;
insert into i_users values
(6,'Brent','Brent@gmail.com','0','Tq4t1vkAHaw2vvqsECZZFntF5fWQXpSn','M')	;
insert into i_users values
(7,'Adrianna','Adrianna@hotmail.com','0','jQXWY7BKM9e1465wATXd6jBTYQ9Uzpni','F')	;
insert into i_users values
(8,'Faheem','Faheem@gmail.com','1','oSE6nh6o75CaxNDfnwA+QoTWv+7/DIDz','M')	;
insert into i_users values
(9,'Dimitri','Dimitri@gmail.com','0','rlqpHZ433jcq5TUI+rL9yl9Am4oASyM2','M')	;
insert into i_users values
(10,'Fred','Fred@gmail.com','1','wpkvCDoiBvBbPUoPLwd/YUcD3HE+uz+W','M')	;
insert into i_users values
(11,'Lily','Lily@yahoo.com','1','7ewsYvMKZpyBP+RBPUS6+j0zXixz7nYS','F')	;

insert into i_user_login_logs(userId,login_date) values
(1,'2016-02-10');
insert into i_user_login_logs(userId,login_date) values
(1,'2016-02-25');
insert into i_user_login_logs(userId,login_date) values
(3,'2016-03-18');
insert into i_user_login_logs(userId,login_date) values
(2,'2016-06-26');
insert into i_user_login_logs(userId,login_date) values
(5,'2016-07-21');
insert into i_user_login_logs(userId,login_date) values
(7,'2016-08-4');
insert into i_user_login_logs(userId,login_date) values
(9,'2016-10-17');
insert into i_user_login_logs(userId,login_date) values
(5,'2016-10-26');
insert into i_user_login_logs(userId,login_date) values
(4,'2016-11-30');
insert into i_user_login_logs(userId,login_date) values
(2,'2017-01-24');




select top 1 with ties emailaddress,username ,count(*) as login_attemps from 
i_user_login_logs join i_users on i_user_login_logs.userId = i_users.userId
where i_users.userId > 1
group by emailaddress,username
order by login_attemps desc 



























