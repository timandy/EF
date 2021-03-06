CREATE TABLE `courses`(
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`name` TEXT(65535) NULL,
	`teacher_id` INT(10) NULL,
	PRIMARY KEY (`id`)
) ENGINE=INNODB;

#END OF TABLE

CREATE TABLE `persons`(
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`isteacher` CHAR(1) NULL,
	`name` TEXT(65535) NULL,
	PRIMARY KEY (`id`)
) ENGINE=INNODB;

#END OF TABLE

CREATE TABLE `locations`(
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`name` TEXT(65535) NULL,
	PRIMARY KEY (`id`)
) ENGINE=INNODB;

#END OF TABLE

CREATE TABLE `locations_persons`(
	`location_id` INT(10) NOT NULL,
	`person_id` INT(10) NOT NULL,
	FOREIGN KEY (`location_id`) REFERENCES `locations`(`id`) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (`person_id`) REFERENCES `persons`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB;

#END OF TABLE
ALTER TABLE `courses` ADD CONSTRAINT `teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `persons`(`id`);
#END OF TABLE
