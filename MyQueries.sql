-- Create table sub_forum

CREATE TABLE `nature_nest_portal`.`sub_forum` ( `sfid` INT NOT NULL AUTO_INCREMENT , `title` VARCHAR(255) NOT NULL , `description` TEXT NOT NULL , `isStoringPosts` BOOLEAN NOT NULL , `Parent_sfid` INT NOT NULL , PRIMARY KEY (`sfid`)) ENGINE = InnoDB;

-- index sub_forum by parent_sfid
ALTER TABLE `sub_forum` ADD INDEX( `Parent_sfid`);

-- Add Foreign key constraint for sub forum
ALTER TABLE `sub_forum` ADD CONSTRAINT `fk_subforum_parent` FOREIGN KEY (`Parent_sfid`) REFERENCES `sub_forum`(`sfid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Create table post
CREATE TABLE `nature_nest_portal`.`post` ( `post_id` INT NOT NULL AUTO_INCREMENT , `title` VARCHAR(255) NOT NULL , `date` DATE NOT NULL , `time` TIME NOT NULL , `message` TEXT NOT NULL , `no_replies` INT NOT NULL , `no_views` INT NOT NULL , `parent_post_id` INT NOT NULL , `user_id` INT NOT NULL , PRIMARY KEY (`post_id`)) ENGINE = InnoDB;

-- index post by parent_post_id and user_id
ALTER TABLE `post` ADD INDEX( `parent_post_id`, `user_id`);

-- Create Foriegn key constraint for post
ALTER TABLE `post` ADD CONSTRAINT `fk_post_parent` FOREIGN KEY (`parent_post_id`) REFERENCES `post`(`post_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Create Foriegn key constraint for user
ALTER TABLE `post` ADD CONSTRAINT `fk_post_user` FOREIGN KEY (`user_id`) REFERENCES `user`(`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
