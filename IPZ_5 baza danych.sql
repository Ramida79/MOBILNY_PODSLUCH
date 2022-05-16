CREATE TABLE `device` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `measurement` integer
);

CREATE TABLE `measurement` (
  `id_measurement` integer PRIMARY KEY AUTO_INCREMENT,
  `device_id` integer,
  `state` boolean,
  `time0` timestamp,
  `time1` timestamp
);

ALTER TABLE `measurement` ADD FOREIGN KEY (`device_id`) REFERENCES `device` (`id`);
