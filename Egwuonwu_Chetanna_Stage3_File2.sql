use it330mc_FA21_cne20;  
delete from listenings;  
delete from songs;
delete from artists;
delete from categories;
delete from users;

insert into users (username,lastUpdatedDate)  
	values 
		('cheire',current_timestamp()),
		('player345',current_timestamp()),
		('derrickwhy',current_timestamp()),
		('rocks45',current_timestamp()),
		('rei222',current_timestamp()),
		('chee333',current_timestamp()),
		('megatron',current_timestamp()),
		('jumbowiz',current_timestamp()),
		('lanadel344',current_timestamp()),
		('adelefan2',current_timestamp());
insert into categories(categoryName,lastUpdatedDate)  
	values
		('rock',current_timestamp()),
		('indie',current_timestamp()),
		('pop',current_timestamp()),
		('blues',current_timestamp()),
		('gospel',current_timestamp()),
		('rap',current_timestamp()),
		('rnb',current_timestamp()),
		('kpop',current_timestamp()),
		('alt',current_timestamp()),
		('heavy metal',current_timestamp());
    
insert into artists(artistName,lastUpdatedDate)  
values
	('john lennon',current_timestamp()),
	('chris tomlin',current_timestamp()),
    ('hyukoh',current_timestamp()),
	('hillsong',current_timestamp()),
	('jorja smith',current_timestamp()),
	('fka twigs',current_timestamp()),
	('sza',current_timestamp()),
	('clairo',current_timestamp()),
	('gray',current_timestamp()),
	('anita hui',current_timestamp());
    
    insert into songs(songTitle,songLength,songReleaseYear, categoryID, artistID, lastUpdatedDate)  
	values
		('addicted', '00:03:22', 2021,7,5, current_timestamp()),
		('here comes the sun', '00:03:05', 1969,3,1, current_timestamp()),
		('good good father', '00:04:41', 2016, 5, 2, current_timestamp()),
		('jesus lived in a motel room', '00:05:05', 2017, 1, 3, current_timestamp()),
		('joy to the world', '00:03:47', 2005, 5, 4, current_timestamp()),
		('two weeks', '00:04:15', 2014, 6, 6, current_timestamp()),
		('supermodel', '00:03:10', 2017, 7, 7, current_timestamp()),
		('sofia', '00:03:09', 2019, 2, 8, current_timestamp()),
		('late night', '00:03:31', 2018,8,9, current_timestamp()),
		('nu ren hua', '00:04:47',1997, 3, 10, current_timestamp());
        insert into listenings(listeningStartTime,listeningEndTime, userID, songID, lastUpdatedDate)  
	values
		('2021-06-19 02:03:00', '2021-06-19 02:07:03', 1,2, current_timestamp()),
		('2021-07-18 20:04:00', '2021-07-18 20:44:00', 7,4, current_timestamp()),
        ('2021-08-29 15:05:00', '2021-08-29 15:08:30', 1,5, current_timestamp()),
        ('2021-09-19 00:06:00', '2021-09-19 00:59:05', 5,9, current_timestamp()),
        ('2021-10-19 08:07:00', '2021-10-19 08:37:00', 3,8, current_timestamp()),
        ('2021-11-30 10:08:00', '2021-11-30 10:58:10', 1,10, current_timestamp()),
        ('2021-12-01 13:09:00', '2021-12-01 13:19:03', 2,7, current_timestamp()),
        ('2021-12-01 13:09:00', '2021-12-01 13:29:20', 6,3, current_timestamp()),
        ('2021-12-07 17:10:00', '2021-12-07 17:30:40', 1,2, current_timestamp()),
        ('2021-12-11 21:01:00', '2021-12-11 21:41:25', 10,1, current_timestamp());
        


    select * from artists; 
    select * from users;
    select * from categories;
    select * from songs;
    select* from listenings;
    