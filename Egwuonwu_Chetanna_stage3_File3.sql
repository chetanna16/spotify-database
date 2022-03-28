-- Use statement for your group's database 

use it330mc_FA21_cne20;

-- Generate SQL to "Add a Song Category". Provide example data.
insert into categories (categoryName, lastUpdatedDate)
values
	('indie rock', current_timestamp());
    
-- Generate SQL to "Delete a Song Category". Provide example data. Cannot be the Category you added in the prior step
delete from 
	categories
where 
	categoryName = 'heavy metal';
    
-- Generate SQL to "Add A Song". Provide example data.
insert into songs(songTitle,songLength,songReleaseYear, categoryID, artistID, lastUpdatedDate)  
	values
		('february 3rd', '00:04:03', 2018,7,5, current_timestamp());
-- Generate SQL to "Delete A Song". Provide example data. Cannot be the Song you added in the prior step
delete from 
	songs
where
	songTitle = 'addicted';
-- Generate SQL to "Produce searchable Song directory (search all characteristics). Display all characteristics per Song in output. Sort ascending by Song Name.". Provide example data.
select 
	*
from
	songs
order by
	songTitle asc;
    
-- Generate SQL to "Add a Song Listening entry". Provide example data.
  insert into listenings(listeningStartTime,listeningEndTime, userID, songID, lastUpdatedDate)  
	values
		('2021-12-11 02:03:00', '2021-12-11 02:07:03', 1,2, current_timestamp());
        
-- Generate SQL to "Delete a Song Listening entry". Provide example data. Cannot be the listening entry from the prior step
delete from
	listenings
where 
	listeningStartTime = '2021-07-18 20:04:00';
-- Generate SQL to "Produce listening statement between two times of day (if the listening starts between these times).
select 
	*
from
	listenings
where 
	listeningStartTime between cast('2021-07-18 19:00:00' as datetime) and cast('2021-07-18 20:00:00' as datetime);
    

-- Show all listening characteristics in output. 
describe listenings;
 
-- Sort by date and time. 
select
	*
from
	listenings
order by
	listeningStartTime;
    
-- Calculate the total length of time for listening.
 select 
	sum(time_to_sec(datediff(listeningEndTime,listeningStartTime)))
 as 
	totalTime
from 
	listenings;
-- Generate SQL to Produce a Category report.
select 
	*
from
	categories;

-- Show: Category, Number of songs per Category, Total length of time per Category
select
	categories.categoryName as category,
    count(*) as songs,
    sum(time_to_sec(datediff(listenings.listeningEndTime,listenings.listeningStartTime))) as totalTime
from
    categories
inner join
	songs 
on 
	categories.categoryID= songs.categoryID
inner join
	listenings
on
	songs.songID = listenings.songID
group by
	categories.categoryID;

    
    
    