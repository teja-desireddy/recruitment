CREATE TABLE Technologies (
    techID int NOT NULL AUTO_INCREMENT,
    techName varchar(255) NOT NULL,
    PRIMARY KEY (techID)
);

INSERT INTO `recruitment`.`technologies` (`techName`) VALUES ('Java');
INSERT INTO `recruitment`.`technologies` (`techName`) VALUES ('SQL');
INSERT INTO `recruitment`.`technologies` (`techName`) VALUES ('.Net');
INSERT INTO `recruitment`.`technologies` (`techName`) VALUES ('Spring');
INSERT INTO `recruitment`.`technologies` (`techName`) VALUES ('Angular');
INSERT INTO `recruitment`.`technologies` (`techName`) VALUES ('MongoDB');

