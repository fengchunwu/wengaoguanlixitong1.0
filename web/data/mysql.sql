CREATE TABLE `tabel_usersinfo` (
  `username` varchar(200) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `sex` varchar(1000) DEFAULT NULL,
  `birthday` varchar(1000) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `phone` varchar(1000) DEFAULT NULL,
  `referrer` varchar(1000) DEFAULT NULL,
  `branch` varchar(1000) DEFAULT NULL,
  `community` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `table_users1` (
`ID` int(255) NOT NULL AUTO_INCREMENT,
`username` varchar(200) DEFAULT NULL,
`password` varchar(1000) DEFAULT NULL,
`status` varchar(1000) DEFAULT NULL,
`privilege` varchar(1000) DEFAULT NULL, PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFALUT CHARSET=utf8;