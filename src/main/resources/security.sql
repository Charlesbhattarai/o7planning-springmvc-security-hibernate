-- Create table
create table USERS
(
 USERNAME VARCHAR2(36) not null,
 PASSWORD VARCHAR2(36) not null,
 ENABLED  NUMBER(1) not null
) ;
 
alter table USERS
 add constraint USER_PK primary key (USERNAME);
 
---------------------
 
-- Create table
create table USER_ROLES
(
 ROLE_ID   VARCHAR2(50) not null,
 USERNAME  VARCHAR2(36) not null,
 USER_ROLE VARCHAR2(30) not null
) ;
 
alter table USER_ROLES add constraint USER_ROLE_PK primary key (ROLE_ID);

alter table USER_ROLES add constraint USER_ROLE_UK unique (USERNAME, USER_ROLE);

INSERT INTO "TEO"."USERS" (USERNAME, PASSWORD, ENABLE) VALUES ('dbuser1', '12345', '1');
INSERT INTO "TEO"."USERS" (USERNAME, PASSWORD, ENABLE) VALUES ('dbadmin1', '12345', '1');
INSERT INTO "TEO"."USER_ROLES" (ROLE_ID, USERNAME, USER_ROLE) VALUES ('1', 'dbuser1', 'USER');
INSERT INTO "TEO"."USER_ROLES" (ROLE_ID, USERNAME, USER_ROLE) VALUES ('2', 'dbadmin1', 'ADMIN');
INSERT INTO "TEO"."USER_ROLES" (ROLE_ID, USERNAME, USER_ROLE) VALUES ('3', 'dbadmin1', 'USER');
