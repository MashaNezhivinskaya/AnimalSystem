CREATE TABLE ANIMAL_OWNERS (ID int(10) NOT NULL AUTO_INCREMENT, AN_OWN_FIRSTNAME varchar(50) NOT NULL, AN_OWN_LASTNAME varchar(50) NOT NULL, AN_OWN_MIDDLENAME varchar(50) NOT NULL, AN_OWN_EMAIL varchar(50), AN_OWN_HOME_TYPE varchar(20), AN_OWN_INN int(16), AN_OWN_IS_FIZ tinyint(1) NOT NULL, PRIMARY KEY (ID));
CREATE TABLE ANIMALS (ID int(11) NOT NULL AUTO_INCREMENT, ANIMAL_NAME varchar(40) NOT NULL, ANIMAL_JOTTON_NUMBER varchar(10), ANIMAL_SEX tinyint(1) NOT NULL, ANIMAL_HEIGHT int(10), ANIMAL_CHIP int(12), ANIMAL_IS_STERILIZATION tinyint(1) NOT NULL, ANIMAL_NOTE varbinary(2000), ANIMAL_DATE_BIRTHDAY year, ANIMAL_IMAGE_FK int(10) NOT NULL, PRIMARY KEY (ID));
CREATE TABLE BREED (iD int(10) NOT NULL AUTO_INCREMENT, BR_NAME varchar(30) NOT NULL, BR_NODE varbinary(2000), KIND_ANM_FK int(10) NOT NULL, PRIMARY KEY (iD));
CREATE TABLE COLOURS (ID int(10) NOT NULL AUTO_INCREMENT, COL_NAME varchar(30) NOT NULL, COL_NODE varbinary(2000), KIND_ANM_FK int(10) NOT NULL, PRIMARY KEY (ID));
CREATE TABLE IMAGES (ID int(10) NOT NULL AUTO_INCREMENT, IMAGE_BYTE blob NOT NULL, PRIMARY KEY (ID));
CREATE TABLE KIND_ANIMALS (ID int(10) NOT NULL AUTO_INCREMENT, KIND_ANIM_NAME varchar(30) NOT NULL, KIND_ANM_ANIMAL_FK int(11) NOT NULL, PRIMARY KEY (ID));
CREATE TABLE PHONES (ID int(10) NOT NULL AUTO_INCREMENT, PHONE_TYPE varchar(20) NOT NULL, PHONE_NUMBER int(20) NOT NULL, AN_OWN_PHONE_FK int(10) NOT NULL, PRIMARY KEY (ID));
CREATE TABLE REGISTRATIONS (ID int(10) NOT NULL AUTO_INCREMENT, REGIS_DATE datetime NOT NULL, REGIS_NUMBER int(10), REGIS_DELETE_DATE datetime NULL, REGIST_ANIM_FK int(11) NOT NULL, REGIST_ANIM_OWN_FK int(10) NOT NULL, PRIMARY KEY (ID));
ALTER TABLE REGISTRATIONS ADD INDEX FKREGISTRATI461401 (REGIST_ANIM_OWN_FK), ADD CONSTRAINT FKREGISTRATI461401 FOREIGN KEY (REGIST_ANIM_OWN_FK) REFERENCES ANIMAL_OWNERS (ID);
ALTER TABLE REGISTRATIONS ADD INDEX FKREGISTRATI940759 (REGIST_ANIM_FK), ADD CONSTRAINT FKREGISTRATI940759 FOREIGN KEY (REGIST_ANIM_FK) REFERENCES ANIMALS (ID);
ALTER TABLE COLOURS ADD INDEX FKCOLOURS997723 (KIND_ANM_FK), ADD CONSTRAINT FKCOLOURS997723 FOREIGN KEY (KIND_ANM_FK) REFERENCES KIND_ANIMALS (ID);
ALTER TABLE BREED ADD INDEX FKBREED903219 (KIND_ANM_FK), ADD CONSTRAINT FKBREED903219 FOREIGN KEY (KIND_ANM_FK) REFERENCES KIND_ANIMALS (ID);
ALTER TABLE KIND_ANIMALS ADD INDEX FKKIND_ANIMA284244 (KIND_ANM_ANIMAL_FK), ADD CONSTRAINT FKKIND_ANIMA284244 FOREIGN KEY (KIND_ANM_ANIMAL_FK) REFERENCES ANIMALS (ID);
ALTER TABLE ANIMALS ADD INDEX FKANIMALS573282 (ANIMAL_IMAGE_FK), ADD CONSTRAINT FKANIMALS573282 FOREIGN KEY (ANIMAL_IMAGE_FK) REFERENCES IMAGES (ID);
ALTER TABLE PHONES ADD INDEX FKPHONES724105 (AN_OWN_PHONE_FK), ADD CONSTRAINT FKPHONES724105 FOREIGN KEY (AN_OWN_PHONE_FK) REFERENCES ANIMAL_OWNERS (ID);

