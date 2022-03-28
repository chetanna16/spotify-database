-- create tables
use it330mc_FA21_cne20;
drop table if exists listenings;
drop table if exists songs;
drop table if exists artists;
drop table if exists categories;
drop table if exists users;
create table songs (
	songID int not null auto_increment primary key,
	songTitle varchar(255),
	songLength time default null,
	songReleaseYear int,
    categoryID int not null,
    artistID int not null,
	lastUpdatedDate timestamp not null default 
	current_timestamp() on update current_timestamp()
)	engine=innodb;

create table listenings(
	listeningID int not null auto_increment primary key,
	listeningStartTime datetime default null,
	listeningEndTime datetime default null,
    userID int not null,
    songID int not null,
	lastUpdatedDate timestamp not null default 
	current_timestamp() on update current_timestamp()
)	engine=innodb;

create table artists(
	artistID int not null primary key auto_increment,
	artistName varchar(255),
	lastUpdatedDate timestamp not null default 
	current_timestamp() on update current_timestamp()
)	engine=innodb;

create table categories(
	categoryID int not null primary key auto_increment,
	categoryName varchar(255),
	lastUpdatedDate timestamp not null default 
	current_timestamp() on update current_timestamp()
)	engine=innodb;
create table users(
	userID int not null primary key auto_increment,
	username varchar(255),
	lastUpdatedDate timestamp not null default 
	current_timestamp() on update current_timestamp()
)	engine=innodb;

-- add foreign key relationships and constraints
alter table songs
add foreign key (categoryID) references categories(categoryID)
on delete cascade;

alter table songs
add foreign key (artistID) references artists(artistID)
on delete cascade;

alter table listenings
add foreign key (userID) references  users(userID)
on delete cascade;
alter table listenings
add foreign key (songID) references songs(songID) 
on delete cascade;

-- add constraints to fk relationships

        
