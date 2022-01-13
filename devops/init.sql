CREATE DATABASE IF NOT EXISTS confluence CHARACTER SET utf8 COLLATE utf8_bin;
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER,INDEX,REFERENCES on confluence.* TO 'confluence'@'%' IDENTIFIED BY 'devOps12121212';
flush privileges;
CREATE DATABASE IF NOT EXISTS jira CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER,INDEX,REFERENCES on jira.* TO 'jira'@'%' IDENTIFIED BY 'devOps12121212';
flush privileges;