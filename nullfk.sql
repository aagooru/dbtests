DROP DATABASE FOOBAR;
CREATE DATABASE IF NOT EXISTS FOOBAR;
USE FOOBAR;

CREATE TABLE `resource` (
  `resource_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `question` (
  `question_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `collection_item` (
  `collection_item_id` bigint(20) unsigned NOT NULL,
  `resource_id` bigint(20) unsigned NULL,
  `question_id` bigint(20) unsigned NULL,
  CONSTRAINT `collection_item_resource_fk` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`resource_id`),
  CONSTRAINT `collection_item_question_fk` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `resource` VALUES (1);
INSERT INTO `resource` VALUES (2);

INSERT INTO `question` VALUES (1);
INSERT INTO `question` VALUES (2);

INSERT INTO `collection_item` VALUES(1, NULL, 1);
INSERT INTO `collection_item` VALUES(2, 1, NULL); 

INSERT INTO `collection_item` VALUES(3, NULL, 2);
INSERT INTO `collection_item` VALUES(4, 2, NULL); 

SELECT * FROM `collection_item`;

