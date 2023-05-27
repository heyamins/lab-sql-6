drop table if exists films_2020;
CREATE TABLE `films_2020` (
  `film_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `release_year` year(4) DEFAULT NULL,
  `language_id` tinyint(3) DEFAULT NULL,
  `original_language_id` tinyint(3) unsigned DEFAULT NULL,
  `rental_duration` char(20),
  `rental_rate` char(20),
  `length` smallint(5) unsigned DEFAULT NULL,
  `replacement_cost` char(20) DEFAULT NULL,
  `rating` enum('G','PG','PG-13','R','NC-17') DEFAULT NULL,
  PRIMARY KEY (`film_id`),
  CONSTRAINT FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

select * from films_2020;

insert into films_2020 (rental_duration, rental_rate, replacement_cost) 
select ('3','2.99€','8.99€')
from films_2020
where language_id=1;

-- cleaning tables to default mode.
delete from films_2020
where film_id > 1000;