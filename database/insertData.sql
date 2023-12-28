-- -----------------------------------------------------
-- Table pauliceia_user
-- -----------------------------------------------------
-- clean user table
DELETE FROM pauliceia_user;

-- add users
-- PS: the passwords are in sha512 hash

-- password - admin
INSERT INTO pauliceia_user (user_id, username, email, password, name, created_at, is_email_valid, terms_agreed, login_date, is_the_admin, receive_notification_by_email, picture, social_id, social_account)
VALUES (1001, 'admin', 'admin@admin.com', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec',
'Administrator', '2017-01-01', TRUE, TRUE, '2017-01-01', TRUE, TRUE, '', '', '');

-- password - rodrigo
INSERT INTO pauliceia_user (user_id, username, email, password, name, created_at, is_email_valid, terms_agreed, login_date, is_the_admin, receive_notification_by_email, picture, social_id, social_account)
VALUES (1002, 'rodrigo', 'rodrigo@admin.com', '3ad7e557497e106756c44b7f3f401fd3f28f84c3c9ad989157868d03686f683f82d5cde1a096c4bbdbd76287e96e9a04d9f0ce8726b945c95f01b18361088a0d',
'Rodrigo', '2017-03-03', TRUE, TRUE, '2017-03-03', TRUE, TRUE, '', '', '');

-- password - miguel
INSERT INTO pauliceia_user (user_id, username, email, password, name, created_at, is_email_valid, terms_agreed, login_date, is_the_admin, receive_notification_by_email, picture, social_id, social_account)
VALUES (1003, 'miguel', 'miguel@admin.com', 'e1fc7a4313def98ae5303b0448c89d9a5126f3239608950859f3ea6fdeb8b19f6f7c103ecf97700be851cfbf8cda756c0929498021c675c643809eeeb4ebcbda',
'Miguel', '2017-05-08', TRUE, TRUE, '2017-05-08', FALSE, TRUE, '', '', '');

-- password - rafael
INSERT INTO pauliceia_user (user_id, username, email, password, name, created_at, is_email_valid, terms_agreed, login_date, is_the_admin, receive_notification_by_email, picture, social_id, social_account)
VALUES (1004, 'rafael', 'rafael@admin.com', 'c5663337df01fe3ab80478e78963534956a7e5446d72b16db9f33a36c787954414fea6de37a02d5f32ac2fe18f010068688d707e6dd260ca1f0a255f6d2f1959',
'Rafael', '2017-06-09', TRUE, FALSE, '2017-06-09', FALSE, TRUE, '', '', '');

-- password - gabriel
INSERT INTO pauliceia_user (user_id, username, email, password, name, created_at, is_email_valid, terms_agreed, login_date, is_the_admin, receive_notification_by_email, picture, social_id, social_account)
VALUES (1005, 'gabriel', 'gabriel@admin.com', '5dbe7d079067809bb06f7c80de78ecb9d914f5735265148cd704f85353fc0b5114ebbfc960539cd3f430e7b12eb3fdc261726bb756bab9658c6db6a302913df1',
'Gabriel', '2017-09-20', FALSE, FALSE, '2017-09-20', FALSE, TRUE, '', '', '');

-- password - fernanda
INSERT INTO pauliceia_user (user_id, username, email, password, created_at, is_email_valid, terms_agreed, login_date, is_the_admin, receive_notification_by_email, picture, social_id, social_account)
VALUES (1006, 'fernanda', 'fernanda@admin.com', '50f7e79988a894dd83f61370afbf3882a80ab4215f0be088fd1197b43abb24641d2711d0ada4cdf71c29718d549a9f90f82b2a0c9e1cd4adf28c0eb79816d862',
'2017-01-19', TRUE, FALSE, '2017-01-19', FALSE, TRUE, '', '', '');

-- password - ana
INSERT INTO pauliceia_user (user_id, username, email, password, created_at, is_email_valid, terms_agreed, login_date, is_the_admin, receive_notification_by_email, picture, social_id, social_account)
VALUES (1007, 'ana', 'ana@admin.com', '40c41475561375aa28d4d035445525f0e8f6bfaba1fdb4bc0c30dec2de112d7c7df168bdced38b4d87326b4c3f226c2ba1a09f4384451b0bc5f9c108c1c1df32',
'2017-01-18', TRUE, TRUE, '2017-01-18', FALSE, FALSE, '', '', '');

-- password - bea
INSERT INTO pauliceia_user (user_id, username, email, password, created_at, is_email_valid, terms_agreed, login_date, is_the_admin, receive_notification_by_email, picture, social_id, social_account)
VALUES (1008, 'bea', 'bea@admin.com', '8f685cd8902159de33414b04d8cb93e9c5f49ddec285cf6f5d61dc425d6e0b0b5328d775320a36f3655e339fceb009ad834a3e28fcc5641eccc0c6b107dc2793',
'2017-01-30', FALSE, FALSE, '2017-01-30', FALSE, FALSE, '', '', '');


-- SELECT name FROM pauliceia_user;
-- SELECT name FROM pauliceia_user WHERE unaccent(LOWER(name)) LIKE '%' || unaccent(LOWER('êL')) || '%';



-- -----------------------------------------------------
-- Table temporal_columns
-- -----------------------------------------------------
-- clean table
DELETE FROM mask;

INSERT INTO mask (mask_id, mask) VALUES (1001, 'YYYY-MM-DD');
INSERT INTO mask (mask_id, mask) VALUES (1002, 'YYYY-MM');
INSERT INTO mask (mask_id, mask) VALUES (1003, 'YYYY');



-- -----------------------------------------------------
-- Table temporal_columns
-- -----------------------------------------------------
-- clean table
DELETE FROM temporal_columns;



-- -----------------------------------------------------
-- Table keyword
-- -----------------------------------------------------
-- clean table
DELETE FROM keyword;

INSERT INTO keyword (keyword_id, name, user_id_creator, created_at) VALUES (1001, 'generic', 1001, '2017-01-01');
INSERT INTO keyword (keyword_id, name, user_id_creator, created_at) VALUES (1002, 'event', 1001, '2017-01-01');
INSERT INTO keyword (keyword_id, name, user_id_creator, created_at) VALUES (1003, 'crime', 1002, '2017-01-01');
INSERT INTO keyword (keyword_id, name, user_id_creator, created_at) VALUES (1004, 'assault', 1002, '2017-01-01');
INSERT INTO keyword (keyword_id, name, user_id_creator, created_at) VALUES (1005, 'robbery', 1002, '2017-01-01');
INSERT INTO keyword (keyword_id, name, user_id_creator, created_at) VALUES (1010, 'disease', 1001, '2017-01-01');
INSERT INTO keyword (keyword_id, name, user_id_creator, created_at) VALUES (1020, 'object', 1001, '2017-01-01');
INSERT INTO keyword (keyword_id, name, user_id_creator, created_at) VALUES (1021, 'building', 1003, '2017-01-01');
INSERT INTO keyword (keyword_id, name, user_id_creator, created_at) VALUES (1022, 'school', 1003, '2017-01-01');
INSERT INTO keyword (keyword_id, name, user_id_creator, created_at) VALUES (1023, 'hospital', 1003, '2017-01-01');
INSERT INTO keyword (keyword_id, name, user_id_creator, created_at) VALUES (1030, 'cultural place', 1003, '2017-01-01');
INSERT INTO keyword (keyword_id, name, user_id_creator, created_at) VALUES (1031, 'cinema', 1001, '2017-01-01');
INSERT INTO keyword (keyword_id, name, user_id_creator, created_at) VALUES (1040, 'street', 1001, '2017-01-01');
INSERT INTO keyword (keyword_id, name, user_id_creator, created_at) VALUES (1041, 'address', 1001, '2017-01-01');



-- -----------------------------------------------------
-- Table curator
-- -----------------------------------------------------
-- clean table
DELETE FROM curator;

INSERT INTO curator (user_id, keyword_id, region, created_at) VALUES (1001, 1001, 'amaro', '2018-01-01');
INSERT INTO curator (user_id, keyword_id, region, created_at) VALUES (1001, 1002, 'azure', '2018-01-10');
INSERT INTO curator (user_id, keyword_id, region, created_at) VALUES (1002, 1002, 'belondres', '2018-01-10');
INSERT INTO curator (user_id, keyword_id, region, created_at) VALUES (1003, 1010, 'jorge', '2018-02-22');
INSERT INTO curator (user_id, keyword_id, region, created_at) VALUES (1003, 1020, 'centro', '2018-01-15');
INSERT INTO curator (user_id, keyword_id, region, created_at) VALUES (1004, 1003, 'são francisco', '2018-02-20');
INSERT INTO curator (user_id, keyword_id, region, created_at) VALUES (1005, 1010, 'são bento', '2018-02-22');
INSERT INTO curator (user_id, keyword_id, region, created_at) VALUES (1006, 1021, 'avenida rodônia', '2018-03-24');



-- -----------------------------------------------------
-- Table layer_keyword
-- -----------------------------------------------------
-- clean table
DELETE FROM layer_keyword;


-- -----------------------------------------------------
-- Table reference
-- -----------------------------------------------------
-- clean table
DELETE FROM reference;

INSERT INTO reference (reference_id, description, user_id_creator) VALUES (1050, 'BookA', 1001);
INSERT INTO reference (reference_id, description, user_id_creator) VALUES (1051, 'ArticleB', 1002);
INSERT INTO reference (reference_id, description, user_id_creator) VALUES (1052, 'ThesisC', 1003);
INSERT INTO reference (reference_id, description, user_id_creator) VALUES (1053, 'DissertationD', 1003);


-- -----------------------------------------------------
-- Table changeset
-- -----------------------------------------------------
-- clean table
DELETE FROM changeset;



-- -----------------------------------------------------
-- Table user_layer
-- -----------------------------------------------------
-- clean table
DELETE FROM user_layer;


-- -----------------------------------------------------
-- Table user_layer
-- -----------------------------------------------------
-- clean table
DELETE FROM layer_reference;


-- -----------------------------------------------------
-- Table user_layer
-- -----------------------------------------------------
-- clean table
DELETE FROM layer_followers;


-- -----------------------------------------------------
-- Table user_layer
-- -----------------------------------------------------
-- clean table
DELETE FROM keyword_followers;


-- -----------------------------------------------------
-- Table layer
-- -----------------------------------------------------
-- clean table
DELETE FROM layer;


-- add layer 1001
INSERT INTO layer (layer_id, f_table_name, name, description, source_description, created_at) VALUES
(1001, 'layer_1001', 'Addresses in 1869', '', '', '2017-01-01');

-- add reference
INSERT INTO reference (reference_id, description, user_id_creator) VALUES (1001,
'@Misc{jorge2017book1,
author = {Jorge},
title = {Book1},
howpublished = {\url{http://www.link.org/}},
note = {Accessed on 01/01/2017},
year={2017}
}', 1001);
INSERT INTO layer_reference (layer_id, reference_id) VALUES (1001, 1001);

INSERT INTO reference (reference_id, description, user_id_creator) VALUES (1002,
'@Misc{ana2017article2,
author = {Ana},
title = {Article2},
howpublished = {\url{http://www.myhost.org/}},
note = {Accessed on 05/02/2017},
year={2017}
}', 1001);
INSERT INTO layer_reference (layer_id, reference_id) VALUES (1001, 1002);

-- add the keywords in layer
INSERT INTO layer_keyword (layer_id, keyword_id) VALUES (1001, 1001);
INSERT INTO layer_keyword (layer_id, keyword_id) VALUES (1001, 1041);

-- create a feature table to save the data
DROP TABLE IF EXISTS layer_1001 CASCADE ;
CREATE TABLE IF NOT EXISTS layer_1001 (
  id SERIAL,
  geom GEOMETRY(MULTIPOINT, 4326) NOT NULL,
  address TEXT,
  start_date TIMESTAMP,
  end_date TIMESTAMP,
  version INT NOT NULL DEFAULT 1,
  changeset_id INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT constraint_fk_changeset_id
    FOREIGN KEY (changeset_id)
    REFERENCES changeset (changeset_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

DROP TABLE IF EXISTS version_layer_1001 CASCADE ;
CREATE TABLE IF NOT EXISTS version_layer_1001 (
  id SERIAL,
  geom GEOMETRY(MULTIPOINT, 4326) NOT NULL,
  address TEXT,
  start_date TIMESTAMP,
  end_date TIMESTAMP,
  version INT NOT NULL DEFAULT 1,
  changeset_id INT NOT NULL,
  is_removed BOOLEAN NOT NULL DEFAULT FALSE,
  PRIMARY KEY (id, version),
  CONSTRAINT constraint_fk_changeset_id
    FOREIGN KEY (changeset_id)
    REFERENCES changeset (changeset_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- add temporal metadata
INSERT INTO temporal_columns (f_table_name, start_date_column_name, end_date_column_name, start_date, end_date, start_date_mask_id, end_date_mask_id) VALUES
('layer_1001', 'start_date', 'end_date', '1869-01-01', '1975-12-31', 1001, 1001);

-- add users in layers (the main user is added when the layer is created)
INSERT INTO user_layer (layer_id, user_id, created_at, is_the_creator) VALUES (1001, 1001, '2017-01-02', TRUE);
INSERT INTO user_layer (layer_id, user_id, created_at) VALUES (1001, 1002, '2017-01-03');


-- users can follow the layer
INSERT INTO layer_followers (layer_id, user_id, created_at) VALUES (1001, 1001, '2017-01-01');
INSERT INTO layer_followers (layer_id, user_id, created_at) VALUES (1001, 1002, '2017-01-05');
INSERT INTO layer_followers (layer_id, user_id, created_at) VALUES (1001, 1003, '2017-01-08');

-- create a changeset
INSERT INTO changeset (changeset_id, created_at, layer_id, user_id_creator) VALUES (1001, '2017-01-05', 1001, 1001);

-- insert the data into the layer
INSERT INTO layer_1001 (id, geom, address, start_date, end_date, changeset_id) VALUES
(1001, ST_GeomFromText('MULTIPOINT((-46.6375790530164 -23.5290461960682))', 4326), 'R. São José', '1869-01-01', '1869-12-31', 1001);
INSERT INTO layer_1001 (id, geom, address, start_date, end_date, changeset_id) VALUES
(1002, ST_GeomFromText('MULTIPOINT((-46.6498716962487 -23.5482894062877))', 4326), 'R. Marechal Deodoro', '1869-01-01', '1869-12-31', 1001);
-- add data as GeoJSON
INSERT INTO layer_1001 (id, geom, start_date, end_date, changeset_id)
VALUES (1003,
	ST_GeomFromGeoJSON(
		'{
		    "type":"MultiPoint",
		    "coordinates":[[-46.6468896156385, -23.5494865576549]],
		    "crs":{"type":"name","properties":{"name":"EPSG:4326"}}
		}'
	),
	'1875-01-01', '1875-12-31', 1001);

-- close the changeset
UPDATE changeset SET closed_at='2017-01-05', description='Creating layer_1001' WHERE changeset_id=1001;

-- create a open changeset
INSERT INTO changeset (changeset_id, description, created_at, layer_id, user_id_creator) VALUES (1011, 'An open changeset', '2017-01-08', 1001, 1001);

-- check if the layer has features and check if the changeset was created
/*
SELECT * FROM layer_1001;
SELECT * FROM version_layer_1001;
SELECT * FROM changeset WHERE id=1001;
*/



-- add layer 1002
INSERT INTO layer (layer_id, f_table_name, name, description, source_description, created_at) VALUES
(1002, 'layer_1002', 'Robberies between 1880 to 1900', '', '', '2017-03-05');

-- add reference
INSERT INTO reference (reference_id, description, user_id_creator) VALUES (1005,
'@Misc{marco2017articleB,
author = {Marco},
title = {ArticleB},
howpublished = {\url{http://www.link_to_document.org/}},
note = {Accessed on 02/02/2017},
year={2017}
}', 1001);
INSERT INTO layer_reference (layer_id, reference_id) VALUES (1002, 1005);

-- add the keywords in layer
INSERT INTO layer_keyword (layer_id, keyword_id) VALUES (1002, 1010);

-- create a feature table to save the data
--DROP TABLE IF EXISTS layer_1002 CASCADE ;
DROP TABLE IF EXISTS layer_1002 CASCADE ;
CREATE TABLE IF NOT EXISTS layer_1002 (
  id SERIAL,
  geom GEOMETRY(MULTIPOINT, 4326) NOT NULL,
  address TEXT,
  start_date TIMESTAMP,
  end_date TEXT,
  version INT NOT NULL DEFAULT 1,
  changeset_id INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT constraint_fk_changeset_id
    FOREIGN KEY (changeset_id)
    REFERENCES changeset (changeset_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

--DROP TABLE IF EXISTS version_layer_1002 CASCADE ;
DROP TABLE IF EXISTS version_layer_1002 CASCADE ;
CREATE TABLE IF NOT EXISTS version_layer_1002 (
  id SERIAL,
  geom GEOMETRY(MULTIPOINT, 4326) NOT NULL,
  address TEXT,
  start_date TIMESTAMP,
  end_date TEXT,
  version INT NOT NULL DEFAULT 1,
  changeset_id INT NOT NULL,
  is_removed BOOLEAN NOT NULL DEFAULT FALSE,
  PRIMARY KEY (id, version),
  CONSTRAINT constraint_fk_changeset_id
    FOREIGN KEY (changeset_id)
    REFERENCES changeset (changeset_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- add temporal metadata
INSERT INTO temporal_columns (f_table_name, start_date_column_name, end_date_column_name, start_date, end_date, start_date_mask_id, end_date_mask_id) VALUES
('layer_1002', 'start_date', 'end_date', '1886-01-01', '1890-12-31', 1001, 1001);

-- add users in layers (the main user is added when the layer is created)
INSERT INTO user_layer (layer_id, user_id, created_at, is_the_creator) VALUES (1002, 1001, '2017-03-05', TRUE);
INSERT INTO user_layer (layer_id, user_id, created_at) VALUES (1002, 1004, '2017-03-05');

-- users that follow the layer
INSERT INTO layer_followers (layer_id, user_id, created_at) VALUES (1002, 1001, '2017-01-02');
INSERT INTO layer_followers (layer_id, user_id, created_at) VALUES (1002, 1003, '2017-01-02');
INSERT INTO layer_followers (layer_id, user_id, created_at) VALUES (1002, 1005, '2017-01-02');

-- create a changeset
INSERT INTO changeset (changeset_id, created_at, layer_id, user_id_creator) VALUES (1002, '2017-03-05', 1002, 1004);

-- insert the data into the layer
INSERT INTO layer_1002 (id, geom, address, start_date, end_date, changeset_id) VALUES
(1006, ST_GeomFromText('MULTIPOINT((-46.6484982955712 -23.5492054322931))', 4326), 'R. 11 de Junho, 9 = D. José de Barros', '1886-02-03', '', 1002);
INSERT INTO layer_1002 (id, geom, address, start_date, end_date, changeset_id) VALUES
(1007, ST_GeomFromText('MULTIPOINT((-46.6526581134833 -23.5401195274321))', 4326), 'R. 15 de Novembro, 17A', '1890-03-04', '', 1002);
INSERT INTO layer_1002 (id, geom, address, start_date, end_date, changeset_id) VALUES
(1008, ST_GeomFromText('MULTIPOINT((-46.6466156443949 -23.5289798845685))', 4326), 'R. Barra Funda, 74', '1897-02-05', '', 1002);
-- add data as GeoJSON
INSERT INTO layer_1002 (id, geom, start_date, end_date, changeset_id)
VALUES (1009,
	ST_GeomFromGeoJSON(
		'{
		    "type":"MultiPoint",
		    "coordinates":[[-46.6531421851224, -23.5427759121502]],
		    "crs":{"type":"name","properties":{"name":"EPSG:4326"}}
		}'
	),
	'1897-12-10', '', 1002);

-- close the changeset
UPDATE changeset SET closed_at='2017-03-05', description='Creating layer_1002' WHERE changeset_id=1002;

-- create a open changeset
INSERT INTO changeset (changeset_id, description, created_at, layer_id, user_id_creator) VALUES (1014, 'An open changeset', '2017-01-08', 1002, 1004);

-- check if the layer has features and check if the changeset was created
/*
SELECT * FROM layer_1002;
SELECT * FROM version_layer_1002;
SELECT * FROM changeset WHERE id=1002;
*/



-- add layer_1003
INSERT INTO layer (layer_id, f_table_name, name, description, source_description, created_at) VALUES
(1003, 'layer_1003', 'Streets in 1930', '', '', '2017-04-10');

-- add reference
INSERT INTO reference (reference_id, description, user_id_creator) VALUES (1010,
'@Misc{marco2017articleC,
author = {Marco},
title = {ArticleC},
howpublished = {\url{http://www.link_to_document.org/}},
note = {Accessed on 02/02/2017},
year={2017}
}', 1005);
INSERT INTO layer_reference (layer_id, reference_id) VALUES (1003, 1010);

-- add the keywords in layer
INSERT INTO layer_keyword (layer_id, keyword_id) VALUES (1003, 1001);
INSERT INTO layer_keyword (layer_id, keyword_id) VALUES (1003, 1040);

-- create a feature table to save the data
--DROP TABLE IF EXISTS layer_1003 CASCADE ;
DROP TABLE IF EXISTS layer_1003 CASCADE ;
CREATE TABLE IF NOT EXISTS layer_1003 (
  id SERIAL,
  geom GEOMETRY(MULTILINESTRING, 4326) NOT NULL,
  name TEXT,
  start_date TIMESTAMP,
  end_date TIMESTAMP,
  version INT NOT NULL DEFAULT 1,
  changeset_id INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT constraint_fk_changeset_id
    FOREIGN KEY (changeset_id)
    REFERENCES changeset (changeset_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

--DROP TABLE IF EXISTS version_layer_1003 CASCADE ;
DROP TABLE IF EXISTS version_layer_1003 CASCADE ;
CREATE TABLE IF NOT EXISTS version_layer_1003 (
  id SERIAL,
  geom GEOMETRY(MULTILINESTRING, 4326) NOT NULL,
  name TEXT,
  start_date TIMESTAMP,
  end_date TIMESTAMP,
  version INT NOT NULL DEFAULT 1,
  changeset_id INT NOT NULL,
  is_removed BOOLEAN NOT NULL DEFAULT FALSE,
  PRIMARY KEY (id, version),
  CONSTRAINT constraint_fk_changeset_id
    FOREIGN KEY (changeset_id)
    REFERENCES changeset (changeset_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- add temporal metadata
INSERT INTO temporal_columns (f_table_name, start_date_column_name, end_date_column_name, start_date, end_date, start_date_mask_id, end_date_mask_id) VALUES
('layer_1003', 'start_date', 'end_date', '1920-01-01', '1930-12-31', 1001, 1001);

-- add users in layers
INSERT INTO user_layer (layer_id, user_id, created_at, is_the_creator) VALUES (1003, 1003, '2017-04-10', TRUE);
INSERT INTO user_layer (layer_id, user_id, created_at) VALUES (1003, 1001, '2017-04-11');
INSERT INTO user_layer (layer_id, user_id, created_at) VALUES (1003, 1006, '2017-04-11');
INSERT INTO user_layer (layer_id, user_id, created_at) VALUES (1003, 1007, '2017-04-11');

-- users that follow the layer
INSERT INTO layer_followers (layer_id, user_id, created_at) VALUES (1003, 1003, '2017-01-02');
INSERT INTO layer_followers (layer_id, user_id, created_at) VALUES (1003, 1006, '2017-01-02');
INSERT INTO layer_followers (layer_id, user_id, created_at) VALUES (1003, 1007, '2017-01-02');

-- create a changeset
INSERT INTO changeset (changeset_id, created_at, layer_id, user_id_creator) VALUES (1003, '2017-04-12', 1003, 1005);

-- insert the data into the layer
INSERT INTO layer_1003 (id, geom, name, start_date, end_date, changeset_id) VALUES
(1001, ST_GeomFromText('MULTILINESTRING((-46.6237603488114 -23.5533938154249,-46.6235408108831 -23.5522660084575,-46.6233933273529 -23.5516456142714,-46.623209681096 -23.5507601376416,-46.622973981047 -23.5496552515087,-46.6236497790913 -23.5484119132552))', 4326),
'rua boa vista', '1930-01-01', '1940-12-31', 1003);
INSERT INTO layer_1003 (id, geom, name, start_date, end_date, changeset_id) VALUES
(1002, ST_GeomFromText('MULTILINESTRING((-46.6353540826681 -23.5450950669741,-46.63471434053 -23.5454695514008,-46.6343109517528 -23.5458044203441))', 4326),
 'rua tres de dezembro', '1920-01-01', '1930-12-31', 1003);
-- add data as GeoJSON
INSERT INTO layer_1003 (id, geom, start_date, end_date, changeset_id)
VALUES (1003,
	ST_GeomFromGeoJSON(
		'{
		    "type":"MultiLineString",
		    "coordinates":[[[-46.6289810574309, -23.542735394758], [-46.6267724837701, -23.5427585091922]]],
		    "crs":{"type":"name","properties":{"name":"EPSG:4326"}}
		}'
	),
	'1930-01-01', '1930-12-31', 1003);

-- close the changeset
UPDATE changeset SET closed_at='2017-04-12', description='Creating layer_1003' WHERE changeset_id=1003;

-- create a open changeset
INSERT INTO changeset (changeset_id, description, created_at, layer_id, user_id_creator) VALUES (1013, 'Creating an open changeset', '2017-04-13', 1003, 1005);

-- check if the layer has features and check if the changeset was created
/*
SELECT * FROM layer_1003;
SELECT * FROM version_layer_1003;
SELECT * FROM changeset WHERE id=1003;
*/



-- add layer_1004
INSERT INTO layer (layer_id, f_table_name, name, description, source_description, created_at) VALUES
(1004, 'layer_1004', 'Streets in 1920', 'streets', '', '2017-06-15');

-- add reference
-- ...

-- add the keywords in layer
INSERT INTO layer_keyword (layer_id, keyword_id) VALUES (1004, 1040);

-- create a feature table to save the data
--DROP TABLE IF EXISTS layer_1004 CASCADE ;
DROP TABLE IF EXISTS layer_1004 CASCADE ;
CREATE TABLE IF NOT EXISTS layer_1004 (
  id SERIAL,
  geom GEOMETRY(MULTILINESTRING, 4326) NOT NULL,
  name TEXT,
  start_date TEXT,
  end_date TEXT,
  version INT NOT NULL DEFAULT 1,
  changeset_id INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT constraint_fk_changeset_id
    FOREIGN KEY (changeset_id)
    REFERENCES changeset (changeset_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

--DROP TABLE IF EXISTS version_layer_1004 CASCADE ;
DROP TABLE IF EXISTS version_layer_1004 CASCADE ;
CREATE TABLE IF NOT EXISTS version_layer_1004 (
  id SERIAL,
  geom GEOMETRY(MULTILINESTRING, 4326) NOT NULL,
  name TEXT,
  start_date TEXT,
  end_date TEXT,
  version INT NOT NULL DEFAULT 1,
  changeset_id INT NOT NULL,
  PRIMARY KEY (id, version),
  is_removed BOOLEAN NOT NULL DEFAULT FALSE,
  CONSTRAINT constraint_fk_changeset_id
    FOREIGN KEY (changeset_id)
    REFERENCES changeset (changeset_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- add temporal metadata
INSERT INTO temporal_columns (f_table_name, start_date_column_name, end_date_column_name, start_date, end_date, start_date_mask_id, end_date_mask_id) VALUES
('layer_1004', 'start_date', 'end_date', '1920-01-01', '1920-12-31', 1002, 1002);

-- add users in layers
INSERT INTO user_layer (layer_id, user_id, created_at, is_the_creator) VALUES (1004, 1003, '2017-06-15', TRUE);
INSERT INTO user_layer (layer_id, user_id, created_at) VALUES (1004, 1007, '2017-06-20');
INSERT INTO user_layer (layer_id, user_id, created_at) VALUES (1004, 1008, '2017-06-27');

-- users that follow the layer
INSERT INTO layer_followers (layer_id, user_id, created_at) VALUES (1004, 1003, '2017-01-09');

-- create a changeset
INSERT INTO changeset (changeset_id, created_at, layer_id, user_id_creator) VALUES (1004, '2017-06-28', 1004, 1005);

-- insert the data into the layer
INSERT INTO layer_1004 (id, geom, name, start_date, end_date, changeset_id) VALUES
(1001, ST_GeomFromText('MULTILINESTRING((-46.6223558499333 -23.5443575867494,-46.6223480680011 -23.5444468399204,-46.6218546998225 -23.545979136579))', 4326),
'rua joao briccola', '1920-01', '1920-05', 1004);
INSERT INTO layer_1004 (id, geom, name, start_date, end_date, changeset_id) VALUES
(1002, ST_GeomFromText('MULTILINESTRING((-46.6387972549339 -23.5460415609173,-46.6405962944433 -23.544623903425,-46.6417670426616 -23.5436951087793))', 4326),
'ladeira porto geral', '1920-03', '1920-04', 1004);
INSERT INTO layer_1004 (id, geom, name, start_date, end_date, changeset_id) VALUES
(1003, ST_GeomFromText('MULTILINESTRING((-46.6369959853997 -23.549500474191,-46.6367956743584 -23.5489343848123))', 4326),
'travessa porto geral', '1920-01', '1920-12', 1004);
-- add data as GeoJSON
INSERT INTO layer_1004 (id, geom, start_date, end_date, changeset_id)
VALUES (1004,
	ST_GeomFromGeoJSON(
		'{
		    "type":"MultiLineString",
		    "coordinates":[[[-46.6489360910738, -23.5471391154918], [-46.6479270334404, -23.5471656463165]]],
		    "crs":{"type":"name","properties":{"name":"EPSG:4326"}}
		}'
	),
	'1920-01', '1920-12', 1004);

-- close the changeset
UPDATE changeset SET closed_at='2017-06-28', description='Creating layer_1004' WHERE changeset_id=1004;

-- check if the layer has features and check if the changeset was created
/*
SELECT * FROM layer_1004;
SELECT * FROM version_layer_1004;
SELECT * FROM changeset WHERE id=1004;
*/



-- add layer_1005
INSERT INTO layer (layer_id, f_table_name, name, description, created_at) VALUES
(1005, 'layer_1005', 'Hospitals between 1800 to 1950', 'some hospitals', '2017-08-04');

-- add reference
-- ...

-- add the keywords in layer
INSERT INTO layer_keyword (layer_id, keyword_id) VALUES (1005, 1023);

-- create a feature table to save the data
--DROP TABLE IF EXISTS layer_1005 CASCADE ;
DROP TABLE IF EXISTS layer_1005 CASCADE ;
CREATE TABLE IF NOT EXISTS layer_1005 (
  id SERIAL,
  geom GEOMETRY(MULTIPOLYGON, 4326) NOT NULL,
  name TEXT,
  start_date TEXT,
  end_date TEXT,
  version INT NOT NULL DEFAULT 1,
  changeset_id INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT constraint_fk_changeset_id
    FOREIGN KEY (changeset_id)
    REFERENCES changeset (changeset_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

--DROP TABLE IF EXISTS version_layer_1005 CASCADE ;
DROP TABLE IF EXISTS version_layer_1005 CASCADE ;
CREATE TABLE IF NOT EXISTS version_layer_1005 (
  id SERIAL,
  geom GEOMETRY(MULTIPOLYGON, 4326) NOT NULL,
  name TEXT,
  start_date TEXT,
  end_date TEXT,
  version INT NOT NULL DEFAULT 1,
  changeset_id INT NOT NULL,
  is_removed BOOLEAN NOT NULL DEFAULT FALSE,
  PRIMARY KEY (id, version),
  CONSTRAINT constraint_fk_changeset_id
    FOREIGN KEY (changeset_id)
    REFERENCES changeset (changeset_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- add temporal metadata
INSERT INTO temporal_columns (f_table_name, start_date_column_name, end_date_column_name, start_date, end_date, start_date_mask_id, end_date_mask_id) VALUES
('layer_1005', 'start_date', 'end_date', '1920-01-01', '1940-12-31', 1002, 1002);

-- add users in layers
INSERT INTO user_layer (layer_id, user_id, created_at, is_the_creator) VALUES (1005, 1007, '2017-08-04', TRUE);

-- users that follow the layer
INSERT INTO layer_followers (layer_id, user_id, created_at) VALUES (1005, 1003, '2017-01-02');
INSERT INTO layer_followers (layer_id, user_id, created_at) VALUES (1005, 1004, '2017-01-02');
INSERT INTO layer_followers (layer_id, user_id, created_at) VALUES (1005, 1005, '2017-01-02');

-- create a changeset
INSERT INTO changeset (changeset_id, created_at, layer_id, user_id_creator) VALUES (1005, '2017-08-05', 1005, 1007);

-- insert the data into the layer
INSERT INTO layer_1005 (id, geom, name, start_date, end_date, changeset_id) VALUES (1001, ST_GeomFromText('MULTIPOLYGON(((-46.6536941024203 -23.5446440934747, -46.6536987312376 -23.5446514885665, -46.6531421851224 -23.5427759121502, -46.6531368207044 -23.5426136385048, -46.6536941024203 -23.5446440934747)))', 4326),
'Sant''Anna''s Hospital', '1920-01', '1940-12', 1005);
INSERT INTO layer_1005 (id, geom, name, start_date, end_date, changeset_id)
VALUES (1002,
	ST_GeomFromGeoJSON(
		'{
		    "type":"MultiPolygon",
		    "coordinates":[[[[-46.6531368207044, -23.5426136385048], [-46.6526581134833, -23.5401195274321], [-46.6526581134833, -23.5401195274321], [-46.6535666865397, -23.5322186250535], [-46.6531368207044, -23.5426136385048]]]],
		    "crs":{"type":"name","properties":{"name":"EPSG:4326"}}
		}'
	),
	'Holy Mary''s Hospital', '1920-01', '1940-12', 1005);

-- close the changeset
UPDATE changeset SET closed_at='2017-08-05', description='Creating layer_1005' WHERE changeset_id=1005;

-- check if the layer has features and check if the changeset was created
/*
SELECT * FROM feature_layer_1005;
SELECT * FROM version_layer_1005;
SELECT * FROM changeset WHERE id=1005;
*/




-- add layer_1006
INSERT INTO layer (layer_id, f_table_name, name, description, created_at) VALUES
(1006, 'layer_1006', 'Cinemas between 1900 to 1950', '', '2017-09-04');

-- add reference
INSERT INTO reference (reference_id, description, user_id_creator) VALUES (1025,
'@Misc{frisina2017bookZ,
author = {Frisina},
title = {BookZ},
howpublished = {\url{http://www.school.com/}},
note = {Accessed on 03/04/2017},
year={2017}
}', 1007);
INSERT INTO layer_reference (layer_id, reference_id) VALUES (1006, 1025);

-- add the keywords in layer
INSERT INTO layer_keyword (layer_id, keyword_id) VALUES (1006, 1031);

-- create a feature table to save the data
--DROP TABLE IF EXISTS layer_1006 CASCADE ;
DROP TABLE IF EXISTS layer_1006 CASCADE ;
CREATE TABLE IF NOT EXISTS layer_1006 (
  id SERIAL,
  geom GEOMETRY(MULTIPOLYGON, 4326) NOT NULL,
  name TEXT,
  start_date INT,
  end_date INT,
  version INT NOT NULL DEFAULT 1,
  changeset_id INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT constraint_fk_changeset_id
    FOREIGN KEY (changeset_id)
    REFERENCES changeset (changeset_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

--DROP TABLE IF EXISTS version_layer_1006 CASCADE ;
DROP TABLE IF EXISTS version_layer_1006 CASCADE ;
CREATE TABLE IF NOT EXISTS version_layer_1006 (
  id SERIAL,
  geom GEOMETRY(MULTIPOLYGON, 4326) NOT NULL,
  name TEXT,
  start_date INT,
  end_date INT,
  version INT NOT NULL DEFAULT 1,
  changeset_id INT NOT NULL,
  PRIMARY KEY (id, version),
  is_removed BOOLEAN NOT NULL DEFAULT FALSE,
  CONSTRAINT constraint_fk_changeset_id
    FOREIGN KEY (changeset_id)
    REFERENCES changeset (changeset_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- add temporal metadata
INSERT INTO temporal_columns (f_table_name, start_date_column_name, end_date_column_name, start_date, end_date, start_date_mask_id, end_date_mask_id) VALUES
('layer_1006', 'start_date', 'end_date', '1900-01-01', '1930-12-31', 1003, 1003);

-- add users in layers
INSERT INTO user_layer (layer_id, user_id, created_at, is_the_creator) VALUES (1006, 1007, '2017-09-04', TRUE);
INSERT INTO user_layer (layer_id, user_id, created_at) VALUES (1006, 1008, '2017-09-10');

-- create a changeset
INSERT INTO changeset (changeset_id, created_at, layer_id, user_id_creator) VALUES (1006, '2017-09-04', 1006, 1007);

-- insert the data into the layer
INSERT INTO layer_1006 (id, geom, name, start_date, end_date, changeset_id) VALUES (1001, ST_GeomFromText('MULTIPOLYGON(((-46.6488116440144 -23.5426404452948, -46.6531396058257 -23.5465662154437, -46.6517036612052 -23.5456926854228, -46.6442476807888 -23.5477173437452, -46.6488116440144 -23.5426404452948)))', 4326),
'Cinema Roger', 1910, 1930, 1006);
-- add area as GeoJSON
INSERT INTO layer_1006 (id, geom, name, start_date, end_date, changeset_id)
VALUES (1002,
	ST_GeomFromGeoJSON(
		'{
		    "type":"MultiPolygon",
		    "coordinates":[[[[-46.6323318652266, -23.5316246866608], [-46.6316800884359, -23.5296637586354], [-46.6221419360542, -23.5384048923064], [-46.6375790530164, -23.5290461960682], [-46.6323318652266, -23.5316246866608]]]],
		    "crs":{"type":"name","properties":{"name":"EPSG:4326"}}
		}'
	),
	'Joar''s cinema', 1900, 1940, 1006);

-- close the changeset
UPDATE changeset SET closed_at='2017-09-04', description='Creating layer_1006' WHERE changeset_id=1006;

-- check if the layer has features and check if the changeset was created
/*
SELECT * FROM feature_layer_1006;
SELECT * FROM version_layer_1006;
SELECT * FROM changeset WHERE id=1006;
*/



-- -----------------------------------------------------
-- Table notification
-- -----------------------------------------------------
-- clean notification table
DELETE FROM notification;

-- add notification
-- general
INSERT INTO notification (notification_id, description, created_at, user_id_creator, layer_id, keyword_id, notification_id_parent) VALUES
(1001, 'Congresso X acontecerá em 2018/03/25', '2017-01-01', 1001, NULL, NULL, NULL);
INSERT INTO notification (notification_id, description, created_at, user_id_creator, layer_id, keyword_id, notification_id_parent) VALUES
(1005, 'Evento Y no dia 24/06/2018', '2017-02-01', 1002, NULL, NULL, NULL);
	INSERT INTO notification (notification_id, description, created_at, user_id_creator, layer_id, keyword_id, notification_id_parent) VALUES
	(1006, 'Muito bom', '2017-02-01', 1003, NULL, NULL, 1005);
-- layer
INSERT INTO notification (notification_id, description, is_denunciation, created_at, user_id_creator, layer_id, keyword_id, notification_id_parent) VALUES
(1010, 'A camada contêm dados inapropriados.', TRUE, '2017-03-01', 1005, 1004, NULL, NULL);
	-- reply
	INSERT INTO notification (notification_id, description, created_at, user_id_creator, layer_id, keyword_id, notification_id_parent) VALUES
	(1011, 'Obrigado pelo aviso.', '2017-03-01', 1003, NULL, NULL, 1010);
	INSERT INTO notification (notification_id, description, created_at, user_id_creator, layer_id, keyword_id, notification_id_parent) VALUES
	(1012, 'Ações estão sendo tomadas.', '2017-03-01', 1001, NULL, NULL, 1010);
INSERT INTO notification (notification_id, description, created_at, user_id_creator, layer_id, keyword_id, notification_id_parent) VALUES
(1015, 'Muito boa camada. Parabéns.', '2017-04-05', 1002, 1002, NULL, NULL);
-- keyword
INSERT INTO notification (notification_id, description, created_at, user_id_creator, layer_id, keyword_id, notification_id_parent) VALUES
(1020, 'Uma keyword genérica', '2017-01-01', 1001, NULL, 1001, NULL);



----------------------------------------------------------------------------------------------------


/*
SELECT jsonb_build_object(
	'type', 'FeatureCollection',
	'features',   jsonb_agg(jsonb_build_object(
		'type',        'FeatureTable',
		'properties',   dict,
		'f_table_name', f_table_name,
		'geometry',  json_build_object(
			'type',      type,
			'crs',  json_build_object(
				'type',      'name',
				'properties', json_build_object('name', 'EPSG:' || srid)
			)
		)
	))
) AS row_to_json
FROM
(
	-- (2) do a JOIN with geometry_columns to get the SRID of the feature table
	SELECT isc.table_name as f_table_name, gc.srid as srid, gc.type as type, isc.dict as dict
	FROM (
		-- (1) get the columns name of the feature table as JSON
		SELECT table_name, JSON_OBJECT(ARRAY_AGG(column_name::TEXT), ARRAY_AGG(udt_name::regtype::TEXT)) as dict
		FROM information_schema.columns
		WHERE table_schema = 'public' AND unaccent(LOWER(table_name)) LIKE '%' || unaccent(LOWER('layer_1003')) || '%' AND unaccent(LOWER(table_name)) NOT LIKE '%version%'
		GROUP BY table_name
	) isc
	INNER JOIN geometry_columns gc
	ON gc.f_table_name = isc.table_name
	ORDER BY isc.table_name
) AS feature_table




SELECT *
FROM information_schema.columns
WHERE table_schema = 'public' AND table_name = 'layer_1003'
ORDER BY ordinal_position

*/

/*
select * from layer_1006;

INSERT INTO layer_1006 (id, geom, name, start_date, end_date, changeset_id)
VALUES (1005, ST_SetSRID(
	ST_GeomFromGeoJSON(
		'{
		    "type":"MultiPolygon",
		    "coordinates":[[[[-46.6323318652266, -23.5316246866608], [-46.6316800884359, -23.5296637586354], [-46.6221419360542, -23.5384048923064], [-46.6375790530164, -23.5290461960682], [-46.6323318652266, -23.5316246866608]]]]
		}'
	), 4326),
	'Joar''s cinema', 1900, 1940, 1006);

SELECT srid FROM geometry_columns WHERE f_table_name='layer_1001';
*/
/*
INSERT INTO layer_1002 (start_date, changeset_id, address, end_date, geom)
VALUES ('1870-01-01', 1, 'R. São José', '1870-12-31', ST_SetSRID(ST_GeomFromGeoJSON('{"type": "MultiPoint", "coordinates": [[-46.6375790530164, -23.5290461960682]]}'), 4326))
RETURNING id;


SELECT *
FROM
(
	-- notifications that a user follows
	SELECT notification_id, description, created_at, is_denunciation, user_id_creator, layer_id, keyword_id, notification_id_parent FROM
	(SELECT layer_id AS lf_layer_id FROM layer_followers WHERE user_id = 1006) lf INNER JOIN notification n
	ON lf.lf_layer_id = n.layer_id
		-- union the tables
		UNION
	-- general notifications
	SELECT * FROM notification WHERE layer_id is NULL AND keyword_id is NULL AND notification_id_parent is NULL
) __notification__
WHERE is_denunciation = FALSE
ORDER BY created_at DESC, notification_id
*/

/*
SELECT  ST_Transform(
	    ST_MakeEnvelope (
		313389.67, 7343788.61,
		360663.23, 7416202.05,
		29193
	    )
	, 4326);

SELECT ST_Union(geom) as geom FROM streets_pilot_area;




SELECT ST_Contains(bb_default_city.geom, union_f_table.geom)
FROM
(
	-- get the union of a feature table
	SELECT ST_Transform(ST_Union(geom), 4326) as geom FROM streets_pilot_area
) union_f_table,
(
	-- create a bouding box of the default city (by default is SP city)
	SELECT  ST_Transform(
	    ST_MakeEnvelope (
		313389.67, 7343788.61,
		360663.23, 7416202.05,
		29193
	    )
	, 4326) as geom
) bb_default_city;


*/



INSERT INTO public.tb_places VALUES (3, 207, '0101000020E6100000F3A8BE309C5147C0A42F4E926F8737C0', 82, NULL, 'collegio santa ignes', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanal Laemmert, 1931, v.II, p. 325 ', 6, '2017-10-23', true);
INSERT INTO public.tb_places VALUES (11, 76, '0101000020E6100000FFFDE8FE2E5347C0AEBFCCB15C8C37C0', 178, NULL, 'grupo escolar consolacao', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, V.II, p.594 ', 6, '2017-10-23', true);
INSERT INTO public.tb_places VALUES (19, 104, '0101000020E610000006A56747CD5247C033B8AA26AB8C37C0', 46, NULL, 'Escola Alleman', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 593', 6, '2017-10-23', true);
INSERT INTO public.tb_places VALUES (20, 98, '0101000020E6100000C07EFDFD015347C0F57B2ABA988C37C0', 46, NULL, 'collegio des oiseaux ', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 593 ', 6, '2017-10-23', true);
INSERT INTO public.tb_places VALUES (47, 120, '0101000020E6100000A170124D8A5347C07F40FA45458A37C0', 1, '1', NULL, NULL, NULL, NULL, 29, 6, 1936, NULL, 'Livro de Emplacamento n. 21, p. 177', 9, '2017-12-12', false);
INSERT INTO public.tb_places VALUES (52, 190, '0101000020E610000002E12A4DC45247C0AE76C8396B8737C0', 100, '100', NULL, 23, 7, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.72', 6, '2017-12-14', false);
INSERT INTO public.tb_places VALUES (42, 120, '0101000020E61000008D5EC2299A5347C0DFBDB75CF38A37C0', 338, '338', NULL, 30, 6, 1936, 4, 12, 1979, NULL, 'Livro de Emplacamento n. 21, p. 178', 9, '2017-12-19', false);
INSERT INTO public.tb_places VALUES (38, 120, '0101000020E6100000DCBD933FAC5347C0F46E99CB6D8B37C0', 38, '38', NULL, NULL, NULL, NULL, 29, 6, 1936, NULL, 'Livro de Emplacamento n. 21, p. 178', NULL, '2017-12-12', false);
INSERT INTO public.tb_places VALUES (39, 120, '0101000020E6100000140D6866AC5347C0611CAB476E8B37C0', 38, '38', NULL, NULL, NULL, NULL, 29, 6, 1936, NULL, 'Livro de Emplacamento n. 21, p. 178', 9, '2017-12-12', false);
INSERT INTO public.tb_places VALUES (41, 120, '0101000020E61000008E5EC2299A5347C0D1BDB75CF38A37C0', 32, '32', NULL, NULL, NULL, NULL, 29, 6, 1936, NULL, 'Livro de Emplacamento n. 21, p. 178', 9, '2017-12-12', false);
INSERT INTO public.tb_places VALUES (43, 120, '0101000020E61000008E5EC2FC995347C0D1BD37BAE88A37C0', 287, '287', NULL, 30, 6, 1936, 14, 5, 1940, NULL, 'Livro de Emplacamento n. 21, p. 177', 9, '2017-12-12', false);
INSERT INTO public.tb_places VALUES (44, 120, '0101000020E6100000915EC2FC995347C0DFBD37BAE88A37C0', 45, '45', NULL, NULL, NULL, NULL, 29, 6, 1936, NULL, 'Livro de Emplacamento n. 21, p. 177', 9, '2017-12-12', false);
INSERT INTO public.tb_places VALUES (45, 120, '0101000020E6100000915EC2FC995347C0DFBD37BAE88A37C0', 274, '274', NULL, 30, 6, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n. 21, p. 178', 9, '2017-12-12', false);
INSERT INTO public.tb_places VALUES (48, 120, '0101000020E61000009E70124D8A5347C07940FA45458A37C0', 19, '19', NULL, 30, 6, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n. 21, p. 177', 9, '2017-12-12', false);
INSERT INTO public.tb_places VALUES (49, 120, '0101000020E61000009E70124D8A5347C07940FA45458A37C0', 2, '2', NULL, NULL, NULL, NULL, 29, 6, 1936, NULL, 'Livro de Emplacamento n. 21, p. 178', 9, '2017-12-12', false);
INSERT INTO public.tb_places VALUES (50, 120, '0101000020E61000009E70124D8A5347C07940FA45458A37C0', 52, '52', NULL, 30, 6, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n. 21, p. 178', 9, '2017-12-12', false);
INSERT INTO public.tb_places VALUES (13, 181, '0101000020E6100000B938BC12A85347C03EEDD47A3F8837C0', 21, NULL, 'Theatro S. Pedro', NULL, NULL, 1935, NULL, NULL, 1935, NULL, 'Correio Paulistano, 1935, n°24.217, p.3 ', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (12, 174, '0101000020E6100000CF7274D78A5347C09E98F7F0088837C0', 1, NULL, 'Grupo Escolar Barra Funda', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p.134 ', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (24, 188, '0101000020E61000000605448D835247C0F5630F55818837C0', 47, NULL, 'palacio dos campos elyseos', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, 408 ', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (14, 526, '0101000020E610000099036BD6BB5247C0FA8978899D8A37C0', 80, NULL, 'colyseu paulista', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p. 162 ', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (8, 220, '0101000020E610000023278C420C5347C02507F67BEA8A37C0', 2, NULL, 'hospital da santa casa de misericordia', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p. 421', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (10, 220, '0101000020E6100000365F1F149A5347C0D16D74C3EB8B37C0', 17, NULL, 'escola americana', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p. 593 ', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (9, 220, '0101000020E6100000A5C78B066B5347C0B78E0D84B28B37C0', 79, NULL, 'escola de engenharia mackenzie', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p. 325', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (18, 76, '0101000020E610000080C13FB5765247C076D62E34378C37C0', 42, NULL, 'cinema odeon', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p. 162', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (15, 323, '0101000020E61000001563095AEB5147C068FE85C79A8937C0', 86, NULL, 'gabinete de investigacoes', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p. 97 ', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (21, 57, '0101000020E6100000EB9CEC30D75147C0AC39D5A45C8B37C0', 23, NULL, 'theatro s. anna', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p. 162', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (23, 71, '0101000020E6100000ECB56C18B25147C0BC97E007488B37C0', 9, NULL, 'quarta general da segunda regiao militar', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p.97 ', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (22, 22, '0101000020E61000007F6331BE6D5147C093150F83DF8B37C0', 34, NULL, 'prefeitura municipal', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p. 96 ', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (16, 367, '0101000020E6100000EAA826CB325147C0330B6FDDC68A37C0', 67, NULL, 'casino antarctica', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p. 322 ', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (6, 220, '0101000020E6100000F4AE2440F05047C05FF4328E188837C0', 5, NULL, 'cadeia publica', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p. 147 ', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (7, 220, '0101000020E6100000F3AEA4E4DA5047C02837490B988737C0', 7, NULL, 'escola polytecnica ', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p. 162', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (17, 268, '0101000020E61000005569D258A24F47C065762CE7D48937C0', 120, NULL, 'escola profissional carlos de campos ', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p. 138 ', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (4, 207, '0101000020E6100000F9A8BE309C5147C0A62F4E926F8737C0', 71, NULL, 'Escola de Pharmacia e Odontologia ', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p. 162 ', 6, '2017-12-14', true);
INSERT INTO public.tb_places VALUES (51, 190, '0101000020E61000007954E4081B5247C018B7D9242F8937C0', 2, '2', NULL, 23, 7, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.72-73', 6, '2017-12-14', false);
INSERT INTO public.tb_places VALUES (54, 190, '0101000020E6100000BE04DD1D845247C0A54E87E9168837C0', 50, '50', NULL, 23, 7, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.72', 6, '2017-12-14', false);
INSERT INTO public.tb_places VALUES (55, 190, '0101000020E6100000C304DD1D845247C0AD4E87E9168837C0', 38, '38', NULL, NULL, NULL, NULL, 22, 7, 1930, NULL, 'Livro de Emplacamento n.17, p.72', 6, '2017-12-14', false);
INSERT INTO public.tb_places VALUES (53, 190, '0101000020E610000008E12A4DC45247C0AC76C8396B8737C0', 88, '88', NULL, NULL, NULL, NULL, 22, 7, 1930, NULL, 'Livro de Emplacamento n.17, p.72', 6, '2017-12-14', false);
INSERT INTO public.tb_places VALUES (56, 190, '0101000020E610000008E12A4DC45247C0AC76C8396B8737C0', 165, '165', NULL, 23, 7, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.73', 6, '2017-12-14', false);
INSERT INTO public.tb_places VALUES (57, 190, '0101000020E610000008E12A4DC45247C0AC76C8396B8737C0', 153, '153', NULL, NULL, NULL, NULL, 22, 7, 1930, NULL, 'Livro de Emplacamento n.17, p.73', 6, '2017-12-14', false);
INSERT INTO public.tb_places VALUES (58, 190, '0101000020E6100000C304DD1D845247C0AD4E87E9168837C0', 49, '49', NULL, 23, 7, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.73', 6, '2017-12-14', false);
INSERT INTO public.tb_places VALUES (59, 190, '0101000020E6100000C304DD1D845247C0AD4E87E9168837C0', 39.1000000000000014, '39ª', NULL, NULL, NULL, NULL, 22, 7, 1930, NULL, 'Livro de Emplacamento n.17, p.73', 6, '2017-12-14', false);
INSERT INTO public.tb_places VALUES (60, 190, '0101000020E61000007654E4081B5247C012B7D9242F8937C0', 1, '1', NULL, 23, 7, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.73', 6, '2017-12-14', false);
INSERT INTO public.tb_places VALUES (5, 220, '0101000020E6100000EBED3CE40C5147C045EB0480CD8837C0', 10, NULL, 'lyceo de artes e officios ', NULL, NULL, 1926, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 421 ', 6, '2017-12-11', true);
INSERT INTO public.tb_places VALUES (40, 120, '0101000020E6100000140D6866AC5347C0601CAB476E8B37C0', 456, '456', NULL, 30, 6, 1936, 22, 12, 1942, NULL, 'Livro de Emplacamento n. 21, p. 178', 9, '2017-12-19', false);
INSERT INTO public.tb_places VALUES (113, 4, '0101000020E61000006211D79BF95047C0086742B4558B37C0', 106, '106', NULL, 24, 10, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.207', 6, '2017-12-18', false);
INSERT INTO public.tb_places VALUES (77, 425, '0101000020E6100000B0BD63377F5147C05FB5C6C0F78C37C0', 45, '45', NULL, 9, 5, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.133', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (78, 425, '0101000020E6100000AFBD63377F5147C06BB5C6C0F78C37C0', 3, '3', NULL, NULL, NULL, NULL, 8, 5, 1934, NULL, 'Livro de Emplacamento n.19, p.133', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (79, 425, '0101000020E6100000890ACBE11B5247C0218E7620E68E37C0', 957, '957', NULL, 9, 5, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.133', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (80, 425, '0101000020E6100000850ACBE11B5247C0248E7620E68E37C0', 137, '137', NULL, NULL, NULL, NULL, 8, 5, 1934, NULL, 'Livro de Emplacamento n.19, p.133', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (81, 425, '0101000020E61000008EACAE89D75147C085C372233A8E37C0', 597, '597', NULL, 9, 5, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.133', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (82, 425, '0101000020E610000090ACAE89D75147C082C372233A8E37C0', 91, '91', NULL, NULL, NULL, NULL, 8, 5, 1934, NULL, 'Livro de Emplacamento n.19, p.133', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (83, 425, '0101000020E6100000AFBD63377F5147C06BB5C6C0F78C37C0', 6, '6', NULL, 9, 5, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.138', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (84, 425, '0101000020E6100000AFBD63377F5147C06BB5C6C0F78C37C0', 2, '2', NULL, NULL, NULL, NULL, 8, 5, 1934, NULL, 'Livro de Emplacamento n.19, p.138', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (85, 425, '0101000020E610000090ACAE89D75147C082C372233A8E37C0', 580, '580', NULL, 9, 5, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.139', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (86, 425, '0101000020E610000090ACAE89D75147C082C372233A8E37C0', 100, '100', NULL, NULL, NULL, NULL, 8, 5, 1934, NULL, 'Livro de Emplacamento n.19, p.139', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (87, 425, '0101000020E6100000850ACBE11B5247C0248E7620E68E37C0', 966, '966', NULL, 9, 5, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.139', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (88, 425, '0101000020E6100000850ACBE11B5247C0248E7620E68E37C0', 154, '154', NULL, NULL, NULL, NULL, 8, 5, 1934, NULL, 'Livro de Emplacamento n.19, p.139', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (89, 267, '0101000020E6100000883837D1A64F47C05D15B6B8F18837C0', 54, '54', NULL, 17, 5, 1937, NULL, 3, 1940, NULL, 'Livro de Emplacamento n.22, p.177', NULL, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (92, 2, '0101000020E610000030B88A572E5147C035D3B317E48B37C0', 9, '9', NULL, 22, 6, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19A, p.69', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (94, 2, '0101000020E6100000D927BDB1155147C07574061FDF8B37C0', 69, '69', NULL, 22, 6, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19A, p.69', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (95, 2, '0101000020E6100000D327BDB1155147C06E74061FDF8B37C0', 11.4000000000000004, '11D', NULL, NULL, NULL, NULL, 21, 6, 1933, NULL, 'Livro de Emplacamento n.19A, p.69', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (93, 2, '0101000020E61000002BB88A572E5147C041D3B317E48B37C0', 1.10000000000000009, '1b', NULL, NULL, NULL, NULL, 21, 6, 1933, NULL, 'Livro de Emplacamento n.19A, p.69', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (96, 2, '0101000020E61000002BB88A572E5147C041D3B317E48B37C0', 34, '34', NULL, 22, 6, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19A, p.69', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (97, 2, '0101000020E61000002BB88A572E5147C041D3B317E48B37C0', 4, '4', NULL, NULL, NULL, NULL, 21, 6, 1933, NULL, 'Livro de Emplacamento n.19A, p.69', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (98, 2, '0101000020E6100000D327BDB1155147C06E74061FDF8B37C0', 68, '68', NULL, 22, 6, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19A, p.69', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (99, 2, '0101000020E6100000D327BDB1155147C06E74061FDF8B37C0', 16.3000000000000007, '16C', NULL, NULL, NULL, NULL, 21, 6, 1933, NULL, 'Livro de Emplacamento n.19A, p.69', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (100, 73, '0101000020E61000002435DC7EE45147C057B8F817228C37C0', 26, '26', NULL, 25, 5, 1939, NULL, NULL, NULL, NULL, 'Livro de emplacamento n.26, p.239', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (1264, 10, '0101000020E6100000D9E733B26C5147C0F7CF2F40B68C37C0', 189, '189', NULL, 5, 11, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamentos L21 p.338', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (102, 73, '0101000020E61000008F3963C83D5247C03C7682D85D8B37C0', 124, '124', NULL, NULL, NULL, NULL, 24, 5, 1939, NULL, 'Livro de Emplacamento n.26, p.239', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (103, 73, '0101000020E61000007279FF5B225247C040AAF416978B37C0', 298, '298', NULL, 25, 5, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.239', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (104, 73, '0101000020E61000006D79FF5B225247C034AAF416978B37C0', 86, '86', NULL, NULL, NULL, NULL, 24, 5, 1939, NULL, 'Livro de Emplacamento n.26, p.239', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (114, 4, '0101000020E61000006211D79BF95047C0086742B4558B37C0', 12.0999999999999996, '12 E/S', NULL, NULL, NULL, NULL, 23, 10, 1939, NULL, 'Livro de Emplacamento n.26, p.207', 6, '2017-12-18', false);
INSERT INTO public.tb_places VALUES (105, 73, '0101000020E61000002035DC7EE45147C054B8F817228C37C0', 33, '33', NULL, 25, 5, 1939, NULL, NULL, NULL, NULL, 'Livro de emplacamento n.26, p.240', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (107, 73, '0101000020E61000008F3963C83D5247C03C7682D85D8B37C0', 425, '425', NULL, 25, 5, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.240', 6, '2017-12-15', false);
INSERT INTO public.tb_places VALUES (115, 4, '0101000020E61000006411896C185147C05645A9528B8B37C0', 3, '3', NULL, NULL, NULL, NULL, 23, 10, 1939, NULL, 'Livro de Emplacamento n.26, p.207', 6, '2017-12-18', false);
INSERT INTO public.tb_places VALUES (109, 4, '0101000020E61000005D11896C185147C04C45A9528B8B37C0', 14, '14', NULL, 24, 10, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.207', 6, '2017-12-18', false);
INSERT INTO public.tb_places VALUES (110, 4, '0101000020E61000006411896C185147C05645A9528B8B37C0', 2, '2', NULL, NULL, NULL, NULL, 23, 10, 1939, NULL, 'Livro de Emplacamento n.26, p.207', 6, '2017-12-18', false);
INSERT INTO public.tb_places VALUES (111, 4, '0101000020E61000006711D79BF95047C0006742B4558B37C0', 137, '137', NULL, 24, 10, 1939, 14, 11, 1947, NULL, 'Livro de Emplacamento n.26, p.207', 6, '2017-12-18', false);
INSERT INTO public.tb_places VALUES (112, 4, '0101000020E61000006211D79BF95047C0086742B4558B37C0', 25, '25', NULL, NULL, NULL, NULL, 23, 10, 1939, NULL, 'Livro de Emplacamento n.26, p.207', 6, '2017-12-18', false);
INSERT INTO public.tb_places VALUES (116, 4, '0101000020E61000006411896C185147C05645A9528B8B37C0', 63, '63', NULL, 24, 10, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.207', 6, '2017-12-18', false);
INSERT INTO public.tb_places VALUES (119, 160, '0101000020E6100000C82EC56CCA4E47C0C8CBBB92A08C37C0', 217, '217', NULL, 18, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.51', 6, '2017-12-18', false);
INSERT INTO public.tb_places VALUES (120, 160, '0101000020E6100000C92EC56CCA4E47C0C6CBBB92A08C37C0', 55, '55', NULL, NULL, NULL, NULL, 17, 4, 1936, NULL, 'Livro de Emplacamento n.21, p.51', 6, '2017-12-18', false);
INSERT INTO public.tb_places VALUES (127, 520, '0101000020E6100000BA490922C55247C0FC95B4D5398E37C0', 351, '351', NULL, 9, 4, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.263', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (118, 160, '0101000020E6100000AFEB3043024F47C0AB658508E08C37C0', 1, '1', NULL, NULL, NULL, NULL, 17, 4, 1936, NULL, 'Livro de Emplacamento n.21, p.51', 6, '2017-12-18', false);
INSERT INTO public.tb_places VALUES (117, 160, '0101000020E6100000AFEB3043024F47C0A3658508E08C37C0', 11, '11', NULL, 18, 4, 1936, 25, 10, 1938, NULL, 'Livro de Emplacamento n.21, p.51', 6, '2017-12-18', false);
INSERT INTO public.tb_places VALUES (121, 160, '0101000020E6100000AFEB3043024F47C0AB658508E08C37C0', 16, '16', NULL, 18, 4, 1936, 17, 12, 1954, NULL, 'Livro de Emplacamento n.21, p.52', 6, '2017-12-18', false);
INSERT INTO public.tb_places VALUES (122, 160, '0101000020E6100000978F954FCF4E47C0132894D3A58C37C0', 195, '195', NULL, 18, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.51', 6, '2017-12-18', false);
INSERT INTO public.tb_places VALUES (123, 160, '0101000020E61000009B8F954FCF4E47C0072894D3A58C37C0', 53, '53', NULL, NULL, NULL, NULL, 17, 4, 1936, NULL, 'Livro de Emplacamento n.21, p.51', 6, '2017-12-18', false);
INSERT INTO public.tb_places VALUES (124, 520, '0101000020E6100000B1B4C923CD5247C0F58EB83AA38D37C0', 19, '19', NULL, 9, 4, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.263', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (125, 520, '0101000020E610000007779A8BBE5247C0A5790F7BD18E37C0', 561, '561', NULL, 9, 4, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.264', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (126, 520, '0101000020E610000001779A8BBE5247C0AF790F7BD18E37C0', 145, '145', NULL, NULL, NULL, NULL, 8, 4, 1938, NULL, 'Livro de Emplacamento n.24, p.264', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (128, 520, '0101000020E6100000B6490922C55247C0F595B4D5398E37C0', 87, '87', NULL, NULL, NULL, NULL, 8, 4, 1938, NULL, 'Livro de Emplacamento n.24, p.263', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (129, 520, '0101000020E6100000B8B4C923CD5247C0E98EB83AA38D37C0', 48, '48', NULL, 9, 4, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.267', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (132, 520, '0101000020E6100000B6490922C55247C0F595B4D5398E37C0', 312, '312', NULL, 9, 4, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.267', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (133, 520, '0101000020E6100000B6490922C55247C0F595B4D5398E37C0', 72, '72', NULL, NULL, NULL, NULL, 8, 4, 1938, NULL, 'Livro de Emplacamento n.24, p.267', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (134, 520, '0101000020E610000001779A8BBE5247C0AF790F7BD18E37C0', 550, '550', NULL, 9, 4, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.268', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (135, 520, '0101000020E610000001779A8BBE5247C0AF790F7BD18E37C0', 132, '132', NULL, NULL, NULL, NULL, 8, 4, 1938, NULL, 'Livro de Emplacamento n.24, p.268', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (136, 520, '0101000020E6100000B8B4C923CD5247C0E98EB83AA38D37C0', 2, NULL, NULL, NULL, NULL, NULL, 8, 4, 1938, NULL, 'Livro de Emplacamento n.24, p.267', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (137, 504, '0101000020E6100000B6E58555A75247C00143D7F88F8D37C0', 26, '26', NULL, 26, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.266', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (139, 504, '0101000020E6100000C5D330709F5247C06908D71C2B8E37C0', 262, '262', NULL, 26, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.266', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (140, 504, '0101000020E6100000CCD330709F5247C06F08D71C2B8E37C0', 68, '68', NULL, NULL, NULL, NULL, 25, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.266', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (141, 504, '0101000020E6100000B9E58555A75247C00943D7F88F8D37C0', 13, '13', NULL, 26, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.267', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (142, 504, '0101000020E6100000B9E58555A75247C00943D7F88F8D37C0', 1, '1', NULL, NULL, NULL, NULL, 25, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.267', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (143, 504, '0101000020E6100000CCD330709F5247C06F08D71C2B8E37C0', 69, '69', NULL, NULL, NULL, NULL, 25, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.267', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (144, 504, '0101000020E6100000CCD330709F5247C06F08D71C2B8E37C0', 255, '255', NULL, 26, 5, 1937, 4, 11, 1949, NULL, 'Livro de Emplacamento n.22, p.267', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (138, 504, '0101000020E6100000B9E58555A75247C00943D7F88F8D37C0', 2.10000000000000009, '2ª', NULL, NULL, NULL, NULL, 25, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.266', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (145, 504, '0101000020E610000035CB6C3A634F47C04BFB6203D98E37C0', 78, '78', 'escola de economia domestica', NULL, NULL, 1931, NULL, NULL, 1931, NULL, 'Almanak Laemmert, 1931, v.II, p. 71', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (146, 494, '0101000020E61000003DA0CB6C5A4F47C062E0AF53AC8E37C0', 15, '15', NULL, 17, 9, 1931, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19A p.6', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (147, 494, '0101000020E610000038A0CB6C5A4F47C061E0AF53AC8E37C0', 78, '78', NULL, 17, 9, 1931, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19A p.6', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (148, 494, '0101000020E610000038A0CB6C5A4F47C061E0AF53AC8E37C0', 6, '6', NULL, NULL, NULL, NULL, 16, 9, 1931, NULL, 'Livro de Emplacamento n.19A p.6', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (149, 221, '0101000020E610000009C11E7E985047C0F25D8896148837C0', 123, '123', NULL, 11, 4, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.276', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (150, 221, '0101000020E61000002C95E948855047C0918A6FFB888737C0', 291, '291', NULL, 11, 4, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.276', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (151, 221, '0101000020E61000002D95E948855047C09B8A6FFB888737C0', 53, '53', NULL, NULL, NULL, NULL, 10, 4, 1938, NULL, 'Livro de Emplacamento n.24, p.276', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (152, 221, '0101000020E610000010C11E7E985047C0F95D8896148837C0', 106, '106', NULL, 11, 4, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.277', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (153, 221, '0101000020E610000010C11E7E985047C0F95D8896148837C0', 22, '22', NULL, NULL, NULL, NULL, 10, 4, 1938, NULL, 'Livro de Emplacamento n.24, p.277', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (155, 221, '0101000020E61000002D95E948855047C09B8A6FFB888737C0', 268, '268', NULL, 11, 4, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.277', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (154, 221, '0101000020E61000002D95E948855047C09B8A6FFB888737C0', 36, '36', NULL, NULL, NULL, NULL, 10, 4, 1938, NULL, 'Livro de Emplacamento n.24, p.277', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (156, 221, '0101000020E61000007E9C335E865047C004E490A04D8737C0', 360, '360', NULL, 11, 4, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.277', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (157, 221, '0101000020E6100000859C335E865047C00DE490A04D8737C0', 62, '62', NULL, NULL, NULL, 1938, 10, 4, 1938, NULL, 'Livro de Emplacamento n.24, p.277', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (158, 215, '0101000020E6100000BA394D87475147C0652DD08C968737C0', 15, '15', NULL, 18, 3, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.61', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (160, 215, '0101000020E61000005CE9663A365147C0862A82C9298737C0', 199, '199', NULL, 18, 3, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.61', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (161, 215, '0101000020E610000060E9663A365147C0802A82C9298737C0', 55, '55', NULL, NULL, NULL, NULL, 17, 3, 1937, NULL, 'Livro de Emplacamento n.22, p.61', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (159, 215, '0101000020E6100000138331083E5147C02C9256005A8737C0', 109, '109', NULL, 18, 3, 1937, 30, 12, 1954, NULL, 'Livro de Emplacamento n.22, p.61', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (162, 215, '0101000020E6100000BC394D87475147C0642DD08C968737C0', 26, '26', NULL, 18, 3, 1937, 28, 8, 1957, NULL, 'Livro de Emplacamento n.22, p.62', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (164, 215, '0101000020E6100000148331083E5147C02B9256005A8737C0', 104, '104', NULL, 18, 3, 1937, 30, 8, 1951, NULL, 'Livro de Emplacamento n.22, p.62', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (165, 215, '0101000020E6100000148331083E5147C02B9256005A8737C0', 14, '14', NULL, NULL, NULL, 1937, 17, 3, 1937, NULL, 'Livro de Emplacamento n.22, p.62', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (166, 215, '0101000020E610000060E9663A365147C0802A82C9298737C0', 190, '190', NULL, 18, 3, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.62', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (167, 448, '0101000020E61000000C50F2D6635147C05BE8F79FA68E37C0', 32, '32', NULL, 4, 6, 1938, 19, 10, 1965, NULL, 'Livro de Emplacamento n.24, p.370', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (168, 448, '0101000020E61000001050F2D6635147C05EE8F79FA68E37C0', 2, '2', NULL, NULL, NULL, NULL, 3, 6, 1938, NULL, 'Livro de Emplacamento n.24, p.370', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (169, 448, '0101000020E61000003AAED20C485147C08F46784AA38E37C0', 106, '106', NULL, 4, 6, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.370', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (170, 448, '0101000020E61000003FAED20C485147C09D46784AA38E37C0', 4, '4', NULL, NULL, NULL, NULL, 3, 6, 1938, NULL, 'Livro de Emplacamento n.24, p.370', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (171, 448, '0101000020E61000006334D0BB2B5147C02E6ABE9C9F8E37C0', 140, '140', NULL, 4, 6, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.370', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (172, 448, '0101000020E61000006934D0BB2B5147C02A6ABE9C9F8E37C0', 14, '14', NULL, NULL, NULL, NULL, 3, 6, 1938, NULL, 'Livro de Emplacamento n.24, p.370', 6, '2017-12-20', false);
INSERT INTO public.tb_places VALUES (1265, 68, '0101000020E6100000A933262D475247C07EC9061DA18C37C0', 64.0999999999999943, '64 - A', NULL, NULL, NULL, NULL, 6, 8, 1940, NULL, 'Livro de emplacamento n.27, p.182', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1283, 101, '0101000020E61000005E0F16C7DF5347C0DA46A74EB48D37C0', 194, '194', NULL, NULL, NULL, NULL, 20, 2, 1932, NULL, 'L20, p. 384', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1295, 415, '0101000020E610000040C85821D85247C00E47E8A9C88E37C0', 76, '76', NULL, NULL, NULL, NULL, 1, 4, 1936, NULL, 'Livro de emplacamento L.21, P.105', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1306, 10, '0101000020E610000036154123AC4F47C0F7ACB3F35A8D37C0', 44, '44', NULL, NULL, NULL, NULL, 19, 4, 1936, NULL, 'livro de emplacamentos L21, p.54', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1317, 315, '0101000020E610000017E6EBD6E85247C05D6BF11ED28937C0', 51, '51', NULL, NULL, NULL, NULL, 24, 10, 1936, NULL, 'Livro de emplacamento L.20, P.121', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1328, 108, '0101000020E61000003CFB203E875347C0DA2B02C74B8D37C0', 149, '149', NULL, 19, 2, 1936, 22, 8, 1951, NULL, 'L20, p. 367', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1322, 108, '0101000020E6100000758EFFC7755347C0BA91FB19948D37C0', 3, '3', NULL, NULL, NULL, NULL, 18, 2, 1935, NULL, 'L20, p. 367', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1347, 172, '0101000020E610000095DE1B78F55247C09048FB7C698737C0', 1, '1', NULL, NULL, NULL, NULL, 25, 9, 1935, NULL, 'Livro de emplacamento L.20, p.49', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (184, 233, '0101000020E610000096D3DF11CC5047C0551B70DFFB8C37C0', 5, '5', NULL, 13, 10, 1931, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19A, p.7', 6, '2017-12-21', false);
INSERT INTO public.tb_places VALUES (185, 233, '0101000020E61000009BD3DF11CC5047C05F1B70DFFB8C37C0', 1, '1', NULL, NULL, NULL, NULL, 12, 10, 1931, NULL, 'Livro de Emplacamento n.19A, p.7', 6, '2017-12-21', false);
INSERT INTO public.tb_places VALUES (186, 233, '0101000020E61000001FD3AE5CF95047C061328D60428D37C0', 53, '53', NULL, 13, 10, 1931, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19A, p.7', 6, '2017-12-21', false);
INSERT INTO public.tb_places VALUES (187, 233, '0101000020E610000025D3AE5CF95047C06B328D60428D37C0', 9.09999999999999964, '9ª', NULL, NULL, NULL, NULL, 12, 10, 1931, NULL, 'Livro de Emplacamento n.19A, p.7', 6, '2017-12-21', false);
INSERT INTO public.tb_places VALUES (188, 233, '0101000020E61000007BF781EF035147C058169C166C8D37C0', 231, '231', NULL, 13, 10, 1931, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19A p.7', 6, '2017-12-21', false);
INSERT INTO public.tb_places VALUES (189, 233, '0101000020E610000074F781EF035147C04E169C166C8D37C0', 15, '15', NULL, NULL, NULL, NULL, 12, 10, 1931, NULL, 'Livro de Emplacamento n.19A p.7', 6, '2017-12-21', false);
INSERT INTO public.tb_places VALUES (190, 233, '0101000020E61000009344DD4FFA5047C041C94089458D37C0', 79, '79', NULL, 13, 10, 1931, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19A p.7', 6, '2017-12-21', false);
INSERT INTO public.tb_places VALUES (191, 233, '0101000020E61000009244DD4FFA5047C034C94089458D37C0', 5, '5', NULL, NULL, NULL, NULL, 12, 10, 1931, NULL, 'Livro de Emplacamento n.19A p.7', 6, '2017-12-21', false);
INSERT INTO public.tb_places VALUES (199, 62, '0101000020E610000020BAB3B7795147C065F38D01D98C37C0', 33, '33', NULL, 14, 3, 1941, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n. 28, p. 127', 9, '2018-01-16', false);
INSERT INTO public.tb_places VALUES (200, 62, '0101000020E610000020BAB3FD7E5147C065F38D8FF08C37C0', 63, '63', NULL, 14, 3, 1941, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n. 28, p. 127', 9, '2018-01-16', false);
INSERT INTO public.tb_places VALUES (201, 62, '0101000020E61000001BBAB3FD7E5147C068F38D8FF08C37C0', 3.10000000000000009, '3 S°', NULL, NULL, NULL, NULL, 13, 3, 1941, NULL, 'Livro de Emplacamento n. 28, p. 127', 9, '2018-01-16', false);
INSERT INTO public.tb_places VALUES (101, 73, '0101000020E61000008B3963C83D5247C03A7682D85D8B37C0', 428, '428', NULL, 25, 5, 1939, 19, 1, 1946, NULL, 'Livro de Emplacamento n.26, p.239', 10, '2018-01-23', false);
INSERT INTO public.tb_places VALUES (202, 262, '0101000020E6100000CAB50815BB4F47C057B14560B58737C0', 30, '30', NULL, 19, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.145', 10, '2018-01-23', false);
INSERT INTO public.tb_places VALUES (203, 262, '0101000020E6100000C7B50815BB4F47C053B14560B58737C0', 2, '2', NULL, NULL, NULL, NULL, 18, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.145', 10, '2018-01-23', false);
INSERT INTO public.tb_places VALUES (204, 262, '0101000020E61000001D96578F614F47C0BB1D67E5E28737C0', 272, '272', NULL, 19, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.145', 10, '2018-01-23', false);
INSERT INTO public.tb_places VALUES (1384, 118, '0101000020E610000010E013FDC15247C0551A37A1348E37C0', 333, '333', NULL, 16, 12, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 24, p. 139', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1367, 88, '0101000020E6100000C958FFF4E95247C0269B38D7B48A37C0', 1, '1', NULL, NULL, NULL, NULL, 8, 10, 1935, NULL, 'Livro de Emplacamento - L20, p.94', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (205, 262, '0101000020E6100000E28071FF7E4F47C0CD049D2CD38737C0', 180, '180', NULL, 19, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.145', 10, '2018-01-23', false);
INSERT INTO public.tb_places VALUES (206, 262, '0101000020E6100000DB8071FF7E4F47C0C3049D2CD38737C0', 32, '32', NULL, NULL, NULL, NULL, 18, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.145', 10, '2018-01-23', false);
INSERT INTO public.tb_places VALUES (207, 262, '0101000020E6100000C7B50815BB4F47C053B14560B58737C0', 29, '29', NULL, 19, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.146', 10, '2018-01-23', false);
INSERT INTO public.tb_places VALUES (209, 262, '0101000020E61000001B96578F614F47C0C21D67E5E28737C0', 287, '287', NULL, 19, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.146', 10, '2018-01-23', false);
INSERT INTO public.tb_places VALUES (210, 262, '0101000020E61000001B96578F614F47C0C21D67E5E28737C0', 53.1000000000000014, '53A', NULL, NULL, NULL, NULL, 18, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.146', 10, '2018-01-23', false);
INSERT INTO public.tb_places VALUES (213, 450, '0101000020E6100000896A69C7245147C07F9BFFF7EA8E37C0', 339, '339', NULL, 20, 8, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.167', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (214, 450, '0101000020E6100000836A69C7245147C0799BFFF7EA8E37C0', 33, '33 A', NULL, NULL, NULL, NULL, 19, 8, 1934, NULL, 'Livro de Emplacamento n.19, p.167', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (215, 450, '0101000020E6100000CEDF2CF97C5047C02F1447F1DC8E37C0', 835, '835', NULL, 20, 8, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.168', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (216, 450, '0101000020E6100000CFDF2CF97C5047C0361447F1DC8E37C0', 125, '125', NULL, NULL, NULL, NULL, 19, 8, 1934, NULL, 'Livro de Emplacamento n.19, p.168', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (217, 450, '0101000020E6100000710134D5CC5047C0636BF2DAE18E37C0', 601, '601', NULL, 20, 8, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.167', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (218, 450, '0101000020E6100000730134D5CC5047C0616BF2DAE18E37C0', 77, '77', NULL, NULL, NULL, NULL, 19, 8, 1934, NULL, 'Livro de Emplacamento n.19, p.167', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (219, 450, '0101000020E6100000836A69C7245147C0799BFFF7EA8E37C0', 66, '66', NULL, NULL, NULL, NULL, 19, 8, 1934, NULL, 'Livro de Emplacamento n.19, p.169', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (220, 450, '0101000020E6100000836A69C7245147C0799BFFF7EA8E37C0', 314, '314', NULL, 20, 8, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.169', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (221, 450, '0101000020E6100000730134D5CC5047C0616BF2DAE18E37C0', 590, '590', NULL, 20, 8, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.170', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (222, 450, '0101000020E6100000730134D5CC5047C0616BF2DAE18E37C0', 122, '122', NULL, NULL, NULL, NULL, 19, 8, 1934, NULL, 'Livro de Emplacamento n.19, p.170', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (223, 450, '0101000020E6100000CFDF2CF97C5047C0361447F1DC8E37C0', 172, '172', NULL, NULL, NULL, NULL, 19, 8, 1934, NULL, 'Livro de Emplacamento n.19, p.170', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (224, 450, '0101000020E6100000CFDF2CF97C5047C0361447F1DC8E37C0', 850, '850', NULL, 20, 8, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.170', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (225, 286, '0101000020E61000001705786E074F47C03BBF33F6B08A37C0', 16, '16', NULL, 21, 6, 1937, 6, 8, 1957, NULL, 'Livro de Emplacamento n.22, p.259', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (226, 286, '0101000020E61000001205786E074F47C03BBF33F6B08A37C0', 2, '2', NULL, NULL, NULL, NULL, 20, 6, 1937, NULL, 'Livro de Emplacamento n.22, p.259', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (227, 286, '0101000020E6100000BF5EA872344F47C014EB9C1F568837C0', 1002, '1002', NULL, 21, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.260', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (228, 286, '0101000020E6100000B85EA872344F47C007EB9C1F568837C0', 216, '216', NULL, NULL, NULL, NULL, 20, 6, 1937, NULL, 'Livro de Emplacamento n.22, p.260', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (229, 286, '0101000020E6100000530AACF53A4F47C01E86C6F3AF8937C0', 512, '512', NULL, 21, 6, 1937, 15, 5, 1951, NULL, 'Livro de Emplacamento n.22, p.259', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (230, 286, '0101000020E61000001205786E074F47C03BBF33F6B08A37C0', 47, '47', NULL, 21, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.261', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (231, 286, '0101000020E6100000510AACF53A4F47C02886C6F3AF8937C0', 503, '503', NULL, 21, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.261', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (232, 286, '0101000020E6100000510AACF53A4F47C02886C6F3AF8937C0', 39, '39', NULL, NULL, NULL, NULL, 20, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.261', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (233, 286, '0101000020E6100000B85EA872344F47C007EB9C1F568837C0', 1001, '1001', NULL, 21, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.262', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (234, 286, '0101000020E6100000B85EA872344F47C007EB9C1F568837C0', 131, '131', NULL, NULL, NULL, NULL, 20, 6, 1937, NULL, 'Livro de Emplacamento n.22, p.262', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (235, 186, '0101000020E61000006687A67C315247C0526373C8878A37C0', 30, '30', NULL, 24, 7, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19 p.76', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (236, 186, '0101000020E61000006787A67C315247C0456373C8878A37C0', 2, '2', NULL, NULL, NULL, NULL, 23, 7, 1933, NULL, 'Livro de Emplacamento n.19 p.76', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (237, 186, '0101000020E610000093BBF671355347C0689AF1EFFD8737C0', 1384, '1384', NULL, 24, 7, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19 p.78', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (238, 186, '0101000020E610000091BBF671355347C05F9AF1EFFD8737C0', 222, '222', NULL, NULL, NULL, NULL, 23, 7, 1933, NULL, 'Livro de Emplacamento n.19 p.78', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (239, 186, '0101000020E61000001D7D3E24B55247C0FB3D1363478937C0', 696, '696', NULL, 24, 7, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19 p.77', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (240, 186, '0101000020E6100000197D3E24B55247C0F43D1363478937C0', 86.2000000000000028, '86 B', NULL, NULL, NULL, NULL, 23, 7, 1933, NULL, 'Livro de Emplacamento n.19 p.77', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (241, 186, '0101000020E6100000AD0663D44A5247C01C9998FC498A37C0', 81, '81', NULL, 24, 7, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19 p.78', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (242, 186, '0101000020E6100000A70663D44A5247C0289998FC498A37C0', 15, '15', NULL, NULL, NULL, NULL, 23, 7, 1933, NULL, 'Livro de Emplacamento n.19, p.78', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (243, 186, '0101000020E6100000197D3E24B55247C0F43D1363478937C0', 85, '85', NULL, NULL, NULL, NULL, 23, 7, 1933, NULL, 'Livro de Emplacamento n.19 p.78', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (244, 186, '0101000020E6100000197D3E24B55247C0F43D1363478937C0', 535, '535', NULL, 24, 7, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19 p.78', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (245, 186, '0101000020E610000091BBF671355347C05F9AF1EFFD8737C0', 207, '207', NULL, NULL, NULL, NULL, 23, 7, 1933, NULL, 'Livro de Emplacamento n.19, p.79', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (246, 186, '0101000020E610000091BBF671355347C05F9AF1EFFD8737C0', 1233, '1233', NULL, 24, 7, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.79', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (247, 35, '0101000020E61000009A05D7DCC35047C0F2DCD2AE498B37C0', 15, '15', NULL, 7, 10, 1936, 17, 9, 1949, NULL, 'Livro de Emplacamento n.21, p.311', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (248, 35, '0101000020E61000009405D7DCC35047C0E8DCD2AE498B37C0', 1, '1', NULL, NULL, NULL, NULL, 6, 10, 1936, NULL, 'Livro de Emplacamento n.21, p.311', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (249, 35, '0101000020E610000044A55DC7B75047C0DC947BF2D58937C0', 604, '604', NULL, 7, 10, 1936, 9, 5, 1951, NULL, 'Livro de Emplacamento n.21, p.313', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (250, 35, '0101000020E6100000D807703BB95047C068A278274E8A37C0', 460, '460', NULL, 7, 10, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.313', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (251, 35, '0101000020E610000042A55DC7B75047C0DB947BF2D58937C0', 609, '609', NULL, 7, 10, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.312', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (252, 35, '0101000020E610000042A55DC7B75047C0DB947BF2D58937C0', 111.099999999999994, '111 s°', NULL, NULL, NULL, NULL, 6, 10, 1936, NULL, 'Livro de Emplacamento n.21, p.312', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (253, 35, '0101000020E61000009405D7DCC35047C0E8DCD2AE498B37C0', 2, '2', NULL, NULL, NULL, NULL, 6, 10, 1936, NULL, 'Livro de Emplacamento n.21, p.313', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (254, 35, '0101000020E61000009405D7DCC35047C0E8DCD2AE498B37C0', 112, '112', NULL, 7, 10, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.313', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (255, 35, '0101000020E6100000D207703BB95047C066A278274E8A37C0', 50, '50', NULL, NULL, NULL, NULL, 6, 10, 1936, NULL, 'Livro de Emplacamento n.21, p.313', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (256, 35, '0101000020E6100000D207703BB95047C066A278274E8A37C0', 461, '461', NULL, 7, 10, 1936, 2, 12, 1952, NULL, 'Livro de Emplacamento n.21, p.311', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (257, 35, '0101000020E61000005ADC2F93EA5347C0FD869BE4538E37C0', 42, '42', NULL, 17, 5, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.242', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (258, 35, '0101000020E610000058DC2F93EA5347C0F8869BE4538E37C0', 2, '2', NULL, NULL, NULL, NULL, 16, 5, 1939, NULL, 'Livro de Emplacamento n.26, p.242', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (259, 401, '0101000020E61000000F08D8959D5347C0BA7CF93E018D37C0', 67, '67', NULL, 1, 12, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.108', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (260, 401, '0101000020E61000001408D8959D5347C0B87CF93E018D37C0', 3, '3', NULL, NULL, NULL, NULL, 30, 11, 1933, NULL, 'Livro de Emplacamento n.19, p.108', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (261, 401, '0101000020E61000003A30B2F1EF5347C03F2E86A87C8D37C0', 339, '339', NULL, 1, 12, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.108', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (262, 401, '0101000020E61000003B30B2F1EF5347C0342E86A87C8D37C0', 77, '77', NULL, NULL, NULL, NULL, 30, 11, 1933, NULL, 'Livro de Emplacamento n.19, p.108', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (263, 401, '0101000020E61000001408D8959D5347C0B87CF93E018D37C0', 2, '2', NULL, NULL, NULL, NULL, 30, 11, 1933, NULL, 'Livro de Emplacamento n.19, p.111', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (264, 401, '0101000020E61000001408D8959D5347C0B87CF93E018D37C0', 24, '24', NULL, 1, 12, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.111', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (265, 342, '0101000020E610000052809D85535147C02855A0374C8A37C0', 29, '29', NULL, 12, 6, 1939, 2, 2, 1980, NULL, 'Livro de Emplacamento n.25, p.299', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (266, 342, '0101000020E6100000E163CA826D5147C0D73A76653D8A37C0', 55, '55', NULL, 12, 6, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.299', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (267, 342, '0101000020E6100000DD63CA826D5147C0E13A76653D8A37C0', 3, '3', NULL, NULL, NULL, NULL, 11, 6, 1939, NULL, 'Livro de Emplacamento n.25, p.299', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (268, 342, '0101000020E6100000DD63CA826D5147C0E13A76653D8A37C0', 82, '82', NULL, 12, 6, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.299', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (1267, 415, '0101000020E61000009D78D37CDD5247C0763C9CB6698E37C0', 73, '73', NULL, 2, 4, 1936, 15, 1, 1954, NULL, 'Livro de emplacamento L.21, P.104', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1284, 415, '0101000020E610000040C85821D85247C00E47E8A9C88E37C0', 97, '97', NULL, NULL, NULL, NULL, 1, 4, 1936, NULL, 'Livro de emplacamento L.21, P.104', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1307, 315, '0101000020E6100000449E9273D75247C0761A092E938A37C0', 75, '75', NULL, 25, 10, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.20, P.121', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1296, 10, '0101000020E610000018A89890D14F47C08DFCF679548D37C0', 23, '23', NULL, NULL, NULL, NULL, 19, 4, 1936, NULL, 'livro de emplacamentos L21, p.53', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1358, 172, '0101000020E6100000C5375288265347C061487395A68737C0', 136, '136', NULL, 26, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.20, p.49', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (275, 138, '0101000020E61000003EDAF980B44F47C012D26724E58B37C0', 34, '34', NULL, 3, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.316', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (276, 138, '0101000020E61000003EDAF980B44F47C007D26724E58B37C0', 2, '2', NULL, NULL, NULL, NULL, 2, 6, 1937, NULL, 'Livro de Emplacamento n.22, p.316', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (277, 138, '0101000020E61000000955743F474F47C0E1BF7CAF408D37C0', 678, '678', NULL, 3, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.317', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (278, 138, '0101000020E61000000855743F474F47C0D3BF7CAF408D37C0', 164.099999999999994, '164 s°', NULL, NULL, NULL, NULL, 2, 6, 1937, NULL, 'Livro de Emplacamento n.22, p.317', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (279, 138, '0101000020E61000002B43BB0EA14F47C05ECCC4931E8C37C0', 122, '122', NULL, 3, 6, 1937, 16, 4, 1952, NULL, 'Livro de Emplacamento n.22, p.316', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (280, 138, '0101000020E61000002943BB0EA14F47C054CCC4931E8C37C0', 32, '32', NULL, NULL, NULL, NULL, 2, 6, 1937, NULL, 'Livro de Emplacamento n.22, p.316', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (281, 138, '0101000020E61000003EDAF980B44F47C007D26724E58B37C0', 5, '5', NULL, NULL, NULL, NULL, 2, 6, 1937, NULL, 'Livro de Emplacamento n.22, p.318', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (282, 138, '0101000020E61000003EDAF980B44F47C007D26724E58B37C0', 53, '53', NULL, 3, 6, 1957, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.318', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (283, 138, '0101000020E61000000855743F474F47C0D3BF7CAF408D37C0', 175, '175', NULL, NULL, NULL, NULL, 2, 6, 1937, NULL, 'Livro de Emplacamento n.22, p.320', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (284, 138, '0101000020E61000000855743F474F47C0D3BF7CAF408D37C0', 693, '693', NULL, 3, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.320', 6, '2018-01-31', false);
INSERT INTO public.tb_places VALUES (1318, 108, '0101000020E61000006F8EFFC7755347C0C791FB19948D37C0', 39, '39', NULL, 19, 2, 1936, NULL, NULL, NULL, NULL, 'L20, p. 367', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1329, 328, '0101000020E6100000BD813A81D05147C0517251CCAD8A37C0', 21, '21', NULL, NULL, NULL, NULL, 19, 9, 1935, NULL, 'Livro de emplacamento n.20, p.44', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1338, 328, '0101000020E61000005D38A706D45147C07A598E68A58A37C0', 28, '28', NULL, NULL, NULL, NULL, 19, 9, 1935, NULL, 'Livro de emplacamento n.20, p.44', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1348, 172, '0101000020E6100000C537D29D095347C05A48F348828737C0', 17, '17', NULL, NULL, NULL, NULL, 25, 9, 1935, NULL, 'Livro de emplacamento L.20, p.49', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1368, 287, '0101000020E61000009DEBADBA0C4F47C04317C615E08737C0', 72, '72', NULL, 5, 2, 1943, NULL, NULL, NULL, NULL, 'livro de emplacamento L31, p.58', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1385, 177, '0101000020E6100000E9DE6CE7715247C018EB19E7768737C0', 2, '2', NULL, NULL, NULL, NULL, 15, 9, 1935, NULL, 'Livro de emplacamento, n.20, p.29', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1398, 118, '0101000020E6100000B008E6A74E5247C0B4D093B0208E37C0', 2, '2', NULL, NULL, NULL, NULL, 15, 12, 1937, NULL, 'livro de emplacamento n. 24, p. 137', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1408, 118, '0101000020E61000000EE013FDC15247C0571A37A1348E37C0', 68.2000000000000028, '68-C', NULL, NULL, NULL, NULL, 15, 12, 1937, NULL, 'livro de emplacamento n. 24, p. 137', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1392, 88, '0101000020E61000008D0AC9C0EC5247C0FEBDAF6E748B37C0', 381, '381', NULL, 9, 10, 1935, 21, 2, 1947, NULL, 'Livro de Emplacamento- L20, p.94', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1377, 88, '0101000020E6100000C958FFF4E95247C0269B38D7B48A37C0', 32, '32', NULL, 9, 10, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L20, p.95', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (309, 157, '0101000020E61000004D2B20EF634F47C0A0FFDC4EC68C37C0', 7, NULL, NULL, NULL, NULL, NULL, 9, 8, 1936, NULL, 'Livro de Emplacamento n.21, p.232', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (308, 157, '0101000020E61000004D2B20EF634F47C0A5FFDC4EC68C37C0', 43, '43', NULL, 10, 8, 1936, 12, 8, 1960, NULL, 'Livro de Emplacamento n.21, p.232', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (310, 157, '0101000020E6100000C711175C0D4F47C07FD1A799618C37C0', 321, '321', NULL, 10, 8, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.232', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (311, 157, '0101000020E6100000C611175C0D4F47C089D1A799618C37C0', 59.1000000000000014, '59A', NULL, NULL, NULL, NULL, 9, 8, 1936, NULL, 'Livro de Emplacamento n.21, p.232', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (312, 157, '0101000020E6100000F4E87376CC4E47C069DD244C148C37C0', 469, '469', NULL, 10, 8, 1936, 7, 4, 1937, NULL, 'Livro de Emplacamento n.21, p.232', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (313, 157, '0101000020E6100000FAE87376CC4E47C061DD244C148C37C0', 79, '79', NULL, NULL, NULL, NULL, 9, 8, 1936, NULL, 'Livro de Emplacamento n.21, p.232', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (314, 157, '0101000020E61000004D2B20EF634F47C0A0FFDC4EC68C37C0', 22, '22', NULL, 10, 8, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.233', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (315, 157, '0101000020E6100000C611175C0D4F47C089D1A799618C37C0', 70, '70', NULL, NULL, NULL, NULL, 9, 8, 1936, NULL, 'Livro de Emplacamento n.21, p.233', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (316, 157, '0101000020E6100000C611175C0D4F47C089D1A799618C37C0', 320, '320', NULL, 10, 8, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.233', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (317, 157, '0101000020E6100000FAE87376CC4E47C061DD244C148C37C0', 92, '92', NULL, NULL, NULL, NULL, 9, 8, 1936, NULL, 'Livro de Emplacamento n.21, p.233', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (318, 157, '0101000020E6100000FAE87376CC4E47C061DD244C148C37C0', 514, '514', NULL, 10, 8, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.233', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (319, 292, '0101000020E6100000C122BBFDC94E47C071CD0FD18F8737C0', 24, '24', NULL, 16, 9, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.103', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (320, 292, '0101000020E6100000C722BBFDC94E47C070CD0FD18F8737C0', 6, '6', NULL, NULL, NULL, NULL, 15, 9, 1938, NULL, 'Livro de Emplacamento n.26, p.103', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (321, 292, '0101000020E61000009E24F069CB4E47C038E4A3EF5B8737C0', 86, '86', NULL, 16, 9, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.103', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (322, 292, '0101000020E61000009F24F069CB4E47C02BE4A3EF5B8737C0', 14, '14', NULL, NULL, NULL, NULL, 15, 9, 1938, NULL, 'Livro de Emplacamento n.26, p.103', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (323, 292, '0101000020E6100000C722BBFDC94E47C070CD0FD18F8737C0', 13, '13', NULL, 16, 9, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.104', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (324, 292, '0101000020E61000009F24F069CB4E47C02BE4A3EF5B8737C0', 5, '5', NULL, NULL, NULL, NULL, 15, 9, 1938, NULL, 'Livro de Emplacamento n.26, p.104', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (325, 292, '0101000020E61000009F24F069CB4E47C02BE4A3EF5B8737C0', 87, '87', NULL, 16, 9, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.104', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (326, 204, '0101000020E6100000A895850BD55147C075AF79EACE8737C0', 11, '11', NULL, 23, 3, 1937, 14, 12, 1960, NULL, 'Livro de Emplacamento n.21, p.385', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (327, 204, '0101000020E6100000AA95850BD55147C06AAF79EACE8737C0', 1, '1', NULL, NULL, NULL, NULL, 22, 3, 1937, NULL, 'Livro de Emplacamento n.21, p.385', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (328, 204, '0101000020E61000004A90DBD2E75147C067910DA2E08737C0', 69, '69', NULL, 23, 3, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.385', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (329, 204, '0101000020E61000004F90DBD2E75147C069910DA2E08737C0', 31, '31', NULL, NULL, NULL, NULL, 22, 3, 1937, NULL, 'Livro de Emplacamento n.21, p.385', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (330, 204, '0101000020E61000004F90DBD2E75147C069910DA2E08737C0', 32, '32', NULL, NULL, NULL, NULL, 22, 3, 1937, NULL, 'Livro de Emplacamento n.21, p.385', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (331, 204, '0101000020E61000004F90DBD2E75147C069910DA2E08737C0', 68, '68', NULL, 23, 3, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.385', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (332, 204, '0101000020E6100000AA95850BD55147C06AAF79EACE8737C0', 2, '2', NULL, NULL, NULL, NULL, 22, 3, 1937, NULL, 'Livro de Emplacamento n.21, p.385', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (333, 204, '0101000020E6100000AA95850BD55147C06AAF79EACE8737C0', 10, '10', NULL, 23, 3, 1937, 28, 9, 1937, NULL, 'Livro de Emplacamento n.21, p.385', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (334, 264, '0101000020E6100000E6F430F0C74F47C0A8FBE39BE08837C0', 50, '50', NULL, 17, 5, 1937, 18, 6, 1947, NULL, 'Livro de Emplacamento n.22, p.174', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (335, 264, '0101000020E6100000E9F430F0C74F47C0AFFBE39BE08837C0', 2, '2', NULL, NULL, NULL, NULL, 16, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.174', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (336, 264, '0101000020E61000002D254CACA54F47C045FACE26FD8737C0', 428, '428', NULL, 17, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.174', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (337, 264, '0101000020E61000002C254CACA54F47C038FACE26FD8737C0', 58, '58', NULL, NULL, NULL, NULL, 16, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.174', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (338, 264, '0101000020E6100000A619A4698B4F47C08F9162AA4A8737C0', 716, '716', NULL, 17, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.175', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (339, 264, '0101000020E6100000A819A4698B4F47C0889162AA4A8737C0', 116, '116', NULL, NULL, NULL, NULL, 16, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.175', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (340, 264, '0101000020E6100000E9F430F0C74F47C0AFFBE39BE08837C0', 1, '1', NULL, NULL, NULL, NULL, 16, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.175', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (341, 264, '0101000020E6100000E9F430F0C74F47C0AFFBE39BE08837C0', 47, '47', NULL, 17, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.175', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (342, 264, '0101000020E61000002C254CACA54F47C038FACE26FD8737C0', 45, '45', NULL, NULL, NULL, NULL, 16, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.175', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (343, 264, '0101000020E61000002C254CACA54F47C038FACE26FD8737C0', 407, '407', NULL, 17, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.175', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (344, 264, '0101000020E6100000A819A4698B4F47C0889162AA4A8737C0', 717, '717', NULL, 17, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.176', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (345, 264, '0101000020E6100000A819A4698B4F47C0889162AA4A8737C0', 113, '113', NULL, NULL, NULL, NULL, 16, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.176', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (348, 296, '0101000020E61000008225311FC64E47C0A43ED9F4F48837C0', 487, '487', NULL, 9, 8, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.96', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (349, 296, '0101000020E61000008825311FC64E47C0A53ED9F4F48837C0', 127, '127', NULL, NULL, NULL, NULL, 8, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.96', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (350, 296, '0101000020E61000009F68674DEB4E47C08B3FE775738837C0', 757, '757', NULL, 9, 8, 1938, 27, 11, 1952, NULL, 'Livro de Emplacamento n.25, p.96', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (351, 296, '0101000020E6100000A168674DEB4E47C08C3FE775738837C0', 207, '207', NULL, NULL, NULL, NULL, 8, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.96', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (352, 296, '0101000020E61000004236264AC24E47C0B1776872F48937C0', 28, '28', NULL, NULL, NULL, NULL, 8, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.97', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (353, 296, '0101000020E61000004236264AC24E47C0B1776872F48937C0', 90, '90', NULL, 9, 8, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.97', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (354, 296, '0101000020E61000008825311FC64E47C0A53ED9F4F48837C0', 126, '126', NULL, NULL, NULL, NULL, 8, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.99', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (355, 296, '0101000020E61000008825311FC64E47C0A53ED9F4F48837C0', 518, '518', NULL, 9, 8, 1938, 5, 7, 1941, NULL, 'Livro de Emplacamento n.25, p.99', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (356, 296, '0101000020E6100000A168674DEB4E47C08C3FE775738837C0', 784, '784', NULL, 9, 8, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.99', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (346, 296, '0101000020E61000004736264AC24E47C0B3776872F48937C0', 103, '103', NULL, 9, 8, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.95', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (347, 296, '0101000020E61000004236264AC24E47C0B1776872F48937C0', 31, '31', NULL, NULL, NULL, NULL, 8, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.95', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (1268, 101, '0101000020E61000001A0BADF4265347C00ACDD126158D37C0', 376, '376', NULL, 21, 2, 1936, NULL, NULL, NULL, NULL, 'L20, p. 383', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1297, 47, '0101000020E61000000AA7DC960C5147C0D9683A86658C37C0', 54, '54', NULL, 7, 12, 1936, NULL, NULL, NULL, NULL, 'L21, p. 358', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1308, 110, '0101000020E6100000E02D77D07A5347C0F1F47874A38B37C0', 45, '45', NULL, 14, 11, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 186', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (361, 375, '0101000020E61000004577F264BD5047C06961B7F1E68A37C0', 22, '22', NULL, 20, 12, 1937, 6, 8, 1954, NULL, 'Livro de Emplacamento n.24, p.147', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (362, 375, '0101000020E610000041A6E3F7AC5047C0D03E6C8FED8A37C0', 86, '86', NULL, 20, 12, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.147', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (363, 375, '0101000020E61000009A1592CF855047C00F444294EF8A37C0', 150, '150', NULL, 20, 12, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.147', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (364, 375, '0101000020E61000009A1592CF855047C013444294EF8A37C0', 142, '142', NULL, NULL, NULL, NULL, 19, 12, 1937, NULL, 'Livro de Emplacamento n.24, p.147', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (1319, 110, '0101000020E61000007F4C1AA2AB5347C0A4913185128C37C0', 267, '267', NULL, 14, 11, 1935, 6, 12, 1957, NULL, 'livro de emplacamento n. 20, p. 186', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1330, 108, '0101000020E61000003FFB203E875347C0CE2B02C74B8D37C0', 37, '37', NULL, NULL, NULL, NULL, 18, 2, 1935, NULL, 'L20, p. 367', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1339, 110, '0101000020E61000007C4C1AA2AB5347C098913185128C37C0', 12, '12', NULL, NULL, NULL, NULL, 13, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 186', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1349, 110, '0101000020E610000095B5B574E15347C0C0E0F9EB7F8C37C0', 50, '50', NULL, NULL, NULL, NULL, 13, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 186', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1359, 328, '0101000020E6100000516492DEE45147C0D7B8BF8B7D8A37C0', 227, '227', NULL, 20, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento n.20, p.44', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1369, 287, '0101000020E61000000A6AA3A51E4F47C0CA21A34AD18737C0', 2, '2', NULL, NULL, NULL, NULL, 4, 2, 1943, NULL, 'livro de emplacamento L31, p.58', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1393, 382, '0101000020E6100000F35BE2D5684F47C0960500FEC98A37C0', 252, '252', NULL, 30, 1, 1936, 22, 12, 1949, NULL, 'livro de emplacamentos L20, p.342', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1399, 177, '0101000020E6100000F4CC6A7F695347C0362068EEB18837C0', 932, '932', NULL, 16, 9, 1935, 1, 8, 1951, NULL, 'Livro de emplacamento, n.20, p.29', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1404, 382, '0101000020E6100000F65BE2D5684F47C0920500FEC98A37C0', 38, '38', NULL, NULL, NULL, NULL, 29, 1, 1936, NULL, 'livro de emplacamentos L20, p.342', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (376, 136, '0101000020E61000005847E399EE4F47C04536EFB07B8C37C0', 65, '65', NULL, 14, 5, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.119', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (377, 136, '0101000020E610000069ED4F27B74F47C05AB46552488C37C0', 193, '193', NULL, 14, 5, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.119', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (378, 136, '0101000020E61000006FED4F27B74F47C05BB46552488C37C0', 39, '39', NULL, NULL, NULL, NULL, 13, 5, 1936, NULL, 'Livro de Emplacamento n.21, p.119', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (380, 136, '0101000020E61000005347E399EE4F47C03736EFB07B8C37C0', 2, '2', NULL, NULL, NULL, NULL, 13, 5, 1936, NULL, 'Livro de Emplacamento n.21, p.120', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (379, 136, '0101000020E61000005347E399EE4F47C03736EFB07B8C37C0', 34, '34', NULL, 14, 5, 1936, 13, 6, 1949, NULL, 'Livro de Emplacamento n.21, p.120', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (381, 136, '0101000020E6100000ED138B82D24F47C017945E4C648C37C0', 104, '104', NULL, 14, 5, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.120', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (1378, 88, '0101000020E6100000C958FFF4E95247C0269B38D7B48A37C0', 2, '2', NULL, NULL, NULL, NULL, 8, 10, 1935, NULL, 'Livro de Emplacamento - L20, p.95', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1277, 68, '0101000020E6100000A933262D475247C07EC9061DA18C37C0', 219, '219', NULL, 7, 8, 1940, NULL, NULL, NULL, NULL, 'Livro de emplacamento n.27, p.183', 6, '2018-05-14', false);
INSERT INTO public.tb_places VALUES (382, 136, '0101000020E6100000F3138B82D24F47C011945E4C648C37C0', 12, '12', NULL, NULL, NULL, NULL, 13, 5, 1936, NULL, 'Livro de Emplacamento n.21, p.120', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (383, 136, '0101000020E61000006FED4F27B74F47C05BB46552488C37C0', 30, '30', NULL, NULL, NULL, NULL, 13, 5, 1936, NULL, 'Livro de Emplacamento n.21, p.120', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (384, 136, '0101000020E61000006FED4F27B74F47C05BB46552488C37C0', 156, '156', NULL, 14, 5, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.120', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (385, 389, '0101000020E6100000BC4DE44C1F4F47C0ED3B67C3668A37C0', 10, '10', NULL, 11, 8, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.64', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (386, 389, '0101000020E6100000C34DE44C1F4F47C0F73B67C3668A37C0', 2, '2', NULL, NULL, NULL, NULL, 10, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.64', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (387, 389, '0101000020E6100000487A955FDB4E47C00E37A3A30E8A37C0', 208, '208', NULL, 11, 8, 1938, 30, 6, 1960, NULL, 'Livro de Emplacamento n.25, p.64', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (388, 389, '0101000020E6100000427A955FDB4E47C00337A3A30E8A37C0', 50, '50', NULL, NULL, NULL, NULL, 10, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.64', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (389, 389, '0101000020E6100000C47921DEBF4E47C0FD097FCAEB8937C0', 366, '366', NULL, 11, 8, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.64', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (390, 389, '0101000020E6100000C87921DEBF4E47C0FB097FCAEB8937C0', 60, '60', NULL, NULL, NULL, NULL, 10, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.64', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (391, 389, '0101000020E6100000C34DE44C1F4F47C0F73B67C3668A37C0', 1, '1', NULL, NULL, NULL, NULL, 10, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.65', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (392, 389, '0101000020E6100000C34DE44C1F4F47C0F73B67C3668A37C0', 11, '11', NULL, 11, 8, 1938, 2, 5, 1949, NULL, 'Livro de Emplacamento n.25, p.65', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (393, 389, '0101000020E6100000427A955FDB4E47C00337A3A30E8A37C0', 261, '261', NULL, 11, 8, 1938, 31, 10, 1947, NULL, 'Livro de Emplacamento n.25, p.65', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (394, 389, '0101000020E6100000427A955FDB4E47C00337A3A30E8A37C0', 65, '65', NULL, NULL, NULL, NULL, 10, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.65', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (396, 389, '0101000020E6100000C87921DEBF4E47C0FB097FCAEB8937C0', 79, '79', NULL, NULL, NULL, NULL, 10, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.65', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (395, 389, '0101000020E6100000C87921DEBF4E47C0FB097FCAEB8937C0', 393, '393', NULL, 11, 8, 1938, 8, 7, 1949, NULL, 'Livro de Emplacamento n.25, p.65', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (1269, 101, '0101000020E61000001A0BADF4265347C00ACDD126158D37C0', 58, '58', NULL, NULL, NULL, 1868, 20, 2, 1936, NULL, 'L20, p. 383', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1285, 415, '0101000020E6100000C594256EE35247C0C189508BFF8D37C0', 32, '32', NULL, 2, 4, 1936, 16, 11, 1946, NULL, 'Livro de emplacamento L.21, P.105', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1806, 99, '0101000020E6100000BF66FED97E5347C07F5B23A7A48D37C0', 521, '521', NULL, 7, 3, 1936, NULL, NULL, NULL, NULL, ' L21, p.01', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (400, 261, '0101000020E61000000AA4257BB14F47C047859F99768737C0', 16, '16', NULL, 14, 5, 1937, 3, 7, 1962, NULL, 'Livro de Emplacamento n.22, p.126', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (401, 261, '0101000020E61000000BA4257BB14F47C043859F99768737C0', 2, '2', NULL, NULL, NULL, NULL, 13, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.126', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (402, 261, '0101000020E6100000A3980335584F47C03E8F31E2A38737C0', 274, '274', NULL, 14, 5, 1937, 5, 4, 1940, NULL, 'Livro de Emplacamento n.22, p.126', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (403, 261, '0101000020E6100000D3823340214F47C01CAE597CBF8737C0', 450, '450', NULL, 14, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.126', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (404, 261, '0101000020E61000000BA4257BB14F47C043859F99768737C0', 21, '21', NULL, 14, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.127', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (405, 261, '0101000020E6100000A7980335584F47C0428F31E2A38737C0', 289, '289', NULL, 14, 5, 1937, 14, 3, 1938, NULL, 'Livro de Emplacamento n.22, p.127', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (406, 261, '0101000020E6100000A7980335584F47C0428F31E2A38737C0', 27.1000000000000014, '27A', NULL, NULL, NULL, NULL, 13, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.127', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (407, 261, '0101000020E6100000CC823340214F47C025AE597CBF8737C0', 471, '471', NULL, 14, 5, 1937, 23, 1, 1962, NULL, 'Livro de Emplacamento n.22, p.127', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (409, 236, '0101000020E6100000F3AD46970B5147C0FC6497BA888D37C0', 1, '1', NULL, NULL, NULL, NULL, 29, 10, 1934, NULL, 'Livro de Emplacamento n.19, p.199', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (408, 236, '0101000020E6100000F4AD46970B5147C0046597BA888D37C0', 9, '9', NULL, 30, 10, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.199', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (410, 236, '0101000020E61000005AB29990055147C08A778369378E37C0', 309, '309', NULL, 30, 10, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.199', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (411, 236, '0101000020E610000058B29990055147C091778369378E37C0', 55, '55', NULL, NULL, NULL, NULL, 29, 10, 1934, NULL, 'Livro de Emplacamento n.19, p.199', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (412, 236, '0101000020E61000007C9F98E3005147C025AD546AE18E37C0', 583, '583', NULL, 30, 10, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.200', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (413, 236, '0101000020E6100000769F98E3005147C031AD546AE18E37C0', 121, '121', NULL, NULL, NULL, NULL, 29, 10, 1934, NULL, 'Livro de Emplacamento n.19, p.200', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (414, 236, '0101000020E6100000F3AD46970B5147C0FC6497BA888D37C0', 2, '2', NULL, NULL, NULL, NULL, 29, 10, 1934, NULL, 'Livro de Emplacamento n.19, p.202', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (415, 236, '0101000020E6100000F3AD46970B5147C0FC6497BA888D37C0', 20, '20', NULL, 30, 10, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.202', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (416, 236, '0101000020E610000058B29990055147C091778369378E37C0', 74, '74', NULL, NULL, NULL, NULL, 29, 10, 1934, NULL, 'Livro de Emplacamento n.19, p.202', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (417, 236, '0101000020E610000058B29990055147C091778369378E37C0', 308, '308', NULL, 30, 10, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.202', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (418, 236, '0101000020E6100000769F98E3005147C031AD546AE18E37C0', 122.099999999999994, '122A', NULL, NULL, NULL, NULL, 29, 10, 1934, NULL, 'Livro de Emplacamento n.19, p.202', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (419, 236, '0101000020E6100000769F98E3005147C031AD546AE18E37C0', 576, '576', NULL, 30, 10, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.202', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (420, 159, '0101000020E6100000F3768A47144F47C0304D5256AC8C37C0', 1, '1', NULL, 9, 10, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.107', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (421, 159, '0101000020E6100000ABA2720FE14E47C0080C980A718C37C0', 37, '37', NULL, 9, 10, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.107', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (422, 159, '0101000020E6100000A4A2720FE14E47C0050C980A718C37C0', 35, '35', NULL, NULL, NULL, NULL, 8, 10, 1930, NULL, 'Livro de Emplacamento n.17, p.107', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (423, 159, '0101000020E6100000A4889834BC4E47C0A61FF37F458C37C0', 43, '43', NULL, 9, 10, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.107', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (424, 159, '0101000020E6100000F5768A47144F47C02C4D5256AC8C37C0', 2, '2', NULL, 9, 10, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.107', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (425, 159, '0101000020E6100000F5768A47144F47C02C4D5256AC8C37C0', 10, '10', NULL, NULL, NULL, NULL, 8, 10, 1930, NULL, 'Livro de Emplacamento n.17, p.107', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (426, 159, '0101000020E6100000A4A2720FE14E47C0050C980A718C37C0', 56, '56', NULL, NULL, NULL, NULL, 8, 10, 1930, NULL, 'Livro de Emplacamento n.17, p.107', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (427, 159, '0101000020E6100000A4A2720FE14E47C0050C980A718C37C0', 44, '44', NULL, 9, 10, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.107', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (428, 159, '0101000020E6100000A1889834BC4E47C09E1FF37F458C37C0', 54, '54', NULL, 9, 10, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.107', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (429, 159, '0101000020E6100000A1889834BC4E47C09E1FF37F458C37C0', 68, '68', NULL, NULL, NULL, NULL, 8, 10, 1930, NULL, 'Livro de Emplacamento n.17, p.107', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (430, 74, '0101000020E6100000BF9720E4C45147C0BAF29A04CD8B37C0', 23, '23', NULL, 28, 12, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.31', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (431, 74, '0101000020E6100000BF9720E4C45147C0C3F29A04CD8B37C0', 1, '1', NULL, NULL, NULL, NULL, 27, 12, 1938, NULL, 'Livro de Emplacamento n.26, p.31', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (432, 74, '0101000020E61000002616387EE15147C01500344A248C37C0', 177, '177', NULL, 28, 12, 1938, 13, 10, 1949, NULL, 'Livro de Emplacamento n.26, p.31', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (433, 74, '0101000020E6100000BF9720E4C45147C0C3F29A04CD8B37C0', 2, '2', NULL, NULL, NULL, NULL, 27, 12, 1938, NULL, 'Livro de Emplacamento n.26, p.32', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (434, 74, '0101000020E6100000BF9720E4C45147C0C3F29A04CD8B37C0', 14, '14', NULL, 28, 12, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.32', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (435, 74, '0101000020E61000002216387EE15147C00C00344A248C37C0', 164, '164', NULL, 28, 12, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.32', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (438, 208, '0101000020E61000003489519E8E5147C0E9E388A87C8737C0', 40, '40', NULL, 23, 8, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.82', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (439, 208, '0101000020E61000002F89519E8E5147C0E3E388A87C8737C0', 48.1000000000000014, '48A', NULL, NULL, NULL, NULL, 22, 8, 1930, NULL, 'Livro de Emplacamento n.17, p.82', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (441, 208, '0101000020E6100000E698A00C7C5147C0ED129640328737C0', 76, '76', NULL, NULL, NULL, NULL, 22, 8, 1930, NULL, 'Livro de Emplacamento n.17, p.82', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (446, 208, '0101000020E61000002F89519E8E5147C0E3E388A87C8737C0', 137, '137', NULL, 20, 3, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.72', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (447, 208, '0101000020E61000002F89519E8E5147C0E3E388A87C8737C0', 29.1000000000000014, '29F', NULL, NULL, NULL, NULL, 19, 3, 1937, NULL, 'Livro de Emplacamento n.22, p.72', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (450, 208, '0101000020E61000002F89519E8E5147C0E3E388A87C8737C0', 222, '222', NULL, 20, 3, 1937, 18, 7, 1947, NULL, 'Livro de Emplacamento n.22, p.72', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (451, 208, '0101000020E6100000E698A00C7C5147C0ED129640328737C0', 340, '340', NULL, 20, 3, 1937, 11, 8, 1978, NULL, 'Livro de Emplacamento n.22, p.73', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (512, 76, '0101000020E61000002D8D5F5FAF5347C0751BB989C28C37C0', 197, '197', NULL, NULL, NULL, NULL, 13, 7, 1939, NULL, 'Livro de Emplacamento n.25, p.204', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (452, 208, '0101000020E6100000E698A00C7C5147C0ED129640328737C0', 66, '66', NULL, 23, 8, 1930, 19, 3, 1937, NULL, 'Livro de Emplacamento n.22, p.73', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (453, 208, '0101000020E61000002BADF314AB5147C0943ACA18ED8737C0', 54, '54', NULL, 20, 3, 1937, 3, 4, 1946, NULL, 'Livro de Emplacamento n.22, p.73', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (454, 208, '0101000020E610000024ADF314AB5147C0A13ACA18ED8737C0', 2, '2', NULL, 23, 8, 1930, 19, 3, 1937, NULL, 'Livro de Emplacamento n.22, p.73', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (455, 208, '0101000020E610000024ADF314AB5147C0A13ACA18ED8737C0', 23, '23', NULL, 20, 3, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.72', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (456, 208, '0101000020E610000024ADF314AB5147C0A13ACA18ED8737C0', 1, '1', NULL, 23, 8, 1930, 19, 3, 1937, NULL, 'Livro de Emplacamento n.22, p.73', 6, '2018-02-06', false);
INSERT INTO public.tb_places VALUES (457, 201, '0101000020E610000036CFE59CB65147C034A69DDCAA8737C0', 31, '31', NULL, 23, 3, 1937, 23, 6, 1953, NULL, 'Livro de Emplacamento n.21, p.383', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (458, 201, '0101000020E61000003ACFE59CB65147C027A69DDCAA8737C0', 1, '1', NULL, NULL, NULL, NULL, 22, 3, 1937, NULL, 'Livro de Emplacamento n.21, p.383', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (459, 201, '0101000020E6100000153F44CAAB5147C0ABD3F7166D8737C0', 113, '113', NULL, 23, 3, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.383', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (460, 201, '0101000020E6100000183F44CAAB5147C0B1D3F7166D8737C0', 21, '21', NULL, NULL, NULL, NULL, 22, 3, 1937, NULL, 'Livro de Emplacamento n.21, p.383', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (461, 201, '0101000020E6100000BC76C626AA5147C09421C5BD638737C0', 171, '171', NULL, 23, 3, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.383', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (462, 201, '0101000020E6100000C176C626AA5147C08D21C5BD638737C0', 23, '23', NULL, NULL, NULL, NULL, 22, 3, 1937, NULL, 'Livro de Emplacamento n.21, p.383', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (463, 201, '0101000020E61000003ACFE59CB65147C027A69DDCAA8737C0', 2, '2', NULL, NULL, NULL, NULL, 22, 3, 1937, NULL, 'Livro de Emplacamento n.21, p.384', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (464, 201, '0101000020E61000003ACFE59CB65147C027A69DDCAA8737C0', 10, '10', NULL, 23, 3, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.384', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (465, 201, '0101000020E6100000183F44CAAB5147C0B1D3F7166D8737C0', 14, '14', NULL, NULL, NULL, NULL, 22, 3, 1937, NULL, 'Livro de Emplacamento n.21, p.384', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (466, 201, '0101000020E6100000183F44CAAB5147C0B1D3F7166D8737C0', 64, '64', NULL, 23, 3, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.384', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (467, 243, '0101000020E6100000921B0186C05047C0842AE06AE38837C0', 31, '31', NULL, 5, 5, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.152', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (468, 243, '0101000020E6100000901B0186C05047C08E2AE06AE38837C0', 1, '1', NULL, NULL, NULL, NULL, 4, 5, 1936, NULL, 'Livro de Emplacamento n.21, p.152', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (469, 243, '0101000020E61000007DF1F1E5B15047C000E6010D758837C0', 167, '167', NULL, 5, 5, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.152', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (470, 243, '0101000020E610000082F1F1E5B15047C0FDE5010D758837C0', 53.1000000000000014, '53A', NULL, NULL, NULL, NULL, 4, 5, 1936, NULL, 'Livro de Emplacamento n.21, p.152', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (471, 243, '0101000020E6100000901B0186C05047C08E2AE06AE38837C0', 2, '2', NULL, NULL, NULL, NULL, 4, 5, 1936, NULL, 'Livro de Emplacamento n.21, p.153', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (472, 243, '0101000020E6100000901B0186C05047C08E2AE06AE38837C0', 14, '14', NULL, 5, 5, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.153', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (473, 243, '0101000020E610000082F1F1E5B15047C0FDE5010D758837C0', 48, '48', NULL, NULL, NULL, NULL, 4, 5, 1936, NULL, 'Livro de Emplacamento n.21, p.153', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (474, 243, '0101000020E610000082F1F1E5B15047C0FDE5010D758837C0', 196, '196', NULL, 5, 5, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.153', 6, '2018-02-07', false);
INSERT INTO public.tb_places VALUES (503, 76, '0101000020E61000006717201B1A5247C0E1142E1B3F8C37C0', 94, '94', NULL, 14, 7, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.195', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (504, 76, '0101000020E61000006717201B1A5247C0D4142E1B3F8C37C0', 16, '16', NULL, NULL, NULL, NULL, 13, 7, 1939, NULL, 'Livro de Emplacamento n.25, p.195', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (505, 76, '0101000020E6100000E244DD5C0D5347C0F807874F478C37C0', 788, '788', NULL, 14, 7, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.196', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (506, 76, '0101000020E6100000E144DD5C0D5347C00308874F478C37C0', 148.099999999999994, '148A', NULL, NULL, NULL, NULL, 13, 7, 1939, NULL, 'Livro de Emplacamento n.25, p.196', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (507, 76, '0101000020E6100000AB94B78DC65347C0E44B56CCDA8C37C0', 1414, '1414', NULL, 14, 7, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.197', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (508, 76, '0101000020E6100000A994B78DC65347C0DF4B56CCDA8C37C0', 280, '280', NULL, NULL, NULL, NULL, 13, 7, 1939, NULL, 'Livro de Emplacamento n.25, p.197', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (511, 76, '0101000020E6100000318D5F5FAF5347C0711BB989C28C37C0', 1341, '1341', NULL, 14, 7, 1939, 27, 8, 1947, NULL, 'Livro de Emplacamento n.25, p.204', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (513, 76, '0101000020E61000006717201B1A5247C0D4142E1B3F8C37C0', 1, '1', NULL, NULL, NULL, NULL, 13, 7, 1939, NULL, 'Livro de Emplacamento n.25, p.196', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (514, 76, '0101000020E6100000E144DD5C0D5347C00308874F478C37C0', 793, '793', NULL, 14, 7, 1939, 19, 9, 1969, NULL, 'Livro de Emplacamento n.25, p.204', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (515, 30, '0101000020E61000002E08E48F0D5147C0AE93B9ED128B37C0', 23, '23', NULL, 13, 9, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.399', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (516, 30, '0101000020E61000004AD2F94AF85047C028A3427D278B37C0', 69, '69', NULL, 13, 9, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.399', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (517, 30, '0101000020E61000003008E48F0D5147C0A893B9ED128B37C0', 28, '28', NULL, 13, 9, 1937, 5, 2, 1947, NULL, 'Livro de Emplacamento n.22, p.399', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (518, 30, '0101000020E61000003008E48F0D5147C0A893B9ED128B37C0', 2, '2', NULL, NULL, NULL, NULL, 12, 9, 1937, NULL, 'Livro de Emplacamento n.22, p.399', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (519, 30, '0101000020E61000004AD2F94AF85047C01BA3427D278B37C0', 74, '74', NULL, 13, 9, 1937, 11, 2, 1947, NULL, 'Livro de Emplacamento n.22, p.399', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (520, 30, '0101000020E61000004AD2F94AF85047C01BA3427D278B37C0', 8, '8', NULL, NULL, NULL, NULL, 12, 9, 1937, NULL, 'Livro de Emplacamento n.22, p.399', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (521, 453, '0101000020E6100000017CB180325147C032AB9F299F8D37C0', 3, '3', NULL, 5, 5, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.279', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (522, 453, '0101000020E6100000FE7BB180325147C025AB9F299F8D37C0', 1, '1', NULL, NULL, NULL, NULL, 4, 5, 1935, NULL, 'Livro de Emplacamento n.19, p.279', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (523, 453, '0101000020E6100000C4F6FDB02C5147C0E9AC133B3B8E37C0', 277, '277', NULL, 5, 5, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.279', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (524, 453, '0101000020E6100000C0F6FDB02C5147C0F1AC133B3B8E37C0', 45, '45', NULL, NULL, NULL, NULL, 4, 5, 1935, NULL, 'Livro de Emplacamento n.19, p.279', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (525, 453, '0101000020E61000002609C4E5255147C08481E0E9E68E37C0', 557, '557', NULL, 5, 5, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.279', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (526, 453, '0101000020E61000002809C4E5255147C08E81E0E9E68E37C0', 89, '89', NULL, NULL, NULL, NULL, 4, 5, 1935, NULL, 'Livro de Emplacamento n.19, p.279', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (527, 453, '0101000020E6100000FE7BB180325147C025AB9F299F8D37C0', 2, '2', NULL, NULL, NULL, NULL, 4, 5, 1935, NULL, 'Livro de Emplacamento n.19, p.279', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (1270, 68, '0101000020E61000008FB279D6F95147C090B75E2C688C37C0', 75, '75', NULL, 7, 8, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n. 27, p.183', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (529, 453, '0101000020E6100000C0F6FDB02C5147C0F1AC133B3B8E37C0', 64, '64', NULL, NULL, NULL, NULL, 4, 5, 1935, NULL, 'Livro de Emplacamento n.19, p.281', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (530, 453, '0101000020E6100000C0F6FDB02C5147C0F1AC133B3B8E37C0', 274, '274', NULL, 5, 5, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.281', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (531, 453, '0101000020E61000002809C4E5255147C08E81E0E9E68E37C0', 106, '106', NULL, NULL, NULL, NULL, 4, 5, 1935, NULL, 'Livro de Emplacamento n.19, p.282', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (532, 453, '0101000020E61000002809C4E5255147C08E81E0E9E68E37C0', 474, '474', NULL, 5, 5, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.282', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (533, 19, '0101000020E61000007C0FA4C72D5147C097E737D7298C37C0', 18, '18', NULL, 2, 1, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.222', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (534, 19, '0101000020E6100000810FA4C72D5147C096E737D7298C37C0', 2, '2 sº', NULL, NULL, NULL, NULL, 1, 1, 1935, NULL, 'Livro de Emplacamento n.19, p.222', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (535, 19, '0101000020E6100000A8C5444A3E5147C00B61F8AD328C37C0', 76, '76', NULL, 2, 1, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.222', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (536, 19, '0101000020E6100000ABC5444A3E5147C00261F8AD328C37C0', 4, '4 sº', NULL, NULL, NULL, NULL, 1, 1, 1935, NULL, 'Livro de Emplacamento n.19, p.222', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (537, 19, '0101000020E6100000299026C9645147C04960E504318C37C0', 162, '162', NULL, 2, 1, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.222', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (538, 19, '0101000020E61000002F9026C9645147C04160E504318C37C0', 20, '20 sº', NULL, NULL, NULL, NULL, 1, 1, 1935, NULL, 'Livro de Emplacamento n.19, p.222', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (540, 19, '0101000020E6100000ABC5444A3E5147C00261F8AD328C37C0', 63, '63', NULL, 2, 1, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.222', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (539, 19, '0101000020E6100000ABC5444A3E5147C00261F8AD328C37C0', 1, '1', NULL, NULL, NULL, NULL, 1, 1, 1935, NULL, 'Livro de Emplacamento n.19, p.222', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (541, 19, '0101000020E61000002F9026C9645147C04160E504318C37C0', 161, '161', NULL, 2, 1, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.222', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (542, 19, '0101000020E61000002F9026C9645147C04160E504318C37C0', 23, '23', NULL, NULL, NULL, NULL, 1, 1, 1935, NULL, 'Livro de Emplacamento n.19, p.222', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (544, 219, '0101000020E61000007046A7F2825047C079F1E543518737C0', 13, '13', NULL, 9, 4, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.92', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (545, 219, '0101000020E61000007346A7F2825047C07AF1E543518737C0', 1, '1', NULL, NULL, NULL, NULL, 8, 4, 1937, NULL, 'Livro de Emplacamento n.22, p.92', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (546, 219, '0101000020E6100000BF4FB502595047C019571D666B8737C0', 129, '129', NULL, 9, 4, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.92', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (547, 219, '0101000020E61000007346A7F2825047C07AF1E543518737C0', 2, '2', NULL, NULL, NULL, NULL, 8, 4, 1937, NULL, 'Livro de Emplacamento n.22, p.92', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (548, 219, '0101000020E61000007346A7F2825047C07AF1E543518737C0', 36, '36', NULL, 9, 4, 1937, 21, 6, 1940, NULL, 'Livro de Emplacamento n.22, p.92', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (549, 219, '0101000020E6100000C54FB502595047C025571D666B8737C0', 156, '156', NULL, 9, 4, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.92', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (550, 219, '0101000020E6100000C54FB502595047C025571D666B8737C0', 38, '38', NULL, NULL, NULL, NULL, 8, 4, 1937, NULL, 'Livro de Emplacamento n.22, p.92', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (551, 21, '0101000020E61000007BD57DAD7D5147C02F9E9E68818C37C0', 9, '9', NULL, 2, 10, 1936, 24, 7, 1941, NULL, 'Livro de Emplacamento n.21, p.301', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (553, 21, '0101000020E610000007D444B0405147C0A6A4DD5AAB8B37C0', 413, '413', NULL, 2, 10, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.301', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (554, 21, '0101000020E610000006D444B0405147C09CA4DD5AAB8B37C0', 51.2000000000000028, '51B', NULL, NULL, NULL, NULL, 1, 10, 1936, NULL, 'Livro de Emplacamento n.21, p.301', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (555, 21, '0101000020E6100000F8D18BD72B5147C0811F4F335F8B37C0', 561, '561', NULL, 2, 10, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.302', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (556, 21, '0101000020E6100000FBD18BD72B5147C0831F4F335F8B37C0', 73.2000000000000028, '73B', NULL, NULL, NULL, NULL, 1, 10, 1936, NULL, 'Livro de Emplacamento n.21, p.302', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (557, 21, '0101000020E61000007BD57DAD7D5147C0279E9E68818C37C0', 2, '2', NULL, NULL, NULL, NULL, 1, 10, 1936, NULL, 'Livro de Emplacamento n.21, p.303', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (552, 21, '0101000020E61000007BD57DAD7D5147C0279E9E68818C37C0', 1, '1', NULL, NULL, NULL, NULL, 1, 10, 1936, NULL, 'Livro de Emplacamento n.21, p.301', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (558, 21, '0101000020E61000007BD57DAD7D5147C0279E9E68818C37C0', 16, '16', NULL, 2, 10, 1936, 13, 9, 1940, NULL, 'Livro de Emplacamento n.21, p.303', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (559, 21, '0101000020E610000006D444B0405147C09CA4DD5AAB8B37C0', 56.1000000000000014, '56A', NULL, NULL, NULL, NULL, 1, 10, 1936, NULL, 'Livro de Emplacamento n.21, p.303', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (560, 21, '0101000020E610000006D444B0405147C09CA4DD5AAB8B37C0', 418, '418', NULL, 2, 10, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.303', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (561, 21, '0101000020E6100000FBD18BD72B5147C0831F4F335F8B37C0', 556, '556', NULL, 2, 10, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.304', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (562, 21, '0101000020E6100000FBD18BD72B5147C0831F4F335F8B37C0', 76.2000000000000028, '76C', NULL, NULL, NULL, NULL, 1, 10, 1936, NULL, 'Livro de Emplacamento n.21, p.304', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (1286, 10, '0101000020E61000005F2AB823F94F47C04C13F22A4E8D37C0', 27, '27', NULL, 20, 4, 1936, 5, 1, 1940, NULL, 'livro de emplacamentos L21, p.53', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1298, 10, '0101000020E61000005E2AB823F94F47C04613F22A4E8D37C0', 60, '60', NULL, 20, 4, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamentos L21, p.54', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1309, 328, '0101000020E6100000835EF978B75147C09D51CCB4E98A37C0', 5, '5', NULL, NULL, NULL, NULL, 19, 9, 1948, NULL, 'Livro de emplacamento n.20, p.44', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (567, 77, '0101000020E6100000B589DF95A05147C0FBD56808868C37C0', 2, '2', NULL, 28, 9, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.95', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (568, 77, '0101000020E6100000B589DF95A05147C0F1D56808868C37C0', 2, '2', NULL, NULL, NULL, NULL, 27, 9, 1933, NULL, 'Livro de Emplacamento n.19, p.95', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (569, 77, '0101000020E6100000CCEE35B7A55147C099C888C08E8C37C0', 16, '16', NULL, 28, 9, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.95', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (570, 77, '0101000020E6100000C8EE35B7A55147C09EC888C08E8C37C0', 4.09999999999999964, '4A', NULL, NULL, NULL, NULL, 27, 9, 1933, NULL, 'Livro de Emplacamento n.19, p.95', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (571, 77, '0101000020E6100000CCEE353BA95147C098C80877948C37C0', 50, '50', NULL, 28, 9, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.95', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (572, 77, '0101000020E6100000C8EE353BA95147C0A3C80877948C37C0', 2, '2 sº', NULL, NULL, NULL, NULL, 27, 9, 1933, NULL, 'Livro de Emplacamento n.19, p.95', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (573, 77, '0101000020E61000008B31828EB65147C00C437929A98C37C0', 84, '84', NULL, 28, 9, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.95', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (574, 77, '0101000020E61000009231828EB65147C010437929A98C37C0', 12, '12', NULL, NULL, NULL, NULL, 27, 9, 1933, NULL, 'Livro de Emplacamento n.19, p.95', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (575, 77, '0101000020E6100000C8EE353BA95147C0A3C80877948C37C0', 1, '1', NULL, NULL, NULL, NULL, 27, 9, 1933, NULL, 'Livro de Emplacamento n.19, p.95', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (576, 77, '0101000020E6100000C8EE353BA95147C0A3C80877948C37C0', 57, '57', NULL, 28, 9, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.95', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (577, 77, '0101000020E61000009231828EB65147C010437929A98C37C0', 95, '95', NULL, 28, 9, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.95', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (1320, 315, '0101000020E6100000439E9273D75247C0791A092E938A37C0', 56, '56', NULL, 25, 10, 1936, 30, 9, 1947, NULL, 'Livro de emplacamento L.20, P.121', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1331, 110, '0101000020E6100000330D75CD925347C059102F97DB8B37C0', 154, '154', NULL, 14, 11, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 186', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1340, 172, '0101000020E6100000C437D29D095347C05548F348828737C0', 83, '83', NULL, 26, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.20, p.49', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1350, 110, '0101000020E610000095B5B574E15347C0C0E0F9EB7F8C37C0', 50, '50', NULL, NULL, NULL, NULL, 13, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 186', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1360, 328, '0101000020E6100000516492DEE45147C0D7B8BF8B7D8A37C0', 31, '31', NULL, NULL, NULL, NULL, 19, 9, 1935, NULL, 'Livro de emplacamento n.20, p.44', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1370, 287, '0101000020E610000098EBADBA0C4F47C04D17C615E08737C0', 6, '6', NULL, NULL, NULL, NULL, 4, 2, 1943, NULL, 'livro de emplacamento L31, p.58', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1271, 10, '0101000020E610000063AC697D2C5147C0C835B39BD18C37C0', 1, '1', NULL, NULL, NULL, NULL, 4, 11, 1936, NULL, 'livro de emplacamentos L21 p.338', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (589, 358, '0101000020E61000007E18E1A1785047C0A6697899508937C0', 12, '12', NULL, 31, 5, 1937, 16, 12, 1944, NULL, 'Livro de Emplacamento n.22, p.199', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (590, 358, '0101000020E61000008418E1A1785047C0A2697899508937C0', 2, '2', NULL, NULL, NULL, NULL, 30, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.199', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (591, 358, '0101000020E61000007A1801A0695047C0A669B86E598937C0', 50, '50', NULL, 31, 5, 1937, 30, 9, 1948, NULL, 'Livro de Emplacamento n.22, p.199', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (592, 358, '0101000020E6100000751801A0695047C0A269B86E598937C0', 20, '20', NULL, NULL, NULL, NULL, 30, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.199', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (593, 358, '0101000020E6100000E7B68D625F5047C0C456886B5F8937C0', 82, '82', NULL, 31, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.199', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (594, 358, '0101000020E6100000E8B68D625F5047C0C256886B5F8937C0', 22, '22', NULL, NULL, NULL, NULL, 30, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.199', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (595, 358, '0101000020E61000008418E1A1785047C0A2697899508937C0', 1, '1', NULL, NULL, NULL, NULL, 30, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.199', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (596, 358, '0101000020E61000008418E1A1785047C0A2697899508937C0', 23, '23', NULL, 31, 5, 1937, 24, 9, 1959, NULL, 'Livro de Emplacamento n.22, p.199', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (597, 358, '0101000020E6100000751801A0695047C0A269B86E598937C0', 5, '5', NULL, NULL, NULL, NULL, 30, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.199', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (598, 358, '0101000020E6100000751801A0695047C0A269B86E598937C0', 33, '33', NULL, 31, 5, 1937, 24, 10, 1945, NULL, 'Livro de Emplacamento n.22, p.199', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (599, 358, '0101000020E6100000E8B68D625F5047C0C256886B5F8937C0', 7, '7', NULL, NULL, NULL, NULL, 30, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.199', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (600, 358, '0101000020E6100000E8B68D625F5047C0C256886B5F8937C0', 83, '83', NULL, 31, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.199', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (601, 53, '0101000020E61000003B40F95E6C5147C07E53F4D74B8B37C0', 35, '35', NULL, 5, 12, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.105', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (602, 53, '0101000020E61000003940F95E6C5147C07653F4D74B8B37C0', 3, '3', NULL, NULL, NULL, NULL, 4, 12, 1933, NULL, 'Livro de Emplacamento n.19, p.105', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (603, 53, '0101000020E6100000D892B25B745147C06D5D7FE2FE8A37C0', 105, '105', NULL, 5, 12, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.105', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (604, 53, '0101000020E6100000DD92B25B745147C0795D7FE2FE8A37C0', 33, '33', NULL, NULL, NULL, NULL, 4, 12, 1933, NULL, 'Livro de Emplacamento n.19, p.105', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (605, 53, '0101000020E6100000D892D22B755147C06D5D1F97F58A37C0', 131, '131', NULL, 5, 12, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.105', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (606, 53, '0101000020E6100000DF92D22B755147C06F5D1F97F58A37C0', 1, '1', NULL, NULL, NULL, NULL, 4, 12, 1933, NULL, 'Livro de Emplacamento n.19, p.105', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (607, 53, '0101000020E6100000D847A4447C5147C0C9818159B28A37C0', 215, '215', NULL, 5, 12, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.105', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (608, 53, '0101000020E61000003940F95E6C5147C07653F4D74B8B37C0', 6, '6', NULL, NULL, NULL, NULL, 4, 12, 1933, NULL, 'Livro de Emplacamento n.19, p.105', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (609, 53, '0101000020E61000003940F95E6C5147C07653F4D74B8B37C0', 2, '2', NULL, 5, 12, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.105', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (610, 53, '0101000020E6100000DD92B25B745147C0795D7FE2FE8A37C0', 34, '34', NULL, NULL, NULL, NULL, 4, 12, 1933, NULL, 'Livro de Emplacamento n.19, p.105', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (611, 53, '0101000020E6100000DD92B25B745147C0795D7FE2FE8A37C0', 104, '104', NULL, 5, 12, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.106', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (612, 53, '0101000020E6100000DF92D22B755147C06F5D1F97F58A37C0', 4, '4', NULL, NULL, NULL, NULL, 4, 12, 1933, NULL, 'Livro de Emplacamento n.19, p.106', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (613, 53, '0101000020E6100000DF92D22B755147C06F5D1F97F58A37C0', 158, '158', NULL, 5, 12, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.106', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (614, 53, '0101000020E6100000D547A4447C5147C0C8818159B28A37C0', 222, '222', NULL, 5, 12, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.106', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (615, 196, '0101000020E6100000D96E45E6F05147C05A3E5207858A37C0', 25, '25', NULL, 30, 1, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.229', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (616, 196, '0101000020E6100000DF6E45E6F05147C04D3E5207858A37C0', 1, '1A', NULL, NULL, NULL, NULL, 29, 1, 1935, NULL, 'Livro de Emplacamento n.19, p.229', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (617, 196, '0101000020E61000008D91A6FD7F5247C037407524098937C0', 773, '773', NULL, 30, 1, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.229', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (618, 196, '0101000020E61000009391A6FD7F5247C041407524098937C0', 109, '109', NULL, NULL, NULL, NULL, 29, 1, 1935, NULL, 'Livro de Emplacamento n.19, p.229', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (619, 196, '0101000020E61000007CABA2C40C5347C069234F7D8C8737C0', 1527, '1527', NULL, 30, 1, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.230', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (620, 196, '0101000020E61000007BABA2C40C5347C071234F7D8C8737C0', 173, '173', NULL, NULL, NULL, NULL, 29, 1, 1935, NULL, 'Livro de Emplacamento n.19, p.230', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (621, 196, '0101000020E6100000DF6E45E6F05147C04D3E5207858A37C0', 2, '2A', NULL, NULL, NULL, NULL, 29, 1, 1935, NULL, 'Livro de Emplacamento n.19, p.231', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (622, 196, '0101000020E6100000DF6E45E6F05147C04D3E5207858A37C0', 16, '16', NULL, 30, 1, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.231', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (623, 196, '0101000020E61000009391A6FD7F5247C041407524098937C0', 774, '774', NULL, 30, 1, 1935, NULL, 1, NULL, NULL, 'Livro de Emplacamento n.19, p.231', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (624, 196, '0101000020E61000007BABA2C40C5347C071234F7D8C8737C0', 1554, '1554', NULL, 30, 1, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.230', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (625, 196, '0101000020E61000007BABA2C40C5347C071234F7D8C8737C0', 170, '170', NULL, NULL, NULL, NULL, 29, 1, 1935, NULL, 'Livro de Emplacamento n.19, p.232', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (626, 196, '0101000020E61000001FA17AAD825247C02EDE4AB8018937C0', 810, '810', NULL, 30, 1, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.231', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (627, 196, '0101000020E61000001FA17AAD825247C023DE4AB8018937C0', 100.099999999999994, '100A', NULL, NULL, NULL, NULL, 29, 1, 1935, NULL, 'Livro de Emplacamento n.19, p.231', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (628, 323, '0101000020E61000005B5377CB895147C0289D4048188937C0', 21, '21', NULL, 5, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.395', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (629, 323, '0101000020E6100000585377CB895147C0239D4048188937C0', 1, '1', NULL, NULL, NULL, NULL, 4, 9, 1935, NULL, 'Livro de Emplacamento n.19, p.395', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (630, 323, '0101000020E610000054325F0C095247C06C475A1AC28937C0', 493, '493', NULL, 5, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.396', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (631, 323, '0101000020E610000058325F0C095247C06B475A1AC28937C0', 93.4000000000000057, '93D', NULL, NULL, NULL, NULL, 4, 9, 1935, NULL, 'Livro de Emplacamento n.19, p.396', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (632, 323, '0101000020E6100000952619EF415247C068185B9D0C8A37C0', 701, '701', NULL, 5, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.396', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (633, 323, '0101000020E61000008F2619EF415247C072185B9D0C8A37C0', 135, '135', NULL, NULL, NULL, NULL, 4, 9, 1935, NULL, 'Livro de Emplacamento n.19, p.396', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (634, 323, '0101000020E6100000585377CB895147C0239D4048188937C0', 2, '2', NULL, NULL, NULL, NULL, 4, 9, 1935, NULL, 'Livro de Emplacamento n.19, p.397', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (635, 323, '0101000020E6100000585377CB895147C0239D4048188937C0', 18, '18', NULL, 5, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.397', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (636, 323, '0101000020E610000058325F0C095247C06B475A1AC28937C0', 500, '500', NULL, 5, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.398', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (637, 323, '0101000020E610000058325F0C095247C06B475A1AC28937C0', 98.1200000000000045, '98G', NULL, NULL, NULL, NULL, 4, 9, 1935, NULL, 'Livro de Emplacamento n.19, p.398', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (638, 323, '0101000020E61000008F2619EF415247C072185B9D0C8A37C0', 702, '702', NULL, 5, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.397', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (639, 323, '0101000020E61000008F2619EF415247C072185B9D0C8A37C0', 144, '144', NULL, NULL, NULL, NULL, 4, 9, 1935, NULL, 'Livro de Emplacamento n.19, p.397', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (640, 198, '0101000020E610000050D244B00F5247C065C7205E888737C0', 25, '25', NULL, 20, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.217', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (641, 198, '0101000020E610000056D244B00F5247C05AC7205E888737C0', 1, '1', NULL, NULL, NULL, NULL, 19, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.217', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (642, 198, '0101000020E6100000CF1A9BAF2A5247C09CF41681278737C0', 195, '195', NULL, 20, 5, 1937, 27, 2, 1942, NULL, 'Livro de Emplacamento n.22, p.217', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (643, 198, '0101000020E6100000D11A9BAF2A5247C0A8F41681278737C0', 63.1000000000000014, '63A', NULL, NULL, NULL, NULL, 19, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.217', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (644, 198, '0101000020E610000056D244B00F5247C05AC7205E888737C0', 2, '2', NULL, NULL, NULL, NULL, 19, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.220', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (645, 198, '0101000020E610000056D244B00F5247C05AC7205E888737C0', 10, '10', NULL, 20, 5, 1937, 20, 7, 1939, NULL, 'Livro de Emplacamento n.22, p.220', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (646, 198, '0101000020E6100000D11A9BAF2A5247C0A8F41681278737C0', 52, '52', NULL, NULL, NULL, NULL, 19, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.217', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (647, 198, '0101000020E6100000D11A9BAF2A5247C0A8F41681278737C0', 198, '198', NULL, 20, 5, 1937, 1, 3, 1944, NULL, 'Livro de Emplacamento n.22, p.217', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (648, 65, '0101000020E61000006210F8618C5147C029AF012D418C37C0', 73, '73', NULL, 24, 5, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.243', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (649, 65, '0101000020E61000006410F8618C5147C025AF012D418C37C0', 1, '1', NULL, NULL, NULL, NULL, 23, 5, 1939, NULL, 'Livro de Emplacamento n.26, p.243', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (650, 65, '0101000020E6100000F0D76E41B35147C0428035D4688C37C0', 171, '171', NULL, 24, 5, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.243', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (651, 65, '0101000020E6100000ECD76E41B35147C04B8035D4688C37C0', 45, '45', NULL, NULL, NULL, NULL, 23, 5, 1939, NULL, 'Livro de Emplacamento n.26, p.243', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (652, 291, '0101000020E6100000D8C674CCDA4E47C0BD9848A1F18737C0', 15, '15', NULL, 5, 7, 1938, 21, 2, 1952, NULL, 'Livro de Emplacamento n.24, p.398', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (653, 291, '0101000020E6100000D5C674CCDA4E47C0BF9848A1F18737C0', 1, '1', NULL, NULL, NULL, NULL, 4, 7, 1938, NULL, 'Livro de Emplacamento n.24, p.398', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (654, 291, '0101000020E61000002E68DBA4F04E47C0AEF84C2AB28737C0', 137, '137', NULL, 5, 7, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.398', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (655, 291, '0101000020E61000002D68DBA4F04E47C0ACF84C2AB28737C0', 13, '13 so', NULL, NULL, NULL, NULL, 4, 7, 1938, NULL, 'Livro de Emplacamento n.24, p.398', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (656, 291, '0101000020E610000005F81A21004F47C0299AA775888737C0', 211, '211', NULL, 5, 7, 1938, 2, 7, 1954, NULL, 'Livro de Emplacamento n.24, p.398', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (657, 291, '0101000020E610000006F81A21004F47C0339AA775888737C0', 19.1000000000000014, '19 sob', NULL, NULL, NULL, NULL, 4, 7, 1938, NULL, 'Livro de Emplacamento n.24, p.398', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (658, 291, '0101000020E6100000D5C674CCDA4E47C0BF9848A1F18737C0', 2, '2', NULL, NULL, NULL, NULL, 4, 7, 1938, NULL, 'Livro de Emplacamento n.24, p.398', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (659, 291, '0101000020E6100000D5C674CCDA4E47C0BF9848A1F18737C0', 44, '44', NULL, 5, 7, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.398', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (660, 291, '0101000020E61000002D68DBA4F04E47C0ACF84C2AB28737C0', 118, '118', NULL, 5, 7, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.398', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (661, 291, '0101000020E610000006F81A21004F47C0339AA775888737C0', 22, '22', NULL, NULL, NULL, NULL, 4, 7, 1938, NULL, 'Livro de Emplacamento n.24, p.398', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (662, 291, '0101000020E610000006F81A21004F47C0339AA775888737C0', 206, '206', NULL, 5, 7, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.398', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (663, 93, '0101000020E610000072ECBF473A5347C0B435E5A3378B37C0', 1, '1', NULL, 17, 9, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.166', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (664, 93, '0101000020E61000008BCF20713B5347C045DA80469F8B37C0', 3, '3', NULL, 17, 9, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.166', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (665, 93, '0101000020E61000001926AE853C5347C06B4167DBF08B37C0', 29, '29', NULL, 17, 9, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.166', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (666, 93, '0101000020E61000008FCF20713B5347C042DA80469F8B37C0', 4, '4', NULL, 17, 9, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.166', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (667, 93, '0101000020E61000002B3FAB0E3B5347C0464BBFF1708B37C0', 2, '2', NULL, 17, 9, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.166', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (668, 290, '0101000020E610000013FEE6F7BD4E47C0B38E5F211F8837C0', 12, '12', NULL, 20, 7, 1937, 3, 8, 1983, NULL, 'Livro de Emplacamento n.23A, p.1', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (669, 290, '0101000020E610000013FEE6F7BD4E47C0B08E5F211F8837C0', 13, '13', NULL, 20, 7, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.23A, p.3', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (670, 242, '0101000020E6100000080DFD19DD5047C03D5C3774D98837C0', 31, '31', NULL, 28, 7, 1936, 6, 3, 1950, NULL, 'Livro de Emplacamento n.21, p.203', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (671, 242, '0101000020E61000000C0DFD19DD5047C0345C3774D98837C0', 1, '1', NULL, NULL, NULL, NULL, 27, 7, 1936, NULL, 'Livro de Emplacamento n.21, p.203', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (672, 242, '0101000020E6100000BD40DF2DCD5047C0E92C720C678837C0', 183, '183', NULL, 28, 7, 1936, 10, 3, 1948, NULL, 'Livro de Emplacamento n.21, p.203', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (673, 242, '0101000020E6100000C040DF2DCD5047C0E52C720C678837C0', 47, '47', NULL, NULL, NULL, NULL, 27, 7, 1936, NULL, 'Livro de Emplacamento n.21, p.203', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (674, 242, '0101000020E61000000C0DFD19DD5047C0345C3774D98837C0', 2, '2 sº', NULL, NULL, NULL, NULL, 27, 7, 1936, NULL, 'Livro de Emplacamento n.21, p.204', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (675, 242, '0101000020E61000000C0DFD19DD5047C0345C3774D98837C0', 32, '32', NULL, 28, 7, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.204', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (676, 242, '0101000020E6100000C040DF2DCD5047C0E52C720C678837C0', 58, '58', NULL, NULL, NULL, NULL, 27, 7, 1936, NULL, 'Livro de Emplacamento n.21, p.204', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (677, 242, '0101000020E6100000C040DF2DCD5047C0E52C720C678837C0', 190, '190', NULL, 28, 7, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21, p.204', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (685, 7, '0101000020E61000008252C28A0B5147C0E34AB914898C37C0', 12, '12', NULL, 29, 8, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.211', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (686, 7, '0101000020E61000008152C28A0B5147C0D94AB914898C37C0', 2, '2A', NULL, NULL, NULL, NULL, 28, 8, 1939, NULL, 'Livro de Emplacamento n.26, p.211', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (687, 7, '0101000020E6100000C1DDAA70EF5047C03E2E52ED748C37C0', 64, '64', NULL, 29, 8, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.211', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (688, 7, '0101000020E6100000C2DDAA70EF5047C0352E52ED748C37C0', 12.0999999999999996, '12A', NULL, NULL, NULL, NULL, 28, 8, 1939, NULL, 'Livro de Emplacamento n.26, p.211', 6, '2018-02-08', false);
INSERT INTO public.tb_places VALUES (689, 445, '0101000020E6100000C544B97D4D5147C02DA986FD388E37C0', 5, '5', NULL, 7, 3, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.241', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (690, 445, '0101000020E6100000D34AFC2F4A5147C05FA0EF5CA08E37C0', 145, '145', NULL, 7, 3, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.241', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (691, 445, '0101000020E6100000D24AFC2F4A5147C05FA0EF5CA08E37C0', 33.1000000000000014, '33A', NULL, NULL, NULL, NULL, 6, 3, 1935, NULL, 'Livro de Emplacamento n.19, p.241', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (692, 445, '0101000020E6100000BE44B97D4D5147C02DA986FD388E37C0', 6, '6', NULL, 7, 3, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.243', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (693, 445, '0101000020E6100000BE44B97D4D5147C02DA986FD388E37C0', 2, '2', NULL, NULL, NULL, NULL, 6, 3, 1935, NULL, 'Livro de Emplacamento n.19, p.243', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (694, 445, '0101000020E6100000D24AFC2F4A5147C05FA0EF5CA08E37C0', 170, '170', NULL, 7, 3, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.243', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (695, 445, '0101000020E6100000D24AFC2F4A5147C05FA0EF5CA08E37C0', 48, '48', NULL, NULL, NULL, NULL, 6, 3, 1935, NULL, 'Livro de Emplacamento n.19, p.243', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (696, 445, '0101000020E610000096B7069D485147C0CA8F0C59CE8E37C0', 256, '256', NULL, 7, 3, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.243', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (697, 445, '0101000020E61000009AB7069D485147C0C98F0C59CE8E37C0', 62, '62', NULL, NULL, NULL, NULL, 6, 3, 1935, NULL, 'Livro de Emplacamento n.19, p.243', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (698, 212, '0101000020E610000015695759785147C0B2053195F28937C0', 110, '110', NULL, 28, 11, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.348', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (699, 212, '0101000020E61000000F695759785147C0B8053195F28937C0', 4, '4-sob', NULL, NULL, NULL, NULL, 27, 11, 1939, NULL, 'Livro de Emplacamento n.26, p.348', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (700, 212, '0101000020E610000077DC1902875147C0C0C6DA65AC8937C0', 200, '200', NULL, 28, 11, 1939, 27, 9, 1955, NULL, 'Livro de Emplacamento n.26, p.348', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (701, 212, '0101000020E610000076DC1902875147C0BCC6DA65AC8937C0', 16, '16', NULL, NULL, NULL, NULL, 27, 11, 1939, NULL, 'Livro de Emplacamento n.26, p.348', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (702, 212, '0101000020E610000038F16FC9855147C034CAFCD1FD8837C0', 484, '484', NULL, 28, 11, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.348', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (703, 212, '0101000020E610000038F16FC9855147C035CAFCD1FD8837C0', 74, '74', NULL, NULL, NULL, NULL, 27, 11, 1939, NULL, 'Livro de Emplacamento n.26, p.348', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (704, 212, '0101000020E6100000F039CA61705147C075EC8954148A37C0', 83, '83', NULL, 28, 11, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.349', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (705, 212, '0101000020E6100000F639CA61705147C07FEC8954148A37C0', 1, '1-sob', NULL, NULL, NULL, NULL, 27, 11, 1939, NULL, 'Livro de Emplacamento n.26, p.349', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (707, 212, '0101000020E61000001AB02A48865147C0315B2BE9B58937C0', 17.3999999999999986, '17C', NULL, NULL, NULL, NULL, 27, 11, 1939, NULL, 'Livro de Emplacamento n.26, p.349', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (706, 212, '0101000020E61000001BB02A48865147C03B5B2BE9B58937C0', 175, '175', NULL, 28, 11, 1939, 29, 10, 1979, NULL, 'Livro de Emplacamento n.26, p.349', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (708, 212, '0101000020E610000038F16FC9855147C035CAFCD1FD8837C0', 45.2000000000000028, '45A', NULL, NULL, NULL, NULL, 27, 11, 1939, NULL, 'Livro de Emplacamento n.26, p.348', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (709, 212, '0101000020E610000038F16FC9855147C035CAFCD1FD8837C0', 479, '479', NULL, 28, 11, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.349', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (710, 457, '0101000020E61000007FF3ED0D4E5047C017EF5AFC7A8D37C0', 227, '227', NULL, 16, 4, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.267', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (711, 457, '0101000020E610000085F3ED0D4E5047C012EF5AFC7A8D37C0', 49, '49', NULL, NULL, NULL, NULL, 15, 4, 1935, NULL, 'Livro de Emplacamento n.19, p.267', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (712, 457, '0101000020E61000005DB1DB8C915047C030C7134B838E37C0', 465, '465', NULL, 16, 4, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.267', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (713, 457, '0101000020E61000005CB1DB8C915047C033C7134B838E37C0', 69.0999999999999943, '69A', NULL, NULL, NULL, NULL, 15, 4, 1935, NULL, 'Livro de Emplacamento n.19, p.267', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (714, 457, '0101000020E6100000BF00B8BCAB5047C0492140A0E68E37C0', 677, '677', NULL, 16, 4, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.267', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (715, 457, '0101000020E6100000B900B8BCAB5047C0512140A0E68E37C0', 119, '119', NULL, NULL, NULL, NULL, 15, 4, 1935, NULL, 'Livro de Emplacamento n.19, p.267', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (716, 457, '0101000020E610000085F3ED0D4E5047C012EF5AFC7A8D37C0', 6, '6', NULL, NULL, NULL, NULL, 15, 4, 1935, NULL, 'Livro de Emplacamento n.19, p.269', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (717, 457, '0101000020E610000085F3ED0D4E5047C012EF5AFC7A8D37C0', 26, '26', NULL, 16, 4, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.269', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (718, 457, '0101000020E61000005CB1DB8C915047C033C7134B838E37C0', 498, '498', NULL, 16, 4, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.269', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (720, 457, '0101000020E6100000B900B8BCAB5047C0512140A0E68E37C0', 134, '134', NULL, NULL, NULL, NULL, 15, 4, 1935, NULL, 'Livro de Emplacamento n.19, p.269', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (719, 457, '0101000020E6100000B900B8BCAB5047C0512140A0E68E37C0', 686, '686', NULL, 16, 4, 1935, 14, 3, 1938, NULL, 'Livro de Emplacamento n.19, p.269', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (721, 206, '0101000020E6100000AF9F283B245147C0BCDA085E648737C0', 37, '37', NULL, 24, 3, 1937, 23, 8, 1946, NULL, 'Livro de Emplacamento n.22, p.84', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (722, 206, '0101000020E6100000AF9F283B245147C0B0DA085E648737C0', 3, '3', NULL, NULL, NULL, NULL, 23, 3, 1937, NULL, 'Livro de Emplacamento n.22, p.84', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (723, 209, '0101000020E610000028901C50565147C0C208DBDA448737C0', 169, '169', NULL, 24, 3, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.84', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (724, 209, '0101000020E610000021901C50565147C0C608DBDA448737C0', 27, '27', NULL, NULL, NULL, NULL, 23, 3, 1937, NULL, 'Livro de Emplacamento n.22, p.84', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (725, 209, '0101000020E6100000A6F673577E5147C05B5D38952B8737C0', 359, '359', NULL, 24, 3, 1937, 27, 9, 1940, NULL, 'Livro de Emplacamento n.22, p.84', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (726, 209, '0101000020E6100000A0F673577E5147C0605D38952B8737C0', 53, '53', NULL, NULL, NULL, NULL, 23, 3, 1937, NULL, 'Livro de Emplacamento n.22, p.84', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (727, 206, '0101000020E6100000AF9F283B245147C0B0DA085E648737C0', 50, '50', NULL, 24, 3, 1937, 9, 11, 1953, NULL, 'Livro de Emplacamento n.22, p.85', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (728, 209, '0101000020E610000021901C50565147C0C608DBDA448737C0', 32, '32', NULL, NULL, NULL, NULL, 23, 3, 1937, NULL, 'Livro de Emplacamento n.22, p.85', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (729, 209, '0101000020E610000021901C50565147C0C608DBDA448737C0', 170, '170', NULL, 24, 3, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.85', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (730, 206, '0101000020E6100000220577BE3F5147C0DADDB93B538737C0', 110, '110', NULL, 24, 3, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.85', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (731, 206, '0101000020E61000001F0577BE3F5147C0E2DDB93B538737C0', 14.0999999999999996, '14A', NULL, NULL, NULL, NULL, 23, 3, 1937, NULL, 'Livro de Emplacamento n.22, p.85', 6, '2018-02-09', false);
INSERT INTO public.tb_places VALUES (732, 420, '0101000020E61000000EC6D7261F5247C063F37BB9E78E37C0', 48, '48', NULL, NULL, NULL, NULL, 8, 7, 1930, NULL, 'Livro de Emplacamento n.17, p.50', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (733, 420, '0101000020E61000000CC6D7261F5247C055F37BB9E78E37C0', 74, '74', NULL, 9, 7, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.50', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (734, 234, '0101000020E6100000B374E9C32E5147C07A4604654B8D37C0', 2, '2', NULL, NULL, NULL, NULL, 10, 7, 1939, NULL, 'Livro de Emplacamento n.25, p.252', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (735, 234, '0101000020E6100000C533E1821E5147C05ABAF00C5A8D37C0', 64, '64', NULL, 11, 7, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.252', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (736, 234, '0101000020E6100000BE33E1821E5147C059BAF00C5A8D37C0', 18, '18', NULL, NULL, NULL, NULL, 10, 7, 1939, NULL, 'Livro de Emplacamento n.25, p.252', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (737, 234, '0101000020E6100000E9DFD6DE035147C0F72095CD708D37C0', 156, '156', NULL, 11, 7, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.252', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (738, 234, '0101000020E6100000EEDFD6DE035147C0F02095CD708D37C0', 56, '56', NULL, NULL, NULL, NULL, 10, 7, 1939, NULL, 'Livro de Emplacamento n.25, p.252', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (739, 234, '0101000020E6100000B874E9C32E5147C0714604654B8D37C0', 15, '15', NULL, NULL, NULL, NULL, 10, 7, 1939, NULL, 'Livro de Emplacamento n.25, p.252', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (740, 234, '0101000020E6100000B874E9C32E5147C0714604654B8D37C0', 19, '19', NULL, 11, 7, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.252', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (741, 234, '0101000020E610000032489EF7225147C0C99E1800568D37C0', 39, '39', NULL, 11, 7, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.252', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (742, 234, '0101000020E610000036489EF7225147C0C29E1800568D37C0', 17.1999999999999993, '17 - B', NULL, NULL, NULL, NULL, 10, 7, 1939, NULL, 'Livro de Emplacamento n.25, p.252', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (743, 234, '0101000020E6100000EEDFD6DE035147C0F02095CD708D37C0', 37, '37', NULL, 11, 7, 1939, 9, 10, 1945, NULL, 'Livro de Emplacamento n.25, p.252', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (744, 265, '0101000020E61000001379C2A7A74F47C03845A580378737C0', 32, '32', NULL, 14, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.212', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (745, 265, '0101000020E61000001A79C2A7A74F47C03E45A580378737C0', 2, '2 at', NULL, NULL, NULL, NULL, 13, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.212', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (746, 265, '0101000020E61000002F7801D84E4F47C0FCF3BC79658737C0', 276, '276', NULL, 14, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.212', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (747, 265, '0101000020E6100000347801D84E4F47C0FEF3BC79658737C0', 22, '22', NULL, NULL, NULL, NULL, 13, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.212', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (748, 265, '0101000020E61000002C78C1A9084F47C0FFF3BC47888737C0', 514, '514', NULL, 14, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.212', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (749, 265, '0101000020E61000001A79C2A7A74F47C03E45A580378737C0', 47, '2 at47', NULL, 14, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.213', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (750, 265, '0101000020E6100000347801D84E4F47C0FEF3BC79658737C0', 31, '31', NULL, NULL, NULL, NULL, 13, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.213', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (751, 265, '0101000020E6100000347801D84E4F47C0FEF3BC79658737C0', 279, '279', NULL, 14, 5, 1937, 13, 1, 1961, NULL, 'Livro de Emplacamento n.22, p.213', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (752, 265, '0101000020E61000003278C1A9084F47C00CF4BC47888737C0', 521, '521', NULL, 14, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.213', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (753, 265, '0101000020E61000003278C1A9084F47C00CF4BC47888737C0', 65.0999999999999943, '65 Sº', NULL, NULL, NULL, NULL, 13, 5, 1937, NULL, 'Livro de Emplacamento n.22, p.213', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (754, 407, '0101000020E610000078F008A2895347C0090053AE1B8E37C0', 28, '28', NULL, 15, 6, 1939, 5, 9, 1972, NULL, 'Livro de Emplacamento n.25, p.242', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (1272, 101, '0101000020E61000002045E84D825347C0E3C23772518D37C0', 680, '680', NULL, 21, 2, 1936, NULL, NULL, NULL, NULL, 'L20, p. 378', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (755, 407, '0101000020E610000073F008A2895347C0160053AE1B8E37C0', 2, '2', NULL, NULL, NULL, NULL, 14, 6, 1939, NULL, 'Livro de Emplacamento n.25, p.242', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (756, 407, '0101000020E6100000161604FEC35347C07A78CE2A1F8E37C0', 216, '216', NULL, 15, 6, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.242', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (757, 407, '0101000020E6100000101604FEC35347C07978CE2A1F8E37C0', 28.1000000000000014, '28-A', NULL, NULL, NULL, NULL, 14, 6, 1939, NULL, 'Livro de Emplacamento n.25, p.242', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (758, 407, '0101000020E6100000A4B48142DF5347C088340DB02F8E37C0', 302, '302', NULL, 15, 6, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.242', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (759, 407, '0101000020E6100000A8B48142DF5347C08A340DB02F8E37C0', 46, '46', NULL, NULL, NULL, NULL, 14, 6, 1939, NULL, 'Livro de Emplacamento n.25, p.242', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (760, 407, '0101000020E610000073F008A2895347C0160053AE1B8E37C0', 1, '1', NULL, NULL, NULL, NULL, 14, 6, 1939, NULL, 'Livro de Emplacamento n.25, p.243', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (1273, 101, '0101000020E61000002045E84D825347C0E3C23772518D37C0', 126, '126', NULL, NULL, NULL, 1868, 20, 2, 1936, NULL, 'L20, p. 378', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (762, 407, '0101000020E610000073F008A2895347C0160053AE1B8E37C0', 25, '25', NULL, 15, 6, 1939, 24, 3, 1957, NULL, 'Livro de Emplacamento n.25, p.243', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (763, 407, '0101000020E6100000101604FEC35347C07978CE2A1F8E37C0', 39, '39', NULL, NULL, NULL, NULL, 14, 6, 1939, NULL, 'Livro de Emplacamento n.25, p.243', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (764, 407, '0101000020E6100000101604FEC35347C07978CE2A1F8E37C0', 205, '205', NULL, 15, 6, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.243', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (765, 407, '0101000020E6100000A8B48142DF5347C08A340DB02F8E37C0', 55, '55', NULL, 15, 6, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.243', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (766, 407, '0101000020E6100000A8B48142DF5347C08A340DB02F8E37C0', 329, '329', NULL, 15, 6, 1939, 10, 3, 1952, NULL, 'Livro de Emplacamento n.25, p.243', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (1299, 47, '0101000020E610000010A7DC960C5147C0CB683A86658C37C0', 1, '1', NULL, NULL, NULL, NULL, 6, 12, 1936, NULL, 'L21, p. 358', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1310, 328, '0101000020E6100000835EF978B75147C09D51CCB4E98A37C0', 12, '12', NULL, 20, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento n.20, p.44', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1321, 110, '0101000020E61000007C4C1AA2AB5347C098913185128C37C0', 21, '21', NULL, NULL, NULL, NULL, 13, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 186', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1332, 110, '0101000020E6100000350D75CD925347C065102F97DB8B37C0', 2, '2', NULL, NULL, NULL, NULL, 13, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 186', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1341, 108, '0101000020E6100000758EFFC7755347C0BA91FB19948D37C0', 38, '38', NULL, 19, 2, 1936, NULL, NULL, NULL, NULL, 'L20, p. 367', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1351, 108, '0101000020E61000003FFB203E875347C0CE2B02C74B8D37C0', 144, '144', NULL, 19, 2, 1936, NULL, NULL, NULL, NULL, 'L20, p. 367', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1361, 172, '0101000020E610000095DE1B78F55247C09048FB7C698737C0', 2, '2', NULL, NULL, NULL, NULL, 25, 9, 1935, NULL, 'Livro de emplacamento L.20, p.49', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (777, 438, '0101000020E61000003A859E67765147C0A5A0834A7F8E37C0', 45, '45', NULL, 18, 7, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.327', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (778, 438, '0101000020E61000003B859E67765147C0ADA0834A7F8E37C0', 1, '1', NULL, NULL, NULL, NULL, 17, 7, 1935, NULL, 'Livro de Emplacamento n.19, p.327', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (779, 438, '0101000020E610000040857E91D55147C02EF3858B418E37C0', 263, '263', NULL, 18, 7, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.327', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (780, 438, '0101000020E61000003E857E91D55147C025F3858B418E37C0', 45, '45', NULL, NULL, NULL, NULL, 17, 7, 1935, NULL, 'Livro de Emplacamento n.19, p.327', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (781, 438, '0101000020E61000003E85DE08495247C02CF305C3208E37C0', 691, '691', NULL, 18, 7, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.328', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (782, 438, '0101000020E61000003C85DE08495247C01FF305C3208E37C0', 107, '107', NULL, NULL, NULL, NULL, 17, 7, 1935, NULL, 'Livro de Emplacamento n.19, p.328', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (783, 438, '0101000020E61000003B859E67765147C0ADA0834A7F8E37C0', 2, '2 Fº', NULL, NULL, NULL, NULL, 17, 7, 1935, NULL, 'Livro de Emplacamento n.19, p.328', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (784, 438, '0101000020E61000003B859E67765147C0ADA0834A7F8E37C0', 26, '26', NULL, 18, 7, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.328', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (785, 438, '0101000020E61000003C85DE08495247C01FF305C3208E37C0', 682, '682', NULL, 18, 7, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.329', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (786, 438, '0101000020E61000003C85DE08495247C01FF305C3208E37C0', 104, '104', NULL, NULL, NULL, NULL, 17, 7, 1935, NULL, 'Livro de Emplacamento n.19, p.329', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (787, 438, '0101000020E61000002461F05BBE5147C0E11A7049508E37C0', 260, '260', NULL, 18, 7, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.328', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (788, 438, '0101000020E61000002361F05BBE5147C0D41A7049508E37C0', 46, '46', NULL, NULL, NULL, NULL, 17, 7, 1935, NULL, 'Livro de Emplacamento n.19, p.328', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (789, 148, '0101000020E6100000F8747A94784F47C0962FE7729E8B37C0', 37, '37', NULL, 3, 6, 1937, 18, 8, 1981, NULL, 'Livro de Emplacamento n.22, p.208', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (790, 148, '0101000020E6100000F9747A94784F47C08C2FE7729E8B37C0', 1, '1', NULL, NULL, NULL, NULL, 2, 6, 1937, NULL, 'Livro de Emplacamento n.22, p.208', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (791, 148, '0101000020E61000008F9A6813984F47C049E3A5EE478B37C0', 137, '137', NULL, 3, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.208', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (792, 148, '0101000020E61000008D9A6813984F47C053E3A5EE478B37C0', 41, '41', NULL, NULL, NULL, NULL, 2, 6, 1937, NULL, 'Livro de Emplacamento n.22, p.208', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (793, 148, '0101000020E6100000F9747A94784F47C08C2FE7729E8B37C0', 2, '2', NULL, NULL, NULL, NULL, 2, 6, 1937, NULL, 'Livro de Emplacamento n.22, p.208', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (794, 148, '0101000020E6100000F9747A94784F47C08C2FE7729E8B37C0', 38, '38', NULL, 3, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.208', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (795, 148, '0101000020E61000008D9A6813984F47C053E3A5EE478B37C0', 46, '46', NULL, NULL, NULL, NULL, 2, 6, 1937, NULL, 'Livro de Emplacamento n.22, p.208', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (796, 148, '0101000020E61000008D9A6813984F47C053E3A5EE478B37C0', 166, '166', NULL, 3, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.208', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (797, 223, '0101000020E6100000D4573570EE5047C0D27A35D6518837C0', 26, '26', NULL, 20, 3, 1937, 19, 12, 1941, NULL, 'Livro de Emplacamento n.22, p.165', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (798, 223, '0101000020E6100000D6573570EE5047C0DA7A35D6518837C0', 2, '2', NULL, NULL, NULL, NULL, 19, 3, 1937, NULL, 'Livro de Emplacamento n.22, p.165', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (799, 223, '0101000020E610000042A8E2F6AA4F47C0BEAA23C0F48837C0', 1054, '1054', NULL, 20, 3, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.167', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (800, 223, '0101000020E610000043A8E2F6AA4F47C0BCAA23C0F48837C0', 284, '284', NULL, NULL, NULL, NULL, 19, 3, 1937, NULL, 'Livro de Emplacamento n.22, p.167', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (801, 223, '0101000020E6100000622021A6F34E47C01EB31E8E188937C0', 1628, '1628', NULL, 20, 3, 1937, 24, 4, 1967, NULL, 'Livro de Emplacamento n.22, p.168', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (802, 223, '0101000020E6100000672021A6F34E47C023B31E8E188937C0', 418.100000000000023, '418 Ta', NULL, NULL, NULL, NULL, 19, 3, 1937, NULL, 'Livro de Emplacamento n.22, p.168', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (1379, 177, '0101000020E6100000F1CC6A7F695347C03B2068EEB18837C0', 935, '935', NULL, 16, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.20, p.28', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (803, 223, '0101000020E6100000D6573570EE5047C0DA7A35D6518837C0', 7, '7', NULL, NULL, NULL, NULL, 19, 3, 1937, NULL, 'Livro de Emplacamento n.22, p.169', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (805, 223, '0101000020E6100000D6573570EE5047C0DA7A35D6518837C0', 501, '501', NULL, 20, 3, 1937, 11, 12, 1953, NULL, 'Livro de Emplacamento n.22, p.169', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (806, 223, '0101000020E610000043A8E2F6AA4F47C0BCAA23C0F48837C0', 1049, '1049', NULL, 20, 3, 1937, 22, 2, 1954, NULL, 'Livro de Emplacamento n.22, p.169', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (807, 153, '0101000020E6100000EFDBF51FCC4E47C08E41299EE18A37C0', 25, '25', NULL, 29, 6, 1939, 24, 5, 1972, NULL, 'Livro de Emplacamento n.24, p.264', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (808, 153, '0101000020E6100000E8DBF51FCC4E47C08A41299EE18A37C0', 3, '3', NULL, NULL, NULL, NULL, 28, 6, 1939, NULL, 'Livro de Emplacamento n.24, p.264', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (809, 153, '0101000020E6100000026C0EF2B84E47C02EC2852E158B37C0', 119, '119', NULL, 29, 6, 1939, 23, 10, 1969, NULL, 'Livro de Emplacamento n.24, p.264', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (1371, 177, '0101000020E6100000AF385E41F95247C020777B3A248837C0', 523, '523', NULL, 16, 9, 1935, 7, 2, 1983, NULL, 'Livro de emplacamento, n.20, p.28', 6, '2018-05-14', false);
INSERT INTO public.tb_places VALUES (810, 153, '0101000020E6100000036C0EF2B84E47C03BC2852E158B37C0', 31, '31', NULL, NULL, NULL, NULL, 28, 6, 1939, NULL, 'Livro de Emplacamento n.24, p.264', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (811, 153, '0101000020E6100000026C2E5DB54E47C02EC205C31E8B37C0', 145, '145', NULL, 29, 6, 1939, 5, 11, 1965, NULL, 'Livro de Emplacamento n.24, p.264', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (812, 153, '0101000020E6100000FD6B2E5DB54E47C038C205C31E8B37C0', 33, '33', NULL, NULL, NULL, NULL, 28, 6, 1939, NULL, 'Livro de Emplacamento n.24, p.264', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (813, 153, '0101000020E6100000E8DBF51FCC4E47C08A41299EE18A37C0', 32, '32', NULL, 29, 6, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.24, p.265', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (814, 153, '0101000020E6100000036C0EF2B84E47C03BC2852E158B37C0', 24, '24', NULL, NULL, NULL, NULL, 28, 6, 1939, NULL, 'Livro de Emplacamento n.24, p.265', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (815, 153, '0101000020E6100000036C0EF2B84E47C03BC2852E158B37C0', 120, '120', NULL, 29, 6, 1939, 16, 5, 1946, NULL, 'Livro de Emplacamento n.24, p.265', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (816, 153, '0101000020E6100000FD6B2E5DB54E47C038C205C31E8B37C0', 26, '26', NULL, NULL, NULL, NULL, 28, 6, 1939, NULL, 'Livro de Emplacamento n.24, p.265', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (817, 153, '0101000020E6100000FD6B2E5DB54E47C038C205C31E8B37C0', 142, '142', NULL, 29, 6, 1939, 15, 1, 1958, NULL, 'Livro de Emplacamento n.24, p.265', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (818, 513, '0101000020E610000085281DD9325147C0009D4391838C37C0', 15, '15', NULL, 24, 8, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.85', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (819, 513, '0101000020E61000008A281DD9325147C0F99C4391838C37C0', 3, '3', NULL, NULL, NULL, NULL, 23, 8, 1933, NULL, 'Livro de Emplacamento n.19, p.85', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (820, 513, '0101000020E6100000CB217F3A7F5147C072AAFF29878C37C0', 253, '253', NULL, 24, 8, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.85', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (821, 513, '0101000020E6100000DD586B87B35147C04F3CE741708C37C0', 413, '413', NULL, 24, 8, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.85', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (822, 513, '0101000020E6100000CCDF5553435147C0753447298D8C37C0', 50, '50', NULL, 24, 8, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.86', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (823, 513, '0101000020E6100000CCDF5553435147C06C3447298D8C37C0', 4, '4', NULL, NULL, NULL, NULL, 23, 8, 1933, NULL, 'Livro de Emplacamento n.19, p.86', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (824, 513, '0101000020E6100000C8217F3A7F5147C070AAFF29878C37C0', 256, '256', NULL, 24, 8, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.86', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (825, 513, '0101000020E6100000C8217F3A7F5147C070AAFF29878C37C0', 32, '32', NULL, NULL, NULL, NULL, 23, 8, 1933, NULL, 'Livro de Emplacamento n.19, p.86', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (826, 513, '0101000020E61000009F7EA7AF965147C00162A93E858C37C0', 306, '306', NULL, 24, 8, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.86', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (827, 513, '0101000020E6100000A27EA7AF965147C00162A93E858C37C0', 46, '46', NULL, NULL, NULL, NULL, 23, 8, 1933, NULL, 'Livro de Emplacamento n.19, p.86', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (828, 513, '0101000020E6100000A07EA70EA15147C00162291D818C37C0', 366, '366', NULL, 24, 8, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.86', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (829, 513, '0101000020E61000009A7EA70EA15147C00F62291D818C37C0', 6, '6', NULL, NULL, NULL, NULL, 23, 8, 1933, NULL, 'Livro de Emplacamento n.19, p.86', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (830, 513, '0101000020E6100000E2586B87B35147C0443CE741708C37C0', 398, '398', NULL, 24, 8, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.86', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (831, 513, '0101000020E6100000E2586B87B35147C0443CE741708C37C0', 20, '20', NULL, NULL, NULL, NULL, 23, 8, 1933, NULL, 'Livro de Emplacamento n.19, p.86', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (832, 513, '0101000020E6100000A27EA7AF965147C00162A93E858C37C0', 47.2000000000000028, '47 A', NULL, NULL, NULL, NULL, 23, 8, 1933, NULL, 'Livro de Emplacamento n.19, p.85', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (833, 513, '0101000020E6100000A27EA7AF965147C00162A93E858C37C0', 331, '331', NULL, 24, 8, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.85', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (834, 513, '0101000020E61000009A7EA70EA15147C00F62291D818C37C0', 385, '385', NULL, 24, 8, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.85', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (835, 513, '0101000020E61000009A7EA70EA15147C00F62291D818C37C0', 1, '1', NULL, NULL, NULL, NULL, 23, 8, 1933, NULL, 'Livro de Emplacamento n.19, p.85', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (836, 225, '0101000020E610000089E660351D5147C08E39EAF1F78837C0', 119, '119', NULL, 13, 9, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.131', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (837, 225, '0101000020E61000008AE660351D5147C08139EAF1F78837C0', 21, '21', NULL, NULL, NULL, NULL, 12, 9, 1938, NULL, 'Livro de Emplacamento n.25, p.131', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (838, 225, '0101000020E61000004CC956E5BE5147C05EE55A55148837C0', 285, '285', NULL, 13, 9, 1938, 18, 3, 1954, NULL, 'Livro de Emplacamento n.25, p.131', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (839, 225, '0101000020E61000004EC956E5BE5147C058E55A55148837C0', 63, '63', NULL, NULL, NULL, NULL, 12, 9, 1938, NULL, 'Livro de Emplacamento n.25, p.131', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (842, 225, '0101000020E61000008AE660351D5147C08139EAF1F78837C0', 26, '26', NULL, 13, 9, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.134', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (843, 225, '0101000020E61000004EC956E5BE5147C058E55A55148837C0', 84, '84', NULL, NULL, NULL, NULL, 12, 9, 1938, NULL, 'Livro de Emplacamento n.25, p.134', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (844, 225, '0101000020E61000004EC956E5BE5147C058E55A55148837C0', 288, '288', NULL, 13, 9, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.134', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (845, 225, '0101000020E61000004EC956E5BE5147C058E55A55148837C0', 288, '288', NULL, 13, 9, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.134', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (846, 225, '0101000020E61000000DBD999AEE5147C0241BE483698737C0', 616, '616', NULL, 13, 9, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.135', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (847, 225, '0101000020E61000000DBD999AEE5147C0241BE483698737C0', 158, '158', NULL, NULL, NULL, NULL, 12, 9, 1938, NULL, 'Livro de Emplacamento n.25, p.135', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (840, 225, '0101000020E610000008BD999AEE5147C02E1BE483698737C0', 619, '619', NULL, 13, 9, 1938, 26, 8, 1946, NULL, 'Livro de Emplacamento n.25, p.134', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (841, 225, '0101000020E61000000DBD999AEE5147C0241BE483698737C0', 145, '145', NULL, NULL, NULL, NULL, 12, 9, 1938, NULL, 'Livro de Emplacamento n.25, p.134', 6, '2018-02-20', false);
INSERT INTO public.tb_places VALUES (853, 241, '0101000020E6100000A9590901025147C091755E0CD58837C0', 22, '22', NULL, 3, 8, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.381', 6, '2018-03-01', false);
INSERT INTO public.tb_places VALUES (854, 241, '0101000020E6100000AC590901025147C09D755E0CD58837C0', 2, '2', NULL, NULL, NULL, NULL, 2, 8, 1937, NULL, 'Livro de Emplacamento n.22, p.381', 6, '2018-03-01', false);
INSERT INTO public.tb_places VALUES (855, 241, '0101000020E6100000870E4B95685047C089F6D139068937C0', 492, '492', NULL, 3, 8, 1937, 2, 12, 1954, NULL, 'Livro de Emplacamento n.22, p.382', 6, '2018-03-01', false);
INSERT INTO public.tb_places VALUES (856, 241, '0101000020E61000008C0E4B95685047C096F6D139068937C0', 102, '102', NULL, NULL, NULL, NULL, 2, 8, 1937, NULL, 'Livro de Emplacamento n.22, p.382', 6, '2018-03-01', false);
INSERT INTO public.tb_places VALUES (857, 241, '0101000020E6100000753577E0A84F47C0E4AEB0A9438937C0', 1094, '1094', NULL, 3, 8, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.383', 6, '2018-03-01', false);
INSERT INTO public.tb_places VALUES (858, 241, '0101000020E6100000763577E0A84F47C0E1AEB0A9438937C0', 260, '260', NULL, NULL, NULL, NULL, 2, 8, 1937, NULL, 'Livro de Emplacamento n.22, p.383', 6, '2018-03-01', false);
INSERT INTO public.tb_places VALUES (859, 241, '0101000020E6100000AC590901025147C09D755E0CD58837C0', 1, '1', NULL, NULL, NULL, NULL, 2, 8, 1937, NULL, 'Livro de Emplacamento n.22, p.384', 6, '2018-03-01', false);
INSERT INTO public.tb_places VALUES (860, 241, '0101000020E6100000AC590901025147C09D755E0CD58837C0', 13, '13', NULL, 3, 8, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.384', 6, '2018-03-01', false);
INSERT INTO public.tb_places VALUES (861, 241, '0101000020E61000008C0E4B95685047C096F6D139068937C0', 123, '123', NULL, NULL, NULL, NULL, 2, 8, 1937, NULL, 'Livro de Emplacamento n.22, p.385', 6, '2018-03-01', false);
INSERT INTO public.tb_places VALUES (862, 241, '0101000020E61000008C0E4B95685047C096F6D139068937C0', 497, '497', NULL, 3, 8, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.22, p.385', 6, '2018-03-01', false);
INSERT INTO public.tb_places VALUES (863, 241, '0101000020E6100000763577E0A84F47C0E1AEB0A9438937C0', 1055, '1055', NULL, 3, 8, 1937, 25, 8, 1980, NULL, 'Livro de Emplacamento n.22, p.386', 6, '2018-03-01', false);
INSERT INTO public.tb_places VALUES (864, 241, '0101000020E6100000763577E0A84F47C0E1AEB0A9438937C0', 249, '249', NULL, NULL, NULL, NULL, 2, 8, 1937, NULL, 'Livro de Emplacamento n.22, p.386', 6, '2018-03-01', false);
INSERT INTO public.tb_places VALUES (865, 280, '0101000020E6100000453C175D364F47C0512E661DAF8737C0', 13, '13', NULL, 22, 7, 1938, 11, 12, 1953, NULL, 'Livro de Emplacamento n.25, p.59', 11, '2018-03-08', false);
INSERT INTO public.tb_places VALUES (866, 280, '0101000020E6100000433C175D364F47C0552E661DAF8737C0', 1, '1', NULL, NULL, NULL, NULL, 21, 7, 1938, NULL, 'Livro de Emplacamento n.25, p.59', 11, '2018-03-08', false);
INSERT INTO public.tb_places VALUES (867, 280, '0101000020E61000004A5DCA122D4F47C09592D7C96F8737C0', 139, '139', NULL, 22, 7, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.59', 11, '2018-03-08', false);
INSERT INTO public.tb_places VALUES (869, 280, '0101000020E6100000495DCA122D4F47C08992D7C96F8737C0', 23, '23', NULL, NULL, NULL, NULL, 21, 7, 1938, NULL, 'Livro de Emplacamento n.25, p.59', 11, '2018-03-08', false);
INSERT INTO public.tb_places VALUES (871, 365, '0101000020E6100000D2BDC6F34D5047C06317E874428A37C0', 7, '7', NULL, NULL, NULL, NULL, 28, 9, 1933, NULL, 'Livro de Emplacamento n.19, p.96', 6, '2018-03-08', false);
INSERT INTO public.tb_places VALUES (868, 365, '0101000020E610000011D32D8C675047C0E9778EB2EB8A37C0', 1, '1', NULL, 29, 9, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.96', 6, '2018-03-08', false);
INSERT INTO public.tb_places VALUES (872, 365, '0101000020E610000011D32D8C675047C0F2778EB2EB8A37C0', 8, '8', NULL, NULL, NULL, NULL, 28, 9, 1933, NULL, 'Livro de Emplacamento n.19, p.96', 6, '2018-03-08', false);
INSERT INTO public.tb_places VALUES (874, 280, '0101000020E6100000B119CAC3234F47C063DD0380318737C0', 195, '195', NULL, 22, 7, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.59', 11, '2018-03-08', false);
INSERT INTO public.tb_places VALUES (870, 365, '0101000020E6100000D0BDC6F34D5047C06617E874428A37C0', 43, '43', NULL, 29, 9, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.96', 6, '2018-03-08', false);
INSERT INTO public.tb_places VALUES (875, 280, '0101000020E6100000AA19CAC3234F47C059DD0380318737C0', 35, '35', NULL, NULL, NULL, NULL, 21, 7, 1938, NULL, 'Livro de Emplacamento n.25, p.59', 11, '2018-03-08', false);
INSERT INTO public.tb_places VALUES (907, 51, '0101000020E6100000ADFEBE15ED5147C0BE7ED4EC3D8B37C0', 209, '209', NULL, 27, 6, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.307', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (908, 51, '0101000020E6100000ADFEBE15ED5147C0B17ED4EC3D8B37C0', 18, '18', NULL, NULL, NULL, NULL, 26, 6, 1935, NULL, 'Livro de Emplacamento n.19, p.307', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (873, 365, '0101000020E610000011D32D8C675047C0F2778EB2EB8A37C0', 3, '3', NULL, NULL, NULL, NULL, 28, 9, 1933, NULL, 'Livro de Emplacamento n.19, p.96', 6, '2018-03-13', false);
INSERT INTO public.tb_places VALUES (876, 365, '0101000020E610000011D32D8C675047C0F2778EB2EB8A37C0', 32, '32', NULL, 29, 9, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.96', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (877, 365, '0101000020E6100000D2BDC6F34D5047C06317E874428A37C0', 74, '74', NULL, 29, 9, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.96', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (878, 365, '0101000020E6100000D2BDC6F34D5047C06317E874428A37C0', 20, '20 T', NULL, NULL, NULL, NULL, 28, 9, 1933, NULL, 'Livro de Emplacamento n.19, p.96', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (879, 71, '0101000020E6100000855B01DAF75147C07FE3F59CFD8B37C0', 19, '19', NULL, 27, 2, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.96', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (880, 71, '0101000020E6100000289CE9CBD35147C029D742A1A48B37C0', 313, '313', NULL, 27, 2, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.96', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (881, 71, '0101000020E61000002B9CE9CBD35147C032D742A1A48B37C0', 24, '24', NULL, NULL, NULL, NULL, 26, 2, 1939, NULL, 'Livro de Emplacamento n.26, p.96', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (882, 71, '0101000020E61000001A4A5151AA5147C048949D65328B37C0', 2.10000000000000009, '2-A', NULL, NULL, NULL, NULL, 26, 2, 1939, NULL, 'Livro de Emplacamento n.26, p.96', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (884, 71, '0101000020E6100000815B01DAF75147C07CE3F59CFD8B37C0', 47, '47', NULL, NULL, NULL, NULL, 26, 2, 1939, NULL, 'Livro de Emplacamento n.26, p.96', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (883, 71, '0101000020E6100000815B01DAF75147C07CE3F59CFD8B37C0', 14, '14', NULL, 27, 2, 1939, 9, 10, 1941, NULL, 'Livro de Emplacamento n.26, p.96', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (885, 71, '0101000020E61000002B9CE9CBD35147C032D742A1A48B37C0', 11, '11-A', NULL, NULL, NULL, NULL, 26, 2, 1939, NULL, 'Livro de Emplacamento n.26, p.97', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (887, 71, '0101000020E6100000204A5151AA5147C043949D65328B37C0', 1, '1', NULL, NULL, NULL, NULL, 26, 2, 1939, NULL, 'Livro de Emplacamento n.26, p.97', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (888, 71, '0101000020E6100000204A5151AA5147C043949D65328B37C0', 414, '414', NULL, 27, 2, 1939, 27, 4, 1939, NULL, 'Livro de Emplacamento n.26, p.97', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (886, 71, '0101000020E61000002B9CE9CBD35147C032D742A1A48B37C0', 340, '340', NULL, 27, 2, 1939, 18, 1, 1949, NULL, 'Livro de Emplacamento n.26, p.97', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (889, 281, '0101000020E6100000C8A078D9024F47C03491A1ED7E8737C0', 21, '21', NULL, 1, 8, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.77', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (890, 281, '0101000020E61000001E895660204F47C0BA89978A318737C0', 155, '155', NULL, 1, 8, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.77', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (891, 281, '0101000020E61000001E89D6AE244F47C0BA8997AF2A8737C0', 187, '187', NULL, 1, 8, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.77', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (892, 281, '0101000020E61000001C89D6AE244F47C0AC8997AF2A8737C0', 52, '52', NULL, NULL, NULL, NULL, 31, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.77', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (893, 281, '0101000020E6100000C9A078D9024F47C03991A1ED7E8737C0', 16, '16', NULL, 1, 8, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.78', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (894, 281, '0101000020E6100000C9A078D9024F47C03991A1ED7E8737C0', 39, '39', NULL, NULL, NULL, NULL, 31, 7, 1938, NULL, 'Livro de Emplacamento n.25, p.78', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (896, 195, '0101000020E610000071083264315247C03B2E2172278737C0', 33, '33', NULL, NULL, NULL, NULL, 28, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.110', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (895, 195, '0101000020E610000070083264315247C0472E2172278737C0', 660, '660', NULL, 29, 8, 1938, 25, 2, 1959, NULL, 'Livro de Emplacamento n.25, p.110', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (897, 195, '0101000020E6100000F9940B9C495247C0280FE8DC448737C0', 728, '728', NULL, 29, 8, 1938, 7, 12, 1957, NULL, 'Livro de Emplacamento n.25, p.110', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (898, 195, '0101000020E6100000F2940B9C495247C02A0FE8DC448737C0', 21, '21', NULL, NULL, NULL, NULL, 28, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.110', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (899, 195, '0101000020E61000009F15B825595247C086DD1237588737C0', 790, '790', NULL, 29, 8, 1938, 20, 12, 1946, NULL, 'Livro de Emplacamento n.25, p.110', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (900, 195, '0101000020E610000071083264315247C03B2E2172278737C0', 20, '20-A', NULL, NULL, NULL, NULL, 28, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.112', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (901, 195, '0101000020E610000071083264315247C03B2E2172278737C0', 639, '639', NULL, 29, 8, 1938, 27, 2, 1942, NULL, 'Livro de Emplacamento n.25, p.112', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (902, 195, '0101000020E6100000FAA86867455247C0BACBF6963F8737C0', 697, '697', NULL, 29, 8, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.112', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (903, 195, '0101000020E6100000FCA86867455247C0C0CBF6963F8737C0', 4, '4', NULL, NULL, NULL, NULL, 28, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.112', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (904, 195, '0101000020E61000009915B825595247C089DD1237588737C0', 775, '775', NULL, 29, 8, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.112', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (905, 195, '0101000020E61000009915B825595247C089DD1237588737C0', 2, '2', NULL, NULL, NULL, NULL, 28, 8, 1938, NULL, 'Livro de Emplacamento n.25, p.112', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (906, 51, '0101000020E6100000C154FF80215247C0604912B9928B37C0', 15, '15', NULL, 27, 6, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.307', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (909, 51, '0101000020E610000029658AEECC5147C09B4D88EB0B8B37C0', 327, '327', NULL, 27, 6, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.307', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (910, 51, '0101000020E6100000C454FF80215247C0624912B9928B37C0', 10, '10', NULL, 27, 6, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.308', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (911, 51, '0101000020E6100000C454FF80215247C0624912B9928B37C0', 53, '53', NULL, NULL, NULL, NULL, 26, 6, 1935, NULL, 'Livro de Emplacamento n.19, p.308', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (912, 51, '0101000020E6100000ADFEBE15ED5147C0B17ED4EC3D8B37C0', 21, '21', NULL, NULL, NULL, NULL, 26, 6, 1935, NULL, 'Livro de Emplacamento n.19, p.308', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (913, 51, '0101000020E6100000ADFEBE15ED5147C0B17ED4EC3D8B37C0', 212, '212', NULL, 27, 6, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.308', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (914, 51, '0101000020E61000002C658AEECC5147C0A74D88EB0B8B37C0', 346, '346', NULL, 27, 6, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.308', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (1274, 68, '0101000020E61000008FB279D6F95147C090B75E2C688C37C0', 1, '1 - T', NULL, NULL, NULL, NULL, 6, 8, 1940, NULL, 'Livro de Emplacamento, n. 27, p.183', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (916, 302, '0101000020E61000003472E0B7EC5247C05BE90369C08937C0', 32, '32', NULL, 13, 9, 1930, 14, 10, 1935, NULL, 'Livro de Emplacamento n.17, p.91 / Livro de Emplacamento, n.20, p.98', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (917, 302, '0101000020E61000003B72E0B7EC5247C053E90369C08937C0', 28, '28', NULL, NULL, NULL, NULL, 12, 9, 1930, NULL, 'Livro de Emplacamento n.17, p.91', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (919, 302, '0101000020E6100000BA554ED9C25247C0142BF0E58D8937C0', 44, '44', NULL, NULL, NULL, NULL, 12, 9, 1930, NULL, 'Livro de Emplacamento n.17, p.91', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (1288, 415, '0101000020E6100000A378D37CDD5247C07B3C9CB6698E37C0', 212, '212', NULL, 2, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.21, P.105', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (918, 302, '0101000020E6100000B9554ED9C25247C00D2BF0E58D8937C0', 48, '48', NULL, 13, 9, 1930, 14, 10, 1935, NULL, 'Livro de Emplacamento n.17, p.91 / Livro de Emplacamento, n.20, p.98', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (921, 302, '0101000020E61000003B72E0B7EC5247C053E90369C08937C0', 33, '33', NULL, 13, 9, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.91', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (1275, 10, '0101000020E6100000948FE20B4C5147C0B6A8F017C68C37C0', 17, '17', NULL, NULL, NULL, NULL, 4, 11, 1936, NULL, 'livro de emplacamentos L21 p.338', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1289, 415, '0101000020E610000040C85821D85247C00E47E8A9C88E37C0', 358, '358', NULL, 2, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.21, P.105', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (923, 91, '0101000020E61000009C0AC1A80B5347C0CF4269EDB28A37C0', 1, '1', NULL, 19, 9, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.18, p.28', 6, '2018-03-15', true);
INSERT INTO public.tb_places VALUES (924, 91, '0101000020E6100000716285310E5347C0DE37AD05738B37C0', 33, '33', NULL, 19, 9, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.18, p.28', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (925, 91, '0101000020E6100000786285310E5347C0D737AD05738B37C0', 25, '25', NULL, NULL, NULL, NULL, 18, 9, 1930, NULL, 'Livro de Emplacamento n.18, p.28', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (926, 91, '0101000020E610000061C70D21115347C0A8FBC9C3368C37C0', 81, '81', NULL, 19, 9, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.18, p.28', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (927, 91, '0101000020E61000005BC70D21115347C09BFBC9C3368C37C0', 75, '75', NULL, NULL, NULL, NULL, 18, 9, 1930, NULL, 'Livro de Emplacamento n.18, p.28', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (928, 91, '0101000020E6100000950AC1A80B5347C0CA4269EDB28A37C0', 4, '4', NULL, 19, 9, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.18, p.29', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (929, 91, '0101000020E6100000950AC1A80B5347C0CA4269EDB28A37C0', 2, '2', NULL, NULL, NULL, NULL, 18, 9, 1930, NULL, 'Livro de Emplacamento n.18, p.29', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (930, 91, '0101000020E6100000473738F00D5347C0BA3950E2678B37C0', 16, '16', NULL, 19, 9, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.18, p.29', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (931, 91, '0101000020E6100000473738F00D5347C0B73950E2678B37C0', 10, '10', NULL, NULL, NULL, NULL, 18, 9, 1930, NULL, 'Livro de Emplacamento n.18, p.29', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (932, 91, '0101000020E61000005BC70D21115347C09BFBC9C3368C37C0', 80, '80', NULL, 19, 9, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.18, p.29', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (933, 91, '0101000020E61000005BC70D21115347C09BFBC9C3368C37C0', 76, '76', NULL, NULL, NULL, NULL, 18, 9, 1930, NULL, 'Livro de Emplacamento n.18, p.29', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (934, 72, '0101000020E6100000363405F00E5247C09B02178FD08B37C0', 2, '2', NULL, 8, 8, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.64', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (935, 72, '0101000020E6100000C086FA85185247C0EBA04C85388C37C0', 46, '46', NULL, NULL, NULL, NULL, 7, 8, 1930, NULL, 'Livro de Emplacamento n.17, p.64', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (936, 72, '0101000020E6100000333405F00E5247C0A102178FD08B37C0', 1, '1', NULL, 8, 8, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.64', 6, '2018-03-15', true);
INSERT INTO public.tb_places VALUES (937, 72, '0101000020E6100000BA86FA85185247C0E0A04C85388C37C0', 31, '31', NULL, NULL, NULL, NULL, 7, 8, 1930, NULL, 'Livro de Emplacamento n.17, p.64', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (938, 72, '0101000020E6100000BA86FA85185247C0E0A04C85388C37C0', 33, '33', NULL, 8, 8, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.64', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (939, 237, '0101000020E6100000BCCBDF30025147C0DACBECC3B28D37C0', 9, NULL, NULL, 3, 9, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.175', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (940, 237, '0101000020E6100000B6CB7F46E35047C0D7CBAC30C28D37C0', 100, NULL, NULL, 3, 9, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.177', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (941, 240, '0101000020E610000089FD0692A55147C0CB4B58D1D38937C0', 2, '2', NULL, 13, 8, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.52', 6, '2018-03-15', true);
INSERT INTO public.tb_places VALUES (942, 240, '0101000020E610000029808974B85147C018FB4BA5A48937C0', 10, '10', NULL, 13, 8, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.52', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (944, 240, '0101000020E610000028808974B85147C017FB4BA5A48937C0', 6, '6', NULL, NULL, NULL, NULL, 12, 8, 1930, NULL, 'Livro de Emplacamento n.17, p.52', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (945, 240, '0101000020E61000002ABB4D69CE5147C08A0B21346E8937C0', 22, '22', NULL, 13, 8, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.52', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (946, 240, '0101000020E610000027BB4D69CE5147C0870B21346E8937C0', 18, '18', NULL, NULL, NULL, NULL, 12, 8, 1930, NULL, 'Livro de Emplacamento n.17, p.52', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (947, 237, '0101000020E6100000C0CB1FDA735047C0D87EAC61038E37C0', 479, NULL, NULL, 3, 9, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.176', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (948, 240, '0101000020E6100000EE243EE1F75147C08DB78FFC078937C0', 58.2000000000000028, '58ª', NULL, 13, 8, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.52', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (950, 240, '0101000020E610000028808974B85147C017FB4BA5A48937C0', 13, '13', NULL, 13, 8, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.52', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (951, 237, '0101000020E6100000BECB1FDA735047C0E27EAC61038E37C0', 153, NULL, NULL, NULL, NULL, NULL, 2, 9, 1934, NULL, 'Livro de Emplacamento n.19, p.176', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (952, 240, '0101000020E610000028808974B85147C017FB4BA5A48937C0', 15, '15', NULL, NULL, NULL, NULL, 12, 8, 1930, NULL, 'Livro de Emplacamento n.17, p.52', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (953, 240, '0101000020E610000027BB4D69CE5147C0870B21346E8937C0', 33, '33', NULL, NULL, NULL, NULL, 12, 8, 1930, NULL, 'Livro de Emplacamento n.17, p.52', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (954, 240, '0101000020E610000027BB4D69CE5147C0870B21346E8937C0', 31, '31', NULL, 13, 8, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.52', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (943, 237, '0101000020E6100000BDCB3F95895047C0D3CBAC6BF08D37C0', 408, NULL, NULL, 3, 9, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.177', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (956, 237, '0101000020E6100000B9CB3F95895047C0C8CBAC6BF08D37C0', 92, NULL, NULL, NULL, NULL, NULL, 2, 9, 1934, NULL, 'Livro de Emplacamento n.19, p.177', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (955, 240, '0101000020E6100000EE243EE1F75147C081B78FFC078937C0', 73, '73', NULL, 13, 8, 1930, 13, 8, 1930, NULL, 'Livro de Emplacamento n.17, p.52', 6, '2018-03-15', true);
INSERT INTO public.tb_places VALUES (949, 240, '0101000020E610000083FD0692A55147C0D24B58D1D38937C0', 1, '1', NULL, 13, 8, 1930, 13, 8, 1930, NULL, 'Livro de Emplacamento n.17, p.52', 6, '2018-03-15', true);
INSERT INTO public.tb_places VALUES (957, 237, '0101000020E6100000BACB7F46E35047C0CDCBAC30C28D37C0', 16, NULL, NULL, NULL, NULL, NULL, 2, 9, 1934, NULL, 'Livro de Emplacamento n.19, p.177', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (958, 237, '0101000020E6100000BBCBDF30025147C0DDCBECC3B28D37C0', 1, '1S', NULL, NULL, NULL, NULL, 2, 9, 1934, NULL, 'Livro de Emplacamento n.19, p.175', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (959, 237, '0101000020E6100000BBCBDF30025147C0DDCBECC3B28D37C0', 14, NULL, NULL, 3, 9, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.19, p.177', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (960, 98, '0101000020E6100000A337CC960F5347C02374042A4F8C37C0', 1, '1', NULL, 20, 9, 1930, 20, 9, 1930, NULL, 'Livro de Emplacamento n.17, p.87', 6, '2018-03-15', true);
INSERT INTO public.tb_places VALUES (961, 237, '0101000020E6100000BBCBDF30025147C0DDCBECC3B28D37C0', 4, NULL, NULL, NULL, NULL, NULL, 2, 9, 1934, NULL, 'Livro de Emplacamento n.19, p.177', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (963, 98, '0101000020E61000007140B3FAF15247C06F56998DEB8C37C0', 55, '55', NULL, NULL, NULL, NULL, 19, 9, 1930, NULL, 'Livro de Emplacamento n.17, p.87', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (962, 98, '0101000020E61000007640B3FAF15247C07756998DEB8C37C0', 49, '49', NULL, 20, 9, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.87', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (964, 98, '0101000020E61000004C79DFA6E75247C07B6F0764228D37C0', 63, '63', NULL, 20, 9, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.87', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (965, 98, '0101000020E61000004679DFA6E75247C0796F0764228D37C0', 65, '65', NULL, NULL, NULL, NULL, 19, 9, 1930, NULL, 'Livro de Emplacamento n.17, p.87', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (966, 98, '0101000020E6100000A137CC960F5347C02C74042A4F8C37C0', 2, '2', NULL, 20, 9, 1930, 20, 9, 1930, NULL, 'Livro de Emplacamento n.17, p.87', 6, '2018-03-15', true);
INSERT INTO public.tb_places VALUES (967, 98, '0101000020E61000004679DFA6E75247C0796F0764228D37C0', 34, '34', NULL, 20, 9, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.87', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (968, 98, '0101000020E61000004679DFA6E75247C0796F0764228D37C0', 48, '48 tinta', NULL, NULL, NULL, NULL, 19, 9, 1930, NULL, 'Livro de Emplacamento n.17, p.87', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (969, 385, '0101000020E6100000C92B83AA3B4F47C04B93199A328937C0', 1, '1', NULL, 23, 10, 1930, 23, 10, 1930, NULL, 'Livro de Emplacamento n.17, p.101', 6, '2018-03-15', true);
INSERT INTO public.tb_places VALUES (970, 385, '0101000020E61000005D1E22E16B4F47C050939972348937C0', 29, '29', NULL, 23, 10, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.101', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (971, 385, '0101000020E6100000581E22E16B4F47C04A939972348937C0', 35, '35', NULL, NULL, NULL, NULL, 22, 10, 1930, NULL, 'Livro de Emplacamento n.17, p.101', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (973, 385, '0101000020E610000078804D3AA34F47C0C711A579358937C0', 61, '61', NULL, 23, 10, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.101', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (974, 385, '0101000020E61000007C804D3AA34F47C0D411A579358937C0', 63, '63', NULL, NULL, NULL, NULL, 22, 10, 1930, NULL, 'Livro de Emplacamento n.17, p.101', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (976, 385, '0101000020E6100000CD2B83AA3B4F47C03D93199A328937C0', 4, '4', NULL, 23, 10, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.101', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (977, 385, '0101000020E6100000CD2B83AA3B4F47C03D93199A328937C0', 6, '6', NULL, NULL, NULL, NULL, 22, 10, 1930, NULL, 'Livro de Emplacamento n.17, p.101', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (978, 385, '0101000020E6100000581E22E16B4F47C04A939972348937C0', 56, '56', NULL, NULL, NULL, NULL, 22, 10, 1930, NULL, 'Livro de Emplacamento n.17, p.101', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (972, 280, '0101000020E6100000433C175D364F47C0552E661DAF8737C0', 16, '16', NULL, 22, 7, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.59', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (979, 385, '0101000020E6100000581E22E16B4F47C04A939972348937C0', 42, '42', NULL, 23, 10, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.101', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (981, 385, '0101000020E61000007C804D3AA34F47C0D411A579358937C0', 82, '82', NULL, NULL, NULL, NULL, 22, 10, 1930, NULL, 'Livro de Emplacamento n.17, p.101', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (975, 280, '0101000020E6100000495DCA122D4F47C08992D7C96F8737C0', 82, '82', NULL, 22, 7, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.59', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (982, 280, '0101000020E6100000AA19CAC3234F47C059DD0380318737C0', 148, '148', NULL, 22, 7, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.59', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (980, 385, '0101000020E61000007C804D3AA34F47C0D411A579358937C0', 68, '68', NULL, 23, 10, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.101', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (983, 152, '0101000020E6100000435A8213D24E47C008E6DFB63D8B37C0', 2, '2', NULL, 26, 8, 1930, 26, 8, 1930, NULL, 'Livro de Emplacamento n.17, p.41', 6, '2018-03-15', true);
INSERT INTO public.tb_places VALUES (984, 280, '0101000020E6100000AA19CAC3234F47C059DD0380318737C0', 14, '14', NULL, NULL, NULL, NULL, 21, 7, 1938, NULL, 'Livro de Emplacamento n.25, p.59', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (985, 152, '0101000020E610000037972034B94E47C069F071AF1D8B37C0', 22, '22', NULL, 26, 8, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.41', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (986, 280, '0101000020E6100000495DCA122D4F47C08992D7C96F8737C0', 12, '12', NULL, NULL, NULL, NULL, 21, 7, 1938, NULL, 'Livro de Emplacamento n.25, p.59', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (987, 152, '0101000020E610000037972034B94E47C074F071AF1D8B37C0', 18.1000000000000014, '18ª', NULL, NULL, NULL, NULL, 25, 8, 1930, NULL, 'Livro de Emplacamento n.17, p.41', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (988, 280, '0101000020E6100000433C175D364F47C0552E661DAF8737C0', 2, '2', NULL, NULL, NULL, NULL, 21, 7, 1938, NULL, 'Livro de Emplacamento n.25, p.59', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (989, 152, '0101000020E6100000379720FCB44E47C069F0F17F188B37C0', 24, '24', NULL, 26, 8, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.41', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (990, 152, '0101000020E6100000399720FCB44E47C062F0F17F188B37C0', 20, '20', NULL, NULL, NULL, NULL, 25, 8, 1930, NULL, 'Livro de Emplacamento n.17, p.41', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (993, 152, '0101000020E6100000399720FCB44E47C062F0F17F188B37C0', 5, '5', NULL, NULL, NULL, NULL, 25, 8, 1930, NULL, 'Livro de Emplacamento n.17, p.41', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (994, 152, '0101000020E6100000399720FCB44E47C062F0F17F188B37C0', 13, '13', NULL, 26, 8, 1930, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.41', 6, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (995, 351, '0101000020E610000015CF719FE65047C070B4D515BC8A37C0', 22, '22', NULL, 20, 12, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.367', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (996, 351, '0101000020E61000007E93AB01BF5047C068096FC0AF8A37C0', 126, '126', NULL, 20, 12, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.367', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (997, 351, '0101000020E61000007E932B8AA75047C068096F06B58A37C0', 198, '198', NULL, 20, 12, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.367', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (998, 351, '0101000020E610000084932B8AA75047C05D096F06B58A37C0', 24, '24', NULL, NULL, NULL, NULL, 19, 12, 1939, NULL, 'Livro de Emplacamento n.26, p.367', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (999, 351, '0101000020E61000007A93AB01BF5047C06B096FC0AF8A37C0', 16, '16', NULL, NULL, NULL, NULL, 19, 12, 1939, NULL, 'Livro de Emplacamento n.26, p.367', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (1000, 351, '0101000020E610000016CF719FE65047C069B4D515BC8A37C0', 2, '2', NULL, NULL, NULL, NULL, 19, 12, 1939, NULL, 'Livro de Emplacamento n.26, p.367', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (1001, 351, '0101000020E610000016CF719FE65047C069B4D515BC8A37C0', 23, '23', NULL, 20, 12, 1939, NULL, NULL, 1868, NULL, 'Livro de Emplacamento n.26, p.367', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (1002, 351, '0101000020E61000007A93AB01BF5047C06B096FC0AF8A37C0', 133, '133', NULL, 20, 12, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.368', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (1003, 351, '0101000020E610000084932B8AA75047C05D096F06B58A37C0', 169, '169', NULL, 20, 12, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.26, p.368', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (1004, 351, '0101000020E610000016CF719FE65047C069B4D515BC8A37C0', 1, '1 E/S', NULL, NULL, NULL, NULL, 19, 12, 1939, NULL, 'Livro de Emplacamento n.26, p.367', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (1005, 351, '0101000020E61000007A93AB01BF5047C06B096FC0AF8A37C0', 31, '31', NULL, NULL, NULL, NULL, 19, 12, 1939, NULL, 'Livro de Emplacamento n.26, p.368', 11, '2018-03-15', false);
INSERT INTO public.tb_places VALUES (1006, 209, '0101000020E6100000D1CB75CB8E5147C0C74F1C339D8837C0', 73, '73', NULL, 11, 5, 1937, 24, 9, 1958, NULL, 'Livro de Emplacamento, n.22, p.158', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1007, 209, '0101000020E6100000CBCB75CB8E5147C0C44F1C339D8837C0', 1, '1', NULL, NULL, NULL, NULL, 10, 5, 1937, NULL, 'Livro de Emplacamento, n.22, p.158', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1008, 209, '0101000020E610000027440F35655147C095B3FD9F928737C0', 487, '487', NULL, 11, 5, 1937, 11, 9, 1945, NULL, 'Livro de Emplacamento, n.22, p.158', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1009, 209, '0101000020E61000002D440F35655147C08EB3FD9F928737C0', 81, '81', NULL, NULL, NULL, NULL, 10, 5, 1937, NULL, 'Livro de Emplacamento, n.22, p.158', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1010, 209, '0101000020E6100000D3A4C506585147C05C1BD8E73D8737C0', 657, '657', NULL, 11, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.22, p.159', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1011, 209, '0101000020E6100000D0A4C506585147C0681BD8E73D8737C0', 123, '123', NULL, NULL, NULL, NULL, 10, 5, 1937, NULL, 'Livro de Emplacamento, n.22, p.159', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1012, 209, '0101000020E6100000CBCB75CB8E5147C0C44F1C339D8837C0', 2, '2A', NULL, NULL, NULL, NULL, 10, 5, 1937, NULL, 'Livro de Emplacamento, n.22, p.160', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1013, 209, '0101000020E6100000CBCB75CB8E5147C0C44F1C339D8837C0', 326, '326', NULL, 11, 5, 1937, 28, 2, 1944, NULL, 'Livro de Emplacamento, n.22, p.160', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1014, 209, '0101000020E61000002D440F35655147C08EB3FD9F928737C0', 496, '496', NULL, 11, 5, 1937, 27, 6, 1940, NULL, 'Livro de Emplacamento, n.22, p.160', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1015, 209, '0101000020E6100000D0A4C506585147C0681BD8E73D8737C0', 682, '682', NULL, 11, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.22, p.160', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1016, 209, '0101000020E6100000D0A4C506585147C0681BD8E73D8737C0', 56, '56', NULL, NULL, NULL, NULL, 10, 5, 1937, NULL, 'Livro de Emplacamento, n.22, p.160', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (915, 302, '0101000020E610000091BAB542185347C01586EBC9F58937C0', 2, '2 Sob', NULL, 13, 9, 1930, 14, 10, 1935, NULL, 'Livro de Emplacamento n.17, p.91 / Livro de Emplacamento, n.20, p.98', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1018, 302, '0101000020E61000003B72E0B7EC5247C053E90369C08937C0', 133, '133', NULL, 15, 10, 1935, 18, 5, 1942, NULL, 'Livro de Emplacamento n.17, p.91 / Livro de Emplacamento, n.20, p.98', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1019, 302, '0101000020E6100000BA554ED9C25247C0142BF0E58D8937C0', 51, '51', NULL, 15, 10, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.17, p.91/ Livro de Emplacamento, n.20, p.98', 17, '2018-03-22', true);
INSERT INTO public.tb_places VALUES (1020, 302, '0101000020E610000096BAB542185347C02086EBC9F58937C0', 306, '306', NULL, 15, 10, 1935, 20, 5, 1944, NULL, 'Livro de Emplacamento n.20, p.98 / Livro de Emplacamento, n.20, p.98', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (920, 302, '0101000020E610000096BAB542185347C02086EBC9F58937C0', 1, '1', NULL, 13, 9, 1930, 14, 10, 1935, NULL, 'Livro de Emplacamento n.17, p.91 / Livro de Emplacamento, n.20, p.98', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1021, 302, '0101000020E61000003B72E0B7EC5247C053E90369C08937C0', 196, '196', NULL, 15, 10, 1935, 7, 4, 1953, NULL, 'Livro de Emplacamento, n.20, p.98', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1022, 302, '0101000020E61000003B72E0B7EC5247C053E90369C08937C0', 31, '31', NULL, NULL, NULL, NULL, 14, 10, 1935, NULL, 'Livro de Emplacamento, n.20, p.98', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (922, 302, '0101000020E6100000BA554ED9C25247C0142BF0E58D8937C0', 41, '41', NULL, 13, 9, 1930, 14, 10, 1935, NULL, 'Livro de Emplacamento n.17, p.91 / Livro de Emplacamento, n.20, p.98', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1023, 302, '0101000020E6100000BA554ED9C25247C0142BF0E58D8937C0', 50, '50', NULL, 15, 10, 1935, 19, 9, 1945, NULL, 'Livro de Emplacamento, n.20, p.98', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1017, 302, '0101000020E610000096BAB542185347C02086EBC9F58937C0', 315, '315', NULL, 15, 10, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.20, p.98', 17, '2018-03-22', false);
INSERT INTO public.tb_places VALUES (1080, 417, '0101000020E61000004707163FC75247C05A4D9D5B918D37C0', 79, '79', NULL, NULL, NULL, NULL, 22, 1, 1936, NULL, 'Livro de Emplacamento, n.20, p.328', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1058, 64, '0101000020E6100000B57C5DBCE95047C036DD39B64D8B37C0', 1, '1', NULL, NULL, NULL, NULL, 29, 9, 1936, NULL, 'Livro de Emplacamento n.21 p.299', 17, '2018-03-29', false);
INSERT INTO public.tb_places VALUES (1059, 64, '0101000020E6100000D835ADE7E15047C0D5D346FFF78A37C0', 155, '155', NULL, 30, 9, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21 p.299', 17, '2018-03-29', false);
INSERT INTO public.tb_places VALUES (1061, 33, '0101000020E61000009EF7445ADC5047C06D3E3D94BF8A37C0', 251, '251', NULL, 30, 9, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21 p.299', 17, '2018-03-29', false);
INSERT INTO public.tb_places VALUES (1276, 415, '0101000020E61000003AC85821D85247C00D47E8A9C88E37C0', 365, '365', NULL, 2, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.21, P.104', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1024, 92, '0101000020E6100000C0FC0373A05247C0BBCAB9D3EE8A37C0', 41, '41', NULL, 28, 10, 1935, 21, 12, 1965, NULL, 'Livro de Emplacamento n.20 p.138', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1027, 92, '0101000020E6100000BCFC0373A05247C0C2CAB9D3EE8A37C0', 3, '3', NULL, NULL, NULL, NULL, 27, 10, 1935, NULL, 'Livro de Emplacamento n.20 p.138', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1030, 92, '0101000020E6100000BCFC0373A05247C0C2CAB9D3EE8A37C0', 38, '38', NULL, 28, 10, 1935, 7, 11, 1956, NULL, 'Livro de Emplacamento n.20 p.139', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1031, 92, '0101000020E6100000BCFC0373A05247C0C2CAB9D3EE8A37C0', 2, '2', NULL, NULL, NULL, NULL, 27, 10, 1935, NULL, 'Livro de Emplacamento n.20 p.139', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1025, 92, '0101000020E61000005550985DE85247C0EB8E94F1F18A37C0', 217, '217', NULL, 28, 10, 1935, 29, 10, 1952, NULL, 'Livro de Emplacamento n.20 p.138', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1062, 33, '0101000020E610000098F7445ADC5047C06A3E3D94BF8A37C0', 57.1000000000000014, '57 A', NULL, NULL, NULL, NULL, 29, 9, 1936, NULL, 'Livro de Emplacamento n.21 p.299', 17, '2018-04-04', false);
INSERT INTO public.tb_places VALUES (1032, 92, '0101000020E61000005A50985DE85247C0F38E94F1F18A37C0', 206, '206', NULL, 28, 10, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.20 p.139', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1033, 92, '0101000020E61000005A50985DE85247C0F38E94F1F18A37C0', 30, '30', NULL, NULL, NULL, NULL, 27, 10, 1935, NULL, 'Livro de Emplacamento n.20 p.139', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1026, 92, '0101000020E610000081F9A5B4095347C053407900F08A37C0', 305, '305', NULL, 28, 10, 1935, 30, 8, 1966, NULL, 'Livro de Emplacamento n.20 p.138', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1029, 92, '0101000020E610000081F9A5B4095347C050407900F08A37C0', 29, '29', NULL, NULL, NULL, NULL, 27, 10, 1935, NULL, 'Livro de Emplacamento n.20 p.138', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1034, 92, '0101000020E610000081F9A5B4095347C050407900F08A37C0', 302, '302', NULL, 28, 10, 1935, 10, 7, 1958, NULL, 'Livro de Emplacamento n.20 p.139', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1035, 92, '0101000020E610000081F9A5B4095347C050407900F08A37C0', 42, '42', NULL, NULL, NULL, NULL, 27, 10, 1935, NULL, 'Livro de Emplacamento n.20 p.139', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1036, 140, '0101000020E6100000654CF682295047C025DFA4056F8B37C0', 245, '245', NULL, 28, 5, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21 p.150', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1037, 140, '0101000020E6100000644CF682295047C01BDFA4056F8B37C0', 1, '1', NULL, NULL, NULL, NULL, 27, 5, 1936, NULL, 'Livro de Emplacamento n.21 p.150', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1038, 140, '0101000020E6100000068C584F3B5047C0BC7650F1888A37C0', 409, '409', NULL, 28, 5, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21 p.150', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1039, 140, '0101000020E6100000008C584F3B5047C0B37650F1888A37C0', 55, '55', NULL, NULL, NULL, NULL, 27, 5, 1936, NULL, 'Livro de Emplacamento n.21 p.150', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1040, 140, '0101000020E6100000068CD8A03C5047C0BC76502D4D8A37C0', 495, '495', NULL, 28, 5, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21 p.150', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1041, 140, '0101000020E61000000B8CD8A03C5047C0C576502D4D8A37C0', 77, '77', NULL, NULL, NULL, NULL, 27, 5, 1936, NULL, 'Livro de Emplacamento n.21 p.150', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1042, 140, '0101000020E6100000644CF682295047C01BDFA4056F8B37C0', 2, '2', NULL, NULL, NULL, NULL, 27, 5, 1936, NULL, 'Livro de Emplacamento n.21 p.151', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1043, 140, '0101000020E6100000644CF682295047C01BDFA4056F8B37C0', 24, '24', NULL, 28, 5, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21 p.151', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1044, 140, '0101000020E6100000008C584F3B5047C0B37650F1888A37C0', 90, '90', NULL, NULL, NULL, NULL, 27, 5, 1936, NULL, 'Livro de Emplacamento n.21 p.151', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1045, 140, '0101000020E6100000008C584F3B5047C0B37650F1888A37C0', 414, '414', NULL, 28, 5, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21 p.151', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1046, 140, '0101000020E61000000B8CD8A03C5047C0C576502D4D8A37C0', 110, '110', NULL, NULL, NULL, NULL, 27, 5, 1936, NULL, 'Livro de Emplacamento n.21 p.151', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1047, 140, '0101000020E61000000B8CD8A03C5047C0C576502D4D8A37C0', 518, '518', NULL, 28, 5, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21 p.151', 17, '2018-03-25', false);
INSERT INTO public.tb_places VALUES (1051, 64, '0101000020E61000007AE93CAEC15147C0593EF57BB38C37C0', 8, '8', NULL, 30, 9, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.27, p.108', 17, '2018-03-29', false);
INSERT INTO public.tb_places VALUES (1052, 64, '0101000020E61000007DE93CAEC15147C0573EF57BB38C37C0', 2, '2', NULL, NULL, NULL, NULL, 29, 9, 1940, NULL, 'Livro de Emplacamento n.27, p.108', 17, '2018-03-29', false);
INSERT INTO public.tb_places VALUES (1053, 64, '0101000020E61000003DBB72A6F85147C002ACC2FD318D37C0', 204, '204', NULL, 30, 9, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.27, p.108', 17, '2018-03-29', false);
INSERT INTO public.tb_places VALUES (1054, 64, '0101000020E610000038BB72A6F85147C009ACC2FD318D37C0', 32, '32', NULL, NULL, NULL, NULL, 29, 9, 1940, NULL, 'Livro de Emplacamento n.27, p.108', 17, '2018-03-29', false);
INSERT INTO public.tb_places VALUES (1055, 64, '0101000020E6100000491C53EDE95147C0B9CBFA55688E37C0', 770, '770', NULL, 30, 9, 1940, 15, 2, 1971, NULL, 'Livro de Emplacamento n.27, p.109', 17, '2018-03-29', false);
INSERT INTO public.tb_places VALUES (1056, 64, '0101000020E61000004B1C53EDE95147C0C7CBFA55688E37C0', 148, '148', NULL, NULL, NULL, NULL, 29, 9, 1940, NULL, 'Livro de Emplacamento n.27, p.109', 17, '2018-03-29', false);
INSERT INTO public.tb_places VALUES (1057, 64, '0101000020E6100000B47C5DBCE95047C036DD39B64D8B37C0', 13, '13', NULL, 30, 9, 1936, 17, 11, 1960, NULL, 'Livro de Emplacamento n.21 p.299', 17, '2018-03-29', false);
INSERT INTO public.tb_places VALUES (1063, 64, '0101000020E6100000B57C5DBCE95047C036DD39B64D8B37C0', 16, '16', NULL, 30, 9, 1936, 11, 8, 1950, NULL, 'Livro de Emplacamento n.21 p.300', 17, '2018-03-29', false);
INSERT INTO public.tb_places VALUES (1064, 64, '0101000020E6100000B57C5DBCE95047C036DD39B64D8B37C0', 2, '2', NULL, NULL, NULL, NULL, 29, 9, 1936, NULL, 'Livro de Emplacamento n.21 p.300', 17, '2018-03-29', false);
INSERT INTO public.tb_places VALUES (1065, 33, '0101000020E610000098F7445ADC5047C06A3E3D94BF8A37C0', 48, '48', NULL, NULL, NULL, NULL, 29, 9, 1936, NULL, 'Livro de Emplacamento n.21 p.300', 17, '2018-03-29', false);
INSERT INTO public.tb_places VALUES (1066, 33, '0101000020E610000098F7445ADC5047C06A3E3D94BF8A37C0', 256, '256', NULL, 30, 9, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21 p.300', 17, '2018-03-29', false);
INSERT INTO public.tb_places VALUES (1067, 417, '0101000020E6100000A47680C2C95147C0938F6906A68C37C0', 39, '39', NULL, 30, 11, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.27 p.347', 17, '2018-03-29', false);
INSERT INTO public.tb_places VALUES (1069, 417, '0101000020E61000009D7680C2C95147C0878F6906A68C37C0', 2, '2', NULL, NULL, NULL, NULL, 29, 11, 1940, NULL, 'Livro de Emplacamento n.27 p.350', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1070, 417, '0101000020E61000009D7680C2C95147C0878F6906A68C37C0', 30, '30', NULL, 30, 11, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.27 p.350', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1071, 417, '0101000020E61000009D101E5FEF5247C0F4C04DC96C8E37C0', 1325, '1325', NULL, 30, 11, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.27 p.349', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1072, 417, '0101000020E610000097101E5FEF5247C0F4C04DC96C8E37C0', 237, '237', NULL, NULL, NULL, NULL, 29, 11, 1940, NULL, 'Livro de Emplacamento n.27 p.349', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1073, 417, '0101000020E610000097101E5FEF5247C0F4C04DC96C8E37C0', 330, '330', NULL, NULL, NULL, NULL, 29, 11, 1940, NULL, 'Livro de Emplacamento n.27 p.352', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1074, 417, '0101000020E610000097101E5FEF5247C0F4C04DC96C8E37C0', 1326, '1326', NULL, 30, 11, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.27 p.352', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1077, 417, '0101000020E6100000BA882943345247C08AE394F6768D37C0', 9, '9', NULL, 23, 1, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.20, p.328', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1078, 417, '0101000020E6100000B8882943345247C092E394F6768D37C0', 1, '1', NULL, NULL, NULL, NULL, 22, 1, 1936, NULL, 'Livro de Emplacamento, n.20, p.328', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1079, 417, '0101000020E61000004007163FC75247C0504D9D5B918D37C0', 467, '467', NULL, 23, 1, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.20, p.328', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1060, 64, '0101000020E6100000DE35ADE7E15047C0E0D346FFF78A37C0', 37.1000000000000014, '37 A', NULL, NULL, NULL, NULL, 29, 9, 1936, NULL, 'Livro de Emplacamento n.21 p.299', 17, '2018-04-04', false);
INSERT INTO public.tb_places VALUES (1068, 417, '0101000020E61000009D7680C2C95147C0878F6906A68C37C0', 1, '1-A', NULL, NULL, NULL, NULL, 29, 11, 1940, NULL, 'Livro de Emplacamento n.27 p.347', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1075, 417, '0101000020E61000009C0409AA5C5247C0E6FB94BE148D37C0', 536, '536', NULL, 30, 11, 1940, 30, 9, 1947, NULL, 'Livro de Emplacamento n.27 p.347', 17, '2018-04-04', false);
INSERT INTO public.tb_places VALUES (1076, 417, '0101000020E6100000A20409AA5C5247C0E8FB94BE148D37C0', 118, '118 T', NULL, NULL, NULL, NULL, 29, 11, 1940, NULL, 'Livro de Emplacamento n.27 p.347', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1081, 417, '0101000020E6100000B8882943345247C092E394F6768D37C0', 2, '2', NULL, NULL, NULL, NULL, 22, 1, 1936, NULL, 'Livro de Emplacamento, n.20, p.329', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1082, 417, '0101000020E6100000B8882943345247C092E394F6768D37C0', 16, '16', NULL, 23, 1, 1936, 24, 4, 1951, NULL, 'Livro de Emplacamento, n.20, p.329', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1083, 417, '0101000020E61000004707163FC75247C05A4D9D5B918D37C0', 460, '460', NULL, 23, 1, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.20, p.329', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1084, 417, '0101000020E6100000D2EF5538875247C0BFEE3092848D37C0', 247, '247', NULL, 23, 1, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.20, p.328', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1086, 417, '0101000020E6100000CEEF5538875247C0C0EE3092848D37C0', 268, '268', NULL, 23, 1, 1936, 15, 4, 1948, NULL, 'Livro de Emplacamento, n.20, p.329', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1087, 417, '0101000020E6100000CEEF5538875247C0C0EE3092848D37C0', 62, '62', NULL, NULL, NULL, NULL, 22, 1, 1936, NULL, 'Livro de Emplacamento, n.20, p.329', 17, '2018-03-30', false);
INSERT INTO public.tb_places VALUES (1088, 58, '0101000020E610000053093A9C8B5147C004F53352AA8C37C0', 11, '11', NULL, 21, 9, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.25, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1089, 58, '0101000020E610000059093A9C8B5147C004F53352AA8C37C0', 3, '3', NULL, NULL, NULL, NULL, 20, 9, 1938, NULL, 'Livro de Emplacamento, n.25, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1090, 58, '0101000020E6100000BBBEA8CFA85147C0221DF8488E8C37C0', 67, '67', NULL, 21, 9, 1938, 10, 9, 1954, NULL, 'Livro de Emplacamento, n.25, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1091, 58, '0101000020E6100000BFBEA8CFA85147C0241DF8488E8C37C0', 13, '13', NULL, NULL, NULL, NULL, 20, 9, 1938, NULL, 'Livro de Emplacamento, n.25, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1092, 58, '0101000020E6100000BFBEA8CFA85147C0241DF8488E8C37C0', 66, '66', NULL, 21, 9, 1938, 25, 7, 1945, NULL, 'Livro de Emplacamento, n.25, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1094, 58, '0101000020E6100000B66B10DFB55147C0951AF429758C37C0', 29, '29', NULL, NULL, NULL, NULL, 20, 9, 1938, NULL, 'Livro de Emplacamento, n.25, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1095, 58, '0101000020E6100000B66B10DFB55147C0951AF429758C37C0', 32, '32', NULL, NULL, NULL, NULL, 20, 9, 1938, NULL, 'Livro de Emplacamento, n.25, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1096, 58, '0101000020E6100000B66B10DFB55147C0951AF429758C37C0', 118, '118', NULL, 21, 9, 1938, 2, 7, 1953, NULL, 'Livro de Emplacamento, n.25, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1097, 96, '0101000020E61000009402E9C2575247C0931C1B8F8C8B37C0', 31, '31', NULL, 12, 11, 1935, 14, 6, 1944, NULL, 'Livro de Emplacamento, n.20, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1098, 96, '0101000020E61000009202E9C2575247C09C1C1B8F8C8B37C0', 18, '18', NULL, NULL, NULL, NULL, 11, 11, 1935, NULL, 'Livro de Emplacamento, n.20, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1099, 96, '0101000020E61000009202E9C2575247C09C1C1B8F8C8B37C0', 19, '19', NULL, NULL, NULL, NULL, 11, 11, 1935, NULL, 'Livro de Emplacamento, n.20, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1100, 96, '0101000020E61000009202E9C2575247C09C1C1B8F8C8B37C0', 72, '72', NULL, 12, 11, 1935, 18, 3, 1957, NULL, 'Livro de Emplacamento, n.20, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1101, 96, '0101000020E610000004CF1871435247C0713F612E428C37C0', 1, '1', NULL, NULL, NULL, NULL, 11, 11, 1935, NULL, 'Livro de Emplacamento, n.20, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1102, 96, '0101000020E610000001CF1871435247C07D3F612E428C37C0', 288, '288', NULL, 12, 11, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.20, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1103, 96, '0101000020E610000001CF1871435247C07D3F612E428C37C0', 211, '211', NULL, 12, 11, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.20, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1104, 96, '0101000020E610000001CF1871435247C07D3F612E428C37C0', 2, '2', NULL, NULL, NULL, NULL, 11, 11, 1935, NULL, 'Livro de Emplacamento, n.20, p.172', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1105, 116, '0101000020E6100000008C0850D05347C0DD6BAB92FF8D37C0', 45, '45', NULL, 26, 10, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.24, p.49', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1106, 116, '0101000020E6100000FE8B0850D05347C0D96BAB92FF8D37C0', 36, '36', NULL, 26, 10, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.24, p.49', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1107, 116, '0101000020E6100000FE8B0850D05347C0D96BAB92FF8D37C0', 2, '2', NULL, NULL, NULL, NULL, 25, 10, 1937, NULL, 'Livro de Emplacamento, n.24, p.49', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1108, 116, '0101000020E6100000028CE8A7C55347C0DD6B6B9E248E37C0', 85, '85', NULL, 26, 10, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.24, p.49', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1109, 116, '0101000020E6100000068CE8A7C55347C0DC6B6B9E248E37C0', 11, '11', NULL, NULL, NULL, NULL, 25, 10, 1937, NULL, 'Livro de Emplacamento, n.24, p.49', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1110, 116, '0101000020E6100000068CE8A7C55347C0DC6B6B9E248E37C0', 10, '10', NULL, NULL, NULL, NULL, 25, 10, 1937, NULL, 'Livro de Emplacamento, n.24, p.49', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1111, 116, '0101000020E6100000068CE8A7C55347C0DC6B6B9E248E37C0', 86, '86', NULL, 26, 10, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.24, p.49', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1112, 116, '0101000020E61000001303386BBF5347C02E2F890B3A8E37C0', 121, '121', NULL, 26, 10, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.24, p.49', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1113, 116, '0101000020E61000001603386BBF5347C0272F890B3A8E37C0', 19, '19', NULL, NULL, NULL, NULL, 25, 10, 1937, NULL, 'Livro de Emplacamento, n.24, p.49', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1115, 116, '0101000020E61000001603386BBF5347C0272F890B3A8E37C0', 116, '116', NULL, 26, 10, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.24, p.49', 17, '2018-03-31', false);
INSERT INTO public.tb_places VALUES (1116, 416, '0101000020E61000006D239A81C55247C04271B6DE738E37C0', 27, '27', NULL, 10, 11, 1939, 14, 3, 1966, NULL, 'Livro de Emplacamento, n.26, p.350', 17, '2018-04-01', false);
INSERT INTO public.tb_places VALUES (1117, 416, '0101000020E610000073239A81C55247C03F71B6DE738E37C0', 1, '1', NULL, NULL, NULL, NULL, 9, 11, 1939, NULL, 'Livro de Emplacamento, n.26, p.350', 17, '2018-04-01', false);
INSERT INTO public.tb_places VALUES (1118, 416, '0101000020E610000073239A81C55247C03F71B6DE738E37C0', 2, '2', NULL, NULL, NULL, NULL, 9, 11, 1939, NULL, 'Livro de Emplacamento, n.26, p.351', 17, '2018-04-01', false);
INSERT INTO public.tb_places VALUES (1119, 416, '0101000020E610000073239A81C55247C03F71B6DE738E37C0', 42, '42', NULL, 10, 11, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.26, p.351', 17, '2018-04-01', false);
INSERT INTO public.tb_places VALUES (1120, 416, '0101000020E610000080616B0FF35247C0E1464E4A738E37C0', 172, '172', NULL, 10, 11, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.26, p.351', 17, '2018-04-01', false);
INSERT INTO public.tb_places VALUES (1121, 416, '0101000020E61000007C616B0FF35247C0EE464E4A738E37C0', 8, '8', NULL, NULL, NULL, NULL, 9, 11, 1939, NULL, 'Livro de Emplacamento, n.26, p.351', 17, '2018-04-01', false);
INSERT INTO public.tb_places VALUES (1122, 416, '0101000020E61000008161AB8B185347C0E146CE957A8E37C0', 271, '271', NULL, 10, 11, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.26, p.350', 17, '2018-04-01', false);
INSERT INTO public.tb_places VALUES (1123, 416, '0101000020E61000008361AB8B185347C0E946CE957A8E37C0', 57, '57', NULL, NULL, NULL, NULL, 9, 11, 1939, NULL, 'Livro de Emplacamento, n.26, p.350', 17, '2018-04-01', false);
INSERT INTO public.tb_places VALUES (1124, 416, '0101000020E61000008361AB8B185347C0E946CE957A8E37C0', 34, '34', NULL, NULL, NULL, NULL, 9, 11, 1939, NULL, 'Livro de Emplacamento, n.26, p.351', 17, '2018-04-01', false);
INSERT INTO public.tb_places VALUES (1125, 416, '0101000020E61000008361AB8B185347C0E946CE957A8E37C0', 270, '270', NULL, 10, 11, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.26, p.351', 17, '2018-04-01', false);
INSERT INTO public.tb_places VALUES (1160, 64, '0101000020E610000010035A2BFA5147C0D9317BE8D98D37C0', 505, '505', NULL, 30, 9, 1940, 28, 1, 1952, NULL, 'Livro de Emplacamento n.27, p.111', 6, '2018-04-02', false);
INSERT INTO public.tb_places VALUES (1126, 64, '0101000020E61000007DE93CAEC15147C0573EF57BB38C37C0', 1, '1', NULL, NULL, NULL, NULL, 29, 9, 1940, NULL, 'Livro de Emplacamento n.27, p.110', 6, '2018-04-02', false);
INSERT INTO public.tb_places VALUES (1159, 64, '0101000020E61000007DE93CAEC15147C0573EF57BB38C37C0', 11, '11', NULL, 30, 9, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.27, p.110', 6, '2018-04-02', false);
INSERT INTO public.tb_places VALUES (1161, 64, '0101000020E610000012035A2BFA5147C0E5317BE8D98D37C0', 109, '109', NULL, NULL, NULL, NULL, 29, 9, 1940, NULL, 'Livro de Emplacamento n.27, p.111', 6, '2018-04-02', false);
INSERT INTO public.tb_places VALUES (1093, 58, '0101000020E6100000BFBEA8CFA85147C0241DF8488E8C37C0', 20.1000000000000014, '20-A', NULL, NULL, NULL, NULL, 20, 9, 1938, NULL, 'Livro de Emplacamento, n.25, p.172', 6, '2018-04-02', false);
INSERT INTO public.tb_places VALUES (1162, 64, '0101000020E61000004B1C53EDE95147C0C7CBFA55688E37C0', 115.200000000000003, '115-B', NULL, NULL, NULL, NULL, 29, 9, 1940, NULL, 'Livro de Emplacamento n.27, p.111', 6, '2018-04-02', false);
INSERT INTO public.tb_places VALUES (1163, 64, '0101000020E61000004B1C53EDE95147C0C7CBFA55688E37C0', 563, '563', NULL, 30, 9, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.27, p.111', 6, '2018-04-02', false);
INSERT INTO public.tb_places VALUES (1164, 3, '0101000020E610000098A94BAA2C5147C0C562314DB58B37C0', 19, '19', NULL, 14, 3, 1941, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.28, p.129', 6, '2018-04-02', false);
INSERT INTO public.tb_places VALUES (1165, 3, '0101000020E610000097A94BAA2C5147C0C762314DB58B37C0', 1, '1', NULL, NULL, NULL, NULL, 13, 3, 1941, NULL, 'Livro de Emplacamento n.28, p.129', 6, '2018-04-02', false);
INSERT INTO public.tb_places VALUES (1114, 116, '0101000020E61000001603386BBF5347C0272F890B3A8E37C0', 18.1000000000000014, '18 A', NULL, NULL, NULL, NULL, 25, 10, 1937, NULL, 'Livro de Emplacamento, n.24, p.49', 17, '2018-04-04', false);
INSERT INTO public.tb_places VALUES (1300, 47, '0101000020E610000011A7BC981B5147C0E268BA90718C37C0', 7, '7', NULL, NULL, NULL, NULL, 6, 12, 1936, NULL, 'L21, p. 358', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1311, 328, '0101000020E6100000835EF978B75147C09D51CCB4E98A37C0', 2, '2', NULL, NULL, NULL, NULL, 19, 9, 1935, NULL, 'Livro de emplacamento n.20, p.44', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1166, 3, '0101000020E6100000625B714F1D5147C0E6DE958B968B37C0', 77, '77', NULL, 14, 3, 1941, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.28, p.129', 6, '2018-04-02', false);
INSERT INTO public.tb_places VALUES (1167, 3, '0101000020E61000005B5B714F1D5147C0E9DE958B968B37C0', 19, '19', NULL, NULL, NULL, NULL, 13, 3, 1941, NULL, 'Livro de Emplacamento n.28, p.129', 6, '2018-04-02', false);
INSERT INTO public.tb_places VALUES (1168, 3, '0101000020E610000097A94BAA2C5147C0C762314DB58B37C0', 4, '4', NULL, NULL, NULL, NULL, 13, 3, 1941, NULL, 'Livro de Emplacamento n.28, p.129', 6, '2018-04-02', false);
INSERT INTO public.tb_places VALUES (1169, 3, '0101000020E610000097A94BAA2C5147C0C762314DB58B37C0', 32, '32', NULL, 14, 3, 1941, 13, 2, 1979, NULL, 'Livro de Emplacamento n.28, p.129', 6, '2018-04-02', false);
INSERT INTO public.tb_places VALUES (1170, 3, '0101000020E61000005B5B714F1D5147C0E9DE958B968B37C0', 18, '18', NULL, 13, 3, 1941, 13, 3, 1941, NULL, 'Livro de Emplacamento n.28, p.129', 6, '2018-04-02', true);
INSERT INTO public.tb_places VALUES (1028, 92, '0101000020E61000005A50985DE85247C0F38E94F1F18A37C0', 21.1000000000000014, '21 A/T', NULL, NULL, NULL, NULL, 27, 10, 1935, NULL, 'Livro de Emplacamento n.20 p.138', 17, '2018-04-04', false);
INSERT INTO public.tb_places VALUES (1171, 64, '0101000020E6100000921AAA16E65147C0841332EB0C8D37C0', 17.1000000000000014, '17 A', NULL, NULL, NULL, NULL, 29, 9, 1940, NULL, 'Livro de Emplacamento, n.27, p.110', 17, '2018-04-04', false);
INSERT INTO public.tb_places VALUES (1172, 64, '0101000020E6100000961AAA16E65147C0911332EB0C8D37C0', 135, '135', NULL, 30, 9, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.27, p.110', 17, '2018-04-04', false);
INSERT INTO public.tb_places VALUES (1174, 417, '0101000020E61000009B475CBC3B5247C02CCAAACDF78C37C0', 487, '487', NULL, 30, 11, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.27, p.347', 17, '2018-04-04', false);
INSERT INTO public.tb_places VALUES (1278, 68, '0101000020E6100000A933262D475247C07EC9061DA18C37C0', 35, '35', NULL, NULL, NULL, NULL, 6, 8, 1940, NULL, 'Livro de emplacamento n.27, p.183', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1173, 417, '0101000020E610000097475CBC3B5247C029CAAACDF78C37C0', 83, '83', NULL, NULL, NULL, NULL, 29, 11, 1940, NULL, 'Livro de Emplacamento, n.27, p.347', 17, '2018-04-04', false);
INSERT INTO public.tb_places VALUES (1085, 417, '0101000020E6100000CEEF5538875247C0C0EE3092848D37C0', 45.1000000000000014, '45 A', NULL, NULL, NULL, NULL, 22, 1, 1936, NULL, 'Livro de Emplacamento, n.20, p.328', 17, '2018-04-04', false);
INSERT INTO public.tb_places VALUES (1175, 58, '0101000020E6100000BFBEA8CFA85147C0241DF8488E8C37C0', 20.1000000000000014, '20 A', NULL, NULL, NULL, NULL, 20, 9, 1938, NULL, 'Livro de Emplacamento, n.25, p.172', 17, '2018-04-04', false);
INSERT INTO public.tb_places VALUES (1176, 416, '0101000020E6100000DA5C56BEDF5247C0331CB1EC728E37C0', 17, '17', NULL, NULL, NULL, NULL, 9, 11, 1939, NULL, 'Livro de Emplacamento, n.26, p.350', 17, '2018-04-04', false);
INSERT INTO public.tb_places VALUES (1177, 416, '0101000020E6100000E05C56BEDF5247C03D1CB1EC728E37C0', 93, '93', NULL, 10, 11, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.26, p.350', 17, '2018-04-04', false);
INSERT INTO public.tb_places VALUES (1178, 390, '0101000020E6100000E56CFA69D14E47C0FD7D7D13698A37C0', 30, '30', NULL, 2, 9, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.21, p.274', 17, '2018-04-07', false);
INSERT INTO public.tb_places VALUES (1179, 390, '0101000020E6100000E16CFA69D14E47C0F57D7D13698A37C0', 13, '13', NULL, 2, 9, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.21, p.274', 17, '2018-04-07', false);
INSERT INTO public.tb_places VALUES (1180, 390, '0101000020E6100000E56CFA7BEC4E47C0FB7D7D062B8A37C0', 144, '144', NULL, 2, 9, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.21, p.274', 17, '2018-04-07', false);
INSERT INTO public.tb_places VALUES (1181, 390, '0101000020E6100000E36CFA7BEC4E47C0057E7D062B8A37C0', 139, '139', NULL, 2, 9, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.21, p.274', 17, '2018-04-07', false);
INSERT INTO public.tb_places VALUES (1182, 390, '0101000020E6100000E36CFA7BEC4E47C0057E7D062B8A37C0', 40, '40', NULL, NULL, NULL, NULL, 1, 9, 1936, NULL, 'Livro de Emplacamento, n.21, p.274', 17, '2018-04-07', false);
INSERT INTO public.tb_places VALUES (1301, 10, '0101000020E610000018A89890D14F47C08DFCF679548D37C0', 136, '136', NULL, 20, 4, 1936, 18, 7, 1946, NULL, 'livro de emplacamentos L21, p.54', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1290, 10, '0101000020E61000001CA89890D14F47C08BFCF679548D37C0', 129, '129', NULL, 20, 4, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamentos L21, p.53', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1312, 315, '0101000020E61000001EE6EBD6E85247C0586BF11ED28937C0', 329, '329', NULL, 25, 10, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.20, P.121', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1323, 315, '0101000020E610000017E6EBD6E85247C05D6BF11ED28937C0', 238, '238', NULL, 25, 10, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.20, P.121', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1333, 108, '0101000020E61000007FA4159BCC5347C000A1A63B5F8C37C0', 593, '593', NULL, 19, 2, 1936, NULL, NULL, NULL, NULL, 'L20, p. 367', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1342, 328, '0101000020E61000004A6492DEE45147C0D0B8BF8B7D8A37C0', 224, '224', NULL, 20, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento n.20, p.44', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1352, 108, '0101000020E61000003FFB203E875347C0CE2B02C74B8D37C0', 144, '144', NULL, 19, 2, 1936, NULL, NULL, NULL, NULL, 'L20, p. 367', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1362, 287, '0101000020E61000000E6AA3A51E4F47C0D721A34AD18737C0', 26, '26', NULL, 5, 2, 1943, NULL, NULL, NULL, NULL, 'livro de emplacamento L31, p.58', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1372, 287, '0101000020E610000098EBADBA0C4F47C04D17C615E08737C0', 71, '71', NULL, 5, 2, 1943, NULL, NULL, NULL, NULL, 'livro de emplacamento L31, p.58', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1380, 177, '0101000020E6100000F4CC6A7F695347C0362068EEB18837C0', 119, '119', NULL, NULL, NULL, NULL, 15, 9, 1935, NULL, 'Livro de emplacamento, n.20, p.28', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1388, 382, '0101000020E6100000F25BE2C34D4F47C096050064188B37C0', 130, '130', NULL, 30, 1, 1936, 12, 5, 1972, NULL, 'livro de emplacamentos L20, p.342', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1394, 177, '0101000020E6100000F794B3E4FE5247C06EEB10262B8837C0', 32, '32', NULL, NULL, NULL, NULL, 15, 9, 1935, NULL, 'Livro de emplacamento, n.20, p.29', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1376, 118, '0101000020E6100000B008E6A74E5247C0B4D093B0208E37C0', 1.10000000000000009, '1A', NULL, NULL, NULL, NULL, 15, 12, 1937, NULL, 'livro de emplacamento n. 24, p. 139', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1387, 104, '0101000020E6100000C5629E83C65247C0C49346F9CF8C37C0', 52, '52', NULL, NULL, NULL, NULL, 9, 1, 1936, NULL, 'Livro de Emplacamento - L20, p.286', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1409, 382, '0101000020E6100000F05B620B3B4F47C09A058033508B37C0', 1, '1', NULL, NULL, NULL, NULL, 29, 1, 1936, NULL, 'livro de emplacamentos L20, p.343', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1413, 382, '0101000020E6100000F45BE2C34D4F47C0A2050064188B37C0', 155, '155', NULL, 30, 1, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamentos L20, p.343', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1386, 118, '0101000020E61000000EE013FDC15247C0571A37A1348E37C0', 65, '65', NULL, NULL, NULL, NULL, 15, 12, 1937, NULL, 'livro de emplacamento n. 24, p. 139', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1424, 400, '0101000020E61000006C576D56EC5347C05357767A808D37C0', 4, '4', NULL, NULL, NULL, NULL, 17, 2, 1936, NULL, 'livro de emplacamento L20, p.360', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1428, 379, '0101000020E61000004E1CB0EA035047C08DBDB6D2CA8A37C0', 1, '1', NULL, NULL, NULL, NULL, 14, 4, 1936, NULL, 'Livro de emplacamento L.21, P.35', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1403, 88, '0101000020E61000008C0AC9C0EC5247C0F4BDAF6E748B37C0', 338, '338', NULL, 9, 10, 1935, 12, 9, 1968, NULL, 'Livro de Emplacamento - L20, p.95', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1435, 379, '0101000020E61000004E1CB0EA035047C08DBDB6D2CA8A37C0', 28, '28', NULL, 15, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.21, P.36', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1439, 14, '0101000020E61000008C0DDCCFFD5047C022CD824AAC8C37C0', 28, '28', NULL, 7, 12, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L26, p.357', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1443, 440, '0101000020E61000009F30787D695147C03BC1E742398E37C0', 312, '312', NULL, 20, 7, 1938, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.25, p.29', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1447, 440, '0101000020E6100000DF59D3C5725147C0E75F1918878E37C0', 160, '160', NULL, NULL, NULL, NULL, 19, 7, 1938, NULL, 'Livro de emplacamento, n.25, p.29', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1451, 379, '0101000020E61000003B57BA39E14F47C072AD33ACB38A37C0', 20, '20', NULL, NULL, NULL, NULL, 14, 4, 1936, NULL, 'Livro de emplacamento L.21, P.36', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1454, 111, '0101000020E6100000930E1081945347C0D30E5427D48B37C0', 132, '132', NULL, 9, 11, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 166', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1457, 111, '0101000020E61000008D0E1081945347C0E00E5427D48B37C0', 89, '89', NULL, 9, 11, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 165', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1460, 440, '0101000020E61000009D30787D695147C030C1E742398E37C0', 47, '47', NULL, NULL, NULL, NULL, 19, 7, 1938, NULL, 'Livro de emplacamento, n.25, p.31', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1463, 111, '0101000020E6100000930E9081E65347C0D30E54318E8B37C0', 297, '297', NULL, 9, 11, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 165', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1466, 502, '0101000020E61000001E23B9E24E4F47C04974257EB98C37C0', 33, '33', NULL, 29, 8, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.21, P.265', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1469, 111, '0101000020E61000008E0E9081E65347C0CC0E54318E8B37C0', 14, '14', NULL, NULL, NULL, NULL, 8, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 166', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1472, 440, '0101000020E6100000659EB9607A5147C0CFC48985B48E37C0', 97, '97', NULL, NULL, NULL, NULL, 19, 7, 1938, NULL, 'Livro de emplacamento, n.25, p.31', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1475, 483, '0101000020E61000009F10EB8FB04F47C030789651DE8D37C0', 109, '109', NULL, 2, 7, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L21, p180', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1279, 415, '0101000020E6100000C594256EE35247C0C189508BFF8D37C0', 1, '1', NULL, NULL, NULL, NULL, 1, 4, 1936, NULL, 'Livro de emplacamento L.21, P.104', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1302, 10, '0101000020E610000036154123AC4F47C0F7ACB3F35A8D37C0', 234, '234', NULL, 20, 4, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamentos L21, p.54', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1313, 110, '0101000020E6100000DE2D77D07A5347C0E8F47874A38B37C0', 1, '1', NULL, NULL, NULL, NULL, 13, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 186', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1324, 315, '0101000020E610000017E6EBD6E85247C05D6BF11ED28937C0', 46, '46', NULL, NULL, NULL, NULL, 24, 10, 1936, NULL, 'Livro de emplacamento L.20, P.121', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1334, 110, '0101000020E61000007C4C1AA2AB5347C098913185128C37C0', 262, '262', NULL, 14, 11, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 186', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1343, 110, '0101000020E610000095B5B574E15347C0C0E0F9EB7F8C37C0', 506, '506', NULL, 14, 11, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 186', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1353, 172, '0101000020E6100000C5375288265347C061487395A68737C0', 47, '47', NULL, NULL, NULL, NULL, 25, 9, 1935, NULL, 'Livro de emplacamento L.20, p.49', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1363, 172, '0101000020E6100000C5375288265347C061487395A68737C0', 12, '12', NULL, NULL, NULL, NULL, 25, 9, 1935, NULL, 'Livro de emplacamento L.20, p.49', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1373, 118, '0101000020E6100000B208E6A74E5247C0A7D093B0208E37C0', 31, '31', NULL, 16, 12, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 24, p. 139', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1389, 118, '0101000020E61000009BC58D8BF25247C042C8B26A3D8E37C0', 527, '527', NULL, 16, 12, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 24, p. 140', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1400, 382, '0101000020E6100000F45BE2C34D4F47C0A2050064188B37C0', 18, '18', NULL, NULL, NULL, NULL, 29, 1, 1936, NULL, 'livro de emplacamentos L20, p.342', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1405, 118, '0101000020E61000000EE013FDC15247C0571A37A1348E37C0', 360, '360', NULL, 16, 12, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 24, p. 137', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1381, 104, '0101000020E6100000C7AFE64ED85247C0FD597E67708C37C0', 34, '34', NULL, NULL, NULL, NULL, 9, 1, 1936, NULL, 'Livro de Emplacamento - L20, p.286', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1410, 104, '0101000020E6100000C4AFE64ED85247C0F8597E67708C37C0', 116, '116', NULL, NULL, NULL, NULL, 10, 1, 1936, NULL, 'Livro de Emplacamento - L20, p.286', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1414, 382, '0101000020E6100000F45BE2C34D4F47C0A2050064188B37C0', 27, '27 S', NULL, NULL, NULL, NULL, 29, 1, 1936, NULL, 'livro de emplacamentos L20, p.343', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1417, 382, '0101000020E6100000F65BE2D5684F47C0920500FEC98A37C0', 221, '221', NULL, 30, 1, 1936, 20, 10, 1938, NULL, 'livro de emplacamentos L20, p.343', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1421, 88, '0101000020E610000025E41CB4EF5247C0F6E6951F2B8C37C0', 122, '122', NULL, NULL, NULL, NULL, 8, 10, 1935, NULL, 'Livro de Emplacamento L20, p.96', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1425, 379, '0101000020E61000006B214F6D9F4F47C0D5268A96878A37C0', 331, '331', NULL, 15, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.21, P.35', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1429, 400, '0101000020E61000006657ADC7E05347C05757769CA98D37C0', 6, '6', NULL, NULL, NULL, NULL, 17, 2, 1936, NULL, 'livro de emplacamento L20, p.360', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1432, 379, '0101000020E610000070214F6D9F4F47C0D5268A96878A37C0', 79, '79', NULL, NULL, NULL, NULL, 14, 4, 1936, NULL, 'Livro de emplacamento L.21, P.35', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1395, 88, '0101000020E61000008C0AC9C0EC5247C0F4BDAF6E748B37C0', 49, '49Sº', NULL, NULL, NULL, NULL, 8, 10, 1935, NULL, 'Livro de Emplacamento - L20, p.94', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1436, 400, '0101000020E61000006657ADC7E05347C05757769CA98D37C0', 83, '83', NULL, 18, 2, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento L20, p.360', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1440, 440, '0101000020E610000085AD47EB435147C0C410DF389D8D37C0', 28, '28', NULL, NULL, NULL, NULL, 19, 7, 1938, NULL, 'Livro de emplacamento, n.25, p.29', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1444, 440, '0101000020E61000009D30787D695147C030C1E742398E37C0', 116, '116', NULL, NULL, NULL, NULL, 19, 7, 1938, NULL, 'Livro de emplacamento, n.25, p.29', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1448, 377, '0101000020E6100000F4E3A5E8525047C0661BBEA78F8A37C0', 76, '76', NULL, 2, 3, 1936, 24, 8, 1945, NULL, 'Livro de Emplacamento - L20, p.392', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1452, 440, '0101000020E6100000EEF6D810425147C0C3B9FD12968D37C0', 9, '9', NULL, 20, 7, 1938, 24, 4, 1978, NULL, 'Livro de emplacamento, n.25, p.31', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1455, 111, '0101000020E61000008D0E1081945347C0E00E5427D48B37C0', 2, '2', NULL, NULL, NULL, NULL, 8, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 166', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1458, 111, '0101000020E61000008D0E1081945347C0E00E5427D48B37C0', 1, '1', NULL, NULL, NULL, NULL, 8, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 165', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1470, 440, '0101000020E6100000629EB9607A5147C0DDC48985B48E37C0', 561, '561', NULL, 20, 7, 1938, 29, 1, 1946, NULL, 'Livro de emplacamento, n.25, p.31', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1473, 377, '0101000020E6100000B06E9EF5365047C089FD2B49818A37C0', 174, '174', NULL, 2, 3, 1996, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L20, p.392', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1476, 483, '0101000020E61000009910EB8FB04F47C02E789651DE8D37C0', 27, '27', NULL, NULL, NULL, NULL, 1, 7, 1937, NULL, 'livro de emplacamento L21, p180', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1479, 483, '0101000020E6100000CF24A0DDD64F47C05A15F3D8D98D37C0', 1, '1', NULL, NULL, NULL, NULL, 1, 7, 1937, NULL, 'livro de emplacamento L21, p180', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1481, 483, '0101000020E6100000CF24A0DDD64F47C05A15F3D8D98D37C0', 24, '24', NULL, 2, 7, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L21, p180', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1483, 502, '0101000020E61000001D23B9E24E4F47C04974257EB98C37C0', 28, '28', NULL, 29, 8, 1936, 30, 6, 1950, NULL, 'Livro de emplacamento L.21, P.266', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1485, 441, '0101000020E61000006D11EACD345147C0DAE1030A9C8D37C0', 208, '208', NULL, NULL, NULL, NULL, 6, 1, 1939, NULL, 'Livro de Emplacamento L26, p.357', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1487, 111, '0101000020E61000008E0E9081E65347C0CC0E54318E8B37C0', 21, '21', NULL, NULL, NULL, NULL, 8, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 165', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1489, 14, '0101000020E6100000079E39A9215147C0CDD2A6235A8D37C0', 72, '72', NULL, NULL, NULL, NULL, 6, 12, 1939, NULL, 'Livro de Emplacamento L26, p.357', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1491, 220, '0101000020E6100000A2E5FAB1115147C0C355BA7CEC8837C0', 1, '1', NULL, NULL, NULL, NULL, 10, 10, 1940, NULL, 'Livro de emplacamento, n.27, p.305', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1493, 377, '0101000020E6100000EBC4551DA44F47C01C030F30218A37C0', 116, '116', NULL, NULL, NULL, NULL, 1, 3, 1936, NULL, 'Livro de Emplacamento - L20, p.392', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1461, 377, '0101000020E6100000CBE53ABFF34F47C0F386E38E5B8A37C0', 382, '382', NULL, 2, 3, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L20, p.392', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1464, 377, '0101000020E6100000C8E53ABFF34F47C0E886E38E5B8A37C0', 70, '70', NULL, NULL, NULL, NULL, 1, 3, 1936, NULL, 'Livro de Emplacamento - L20, p.392', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1478, 377, '0101000020E6100000AE6E9EF5365047C07EFD2B49818A37C0', 16, '16', NULL, NULL, NULL, NULL, 1, 3, 1936, NULL, 'Livro de Emplacamento - L20, p.392', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1496, 220, '0101000020E6100000016CD770CF5047C0AE1C78575A8737C0', 795, '795', NULL, 11, 10, 1940, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.27, p.305', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1498, 90, '0101000020E6100000CEDB99E8155347C08040C72D3A8C37C0', 2, '2', NULL, NULL, NULL, NULL, 13, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 185', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1502, 90, '0101000020E6100000CEDB99E8155347C08040C72D3A8C37C0', 49, '49', NULL, 14, 11, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 184', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1504, 220, '0101000020E610000037952C8FF75047C0D04F2CB1478837C0', 440, '440', NULL, 11, 10, 1940, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.27, p.307', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1508, 90, '0101000020E6100000C5DB19F1415347C0FACD8515F48B37C0', 42, '42', NULL, NULL, NULL, NULL, 13, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 185', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1510, 90, '0101000020E6100000714BF0C3745347C0AA16BB3DA28B37C0', 90, '90', NULL, NULL, NULL, NULL, 13, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 185', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1512, 90, '0101000020E6100000714BF0C3745347C0AA16BB3DA28B37C0', 403, '403', NULL, 14, 11, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 184', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1514, 90, '0101000020E6100000714BF0C3745347C0AA16BB3DA28B37C0', 79, '79', NULL, NULL, NULL, NULL, 13, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 184', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1516, 42, '0101000020E6100000F4B6FD85D75047C019465F0A3C8C37C0', 14, '14', NULL, 6, 8, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 222', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1518, 267, '0101000020E6100000F4C4CA6AA64F47C04957507EEE8837C0', 54, '54', NULL, 17, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n. 22, p. 177', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1520, 20, '0101000020E61000006C0A902E205147C084C5496E888C37C0', 1, '1', NULL, NULL, NULL, NULL, 4, 2, 1938, NULL, 'livro de emplacamento L24, p.205', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1522, 42, '0101000020E6100000F7B6FD85D75047C024465F0A3C8C37C0', 13, '13', NULL, 6, 8, 1939, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 222', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1280, 101, '0101000020E61000005C0F16C7DF5347C0D746A74EB48D37C0', 1016, '1016', NULL, 21, 2, 1936, NULL, NULL, NULL, NULL, 'L20, p. 384', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1486, 483, '0101000020E61000009910EB8FB04F47C02E789651DE8D37C0', 14, '14', NULL, NULL, NULL, NULL, 1, 7, 1937, NULL, 'livro de emplacamento L21, p180', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1303, 10, '0101000020E61000005E2AB823F94F47C04613F22A4E8D37C0', 2, '2', NULL, NULL, NULL, NULL, 19, 4, 1936, NULL, 'livro de emplacamentos L21, p.54', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1488, 502, '0101000020E6100000EAF37AF2334F47C0E7905BD50B8D37C0', 186, '186', NULL, 29, 8, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.21, p266', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1292, 47, '0101000020E61000000AA7BC981B5147C0D968BA90718C37C0', 12, '12', NULL, 7, 12, 1936, 9, 1, 1953, NULL, 'L21, p. 358', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1490, 220, '0101000020E61000009DE5FAB1115147C0D055BA7CEC8837C0', 141, '141', NULL, 11, 10, 1940, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.27, p.305', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1325, 110, '0101000020E610000096B5B574E15347C0B7E0F9EB7F8C37C0', 505, '505', NULL, 14, 11, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 186', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1335, 108, '0101000020E610000081A4159BCC5347C001A1A63B5F8C37C0', 87, '87', NULL, NULL, NULL, NULL, 19, 2, 1936, NULL, 'L20, p. 367', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1344, 172, '0101000020E6100000C5375288265347C055487395A68737C0', 189, '189', NULL, 26, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.20, p.49', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1354, 108, '0101000020E610000081A4159BCC5347C001A1A63B5F8C37C0', 582, '582', NULL, 19, 2, 1936, NULL, NULL, NULL, NULL, 'L20, p. 368', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1492, 377, '0101000020E6100000F1C4551DA44F47C024030F30218A37C0', 624, '624', NULL, 2, 3, 1936, 31, 7, 1978, NULL, 'Livro de Emplacamento - L20, p.392', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1374, 104, '0101000020E6100000CCAF0624E35247C0FB597EDE358C37C0', 8, '8', NULL, NULL, NULL, NULL, 9, 1, 1936, NULL, 'Livro de Pendências - L20, p.286', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1494, 220, '0101000020E610000039952C8FF75047C0CB4F2CB1478837C0', 441, '441', NULL, 11, 10, 1940, 19, 8, 1975, NULL, 'Livro de emplacamento, n.27, p.305', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1382, 382, '0101000020E6100000F25B620B3B4F47C096058033508B37C0', 30, '30', NULL, 30, 1, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamentos L20, p.342', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1390, 177, '0101000020E6100000F594B3E4FE5247C06BEB10262B8837C0', 568, '568', NULL, 16, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.20, p.29', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1396, 382, '0101000020E6100000F05B620B3B4F47C09A058033508B37C0', 2, '2', NULL, NULL, NULL, NULL, 29, 1, 1936, NULL, 'livro de emplacamentos L20, p.342', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1401, 104, '0101000020E6100000C6AF0624E35247C0095A7EDE358C37C0', 38, '38', NULL, 10, 1, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L20, p.286', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1411, 104, '0101000020E6100000C4AFE64ED85247C0F8597E67708C37C0', 116, '116', NULL, NULL, NULL, NULL, 10, 1, 1936, NULL, 'Livro de Emplacamento - L20, p.286', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1415, 118, '0101000020E61000009EC58D8BF25247C035C8B26A3D8E37C0', 84, '84 sob', NULL, NULL, NULL, NULL, 15, 12, 1937, NULL, 'livro de emplacamento n. 24, p. 138', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1418, 104, '0101000020E6100000C6AF0624E35247C0095A7EDE358C37C0', 1, '1', NULL, NULL, NULL, NULL, 9, 1, 1936, NULL, 'Livro de Emplacamento - L20, p.286', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1422, 104, '0101000020E6100000C1629E83C65247C0BD9346F9CF8C37C0', 59, '59', NULL, 10, 1, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L20, p.286', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1426, 400, '0101000020E61000006657ADC7E05347C05C57769CA98D37C0', 60, '60', NULL, 18, 2, 1936, 1, 3, 1972, NULL, 'livro de emplacamento L20, p.360', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1430, 88, '0101000020E61000002AE4FCC4EF5247C00CE7D5542E8C37C0', 109, '109', NULL, NULL, NULL, NULL, 8, 10, 1935, NULL, 'Livro de Emplacamento L20, p.94', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1433, 400, '0101000020E61000006C576D56EC5347C05357767A808D37C0', 25, '25', NULL, 18, 2, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento L20, p.360', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1364, 88, '0101000020E6100000CC58FFF4E95247C02F9B38D7B48A37C0', 29, '29', NULL, 9, 10, 1935, 28, 11, 1963, NULL, 'Livro de Emplacamento - L20, p.94', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1437, 440, '0101000020E610000083AD47EB435147C0BA10DF389D8D37C0', 24, '24', NULL, 20, 7, 1938, 27, 10, 1941, NULL, 'Livro de emplacamento, n.25, p.29', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1441, 379, '0101000020E61000003A57BA39E14F47C06AAD33ACB38A37C0', 145, '145', NULL, 15, 4, 1936, 22, 11, 1954, NULL, 'Livro de emplacamento L.21, P.35', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1445, 379, '0101000020E61000003B57BA39E14F47C072AD33ACB38A37C0', 296, '296', NULL, 15, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.21, P.36', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1453, 14, '0101000020E6100000019E39A9215147C0D1D2A6235A8D37C0', 328, '328', NULL, 7, 12, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L26, p.357', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1456, 440, '0101000020E6100000F0F6D810425147C0C8B9FD12968D37C0', 1, '1', NULL, NULL, NULL, NULL, 19, 7, 1938, NULL, 'Livro de emplacamento, n.25, p.31', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1459, 440, '0101000020E61000009D30787D695147C030C1E742398E37C0', 317, '317', NULL, 20, 7, 1938, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.25, p.31', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1465, 441, '0101000020E61000007111EACD345147C0E6E1030A9C8D37C0', 202, '202', NULL, 7, 1, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L26, p.357', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1471, 483, '0101000020E6100000D524A0DDD64F47C06215F3D8D98D37C0', 17, '17', NULL, 2, 7, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L21, p180', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1449, 377, '0101000020E6100000F6E3A5E8525047C0721BBEA78F8A37C0', 2, '2', NULL, NULL, NULL, NULL, 1, 3, 1936, NULL, 'Livro de Emplacamento - L20, p.392', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1474, 502, '0101000020E6100000F0F37AF2334F47C0E2905BD50B8D37C0', 117, '117', NULL, 29, 8, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.21, p265', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1495, 496, '0101000020E610000078FF897C364F47C024436C55C78D37C0', 34, '34', NULL, 30, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L21, p.103', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1477, 502, '0101000020E61000001D23B9E24E4F47C04974257EB98C37C0', 1, '1A', NULL, NULL, NULL, NULL, 28, 8, 1936, NULL, 'Livro de emplacamento L.21, P.265', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1480, 502, '0101000020E6100000EAF37AF2334F47C0E7905BD50B8D37C0', 13, '13', NULL, NULL, NULL, NULL, 28, 8, 1936, NULL, 'Livro de emplacamento L.21, p265', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1482, 483, '0101000020E61000009910EB8FB04F47C02E789651DE8D37C0', 124, '124', NULL, 2, 7, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L21, p180', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1484, 111, '0101000020E61000008E0E9081E65347C0CC0E54318E8B37C0', 266, '266', NULL, 9, 11, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 166', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1497, 90, '0101000020E6100000C9DB99E8155347C07B40C72D3A8C37C0', 40, '40', NULL, 14, 11, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 185', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1499, 220, '0101000020E6100000A2E5FAB1115147C0C355BA7CEC8837C0', 16, '16', NULL, 11, 10, 1940, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.27, p.307', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1501, 220, '0101000020E6100000A2E5FAB1115147C0C355BA7CEC8837C0', 2, '2', NULL, NULL, NULL, NULL, 10, 10, 1940, NULL, 'Livro de emplacamento, n.27, p.307', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1503, 90, '0101000020E6100000CEDB99E8155347C08040C72D3A8C37C0', 3, '3', NULL, NULL, NULL, NULL, 13, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 184', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1505, 220, '0101000020E610000037952C8FF75047C0D04F2CB1478837C0', 60, '60', NULL, NULL, NULL, NULL, 10, 10, 1940, NULL, 'Livro de emplacamento, n.27, p.307', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1507, 90, '0101000020E6100000CBDB19F1415347C002CE8515F48B37C0', 216, '216', NULL, 14, 11, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 185', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1509, 90, '0101000020E6100000744BF0C3745347C0A116BB3DA28B37C0', 422, '422', NULL, 14, 11, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 185', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1511, 496, '0101000020E6100000EE6E9FD43F4F47C014312A388C8E37C0', 34, '34', NULL, 30, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L21, p.103', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1513, 220, '0101000020E6100000FB6BD770CF5047C0B31C78575A8737C0', 796, '796', NULL, 11, 10, 1940, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.27, p.308', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1515, 220, '0101000020E6100000FB6BD770CF5047C0B31C78575A8737C0', 84.0999999999999943, '84-A', NULL, NULL, NULL, NULL, 10, 10, 1940, NULL, 'Livro de emplacamento, n.27, p.308', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1517, 42, '0101000020E6100000F7B6FD85D75047C024465F0A3C8C37C0', 2, '2', NULL, NULL, NULL, NULL, 5, 8, 1936, NULL, 'livro de emplacamento n. 21, p. 222', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1519, 20, '0101000020E6100000700A902E205147C088C5496E888C37C0', 11, '11', NULL, 5, 2, 1938, NULL, NULL, NULL, NULL, 'livro de emplacamento L24, p.205', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1521, 267, '0101000020E6100000F7C4CA6AA64F47C05657507EEE8837C0', 2, '2', NULL, NULL, NULL, NULL, 16, 5, 1937, NULL, 'Livro de emplacamento, n. 22, p. 177', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1523, 42, '0101000020E6100000F6B61D95C65047C019465F7E318C37C0', 58, '58', NULL, 6, 8, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 222', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1281, 415, '0101000020E6100000A378D37CDD5247C07B3C9CB6698E37C0', 25, '25', NULL, NULL, NULL, NULL, 1, 4, 1936, NULL, 'Livro de emplacamento L.21, P.104', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1293, 415, '0101000020E6100000A378D37CDD5247C07B3C9CB6698E37C0', 427, '427', NULL, NULL, NULL, NULL, 1, 4, 1936, NULL, 'Livro de emplacamento L.21, P.105', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1304, 10, '0101000020E610000018A89890D14F47C08DFCF679548D37C0', 26, '26', NULL, NULL, NULL, NULL, 19, 4, 1936, NULL, 'livro de emplacamentos L21, p.54', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1315, 315, '0101000020E6100000439E9273D75247C0791A092E938A37C0', 15, '15', NULL, NULL, NULL, NULL, 24, 10, 1936, NULL, 'Livro de emplacamento L.20, P.121', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1326, 110, '0101000020E610000095B5B574E15347C0C0E0F9EB7F8C37C0', 67, '67', NULL, NULL, NULL, NULL, 13, 11, 1935, NULL, 'livro de emplacamento n. 20, p. 186', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1345, 328, '0101000020E6100000516492DEE45147C0D7B8BF8B7D8A37C0', 32, '32', NULL, NULL, NULL, NULL, 19, 9, 1935, NULL, 'Livro de emplacamento n.20, p.44', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1355, 172, '0101000020E610000095DE1B78F55247C09048FB7C698737C0', 24, '24', NULL, 26, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.20, p.49', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1365, 177, '0101000020E6100000EFDE6CE7715247C024EB19E7768737C0', 35, '35', NULL, 16, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.20, p.28', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1375, 177, '0101000020E6100000AD385E41F95247C02B777B3A248837C0', 25, '25', NULL, NULL, NULL, NULL, 15, 9, 1935, NULL, 'Livro de emplacamento, n.20, p.28', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1383, 177, '0101000020E6100000E9DE6CE7715247C018EB19E7768737C0', 20, '20', NULL, 16, 9, 1935, 24, 8, 1940, NULL, 'Livro de emplacamento, n.20, p.29', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1391, 118, '0101000020E61000009EC58D8BF25247C035C8B26A3D8E37C0', 97, '97', NULL, NULL, NULL, NULL, 15, 12, 1937, NULL, 'livro de emplacamento n. 24, p. 140', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1397, 118, '0101000020E6100000B008E6A74E5247C0B4D093B0208E37C0', 10, '10', NULL, 16, 12, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 24, p. 137', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1402, 177, '0101000020E6100000F4CC6A7F695347C0362068EEB18837C0', 108, '108', NULL, NULL, NULL, NULL, 15, 9, 1935, NULL, 'Livro de emplacamento, n.20, p.29', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1407, 382, '0101000020E6100000F05B620B3B4F47C09A058033508B37C0', 21, '21', NULL, 30, 1, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamentos L20, p.343', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1412, 118, '0101000020E61000009EC58D8BF25247C035C8B26A3D8E37C0', 536, '536', NULL, 16, 12, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 24, p. 138', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1416, 379, '0101000020E6100000481CB0EA035047C091BDB6D2CA8A37C0', 29, '29', NULL, 15, 4, 1936, 19, 3, 1958, NULL, 'Livro de emplacamento L.21, P.35', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1419, 88, '0101000020E61000002BE41CB4EF5247C0FFE6951F2B8C37C0', 618, '618', NULL, 9, 10, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L20, p.96', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1423, 400, '0101000020E610000066576D56EC5347C05C57767A808D37C0', 52, '52', NULL, 18, 2, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento L20, p.360', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1427, 88, '0101000020E61000002BE4FCC4EF5247C0FFE6D5542E8C37C0', 621, '621', NULL, 9, 10, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L20, p.94', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1183, 11, '0101000020E6100000C3F9E76C375147C06CFFCC6EFE8C37C0', 29, '29', NULL, 5, 11, 1936, 3, 3, 1978, NULL, 'Livro de Emplacamento, n.21, p.341', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1184, 11, '0101000020E6100000C0F9E76C375147C078FFCC6EFE8C37C0', 1, '1', NULL, NULL, NULL, NULL, 4, 11, 1936, NULL, 'Livro de Emplacamento, n.21, p.341', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1185, 11, '0101000020E6100000C0F9E76C375147C078FFCC6EFE8C37C0', 2, '2', NULL, NULL, NULL, NULL, 4, 11, 1936, NULL, 'Livro de Emplacamento, n.21, p.342', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1186, 11, '0101000020E6100000C0F9E76C375147C078FFCC6EFE8C37C0', 18, '18', NULL, 5, 11, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.21, p.342', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1187, 11, '0101000020E610000045B4DA8A525147C06F4DBB70EE8C37C0', 109, '109', NULL, 5, 11, 1936, 13, 3, 1947, NULL, 'Livro de Emplacamento n.21 p.341', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1188, 11, '0101000020E610000048B4DA8A525147C0624DBB70EE8C37C0', 3, '3', NULL, NULL, NULL, NULL, 4, 11, 1936, NULL, 'Livro de Emplacamento n.21 p.341', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1189, 11, '0101000020E610000048B4DA8A525147C0624DBB70EE8C37C0', 18, '18', NULL, NULL, NULL, NULL, 4, 11, 1936, NULL, 'Livro de Emplacamento n.21 p.342', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1190, 11, '0101000020E610000048B4DA8A525147C0624DBB70EE8C37C0', 106, '106', NULL, 5, 11, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.21 p.342', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1191, 11, '0101000020E6100000AEC7A33A755147C05C3C8FB5D68C37C0', 205, '205', NULL, 5, 11, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.21, p.341', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1192, 11, '0101000020E6100000ABC7A33A755147C0683C8FB5D68C37C0', 27, '27', NULL, NULL, NULL, NULL, 4, 11, 1936, NULL, 'Livro de Emplacamento, n.21, p.341', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1434, 400, '0101000020E61000006C576D56EC5347C05357767A808D37C0', 1, '1 F', NULL, NULL, NULL, NULL, 17, 2, 1936, NULL, 'livro de emplacamento L20, p.360', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1438, 400, '0101000020E61000006657ADC7E05347C05757769CA98D37C0', 13, '13', NULL, NULL, NULL, NULL, 17, 2, 1936, NULL, 'livro de emplacamento L20, p.360', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1195, 59, '0101000020E6100000227D263C625147C00FCCDB5B8D8C37C0', 7, '7', NULL, 22, 8, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.19, p.171', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1196, 59, '0101000020E6100000277D263C625147C012CCDB5B8D8C37C0', 18, '18', NULL, 22, 8, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.19, p.171', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1197, 59, '0101000020E6100000277D263C625147C012CCDB5B8D8C37C0', 2, '2', NULL, NULL, NULL, NULL, 21, 8, 1934, NULL, 'Livro de Emplacamento, n.19, p.171', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1198, 59, '0101000020E6100000227DA6546F5147C00FCCDB94AE8C37C0', 61, '61', NULL, 22, 8, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.19, p.171', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1199, 59, '0101000020E6100000247DA6546F5147C00ECCDB94AE8C37C0', 44, '44', NULL, 22, 8, 1934, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.19, p.171', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1201, 59, '0101000020E6100000247DA6546F5147C00ECCDB94AE8C37C0', 10, '10', NULL, NULL, NULL, NULL, 21, 8, 1934, NULL, 'Livro de Emplacamento, n.19, p.171', 17, '2018-04-14', false);
INSERT INTO public.tb_places VALUES (1202, 341, '0101000020E61000002147E84A675147C043A62472EC8937C0', 31, '31', NULL, 26, 3, 1941, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.28, p. 137', 17, '2018-04-15', false);
INSERT INTO public.tb_places VALUES (1203, 341, '0101000020E61000002147E84A675147C04BA62472EC8937C0', 116, '116', NULL, NULL, NULL, NULL, 25, 3, 1941, NULL, 'Livro de Emplacamento, n.28, p. 137', 17, '2018-04-15', false);
INSERT INTO public.tb_places VALUES (1204, 341, '0101000020E61000002147E84A675147C04BA62472EC8937C0', 89, '89', NULL, NULL, NULL, NULL, 25, 3, 1941, NULL, 'Livro de Emplacamento, n.28, p. 139', 17, '2018-04-15', false);
INSERT INTO public.tb_places VALUES (1205, 341, '0101000020E61000002147E84A675147C04BA62472EC8937C0', 60, '60', NULL, 26, 3, 1941, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.28, p. 139', 17, '2018-04-15', false);
INSERT INTO public.tb_places VALUES (1206, 341, '0101000020E61000002F7CBB4AFE5047C04238640E0B8A37C0', 365, '365', NULL, 26, 3, 1941, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.28, p. 137', 17, '2018-04-15', false);
INSERT INTO public.tb_places VALUES (1207, 341, '0101000020E61000002B7CBB4AFE5047C03538640E0B8A37C0', 78, '78', NULL, NULL, NULL, NULL, 25, 3, 1941, NULL, 'Livro de Emplacamento, n.28, p. 137', 17, '2018-04-15', false);
INSERT INTO public.tb_places VALUES (1208, 341, '0101000020E61000007B2E1119345147C08054CB8B068A37C0', 180, '180', NULL, 26, 3, 1941, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.28, p. 139', 17, '2018-04-15', false);
INSERT INTO public.tb_places VALUES (1209, 341, '0101000020E6100000772E1119345147C08854CB8B068A37C0', 85, '85', NULL, NULL, NULL, NULL, 25, 3, 1941, NULL, 'Livro de Emplacamento, n.28, p. 139', 17, '2018-04-15', false);
INSERT INTO public.tb_places VALUES (1210, 341, '0101000020E6100000E358227D925047C0B274DEE33C8A37C0', 644, '644', NULL, 26, 3, 1941, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.28, p. 139', 17, '2018-04-15', false);
INSERT INTO public.tb_places VALUES (1211, 341, '0101000020E6100000E158227D925047C0C074DEE33C8A37C0', 19, '19', NULL, NULL, NULL, NULL, 25, 3, 1941, NULL, 'Livro de Emplacamento, n.28, p. 139', 17, '2018-04-15', false);
INSERT INTO public.tb_places VALUES (1212, 341, '0101000020E6100000E158227D925047C0C074DEE33C8A37C0', 677, '677', NULL, 26, 3, 1941, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.28, p. 138', 17, '2018-04-15', false);
INSERT INTO public.tb_places VALUES (1213, 44, '0101000020E610000097BAE3C5515147C07F48B058DE8B37C0', 1, '1', NULL, 22, 7, 1928, 22, 7, 1928, NULL, 'Livro de Emplacamento, n.13, p.144', 6, '2018-04-18', true);
INSERT INTO public.tb_places VALUES (1442, 379, '0101000020E61000003B57BA39E14F47C072AD33ACB38A37C0', 27, '27', NULL, NULL, NULL, NULL, 14, 4, 1936, NULL, 'Livro de emplacamento L.21, P.35', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1446, 440, '0101000020E6100000E359D3C5725147C0DB5F1918878E37C0', 450, '450', NULL, 20, 7, 1938, 18, 3, 1948, NULL, 'Livro de emplacamento, n.25, p.29', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1200, 59, '0101000020E6100000247DA6546F5147C00ECCDB94AE8C37C0', 5, '5', NULL, NULL, NULL, NULL, 21, 8, 1934, NULL, 'Livro de Emplacamento, n.19, p.171', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1450, 379, '0101000020E61000004E1CB0EA035047C08DBDB6D2CA8A37C0', 2, '2', NULL, NULL, NULL, NULL, 14, 4, 1936, NULL, 'Livro de emplacamento L.21, P.36', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1215, 44, '0101000020E6100000F7B6FA96645147C034EF80E7CB8B37C0', 3.20000000000000018, '3 B', NULL, 22, 7, 1928, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.13, p.144', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1216, 44, '0101000020E6100000FCB6FA96645147C032EF80E7CB8B37C0', 17, '17 E/T', NULL, NULL, NULL, NULL, 21, 7, 1928, NULL, 'Livro de Emplacamento, n.13, p.144', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1217, 44, '0101000020E6100000FCB6FA96645147C032EF80E7CB8B37C0', 12, '12 E/S', NULL, NULL, NULL, NULL, 21, 7, 1928, NULL, 'Livro de Emplacamento, n.13, p.144', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1218, 44, '0101000020E6100000FCB6FA96645147C032EF80E7CB8B37C0', 8, '8 sob', NULL, 22, 7, 1928, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.13, p.144', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1214, 44, '0101000020E610000099BAE3C5515147C07348B058DE8B37C0', 2, '2', NULL, 22, 7, 1928, 22, 7, 1928, NULL, 'Livro de Emplacamento, n.13, p.144', 6, '2018-04-18', true);
INSERT INTO public.tb_places VALUES (1219, 23, '0101000020E61000005B87C884325147C05521187D358B37C0', 255, '255', NULL, 14, 3, 1941, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.28, p.118', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1221, 23, '0101000020E61000004C1AB7E5735147C0DD272F86B68A37C0', 303, '303', NULL, 14, 3, 1941, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.28, p.118', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1222, 23, '0101000020E6100000481AB7E5735147C0E5272F86B68A37C0', 15, '15', NULL, NULL, NULL, NULL, 13, 3, 1941, NULL, 'Livro de Emplacamento, n.28, p.118', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1220, 23, '0101000020E61000005687C884325147C06021187D358B37C0', 1, '1-A', NULL, NULL, NULL, NULL, 13, 3, 1941, NULL, 'Livro de Emplacamento, n.28, p.118', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1223, 11, '0101000020E6100000ABC7A33A755147C0683C8FB5D68C37C0', 170, '170', NULL, 5, 11, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.21, p.341', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1224, 300, '0101000020E61000008AD63FEBE95247C0E9F46356948A37C0', 12, '12', NULL, 22, 7, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.258', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1225, 300, '0101000020E61000008ED63FEBE95247C0EFF46356948A37C0', 2, '2', NULL, NULL, NULL, NULL, 21, 7, 1939, NULL, 'Livro de Emplacamento n.25, p.258', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1226, 300, '0101000020E610000012C6BFE7155347C0C296E97B0A8A37C0', 290, '290', NULL, 22, 7, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.258', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1227, 300, '0101000020E610000011C6BFE7155347C0C696E97B0A8A37C0', 92, '92', NULL, NULL, NULL, NULL, 21, 7, 1939, NULL, 'Livro de Emplacamento n.25, p.258', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1228, 300, '0101000020E61000008ED63FEBE95247C0EFF46356948A37C0', 1, '1', NULL, NULL, NULL, NULL, 21, 7, 1939, NULL, 'Livro de Emplacamento n.25, p.259', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1229, 300, '0101000020E61000008ED63FEBE95247C0EFF46356948A37C0', 123, '123', NULL, 22, 7, 1939, 13, 2, 1950, NULL, 'Livro de Emplacamento n.25, p.259', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1230, 300, '0101000020E610000011C6BFE7155347C0C696E97B0A8A37C0', 43, '43', NULL, NULL, NULL, NULL, 21, 7, 1939, NULL, 'Livro de Emplacamento n.25, p.259', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1231, 300, '0101000020E610000011C6BFE7155347C0C696E97B0A8A37C0', 293, '293', NULL, 22, 7, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento n.25, p.259', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1232, 300, '0101000020E610000018DD69E29F5147C0D4AF40F99F8C37C0', 20, '20', NULL, NULL, NULL, NULL, 20, 9, 1938, NULL, 'Livro de Emplacamento, n.25, p.172', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1233, 300, '0101000020E610000016DD69E29F5147C0DFAF40F99F8C37C0', 52, '52', NULL, 21, 9, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.25, p.172', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1234, 300, '0101000020E61000002B8A4672025347C06F659EC0468A37C0', 171, '171', NULL, 22, 7, 1939, 4, 3, 1955, NULL, 'Livro de Emplacamento n.25, p.259', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1235, 300, '0101000020E61000002F8A4672025347C078659EC0468A37C0', 13.0999999999999996, '13-A', NULL, NULL, NULL, NULL, 21, 7, 1939, NULL, 'Livro de Emplacamento n.25, p.259', 6, '2018-04-18', false);
INSERT INTO public.tb_places VALUES (1236, 269, '0101000020E6100000D011F461F74F47C0C7F56B73308837C0', 8, '8', NULL, 18, 4, 1937, 15, 3, 1956, NULL, 'Livro de Emplacamento, n.22, p.188', 6, '2018-04-20', false);
INSERT INTO public.tb_places VALUES (1237, 269, '0101000020E610000038018084FA4F47C04207AF41FA8737C0', 100, '100', NULL, 18, 4, 1937, 4, 9, 1951, NULL, 'Livro de Emplacamento, n.22, p.188', 6, '2018-04-20', false);
INSERT INTO public.tb_places VALUES (1238, 269, '0101000020E610000033018084FA4F47C04207AF41FA8737C0', 26, '26', NULL, NULL, NULL, NULL, 17, 4, 1937, NULL, 'Livro de Emplacamento, n.22, p.188', 6, '2018-04-20', false);
INSERT INTO public.tb_places VALUES (1239, 269, '0101000020E61000007C947644005047C0FCA47E9CAD8737C0', 242, '242', NULL, 18, 4, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.22, p.188', 6, '2018-04-20', false);
INSERT INTO public.tb_places VALUES (1240, 269, '0101000020E61000007A947644005047C0F9A47E9CAD8737C0', 62, '62', NULL, NULL, NULL, NULL, 17, 4, 1937, NULL, 'Livro de Emplacamento, n.22, p.188', 6, '2018-04-20', false);
INSERT INTO public.tb_places VALUES (1241, 269, '0101000020E6100000CE11F461F74F47C0D2F56B73308837C0', 17, '17', NULL, 18, 4, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.22, p.189', 6, '2018-04-20', false);
INSERT INTO public.tb_places VALUES (1282, 415, '0101000020E6100000A378D37CDD5247C07B3C9CB6698E37C0', 25, '25', NULL, NULL, NULL, NULL, 1, 4, 1936, NULL, 'Livro de emplacamento L.21, P.104', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1243, 269, '0101000020E610000033018084FA4F47C04207AF41FA8737C0', 97, '97', NULL, 18, 4, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.22, p.189', 6, '2018-04-20', false);
INSERT INTO public.tb_places VALUES (1244, 269, '0101000020E61000007A947644005047C0F9A47E9CAD8737C0', 223, '223', NULL, 18, 4, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.22, p.189', 6, '2018-04-20', false);
INSERT INTO public.tb_places VALUES (1245, 269, '0101000020E61000007A947644005047C0F9A47E9CAD8737C0', 65, '65 Ta', NULL, NULL, NULL, NULL, 17, 4, 1937, NULL, 'Livro de Emplacamento, n.22, p.189', 6, '2018-04-20', false);
INSERT INTO public.tb_places VALUES (1246, 269, '0101000020E61000007A947644005047C0F9A47E9CAD8737C0', 65, '65 Ta', NULL, NULL, NULL, NULL, 17, 4, 1937, NULL, 'Livro de Emplacamento, n.22, p.189', 6, '2018-04-20', false);
INSERT INTO public.tb_places VALUES (1247, 68, '0101000020E61000008CB279D6F95147C082B75E2C688C37C0', 48, '48', NULL, 7, 8, 1940, 26, 8, 1960, NULL, 'Livro de Emplacamento, n. 27, p.182', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1248, 101, '0101000020E6100000D02E6419B85247C0ECD23630CD8C37C0', 15, '15', NULL, 21, 2, 1936, 15, 2, 1947, NULL, 'L20, p. 378', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1249, 101, '0101000020E6100000CD2E6419B85247C0DED23630CD8C37C0', 1, '1', NULL, NULL, NULL, NULL, 20, 2, 1936, NULL, 'L20, p. 378', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1250, 68, '0101000020E61000008FB279D6F95147C090B75E2C688C37C0', 2, '2', NULL, NULL, NULL, NULL, 6, 8, 1940, NULL, 'Livro de Emplacamento, n. 27, p.182', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1253, 101, '0101000020E6100000210BADF4265347C004CDD126158D37C0', 379, '379', NULL, 21, 2, 1936, NULL, NULL, NULL, NULL, 'L20, p. 378', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1254, 101, '0101000020E61000001A0BADF4265347C00ACDD126158D37C0', 69, '69', NULL, NULL, NULL, NULL, 20, 2, 1936, NULL, 'L20, p. 378', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1255, 101, '0101000020E61000002345E84D825347C0D6C23772518D37C0', 677, '677', NULL, 21, 2, 1936, NULL, NULL, NULL, NULL, 'L20, p. 378', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1256, 101, '0101000020E61000002045E84D825347C0E3C23772518D37C0', 139, '139', NULL, NULL, NULL, NULL, 20, 2, 1936, NULL, 'L20, p. 378', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1258, 10, '0101000020E610000061AC697D2C5147C0CB35B39BD18C37C0', 23, '23', NULL, 5, 11, 1936, 1, 9, 1982, NULL, 'livro de emplacamentos L21 p.338', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1259, 68, '0101000020E6100000A233262D475247C07BC9061DA18C37C0', 272, '272', NULL, 7, 8, 1940, 13, 1, 1956, NULL, 'Livro de emplacamento n.27, p.182', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1260, 415, '0101000020E6100000CA94256EE35247C0B589508BFF8D37C0', 7, '7', NULL, 2, 4, 1936, 3, 5, 1961, NULL, 'Livro de emplacamento L.21, P.104', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1261, 101, '0101000020E6100000377A44E0F15347C071137B64D58D37C0', 1101, '1101', NULL, 21, 2, 1936, 26, 7, 1939, NULL, 'L20, p. 379', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1262, 101, '0101000020E61000003D7A44E0F15347C065137B64D58D37C0', 243, '243', NULL, NULL, NULL, NULL, 20, 2, 1935, NULL, 'L20, p. 379', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1263, 10, '0101000020E61000008F8FE20B4C5147C0B3A8F017C68C37C0', 123, '123', NULL, 5, 11, 1936, 9, 12, 1953, NULL, 'livro de emplacamentos L21 p.338', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1294, 10, '0101000020E61000003A154123AC4F47C0E9ACB3F35A8D37C0', 255, '255', NULL, 20, 4, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamentos L21, p.53', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1327, 328, '0101000020E6100000C4813A81D05147C05B7251CCAD8A37C0', 131, '131', NULL, 20, 9, 1935, 20, 6, 1952, NULL, 'Livro de emplacamento n.20, p.44', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1337, 172, '0101000020E610000093DE1B78F55247C09548FB7C698737C0', 37, '37', NULL, 26, 9, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento L.20, p.49', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1346, 108, '0101000020E6100000758EFFC7755347C0BA91FB19948D37C0', 2, '2', NULL, NULL, NULL, NULL, 18, 2, 1936, NULL, 'L20, p. 367', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1356, 108, '0101000020E610000081A4159BCC5347C001A1A63B5F8C37C0', 46, '46', NULL, NULL, NULL, NULL, 18, 2, 1936, NULL, 'L20, p. 368', 12, '2018-04-23', false);
INSERT INTO public.tb_places VALUES (1366, 177, '0101000020E6100000E9DE6CE7715247C018EB19E7768737C0', 3, '3', NULL, NULL, NULL, NULL, 15, 9, 1935, NULL, 'Livro de emplacamento, n.20, p.28', 12, '2018-04-24', false);
INSERT INTO public.tb_places VALUES (1525, 42, '0101000020E6100000FAB61D95C65047C022465F7E318C37C0', 20, '20', NULL, NULL, NULL, NULL, 5, 8, 1936, NULL, 'livro de emplacamento n. 21, p. 222', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1526, 42, '0101000020E6100000FAB61D95C65047C022465F7E318C37C0', 51, '51', NULL, 6, 8, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 222', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1527, 42, '0101000020E6100000FAB61D95C65047C022465F7E318C37C0', 11, '11', NULL, NULL, NULL, NULL, 5, 8, 1936, NULL, 'livro de emplacamento n. 21, p. 222', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1528, 20, '0101000020E6100000F7E19A1D805147C0A371546A338C37C0', 271, '271', NULL, 5, 2, 1938, NULL, NULL, NULL, NULL, 'livro de emplacamento L24, p.205', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1529, 20, '0101000020E6100000FCE19A1D805147C0AE71546A338C37C0', 39.2000000000000028, '39 C', NULL, NULL, NULL, NULL, 4, 2, 1938, NULL, 'livro de emplacamento L24, p.205', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1530, 267, '0101000020E61000001CC0E962844F47C02841419F0D8837C0', 406, '406', NULL, 17, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.22, p. 177', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1531, 267, '0101000020E61000001CC0E962844F47C02D41419F0D8837C0', 60, '60', NULL, NULL, NULL, NULL, 16, 5, 1937, NULL, 'Livro de emplacamento, n.22, p. 177', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1533, 20, '0101000020E61000001E76357D3E5147C043F24F2F758C37C0', 115, '115', NULL, 5, 2, 1938, NULL, NULL, NULL, NULL, 'livro de emplacamento L24, p.205', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1535, 20, '0101000020E61000001876357D3E5147C04AF24F2F758C37C0', 13, '13', NULL, NULL, NULL, NULL, 4, 2, 1938, NULL, 'livro de emplacamento L24, p.205', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1536, 383, '0101000020E610000071114D3B534F47C04A0A72406F8B37C0', 37, '37', NULL, 16, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento -  L21, p.45', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1538, 95, '0101000020E610000058F03163F25247C02E68E0B4128C37C0', 1, '1so', NULL, NULL, NULL, NULL, 3, 10, 1935, NULL, 'livro de emplacamento n. 20, p. 83', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1539, 383, '0101000020E61000007111CDA4694F47C0490A72712F8B37C0', 143, NULL, NULL, 16, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L21, p.45', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1537, 95, '0101000020E610000051F03163F25247C03968E0B4128C37C0', 15, '15', NULL, 4, 10, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 83', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1540, 95, '0101000020E610000058F03163F25247C02E68E0B4128C37C0', 44, '44', NULL, 4, 10, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 83', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1541, 267, '0101000020E6100000F7C4CA6AA64F47C05657507EEE8837C0', 165, '165', NULL, 17, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n. 22, p. 179', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1542, 95, '0101000020E610000058F03163F25247C02E68E0B4128C37C0', 2, '2', NULL, NULL, NULL, NULL, 3, 10, 1935, NULL, 'livro de emplacamento n. 20, p. 83', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1534, 267, '0101000020E6100000E838F7A0694F47C0B5498D495E8737C0', 142, '142', NULL, NULL, NULL, NULL, 16, 5, 1937, NULL, 'Livro de emplacamento, n.22, p. 178', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1543, 383, '0101000020E61000007111CDA4694F47C03C0A72712F8B37C0', 35, '35', NULL, NULL, NULL, NULL, 15, 4, 1936, NULL, 'Livro de Emplacamento -  L21, p.45', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1544, 247, '0101000020E6100000B7E18AF61B5147C0A71B7C313C8B37C0', 8, '8', NULL, 9, 5, 1940, NULL, NULL, NULL, NULL, '9-5-1940 - L27, p.87', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1532, 267, '0101000020E6100000E538F7A0694F47C0BE498D495E8737C0', 712, '712', NULL, 17, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.22, p. 178', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1545, 95, '0101000020E610000051F0B1310D5347C03968E01F118C37C0', 89, '89', NULL, 4, 10, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 83', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1546, 95, '0101000020E610000052F0B1310D5347C03868E01F118C37C0', 19, '19', NULL, NULL, NULL, NULL, 3, 10, 1935, NULL, 'livro de emplacamento n. 20, p. 83', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1547, 267, '0101000020E6100000F7C4CA6AA64F47C05657507EEE8837C0', 31, '31', NULL, NULL, NULL, NULL, 16, 5, 1937, NULL, 'Livro de emplacamento, n. 22, p. 179', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1548, 247, '0101000020E61000005A3288A9FD5047C01AF5EB13728A37C0', 370, '370', NULL, 9, 5, 1940, NULL, NULL, NULL, NULL, '9-5-1940 - L27, p.88', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1549, 267, '0101000020E61000001CC0E962844F47C02D41419F0D8837C0', 405, '405', NULL, 17, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.22, p. 179', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1550, 95, '0101000020E610000052F0B1310D5347C03868E01F118C37C0', 64, '64', NULL, 4, 10, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 83', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1551, 267, '0101000020E61000001CC0E962844F47C02D41419F0D8837C0', 69, '69', NULL, NULL, NULL, NULL, 16, 5, 1937, NULL, 'Livro de emplacamento, n.22, p. 179', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1552, 383, '0101000020E610000071114D3B534F47C0570A72406F8B37C0', 2, '2', NULL, NULL, NULL, NULL, 15, 4, 1936, NULL, 'Livro de Emplacamento -  L21, p.45', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1553, 319, '0101000020E6100000F9BC6E7C6B5247C02542BA4F0B8B37C0', 1, '1', NULL, NULL, NULL, NULL, 24, 10, 1935, NULL, 'livro de emplacamento L20, p.122', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1554, 247, '0101000020E61000003098DF30075147C0E1F8A4AE448937C0', 890, '890', NULL, 9, 5, 1940, NULL, NULL, NULL, NULL, '9-5-1940 - L27, p.89', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1555, 95, '0101000020E610000052F0B1310D5347C03868E01F118C37C0', 6, '6', NULL, NULL, NULL, NULL, 3, 10, 1935, NULL, 'livro de emplacamento n. 20, p. 83', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1556, 267, '0101000020E6100000E838F7A0694F47C0B5498D495E8737C0', 725, '725', NULL, 17, 5, 1937, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.22, p. 179', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1557, 267, '0101000020E6100000E838F7A0694F47C0B5498D495E8737C0', 139, '139', NULL, NULL, NULL, NULL, 16, 5, 1937, NULL, 'Livro de emplacamento, n.22, p. 179', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1558, 383, '0101000020E61000007111CDA4694F47C03C0A72712F8B37C0', 40, '40', NULL, NULL, NULL, NULL, 15, 4, 1936, NULL, 'Livro de Emplacamento -  L21, p.46', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1560, 383, '0101000020E610000071114D3B534F47C0570A72406F8B37C0', 140, '140', NULL, 16, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento -  L21, p.46', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1561, 247, '0101000020E6100000B2E18AF61B5147C0A91B7C313C8B37C0', 2, '2', NULL, NULL, NULL, NULL, 8, 5, 1940, NULL, '9-5-1940 - L27, p.87', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1562, 319, '0101000020E6100000F6BC2E7B7F5247C029423AB7E78A37C0', 133, '133', NULL, 25, 10, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento L20, p.122', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1559, 319, '0101000020E6100000F6BC6E22985247C029423A98BB8A37C0', 211, '211', NULL, 25, 10, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento L20, p.122', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1563, 267, '0101000020E61000002726A3E9FF5047C01810FBB8DB8937C0', 25, '25', NULL, 10, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.22, p. 201', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1564, 319, '0101000020E6100000F2BC2E7B7F5247C02E423AB7E78A37C0', 11, '11', NULL, NULL, NULL, NULL, 24, 10, 1935, NULL, 'livro de emplacamento L20, p.122', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1565, 247, '0101000020E61000005C3288A9FD5047C01BF5EB13728A37C0', 92, '92', NULL, NULL, NULL, NULL, 8, 5, 1940, NULL, '9-5-1940 - L27, p.88', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1566, 267, '0101000020E61000002326A3E9FF5047C02510FBB8DB8937C0', 1, '1', NULL, NULL, NULL, NULL, 9, 6, 1937, NULL, 'Livro de emplacamento, n.22, p. 201', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1567, 247, '0101000020E61000003598DF30075147C0DBF8A4AE448937C0', 180, '180 B', NULL, NULL, NULL, NULL, 8, 5, 1940, NULL, '9-5-1940 - L27, p.89', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1568, 319, '0101000020E6100000FFBC6E7C6B5247C02A42BA4F0B8B37C0', 24, '24', NULL, 25, 10, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento L20, p.123', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1569, 267, '0101000020E6100000A7B6DB7BED5047C0F8DE6EC7D98937C0', 63, '63', NULL, 10, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.22, p. 201', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1570, 319, '0101000020E6100000FFBC6E7C6B5247C02A42BA4F0B8B37C0', 2, '2 So', NULL, NULL, NULL, NULL, 24, 10, 1935, NULL, 'livro de emplacamento L20, p.123', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1572, 267, '0101000020E6100000A6B6DB7BED5047C0EFDE6EC7D98937C0', 19, '19', NULL, NULL, NULL, NULL, 9, 6, 1937, NULL, 'Livro de emplacamento, n.22, p. 201', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1573, 319, '0101000020E6100000F2BC2E7B7F5247C02E423AB7E78A37C0', 106, '106', NULL, 25, 10, 1935, 4, 11, 1943, NULL, 'livro de emplacamento L20, p.123', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1574, 267, '0101000020E61000002326A3E9FF5047C02510FBB8DB8937C0', 48, '48', NULL, 10, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.22, p. 201', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1575, 247, '0101000020E6100000B2E18AF61B5147C0A91B7C313C8B37C0', 65, '65', NULL, 9, 5, 1940, 26, 10, 1940, NULL, '9-5-1940 - L27, p.90', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1576, 267, '0101000020E61000002326A3E9FF5047C02510FBB8DB8937C0', 2, '2', NULL, NULL, NULL, NULL, 9, 6, 1937, NULL, 'Livro de emplacamento, n.22, p. 201', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1577, 319, '0101000020E6100000F2BC2E7B7F5247C02E423AB7E78A37C0', 12, '12', NULL, NULL, NULL, NULL, 24, 10, 1935, NULL, 'livro de emplacamento L20, p.123', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1578, 133, '0101000020E6100000A2081A2B265047C07B3E0DB1E48B37C0', 2, '2', NULL, NULL, NULL, NULL, 26, 8, 1936, NULL, 'livro de emplacamento n. 21, p. 261', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1579, 267, '0101000020E6100000A6B6DB7BED5047C0EFDE6EC7D98937C0', 60, '60', NULL, 10, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.22, p. 201', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1580, 247, '0101000020E61000005C3288A9FD5047C01BF5EB13728A37C0', 373, '373', NULL, 9, 5, 1940, NULL, NULL, NULL, NULL, '9-5-1940 - L27, p.90', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1582, 319, '0101000020E6100000F5BC6E22985247C01D423A98BB8A37C0', 188, '188', NULL, 25, 10, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento L20, p.123', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1583, 267, '0101000020E6100000A6B6DB7BED5047C0EFDE6EC7D98937C0', 6, '6', NULL, NULL, NULL, NULL, 9, 6, 1937, NULL, 'Livro de emplacamento, n.22, p. 201', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1584, 319, '0101000020E6100000F5BC6E22985247C01D423A98BB8A37C0', 32.5, '32 E', NULL, NULL, NULL, NULL, 24, 10, 1935, NULL, 'livro de emplacamento L20, p.123', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1585, 247, '0101000020E61000003598DF30075147C0DBF8A4AE448937C0', 873, '873', NULL, 9, 5, 1940, NULL, NULL, NULL, NULL, '9-5-1940 - L27, p.91', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1587, 247, '0101000020E6100000B2E18AF61B5147C0A91B7C313C8B37C0', 1, '1', NULL, NULL, NULL, NULL, 8, 5, 1940, NULL, '9-5-1940 - L27, p.90', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1589, 247, '0101000020E61000005C3288A9FD5047C01BF5EB13728A37C0', 61, '61', NULL, NULL, NULL, NULL, 8, 5, 1940, NULL, '9-5-1940 - L27, p.90', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1591, 247, '0101000020E61000003598DF30075147C0DBF8A4AE448937C0', 47, '47-B', NULL, NULL, NULL, NULL, 8, 5, 1940, NULL, '9-5-1940 - L27, p.91', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1593, 247, '0101000020E6100000F60199EB964F47C0498344E18C8A37C0', 77, '77', NULL, 20, 4, 1936, NULL, NULL, NULL, NULL, '20-4-1936 - L21, p.55', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1594, 247, '0101000020E6100000F70119946E4F47C04983449E578A37C0', 166, '166', NULL, 20, 4, 1936, NULL, NULL, NULL, NULL, '20-4-1936 - L21, p.55', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1595, 247, '0101000020E6100000F10199EB964F47C0468344E18C8A37C0', 1, '1', NULL, NULL, NULL, NULL, 19, 4, 1936, NULL, '20-4-1936 - L21, p.55', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1597, 133, '0101000020E6100000A2081A2B265047C07B3E0DB1E48B37C0', 117, '117', NULL, 27, 8, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 260', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1598, 280, '0101000020E6100000B0251E5A364F47C0CF63A8A8AE8737C0', 1, '1', NULL, NULL, NULL, NULL, 21, 7, 1938, NULL, 'Livro de Emplacamento - L25, p.59', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1599, 121, '0101000020E61000009FF332ABCA5347C053B3BF1D468C37C0', 15, '15', NULL, 13, 11, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.20, p. 182', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1600, 147, '0101000020E6100000227B86F3205047C0CC5A5501788B37C0', 100, '100', NULL, 28, 9, 1940, NULL, NULL, NULL, NULL, 'livro de emplacamento L27, p.300', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1601, 121, '0101000020E6100000A3F332ABCA5347C04DB3BF1D468C37C0', 1, '1', NULL, NULL, NULL, NULL, 12, 11, 1935, NULL, 'Livro de emplacamento, n.20, p. 182', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1602, 280, '0101000020E6100000B0251E5A364F47C0C963A8A8AE8737C0', 13, '13', NULL, 22, 7, 1938, 11, 12, 1953, NULL, 'Livro de Emplacamento - L25, p.59', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1603, 147, '0101000020E6100000297B86F3205047C0C45A5501788B37C0', 18, '18', NULL, NULL, NULL, NULL, 27, 9, 1940, NULL, 'livro de emplacamento L27, p.300', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1605, 280, '0101000020E6100000B0251E5A364F47C0C963A8A8AE8737C0', 2, '2', NULL, NULL, NULL, NULL, 21, 7, 1938, NULL, 'Livro de Emplacamento - L25, p.59', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1606, 121, '0101000020E6100000B9BDD4DCE05347C05DB3FF2C338C37C0', 7, '7', NULL, NULL, NULL, NULL, 12, 11, 1935, NULL, 'Livro de emplacamento, n.20, p. 182', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1607, 280, '0101000020E6100000B0251E5A364F47C0C963A8A8AE8737C0', 16, '16', NULL, 22, 7, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L25, p.59', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1608, 54, '0101000020E6100000E7EFF388CF5147C01F8D1EED458C37C0', 366, '366', NULL, 6, 10, 1936, NULL, NULL, NULL, NULL, '6-10-1936- L21, p.307', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1609, 121, '0101000020E6100000A3F332ABCA5347C04DB3BF1D468C37C0', 12, '12', NULL, 13, 11, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.20, p. 183', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1610, 121, '0101000020E6100000A3F332ABCA5347C04DB3BF1D468C37C0', 2, '2', NULL, NULL, NULL, NULL, 12, 11, 1935, NULL, 'Livro de emplacamento, n.20, p. 183', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1611, 121, '0101000020E6100000B9BDD4DCE05347C05DB3FF2C338C37C0', 112, '112', NULL, 13, 11, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.20, p. 183', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1612, 121, '0101000020E6100000B9BDD4DCE05347C05DB3FF2C338C37C0', 6, '6', NULL, NULL, NULL, NULL, 12, 11, 1935, NULL, 'Livro de emplacamento, n.20, p. 183', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1614, 280, '0101000020E6100000B1253E252D4F47C0C963E800718737C0', 23, '23', NULL, 21, 7, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L25, p.59', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1615, 54, '0101000020E6100000BF21E3D4785147C052904FE8708B37C0', 424, '424', NULL, 6, 10, 1936, NULL, NULL, NULL, NULL, '6-10-1936- L21, p.307', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1618, 280, '0101000020E6100000B1253E252D4F47C0C263E800718737C0', 135, '135', NULL, NULL, NULL, NULL, 22, 7, 1938, NULL, 'Livro de Emplacamento - L25, p.59', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1619, 54, '0101000020E6100000E3EFF388CF5147C0218D1EED458C37C0', 11, '11', NULL, NULL, NULL, NULL, 5, 10, 1936, NULL, '6-10-1936- L21, p.307', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1620, 280, '0101000020E6100000B1253E252D4F47C0C263E800718737C0', 14, '14', NULL, NULL, NULL, NULL, 21, 7, 1938, NULL, 'Livro de Emplacamento - L25, p.59', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1621, 280, '0101000020E6100000B1253E252D4F47C0C263E800718737C0', 148, '148', NULL, 22, 7, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L25, p.59', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1622, 54, '0101000020E6100000C221E3D4785147C05B904FE8708B37C0', 15, 'T,15', NULL, NULL, NULL, NULL, 5, 10, 1936, NULL, '6-10-1936- L21, p.307', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1623, 121, '0101000020E61000003096FFCA885347C04386DD7C068837C0', 20, '20', NULL, 16, 10, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n. 20, p. 102', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1624, 121, '0101000020E61000002F96FFCA885347C04086DD7C068837C0', 2, '2', NULL, NULL, NULL, NULL, 15, 10, 1935, NULL, 'Livro de emplacamento, n. 20, p. 102', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1625, 147, '0101000020E6100000645262D1254F47C09B5A06D10B8B37C0', 820, '820', NULL, 28, 9, 1940, NULL, NULL, NULL, NULL, 'livro de emplacamento L27, p.301', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1626, 54, '0101000020E6100000E3EFF388CF5147C0218D1EED458C37C0', 13, '13', NULL, 6, 10, 1936, NULL, NULL, NULL, NULL, '6-10-1936- L21, p.308', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1627, 147, '0101000020E6100000625262D1254F47C0915A06D10B8B37C0', 190, '190', NULL, NULL, NULL, NULL, 27, 9, 1940, NULL, 'livro de emplacamento L27, p.301', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1628, 54, '0101000020E6100000E3EFF388CF5147C0218D1EED458C37C0', 74, '74', NULL, NULL, NULL, NULL, 5, 10, 1936, NULL, '6-10-1936- L21, p.308', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1629, 54, '0101000020E6100000C221E3D4785147C05B904FE8708B37C0', 459, '459', NULL, 6, 10, 1936, NULL, NULL, NULL, NULL, '6-10-1936- L21, p.308', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1630, 147, '0101000020E6100000297B86F3205047C0C45A5501788B37C0', 27, '27', NULL, 28, 9, 1940, NULL, NULL, NULL, NULL, 'livro de emplacamento L27, p.302', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1571, 133, '0101000020E61000009D081A2B265047C07C3E0DB1E48B37C0', 44, '44', NULL, 27, 8, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 261', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1631, 174, '0101000020E61000009987D36FC75347C0141E58D3798837C0', 294, '294', NULL, 16, 10, 1935, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n. 20, p. 102', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1632, 174, '0101000020E61000009987D36FC75347C01F1E58D3798837C0', 50, '50', NULL, NULL, NULL, NULL, 15, 10, 1935, NULL, 'Livro de emplacamento, n. 20, p. 102', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1633, 280, '0101000020E6100000AC25BEAE234F47C0C663A83F318737C0', 35, '35', NULL, NULL, NULL, NULL, 21, 7, 1938, NULL, 'Livro de Emplacamento - L25, p.59', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1634, 133, '0101000020E6100000A2081A2B265047C07B3E0DB1E48B37C0', 11, '11', NULL, NULL, NULL, NULL, 26, 8, 1936, NULL, 'livro de emplacamento n. 21, p. 260', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1635, 147, '0101000020E6100000297B86F3205047C0C45A5501788B37C0', 1, '1 E/B', NULL, NULL, NULL, NULL, 27, 9, 1940, NULL, 'livro de emplacamento L27, p.302', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1636, 280, '0101000020E6100000A825BEAE234F47C0CD63A83F318737C0', 195, '195', NULL, 22, 7, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L25, p.59', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1637, 133, '0101000020E61000009B6EF304D44F47C0B30D2EE7978B37C0', 301, '301', NULL, 27, 8, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 260', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1638, 133, '0101000020E6100000956EF304D44F47C0A50D2EE7978B37C0', 59, '59', NULL, NULL, NULL, NULL, 26, 8, 1936, NULL, 'livro de emplacamento n. 21, p. 260', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1639, 54, '0101000020E61000001F6D33335E5347C09A40553DFD8937C0', 33, '33', NULL, 26, 10, 1935, 19, 12, 1963, NULL, '26-10-1935 - L20, p.133', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1640, 133, '0101000020E6100000956EF304D44F47C0A50D2EE7978B37C0', 304, '304', NULL, 27, 8, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 261', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1641, 133, '0101000020E6100000956EF304D44F47C0A50D2EE7978B37C0', 68, '68', NULL, NULL, NULL, NULL, 26, 8, 1936, NULL, 'livro de emplacamento n. 21, p. 261', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1642, 54, '0101000020E61000008D4EB6AA6A5347C0F76FE95D498A37C0', 145, '145', NULL, 26, 10, 1935, NULL, NULL, NULL, NULL, '26-10-1935 - L20, p.133', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1643, 147, '0101000020E61000007669E0FDC04F47C0111FBA42528B37C0', 254, '254', NULL, 28, 9, 1940, NULL, NULL, NULL, NULL, 'livro de emplacamento L27, p.300', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1644, 54, '0101000020E6100000BA2E137B785347C0A61D49EC9F8A37C0', 259, '259', NULL, 26, 10, 1935, NULL, NULL, NULL, NULL, '26-10-1935 - L20, p.133', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1645, 133, '0101000020E610000023D85519A94F47C03377F046768B37C0', 418, '418', NULL, 27, 8, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 261', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1646, 147, '0101000020E61000007469E0FDC04F47C0071FBA42528B37C0', 60, '60', NULL, NULL, NULL, NULL, 27, 9, 1940, NULL, 'livro de emplacamento L27, p.300', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1647, 133, '0101000020E610000020D85519A94F47C03A77F046768B37C0', 92, '92', NULL, NULL, NULL, NULL, 26, 8, 1936, NULL, 'livro de emplacamento n. 21, p. 261', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1648, 54, '0101000020E61000001A6D33335E5347C09940553DFD8937C0', 1, '1', NULL, NULL, NULL, NULL, 25, 10, 1935, NULL, '26-10-1935 - L20, p.133', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1649, 133, '0101000020E610000020D85519A94F47C03A77F046768B37C0', 441, '441', NULL, 27, 8, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 260', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1650, 54, '0101000020E61000008B4EB6AA6A5347C0F86FE95D498A37C0', 25, '25', NULL, NULL, NULL, NULL, 25, 10, 1935, NULL, '26-10-1935 - L20, p.133', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1652, 147, '0101000020E61000007469E0FDC04F47C0071FBA42528B37C0', 317, '317', NULL, 28, 9, 1940, 15, 2, 1980, NULL, 'livro de emplacamento L27, p.302', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1653, 54, '0101000020E6100000BE2E137B785347C0A41D49EC9F8A37C0', 53, '53', NULL, NULL, NULL, NULL, 25, 10, 1935, NULL, '26-10-1935 - L20, p.133', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1651, 133, '0101000020E610000020D85519A94F47C03A77F046768B37C0', 87, '87', NULL, NULL, NULL, NULL, 26, 8, 1936, NULL, 'livro de emplacamento n. 21, p. 260', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1654, 147, '0101000020E61000007469E0FDC04F47C0071FBA42528B37C0', 59, '59', NULL, NULL, NULL, NULL, 27, 9, 1940, NULL, 'livro de emplacamento L27, p.302', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1655, 147, '0101000020E6100000625262D1254F47C0915A06D10B8B37C0', 819, '819', NULL, 28, 9, 1940, NULL, NULL, NULL, NULL, 'livro de emplacamento L27, p.304', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1656, 54, '0101000020E61000001A6D33335E5347C09940553DFD8937C0', 14, '14', NULL, 26, 10, 1935, NULL, NULL, NULL, NULL, '26-10-1935 - L20, p.134', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1657, 131, '0101000020E61000001A0F063EF44F47C0111FBA1A5C8B37C0', 36, '36', NULL, 30, 4, 1936, 11, 4, 1939, NULL, 'livro de emplacamento L21, p.100', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1658, 54, '0101000020E61000008B4EB6AA6A5347C0F86FE95D498A37C0', 146, '146', NULL, 26, 10, 1935, NULL, NULL, NULL, NULL, '26-10-1935 - L20, p.134', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1659, 131, '0101000020E61000001B0F063EF44F47C01A1FBA1A5C8B37C0', 2, '2', NULL, NULL, NULL, NULL, 29, 4, 1936, NULL, 'livro de emplacamento L21, p.100', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1660, 54, '0101000020E6100000BE2E137B785347C0A41D49EC9F8A37C0', 286, '286', NULL, 26, 10, 1935, NULL, NULL, NULL, NULL, '26-10-1935 - L20, p.134', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1661, 54, '0101000020E61000001A6D33335E5347C09940553DFD8937C0', 2, '2', NULL, NULL, NULL, NULL, 25, 10, 1935, NULL, '26-10-1935 - L20, p.134', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1662, 131, '0101000020E6100000EF17767C005047C027E4F9DEF88A37C0', 196, '196', NULL, 30, 4, 1936, 7, 12, 1961, NULL, 'livro de emplacamento L21, p.100', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1663, 54, '0101000020E61000008B4EB6AA6A5347C0F86FE95D498A37C0', 44, '44', NULL, NULL, NULL, NULL, 25, 10, 1935, NULL, '26-10-1935 - L20, p.134', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1664, 131, '0101000020E6100000F317767C005047C02EE4F9DEF88A37C0', 38, '38', NULL, NULL, NULL, NULL, 29, 4, 1936, NULL, 'livro de emplacamento L21, p.100', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1665, 54, '0101000020E6100000BE2E137B785347C0A41D49EC9F8A37C0', 84, '84', NULL, NULL, NULL, NULL, 25, 10, 1935, NULL, '26-10-1935 - L20, p.134', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1666, 131, '0101000020E61000007AA1404D115047C07AFFA320A38A37C0', 320, '320', NULL, 30, 4, 1936, 16, 10, 1950, NULL, 'livro de emplacamento L21, p.100', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1667, 131, '0101000020E61000007FA1404D115047C082FFA320A38A37C0', 76, '76', NULL, NULL, NULL, NULL, 29, 4, 1936, NULL, 'livro de emplacamento L21, p.100', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1668, 131, '0101000020E61000001B0F063EF44F47C01A1FBA1A5C8B37C0', 21, '21', NULL, 30, 4, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento L21, p.101', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1669, 393, '0101000020E6100000C0355AC9BE4E47C09C96A59A498A37C0', 210, '210', NULL, 8, 11, 1938, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 26, p. 070', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1670, 393, '0101000020E6100000BB355AC9BE4E47C09E96A59A498A37C0', 36, '36', NULL, NULL, NULL, NULL, 7, 11, 1935, NULL, 'livro de emplacamento n. 26, p. 070', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1671, 131, '0101000020E6100000F317767C005047C02EE4F9DEF88A37C0', 197, '197', NULL, 30, 4, 1936, 27, 8, 1979, NULL, 'livro de emplacamento L21, p.101', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1672, 131, '0101000020E6100000F317767C005047C02EE4F9DEF88A37C0', 43, '43', NULL, NULL, NULL, NULL, 29, 4, 1936, NULL, 'livro de emplacamento L21, p.101', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1673, 131, '0101000020E61000007FA1404D115047C082FFA320A38A37C0', 337, '337', NULL, 30, 4, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento L21, p.101', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1674, 393, '0101000020E6100000BB355AC9BE4E47C09E96A59A498A37C0', 185, '185', NULL, 8, 11, 1938, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 26, p. ?', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1675, 393, '0101000020E6100000BB355AC9BE4E47C09E96A59A498A37C0', 25, '25-A', NULL, NULL, NULL, NULL, 7, 11, 1938, NULL, 'livro de emplacamento n. 26, p. ?', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1676, 393, '0101000020E6100000F5E425CBDE4E47C0E8191AE2A88937C0', 487, '487', NULL, 8, 11, 1938, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 26, p. 74', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1677, 393, '0101000020E6100000FAE425CBDE4E47C0EE191AE2A88937C0', 506, '506', NULL, 8, 11, 1938, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 26, p. ?', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1678, 393, '0101000020E6100000FAE425CBDE4E47C0EE191AE2A88937C0', 112, '112', NULL, NULL, NULL, NULL, 7, 11, 1938, NULL, 'livro de emplacamento n. 26, p. ?', 12, '2018-04-26', false);
INSERT INTO public.tb_places VALUES (1683, 55, '0101000020E6100000538106299E5147C0C1F8440D198B37C0', 33, '33', NULL, 6, 2, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L21, p.378', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1684, 55, '0101000020E61000004F8106299E5147C0CAF8440D198B37C0', 1, '1', NULL, NULL, NULL, NULL, 5, 2, 1937, NULL, 'livro de emplacamento L21, p.378', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1685, 55, '0101000020E61000004F8106299E5147C0CAF8440D198B37C0', 58, '58', NULL, 6, 2, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L21, p.378', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1686, 55, '0101000020E61000004F8106299E5147C0CAF8440D198B37C0', 6, '6', NULL, NULL, NULL, NULL, 5, 2, 1937, NULL, 'livro de emplacamento L21, p.378', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1687, 55, '0101000020E610000053814698855147C0C1F8C4FD2F8B37C0', 99, '99', NULL, 6, 2, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L21, p.378', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1688, 55, '0101000020E610000058814698855147C0BEF8C4FD2F8B37C0', 23, '23', NULL, NULL, NULL, NULL, 5, 2, 1937, NULL, 'livro de emplacamento L21, p.378', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1689, 55, '0101000020E610000058814698855147C0BEF8C4FD2F8B37C0', 90, '90', NULL, 6, 2, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L21, p.378', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1690, 89, '0101000020E6100000BE8211E99C5247C0CEABBE86BE8A37C0', 33, '33', NULL, 9, 10, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L20, p.92', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1694, 89, '0101000020E6100000C28211D89E5247C0CBABBE7B418B37C0', 269, '269', NULL, 9, 10, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L20, p.92', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1695, 89, '0101000020E6100000C58211D89E5247C0C1ABBE7B418B37C0', 27, '27', NULL, NULL, NULL, NULL, 8, 10, 1935, NULL, 'Livro de Emplacamento - L20, p.92', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1691, 89, '0101000020E6100000BA8211E99C5247C0DBABBE86BE8A37C0', 1, '1', NULL, NULL, NULL, NULL, 8, 10, 1935, NULL, 'Livro de Emplacamento - L20, p.92', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1697, 109, '0101000020E610000073141376F75347C013498CF9C88B37C0', 498, '498', NULL, 27, 11, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L20, p.208/209', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1698, 350, '0101000020E61000001B447BD8975047C0BF4100FED88937C0', 39, '39', NULL, 23, 7, 1936, 19, 2, 1940, NULL, 'Livro de emplacamento, n.21, p.191', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1699, 350, '0101000020E610000015447BD8975047C0C84100FED88937C0', 1, '1', NULL, NULL, NULL, NULL, 22, 7, 1936, NULL, 'Livro de emplacamento, n.21, p.191', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1700, 43, '0101000020E6100000B4C6A168355147C0143EED335A8C37C0', 49, '49', NULL, 30, 7, 1936, 15, 12, 1948, NULL, 'livro de emplacamento L21, p.215', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1693, 109, '0101000020E610000073141376F75347C013498CF9C88B37C0', 527, '527', NULL, 27, 11, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L20, p.208', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1696, 109, '0101000020E610000073141376F75347C013498CF9C88B37C0', 60.1000000000000014, '60s', NULL, NULL, NULL, NULL, 26, 11, 1935, NULL, 'Livro de Emplacamento L20, p.209', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1701, 350, '0101000020E61000001A447BCE835047C0BF4180717C8937C0', 159, '159', NULL, 23, 7, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.21, p.191', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1702, 89, '0101000020E6100000E57F1544A15247C08A5C891BC48B37C0', 441, '441', NULL, 9, 10, 1935, 13, 3, 1948, NULL, 'Livro de Emplacamento - L20, p.92', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1703, 350, '0101000020E610000015447BCE835047C0B74180717C8937C0', 29, '29', NULL, NULL, NULL, NULL, 22, 7, 1936, NULL, 'Livro de emplacamento, n.21, p.191', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1704, 43, '0101000020E6100000B4C6E1BD275147C0143E6DC9538C37C0', 19, '19', NULL, 30, 7, 1936, 24, 3, 1939, NULL, 'livro de emplacamento L21, p.215', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1707, 43, '0101000020E6100000B0C6E1BD275147C0183E6DC9538C37C0', 1, '1', NULL, NULL, NULL, NULL, 29, 7, 1936, NULL, 'livro de emplacamento L21, p.215', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1708, 350, '0101000020E610000015447BD8975047C0C84100FED88937C0', 50, '50', NULL, 23, 7, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.21, p.191', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1709, 350, '0101000020E610000015447BD8975047C0C84100FED88937C0', 2, '2', NULL, NULL, NULL, NULL, 22, 7, 1936, NULL, 'Livro de emplacamento, n.21, p.191', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1710, 109, '0101000020E6100000B781FD9BAC5347C0EF2B1ADE088C37C0', 36, '36', NULL, NULL, NULL, NULL, 26, 9, 1935, NULL, 'Livro de Emplacamento L20, p.209', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1712, 350, '0101000020E610000015447BCE835047C0B74180717C8937C0', 180, '180', NULL, 23, 7, 1936, 12, 7, 1950, NULL, 'Livro de emplacamento, n.21, p.191', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1713, 350, '0101000020E610000015447BCE835047C0B74180717C8937C0', 38, '28', NULL, NULL, NULL, NULL, 22, 7, 1936, NULL, 'Livro de emplacamento, n.21, p.191', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1705, 89, '0101000020E6100000C58211D89E5247C0C1ABBE7B418B37C0', 250, '250', NULL, 9, 10, 1935, 19, 8, 1953, NULL, 'Livro de Emplacamento - L20, p.93', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1706, 89, '0101000020E6100000C58211D89E5247C0C1ABBE7B418B37C0', 46, '46', NULL, NULL, NULL, NULL, 8, 10, 1935, NULL, 'Livro de Emplacamento - L20, p.93', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1715, 344, '0101000020E61000009266B265305147C06C684DC98F8A37C0', 41, '41', NULL, 28, 7, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento L21, p.201', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1716, 344, '0101000020E61000008E66B265305147C075684DC98F8A37C0', 3, '3', NULL, NULL, NULL, NULL, 27, 7, 1936, NULL, 'livro de emplacamento L21, p.201', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1719, 344, '0101000020E61000008E66B265305147C075684DC98F8A37C0', 16, '16', NULL, 28, 7, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento L21, p.202', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1720, 89, '0101000020E6100000BA8211E99C5247C0DBABBE86BE8A37C0', 2, '2', NULL, NULL, NULL, NULL, 8, 10, 1935, NULL, 'Livro de Emplacamento - L20, p.92', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1724, 357, '0101000020E6100000211D07AC585047C087135FC0108937C0', 27, '27', NULL, 27, 7, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.21, p.199', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1721, 344, '0101000020E61000008E66B265305147C075684DC98F8A37C0', 2, '2', NULL, NULL, NULL, NULL, 27, 7, 1936, NULL, 'livro de emplacamento L21, p.202', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1723, 344, '0101000020E61000009366B240375147C06F68CDDC0B8A37C0', 221, '221', NULL, 28, 7, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento L21, p.201', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1718, 89, '0101000020E6100000BA8211E99C5247C0DBABBE86BE8A37C0', 10, '10', NULL, 9, 10, 1935, 20, 1, 1980, NULL, 'Livro de Emplacamento - L20, p.92', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1726, 344, '0101000020E61000009366B240375147C06E68CDDC0B8A37C0', 47, '47', NULL, NULL, NULL, NULL, 27, 7, 1936, NULL, 'livro de emplacamento L21, p.201', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1727, 357, '0101000020E61000001F1D07AC585047C090135FC0108937C0', 1, '1', NULL, NULL, NULL, NULL, 26, 7, 1936, NULL, 'Livro de emplacamento, n.21, p.199', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1728, 89, '0101000020E6100000DF7F1544A15247C0845C891BC48B37C0', 442, '442', NULL, 9, 10, 1935, 6, 9, 1951, NULL, 'Livro de Emplacamento - L20, p.92', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1729, 344, '0101000020E61000009366B240375147C06E68CDDC0B8A37C0', 220, '220', NULL, 28, 7, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento L21, p.202', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1725, 109, '0101000020E6100000FCD4643E805347C0AEE8D061898C37C0', 15, '15', NULL, 27, 11, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L20, p.208', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1730, 89, '0101000020E6100000DF7F1544A15247C0845C891BC48B37C0', 76, '76', NULL, NULL, NULL, NULL, 8, 10, 1935, NULL, 'Livro de Emplacamento - L20, p.92', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1731, 344, '0101000020E61000009366B240375147C06E68CDDC0B8A37C0', 46, '46', NULL, NULL, NULL, NULL, 27, 7, 1936, NULL, 'livro de emplacamento L21, p.202', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1717, 109, '0101000020E6100000B281FD9BAC5347C0F12B1ADE088C37C0', 305, '305', NULL, 27, 11, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L20, p.208', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1714, 109, '0101000020E6100000B281FD9BAC5347C0F12B1ADE088C37C0', 61, '61', NULL, NULL, NULL, NULL, 26, 11, 1935, NULL, 'Livro de Emplacamento L20, p.208', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1711, 109, '0101000020E6100000B281FD9BAC5347C0F12B1ADE088C37C0', 212, '212', NULL, 27, 11, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L20, p.209', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1722, 109, '0101000020E610000001D5643E805347C0A9E8D061898C37C0', 1, '1', NULL, NULL, NULL, NULL, 26, 11, 1935, NULL, 'Livro de Emplacamento L20, p.208', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1732, 109, '0101000020E6100000FCD4643E805347C0AEE8D061898C37C0', 2, '2', NULL, NULL, NULL, NULL, 26, 11, 1935, NULL, 'Livro de Emplacamento L20, p.209', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1733, 109, '0101000020E6100000FCD4643E805347C0AEE8D061898C37C0', 41.9799999999999969, '42', NULL, 27, 11, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L20, p.209', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1734, 109, '0101000020E6100000FCD4643E805347C0AEE8D061898C37C0', 42, '42', NULL, 27, 11, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L20, p.209', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1692, 109, '0101000020E610000073141376F75347C014498CF9C88B37C0', 83, '83', NULL, NULL, NULL, NULL, 26, 11, 1935, NULL, 'Livro de Emplacamento L20, p.208', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1737, 357, '0101000020E61000001F1D07AC585047C090135FC0108937C0', 2, '2S', NULL, NULL, NULL, NULL, 26, 7, 1936, NULL, 'Livro de emplacamento, n.21, p.200', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1738, 149, '0101000020E610000013B7EA34734F47C01228B4B1AC8B37C0', 1, '1', NULL, NULL, NULL, NULL, 28, 4, 1936, NULL, 'Livro de Emplacamento - L21, p.91', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1739, 149, '0101000020E610000015B7EA34734F47C00828B4B1AC8B37C0', 51, '51', NULL, 29, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L21, p.91', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1740, 357, '0101000020E61000001F1D07AC585047C090135FC0108937C0', 20, '20', NULL, 27, 7, 1936, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.21, p.200', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1744, 149, '0101000020E610000015B7EA34734F47C00828B4B1AC8B37C0', 2, '2', NULL, NULL, NULL, NULL, 28, 4, 1936, NULL, 'Livro de Emplacamento - L21, p.92', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1745, 149, '0101000020E610000015B7EA34734F47C00828B4B1AC8B37C0', 2, '2', NULL, NULL, NULL, NULL, 28, 4, 1936, NULL, 'Livro de Emplacamento - L21, p.92', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1747, 149, '0101000020E610000015B7EA34734F47C00828B4B1AC8B37C0', 20, '20', NULL, 29, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L21, p.92', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1748, 179, '0101000020E61000002324A44C9C5347C09E7BBB011F8937C0', 14, '14', NULL, 29, 8, 1940, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.27, p.273', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1749, 149, '0101000020E610000011B76A82D34E47C01328B4B16E8D37C0', 183, '183', NULL, NULL, NULL, NULL, 28, 4, 1936, NULL, 'Livro de Emplacamento - L21, p.91', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1750, 149, '0101000020E610000010B76A82D34E47C01D28B4B16E8D37C0', 921, '921', NULL, 29, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L21, p.91', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1751, 179, '0101000020E61000002524A44C9C5347C0927BBB011F8937C0', 17, '17', NULL, NULL, NULL, NULL, 28, 8, 1940, NULL, 'Livro de emplacamento, n.27, p.273', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1752, 458, '0101000020E6100000F9F18FAF745047C04C25C7D7AA8E37C0', 238, '238', NULL, 28, 5, 1940, NULL, NULL, NULL, NULL, 'livro de emplacamento L27, p.150', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1753, 458, '0101000020E6100000FCF18FAF745047C05425C7D7AA8E37C0', 2, '2 A', NULL, NULL, NULL, NULL, 27, 5, 1940, NULL, 'livro de emplacamento L27, p.150', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1754, 458, '0101000020E61000009CBC86E47D5047C074539C01D28E37C0', 308, '308', NULL, 28, 5, 1940, NULL, NULL, NULL, NULL, 'livro de emplacamento L27, p.150', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1755, 458, '0101000020E610000097BC86E47D5047C082539C01D28E37C0', 24, '24', NULL, NULL, NULL, NULL, 27, 5, 1940, NULL, 'livro de emplacamento L27, p.150', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1756, 149, '0101000020E61000000BFF6845EF4E47C07CBD38A6208D37C0', 170, '170', NULL, NULL, NULL, NULL, 28, 4, 1936, NULL, 'Livro de Emplacamento - L21, p.92', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1757, 179, '0101000020E610000085FD68048D5347C09DA47D79B78837C0', 1, '1A', NULL, NULL, NULL, NULL, 28, 8, 1940, NULL, 'Livro de emplacamento, n.27, p.273', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1758, 149, '0101000020E610000004FF6845EF4E47C081BD38A6208D37C0', 770, '770', NULL, 29, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L21, p.92', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1759, 458, '0101000020E6100000FCF18FAF745047C05425C7D7AA8E37C0', 227, '227', NULL, 28, 5, 1940, NULL, NULL, NULL, NULL, 'livro de emplacamento L27, p.151', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1760, 458, '0101000020E6100000FCF18FAF745047C05425C7D7AA8E37C0', 3, '3', NULL, NULL, NULL, NULL, 27, 5, 1940, NULL, 'livro de emplacamento L27, p.151', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1761, 458, '0101000020E610000097BC86E47D5047C082539C01D28E37C0', 285, '285', NULL, 28, 5, 1940, NULL, NULL, NULL, NULL, 'livro de emplacamento L27, p.151', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1762, 458, '0101000020E610000097BC86E47D5047C082539C01D28E37C0', 27, '27', NULL, NULL, NULL, NULL, 27, 5, 1940, NULL, 'livro de emplacamento L27, p.151', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1763, 179, '0101000020E610000084FD68048D5347C09DA47D79B78837C0', 119, '119', NULL, 29, 8, 1940, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.27, p.273', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1764, 179, '0101000020E610000084FD68048D5347C09DA47D79B78837C0', 2, '2', NULL, NULL, NULL, NULL, 28, 8, 1940, NULL, 'Livro de emplacamento, n.27, p.273', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1765, 179, '0101000020E61000002524A44C9C5347C0927BBB011F8937C0', 26, '26A', NULL, NULL, NULL, NULL, 28, 8, 1940, NULL, 'Livro de emplacamento, n.27, p.273', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1766, 179, '0101000020E61000002524A44C9C5347C0927BBB011F8937C0', 29, '29', NULL, 29, 8, 1940, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.27, p.273', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1767, 408, '0101000020E610000079522D1AF25247C015CAADA41C8E37C0', 2, '2', NULL, NULL, NULL, NULL, 15, 5, 1940, NULL, 'Livro de Emplacamento L27, p.94', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1768, 408, '0101000020E610000080522D1AF25247C019CAADA41C8E37C0', 36, '36', NULL, 16, 5, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L27, p.94', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1769, 408, '0101000020E610000080522D1AF25247C019CAADA41C8E37C0', 1, '1', NULL, NULL, NULL, NULL, 15, 5, 1940, NULL, 'Livro de Emplacamento L27, p.95', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1770, 86, '0101000020E6100000F0AAA214B75247C043C206A8128C37C0', 2, '2', NULL, 24, 7, 1930, NULL, NULL, NULL, NULL, 'livro de emplacamento L17, p.81', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1771, 408, '0101000020E610000080522D1AF25247C019CAADA41C8E37C0', 7, '7', NULL, 16, 5, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L27, p.95', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1772, 86, '0101000020E6100000ECAAA214B75247C040C206A8128C37C0', 2, '2', NULL, NULL, NULL, NULL, 23, 7, 1930, NULL, 'livro de emplacamento L17, p.81', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1773, 86, '0101000020E6100000ECAAA214B75247C040C206A8128C37C0', 1, '1', NULL, 24, 7, 1930, NULL, NULL, NULL, NULL, 'livro de emplacamento L17, p.81', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1774, 86, '0101000020E6100000ECAAA214B75247C040C206A8128C37C0', 1, '1', NULL, NULL, NULL, NULL, 23, 7, 1930, NULL, 'livro de emplacamento L17, p.81', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1775, 86, '0101000020E6100000F0AA6299AE5247C043C20696CA8B37C0', 20, '20', NULL, 24, 7, 1930, NULL, NULL, NULL, NULL, 'livro de emplacamento L17, p.81', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1776, 86, '0101000020E6100000F1AA6299AE5247C042C20696CA8B37C0', 12, '12', NULL, NULL, NULL, NULL, 23, 7, 1930, NULL, 'livro de emplacamento L17, p.81', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1777, 86, '0101000020E6100000F1AA6299AE5247C042C20696CA8B37C0', 25, '25', NULL, 24, 7, 1930, NULL, NULL, NULL, NULL, 'livro de emplacamento L17, p.81', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1778, 86, '0101000020E6100000F1AA6299AE5247C042C20696CA8B37C0', 21, '21', NULL, NULL, NULL, NULL, 23, 7, 1930, NULL, 'livro de emplacamento L17, p.81', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1779, 8, '0101000020E6100000B66F66283C5147C06EA760347B8C37C0', 16, '16', NULL, 6, 6, 1940, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.27, p.125', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1780, 8, '0101000020E6100000B16F66283C5147C064A760347B8C37C0', 2, '2', NULL, NULL, NULL, NULL, 5, 6, 1940, NULL, 'Livro de emplacamento, n.27, p.125', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1781, 8, '0101000020E610000006E3BA974A5147C08D247C4BCA8C37C0', 148, '148', NULL, 6, 6, 1940, 9, 12, 1953, NULL, 'Livro de emplacamento, n.27, p.125', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1782, 8, '0101000020E610000003E3BA974A5147C086247C4BCA8C37C0', 44, '44', NULL, NULL, NULL, NULL, 5, 6, 1940, NULL, 'Livro de emplacamento, n.27, p.125', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1783, 8, '0101000020E6100000F146B1CA555147C0A4C0C5A2128D37C0', 274, '274', NULL, 6, 6, 1940, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.27, p.125', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1784, 8, '0101000020E6100000F046B1CA555147C09EC0C5A2128D37C0', 86, '86', NULL, NULL, NULL, NULL, 5, 6, 1940, NULL, 'Livro de emplacamento, n.27, p.125', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1785, 408, '0101000020E61000009A4BD1B75A5347C0938C1068838D37C0', 94, '94', NULL, NULL, NULL, NULL, 15, 5, 1940, NULL, 'Livro de Emplacamento L27, p.94', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1786, 408, '0101000020E61000009F4BD1B75A5347C0978C1068838D37C0', 504, '504', NULL, 16, 5, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L27, p.94', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1788, 273, '0101000020E610000094139FDE864F47C0183AF470F58837C0', 20, '20', NULL, 19, 5, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.123', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1789, 408, '0101000020E61000009F4BD1B75A5347C0978C1068838D37C0', 477, '477', NULL, NULL, NULL, NULL, 16, 5, 1940, NULL, 'Livro de Emplacamento L27, p.95', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1790, 273, '0101000020E610000096139FDE864F47C00D3AF470F58837C0', 2, '2', NULL, NULL, NULL, NULL, 18, 5, 1937, NULL, 'livro de emplacamento L22, p.123', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1791, 8, '0101000020E610000097742629415147C0E08E86EB908C37C0', 49, '49', NULL, 6, 6, 1940, 30, 8, 1946, NULL, 'Livro de emplacamento, n.27, p.126', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1787, 408, '0101000020E61000009F4BD1B75A5347C0978C1068838D37C0', 123, '123', NULL, 15, 5, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L27, p.95', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1792, 8, '0101000020E610000097742629415147C0E88E86EB908C37C0', 1, '1', NULL, NULL, NULL, NULL, 5, 6, 1940, NULL, 'Livro de emplacamento, n.27, p.126', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1794, 273, '0101000020E61000002C7FA259664F47C00A4A5A561A8837C0', 494, '494', NULL, 19, 5, 1937, 21, 8, 1952, NULL, 'livro de emplacamento L22, p.123', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1795, 273, '0101000020E6100000307FA259664F47C0124A5A561A8837C0', 68, '68', NULL, NULL, NULL, NULL, 18, 5, 1937, NULL, 'livro de emplacamento L22, p.123', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1796, 408, '0101000020E610000062348A77345347C04C4DFC00EE8D37C0', 322, '322', NULL, 16, 5, 1940, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L27, p.94', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1793, 408, '0101000020E61000005D348A77345347C04C4DFC00EE8D37C0', 42, '42', NULL, NULL, NULL, NULL, 15, 5, 1940, NULL, 'Livro de Emplacamento L27, p.94', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1798, 8, '0101000020E610000003E3BA974A5147C086247C4BCA8C37C0', 25, '25', NULL, NULL, NULL, NULL, 5, 6, 1940, NULL, 'Livro de emplacamento, n.27, p.126', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1797, 8, '0101000020E610000003E3BA974A5147C086247C4BCA8C37C0', 149, '149', NULL, 6, 6, 1940, 6, 8, 1953, NULL, 'Livro de emplacamento, n.27, p.126', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1799, 273, '0101000020E61000009AA12194434F47C015710C402E8737C0', 828, '828', NULL, 19, 5, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.124', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1800, 8, '0101000020E6100000F046B1CA555147C09EC0C5A2128D37C0', 277, '277', NULL, 6, 6, 1940, NULL, NULL, NULL, NULL, 'Livro de emplacamento, n.27, p.126', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1801, 8, '0101000020E6100000F046B1CA555147C09EC0C5A2128D37C0', 45.2000000000000028, '45C', NULL, NULL, NULL, NULL, 5, 6, 1940, NULL, 'Livro de emplacamento, n.27, p.126', 12, '2018-04-27', false);
INSERT INTO public.tb_places VALUES (1802, 99, '0101000020E610000050410FDDEE5247C0B137475E2D8D37C0', 21, '21', NULL, 7, 3, 1936, 13, 1, 1947, NULL, ' L21, p.01', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1804, 256, '0101000020E6100000CD5FF46D295047C0CB51C511158937C0', 35, '35', NULL, 2, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento -  L21, p.141', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1803, 256, '0101000020E6100000CA5FF46D295047C0BF51C511158937C0', 1, '1', NULL, NULL, NULL, NULL, 1, 4, 1936, NULL, 'Livro de Emplacamento -  L21, p.141', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1805, 446, '0101000020E6100000D3FBB2BF795147C0403C6C19C78E37C0', 8, '8', NULL, 1, 6, 1938, NULL, NULL, NULL, NULL, 'livro de emplacamento L24, p.351', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1807, 446, '0101000020E6100000D2FBB2BF795147C04A3C6C19C78E37C0', 4, '4', NULL, NULL, NULL, NULL, 31, 5, 1938, NULL, 'livro de emplacamento L24, p.351', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1808, 446, '0101000020E6100000D3FB324F4C5147C03F3C6C8FC98E37C0', 124, '124', NULL, 1, 6, 1938, NULL, NULL, NULL, NULL, 'livro de emplacamento L24, p.351', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1809, 99, '0101000020E6100000B19D22EDE45347C0985F4D49108E37C0', 883, '883', NULL, 7, 3, 1937, 11, 12, 1945, NULL, ' L21, p.02', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1810, 446, '0101000020E6100000D2FB324F4C5147C0483C6C8FC98E37C0', 34.2000000000000028, '34 ^', NULL, NULL, NULL, NULL, 31, 5, 1938, NULL, 'livro de emplacamento L24, p.351', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1811, 256, '0101000020E6100000B2C3490F185047C073533997C18837C0', 153, '153', NULL, 2, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento -  L21, p.141', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1812, 99, '0101000020E6100000B966FED97E5347C07B5B23A7A48D37C0', 95, '95', NULL, NULL, NULL, NULL, 6, 3, 1936, NULL, ' L21, p.01', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1813, 99, '0101000020E6100000AA9D22EDE45347C0A05F4D49108E37C0', 185, '185', NULL, NULL, NULL, NULL, 6, 3, 1936, NULL, ' L21, p.02', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1814, 446, '0101000020E6100000D2FBB2BF795147C04A3C6C19C78E37C0', 51, '51', NULL, 1, 6, 1938, NULL, NULL, NULL, NULL, 'livro de emplacamento L24, p.351', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1815, 446, '0101000020E6100000D2FBB2BF795147C04A3C6C19C78E37C0', 1, '1 - Baixo', NULL, NULL, NULL, NULL, 31, 5, 1938, NULL, 'livro de emplacamento L24, p.351', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1816, 446, '0101000020E6100000D2FB324F4C5147C0483C6C8FC98E37C0', 87, '87', NULL, 1, 6, 1938, NULL, NULL, NULL, NULL, 'livro de emplacamento L24, p.351', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1817, 446, '0101000020E6100000D2FB324F4C5147C0483C6C8FC98E37C0', 13, '13', NULL, NULL, NULL, NULL, 31, 5, 1938, NULL, 'livro de emplacamento L24, p.351', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1818, 256, '0101000020E6100000B4C3490F185047C07C533997C18837C0', 44, '44', NULL, NULL, NULL, NULL, 1, 4, 1936, NULL, 'Livro de Emplacamento -  L21, p.142', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1819, 256, '0101000020E6100000B4C3490F185047C07C533997C18837C0', 134, '134', NULL, 2, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento -  L21, p.142', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1820, 256, '0101000020E6100000CD5FF46D295047C0CB51C511158937C0', 2, '2', NULL, NULL, NULL, NULL, 1, 4, 1936, NULL, 'Livro de Emplacamento -  L21, p.142', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1821, 256, '0101000020E6100000CD5FF46D295047C0CB51C511158937C0', 24, '24', NULL, 2, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento -  L21, p.142', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1822, 207, '0101000020E61000001716E1B8F15047C08105F202C88737C0', 24, '24', NULL, 7, 4, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.140', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1823, 99, '0101000020E610000041B9DDB11F5147C03E667F794D8C37C0', 11, '11', NULL, 16, 9, 1940, 11, 9, 1936, NULL, 'L27, p.270', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1824, 518, '0101000020E6100000A917E681575347C066E0EF2E4C8E37C0', 17, '17', NULL, NULL, NULL, NULL, 30, 7, 1937, NULL, 'Livrro de Emplacamento L24, p.22', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1825, 207, '0101000020E61000002884DE23605147C030ACFB098F8737C0', 384, '384', NULL, 7, 4, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.140', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1826, 518, '0101000020E6100000AF17E681575347C060E0EF2E4C8E37C0', 58, '58', NULL, 1, 8, 1937, NULL, NULL, NULL, NULL, 'Livrro de Emplacamento L24, p.23', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1827, 207, '0101000020E61000002484DE23605147C026ACFB098F8737C0', 40, '40', NULL, NULL, NULL, NULL, 6, 4, 1937, NULL, 'livro de emplacamento L22, p.140', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1828, 99, '0101000020E610000001427A20E35047C0FEE1A605C78B37C0', 301, '301', NULL, 16, 9, 1940, NULL, NULL, NULL, NULL, 'L27, p.270', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1829, 99, '0101000020E61000003BB9DDB11F5147C03B667F794D8C37C0', 1, '1', NULL, NULL, NULL, NULL, 15, 9, 1940, NULL, 'L27, p.270', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1830, 99, '0101000020E610000004427A20E35047C002E2A605C78B37C0', 95, '95', NULL, NULL, NULL, NULL, 15, 9, 1940, NULL, 'L27, p.270', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1831, 207, '0101000020E610000003B54FBAC55147C0FA7B407B5A8737C0', 716, '716', NULL, 7, 4, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.141', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1832, 207, '0101000020E610000006B54FBAC55147C0EC7B407B5A8737C0', 110, '110', NULL, NULL, NULL, NULL, 6, 4, 1937, NULL, 'livro de emplacamento L22, p.141', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1833, 518, '0101000020E6100000B91740E17B5347C0D3CBABF1A68D37C0', 1, '1', NULL, NULL, NULL, NULL, 30, 7, 1937, NULL, 'Livrro de Emplacamento L24, p.23', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1834, 518, '0101000020E6100000B91740E17B5347C0D8CBABF1A68D37C0', 284, '284', NULL, 1, 8, 1937, NULL, NULL, NULL, NULL, 'Livrro de Emplacamento L24, p.23', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1835, 99, '0101000020E61000003FA45900DC5247C0FB60356A798C37C0', 28, '28', NULL, 10, 1, 1936, 11, 4, 1967, NULL, 'L20, p.289', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1836, 518, '0101000020E6100000B91740E17B5347C0D8CBABF1A68D37C0', 2, '2', NULL, NULL, NULL, NULL, 30, 7, 1937, NULL, 'Livrro de Emplacamento L24, p.22', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1837, 207, '0101000020E6100000634335D12F5147C0757FF1B9A88737C0', 289, '289', NULL, 7, 4, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.142', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1838, 99, '0101000020E61000003FA45928FF5247C0FB6035F8908C37C0', 96, '96', NULL, 10, 1, 1936, NULL, NULL, NULL, NULL, 'L20, p.289', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1839, 207, '0101000020E6100000614335D12F5147C0787FF1B9A88737C0', 23, '23', NULL, NULL, NULL, NULL, 6, 4, 1937, NULL, 'livro de emplacamento L22, p.142', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1840, 518, '0101000020E6100000B91740E17B5347C0D8CBABF1A68D37C0', 281, '281', NULL, 1, 8, 1937, NULL, NULL, NULL, NULL, 'Livrro de Emplacamento L24, p.22', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1841, 207, '0101000020E61000002484DE23605147C026ACFB098F8737C0', 383, '383', NULL, 7, 4, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.142', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1842, 99, '0101000020E61000003DA45900DC5247C0F160356A798C37C0', 2, '2', NULL, NULL, NULL, NULL, 9, 1, 1936, NULL, 'L20, p.289', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1843, 207, '0101000020E61000002484DE23605147C026ACFB098F8737C0', 45, '45', NULL, NULL, NULL, NULL, 6, 4, 1937, NULL, 'livro de emplacamento L22, p.142', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1844, 99, '0101000020E610000043A45928FF5247C0F26035F8908C37C0', 22, '22', NULL, NULL, NULL, NULL, 9, 1, 1936, NULL, 'L20, p.289', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1845, 207, '0101000020E610000006B54FBAC55147C0EC7B407B5A8737C0', 691, '691', NULL, 7, 4, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.142', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1846, 316, '0101000020E6100000C264B73EC25247C0DA71421C968A37C0', 25, '25', NULL, 26, 10, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 129', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1847, 99, '0101000020E61000003DA45900DC5247C0F160356A798C37C0', 41, '41', NULL, 10, 1, 1936, NULL, NULL, NULL, NULL, 'L20, p.289', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1848, 316, '0101000020E6100000C364B73EC25247C0DA71421C968A37C0', 38, '38', NULL, NULL, NULL, NULL, 25, 10, 1935, NULL, 'livro de emplacamento n. 20, p. 129', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1849, 99, '0101000020E610000043A45928FF5247C0F26035F8908C37C0', 107, '107', NULL, 10, 1, 1936, NULL, NULL, NULL, NULL, 'L20, p.289', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1850, 316, '0101000020E610000003DD02BAB35247C05FB8BB3C0B8A37C0', 215, '215', NULL, 26, 10, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 129', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1851, 99, '0101000020E61000003DA45900DC5247C0F160356A798C37C0', 1, '1', NULL, NULL, NULL, NULL, 9, 1, 1936, NULL, 'L20, p.289', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1852, 99, '0101000020E610000043A45928FF5247C0F26035F8908C37C0', 11, '11', NULL, NULL, NULL, NULL, 9, 1, 1936, NULL, 'L20, p.289', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1853, 316, '0101000020E610000007DD02BAB35247C062B8BB3C0B8A37C0', 2, '2-A', NULL, NULL, NULL, NULL, 25, 10, 1935, NULL, 'livro de emplacamento n. 20, p. 129', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1854, 518, '0101000020E610000038D05979645347C0DEDC8439118E37C0', 38, '38', NULL, NULL, NULL, NULL, 30, 7, 1937, NULL, 'Livrro de Emplacamento L24, p.22', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1855, 518, '0101000020E610000033D05979645347C0D4DC8439118E37C0', 141, '141', NULL, 1, 8, 1937, NULL, NULL, NULL, NULL, 'Livrro de Emplacamento L24, p.22', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1856, 316, '0101000020E6100000C364B73EC25247C0DA71421C968A37C0', 10, '10', NULL, 26, 10, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 130', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1857, 316, '0101000020E610000007DD02BAB35247C062B8BB3C0B8A37C0', 222, '222', NULL, 26, 10, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 130', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1858, 316, '0101000020E610000007DD02BAB35247C062B8BB3C0B8A37C0', 1, '1', NULL, NULL, NULL, NULL, 25, 10, 1935, NULL, 'livro de emplacamento n. 20, p. 130', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1859, 324, '0101000020E61000001A8816C08B5147C0FBA087A1A58937C0', 15, '15', NULL, 19, 10, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento L20, p.108', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1860, 324, '0101000020E61000001C8816C08B5147C004A187A1A58937C0', 1, '1', NULL, NULL, NULL, NULL, 18, 10, 1935, NULL, 'livro de emplacamento L20, p.108', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1861, 245, '0101000020E61000001AC6301AA35047C0B70C60D1EA8837C0', 33, '33', NULL, 5, 6, 1936, NULL, NULL, NULL, NULL, ' L21, p.148', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1862, 324, '0101000020E6100000F856EDDBAD5147C0E77BA0EA4F8937C0', 201, '201', NULL, 19, 10, 1935, 30, 8, 1948, NULL, 'livro de emplacamento L20, p.108', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1863, 245, '0101000020E610000019C63018965047C0B70C608B8B8837C0', 179, '179', NULL, 5, 6, 1936, NULL, NULL, NULL, NULL, ' L21, p.148', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1864, 518, '0101000020E61000005C847F249F4F47C00E1D8D07BE8937C0', 2, '2', NULL, NULL, NULL, NULL, 1, 6, 1937, NULL, 'Livro de Emplacamento L22, p.289', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1865, 324, '0101000020E6100000FE56EDDBAD5147C0E57BA0EA4F8937C0', 35, '35', NULL, NULL, NULL, NULL, 18, 10, 1935, NULL, 'livro de emplacamento L20, p.108', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1866, 518, '0101000020E610000056847F249F4F47C0041D8D07BE8937C0', 28, '28', NULL, 2, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L22, p.289', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1867, 245, '0101000020E61000001BC6301AA35047C0BA0C60D1EA8837C0', 1, '1', NULL, NULL, NULL, NULL, 4, 6, 1936, NULL, ' L21, p.148', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1868, 324, '0101000020E6100000FC568D72C25147C0E47BA0F01C8937C0', 309, '309', NULL, 19, 10, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento L20, p.108', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1869, 245, '0101000020E61000001CC63018965047C0B20C608B8B8837C0', 37, '37', NULL, NULL, NULL, NULL, 4, 6, 1936, NULL, ' L21, p.148', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1870, 518, '0101000020E610000056847F249F4F47C0041D8D07BE8937C0', 23, '23', NULL, NULL, NULL, NULL, 1, 6, 1937, NULL, 'Livro de Emplacamento L22, p.291', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1871, 324, '0101000020E6100000F9568D72C25147C0EA7BA0F01C8937C0', 61.1000000000000014, '61 A', NULL, NULL, NULL, NULL, 18, 10, 1935, NULL, 'livro de emplacamento L20, p.108', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1872, 245, '0101000020E61000001BC6301AA35047C0BA0C60D1EA8837C0', 16, '16', NULL, 5, 6, 1936, NULL, NULL, NULL, NULL, ' L21, p.148', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1873, 518, '0101000020E610000056847F249F4F47C0041D8D07BE8937C0', 89, '89', NULL, 2, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L22, p.291', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1874, 245, '0101000020E61000001CC63018965047C0B20C608B8B8837C0', 182, '182', NULL, 5, 6, 1936, NULL, NULL, NULL, NULL, ' L21, p.148', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1876, 107, '0101000020E610000002D2A49F415347C0F58C8E2C718C37C0', 21, '21', NULL, 8, 4, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 14', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1879, 129, '0101000020E61000008522C9419B4F47C061295C2DB78B37C0', 39, '39', NULL, 27, 8, 1936, 13, 6, 1940, NULL, 'livro de emplacamento LX, p.62', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1880, 129, '0101000020E61000008422C9419B4F47C05F295C2DB78B37C0', 1, '1', NULL, NULL, NULL, NULL, 26, 8, 1936, NULL, 'livro de emplacamento LX, p.62', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1881, 107, '0101000020E6100000FCD12401245347C0FA8C8E090C8D37C0', 217, '217', NULL, 8, 4, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 14', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1882, 384, '0101000020E6100000F09F54B9C14E47C0696A4FADAC8937C0', 163, '163', NULL, NULL, NULL, NULL, 1, 6, 1937, NULL, 'Livro de Emplacamento L22, p.293', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1884, 129, '0101000020E61000008422C9419B4F47C05F295C2DB78B37C0', 64, '64', NULL, 27, 8, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento LX, p.62', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1877, 107, '0101000020E610000000D2A49F415347C0FA8C8E2C718C37C0', 1, '1', NULL, NULL, NULL, NULL, 7, 1, 1936, NULL, 'livro de emplacamento n. 21, p. 14', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1885, 129, '0101000020E61000008422C9419B4F47C05F295C2DB78B37C0', 6, '6', NULL, NULL, NULL, NULL, 26, 8, 1936, NULL, 'livro de emplacamento LX, p.62', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1886, 384, '0101000020E6100000F59F54B9C14E47C06A6A4FADAC8937C0', 709, '709', NULL, 2, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L22, p.293', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1888, 245, '0101000020E610000099BADC209F4F47C0774B2351648937C0', 27, '27', NULL, 4, 12, 1936, NULL, NULL, NULL, NULL, ' L21, p.354', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1889, 107, '0101000020E610000002D22401245347C0F48C8E090C8D37C0', 9, '9 t', NULL, NULL, NULL, NULL, 7, 4, 1936, NULL, 'livro de emplacamento n. 21, p. 14', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1890, 129, '0101000020E6100000852249D6A44F47C061295CF07B8B37C0', 125, '125', NULL, 27, 8, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento LX, p.62', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1891, 107, '0101000020E61000000044A5981A5347C03605622F428D37C0', 387, '387', NULL, 8, 4, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 14', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1892, 129, '0101000020E6100000812249D6A44F47C065295CF07B8B37C0', 21.1000000000000014, '21', NULL, NULL, NULL, NULL, 26, 8, 1936, NULL, 'livro de emplacamento LX, p.62', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1893, 384, '0101000020E6100000F59F54B9C14E47C06A6A4FADAC8937C0', 182, '182', NULL, NULL, NULL, NULL, 1, 6, 1937, NULL, 'Livro de Emplacamento L22, p.290', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1894, 107, '0101000020E61000000544A5981A5347C03E05622F428D37C0', 25, '25', NULL, NULL, NULL, NULL, 7, 4, 1936, NULL, 'livro de emplacamento n. 21, p. 14', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1895, 245, '0101000020E6100000655084846D4F47C0A2E442DE608937C0', 173, '173', NULL, 4, 12, 1936, NULL, NULL, NULL, NULL, ' L21, p.354', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1896, 384, '0101000020E6100000F59F54B9C14E47C06A6A4FADAC8937C0', 704, '704', NULL, 2, 6, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L22, p.290', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1897, 107, '0101000020E610000000D2A49F415347C0FA8C8E2C718C37C0', 2, '2', NULL, NULL, NULL, NULL, 7, 1, 1936, NULL, 'livro de emplacamento n. 21, p. 15', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1898, 107, '0101000020E610000000D2A49F415347C0FA8C8E2C718C37C0', 40, '40', NULL, 8, 4, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 15', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1899, 245, '0101000020E6100000F6B524B23E4F47C03B2F62D45C8937C0', 317, '317', NULL, 4, 12, 1936, NULL, NULL, NULL, NULL, ' L21, p.354', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1900, 107, '0101000020E610000002D22401245347C0F48C8E090C8D37C0', 18, '18', NULL, NULL, NULL, NULL, 7, 4, 1936, NULL, 'livro de emplacamento n. 21, p. 15', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1901, 245, '0101000020E610000093BADC209F4F47C07B4B2351648937C0', 1, '1', NULL, NULL, NULL, NULL, 3, 12, 1936, NULL, ' L21, p.354', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1902, 129, '0101000020E6100000DDEA3BA3A84F47C0086169BF638B37C0', 157, '157', NULL, 27, 8, 1936, 24, 11, 1948, NULL, 'livro de emplacamento LX, p.62', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1903, 107, '0101000020E610000002D22401245347C0F48C8E090C8D37C0', 246, '246', NULL, 8, 4, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 15', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1904, 245, '0101000020E6100000695084846D4F47C0A1E442DE608937C0', 37, '37', NULL, NULL, NULL, NULL, 3, 12, 1936, NULL, ' L21, p.354', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1905, 107, '0101000020E61000000544A5981A5347C03E05622F428D37C0', 40, '40', NULL, NULL, NULL, NULL, 7, 4, 1936, NULL, 'livro de emplacamento n. 21, p. 15', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1906, 129, '0101000020E6100000D9EA3BA3A84F47C0066169BF638B37C0', 25, '25', NULL, NULL, NULL, NULL, 26, 8, 1936, NULL, 'livro de emplacamento LX, p.62', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1907, 245, '0101000020E6100000F9B524B23E4F47C03B2F62D45C8937C0', 69, '69', NULL, NULL, NULL, NULL, 3, 12, 1936, NULL, ' L21, p.354', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1908, 129, '0101000020E6100000D9EA3BA3A84F47C0066169BF638B37C0', 156, '156', NULL, 27, 8, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento LX, p.62', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1910, 107, '0101000020E61000000544A5981A5347C03E05622F428D37C0', 388, '388', NULL, 8, 4, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 15', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1912, 245, '0101000020E610000093BADC209F4F47C07B4B2351648937C0', 32, '32', NULL, 4, 12, 1936, NULL, NULL, NULL, NULL, '  L21, p.355', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1913, 245, '0101000020E6100000695084846D4F47C0A1E442DE608937C0', 172, '172', NULL, 4, 12, 1936, NULL, NULL, NULL, NULL, ' L21, p.355', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1914, 245, '0101000020E6100000F9B524B23E4F47C03B2F62D45C8937C0', 320, '320', NULL, 4, 12, 1936, NULL, NULL, NULL, NULL, ' L21, p.355', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1915, 245, '0101000020E610000093BADC209F4F47C07B4B2351648937C0', 2, '2', NULL, NULL, NULL, NULL, 3, 12, 1936, NULL, '  L21, p.355', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1916, 245, '0101000020E6100000695084846D4F47C0A1E442DE608937C0', 42, '42', NULL, NULL, NULL, NULL, 3, 12, 1936, NULL, ' L21, p.355', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1917, 253, '0101000020E610000066B2DCF5285047C091D71DCB568737C0', 22, '22', NULL, 12, 5, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.114', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1920, 384, '0101000020E6100000DAD72526384F47C054F896FBB58937C0', 71, '71', NULL, NULL, NULL, NULL, 1, 6, 1938, NULL, 'Livro de Emplacamento L22, p.392', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1921, 245, '0101000020E6100000F9B524B23E4F47C03B2F62D45C8937C0', 868, '868', NULL, NULL, NULL, NULL, 3, 12, 1936, NULL, ' L21, p.355', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1922, 253, '0101000020E610000062B2DCF5285047C08ED71DCB568737C0', 4, '4', NULL, NULL, NULL, NULL, 11, 5, 1937, NULL, 'livro de emplacamento L22, p.114', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1923, 509, '0101000020E610000055D6CDF7365047C029BA839CB38A37C0', 24, '24', NULL, 27, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L21, p.87', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1924, 253, '0101000020E610000066B29C84345047C091D79DD3288737C0', 78, '78', NULL, 12, 5, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.114', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1911, 384, '0101000020E6100000DAD72526384F47C054F896FBB58937C0', 332, '332', NULL, 2, 6, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L22, p.289', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1878, 509, '0101000020E610000055D6CDF7365047C029BA839CB38A37C0', 3, '3', NULL, NULL, NULL, NULL, 26, 4, 1936, NULL, 'Livro de Emplacamento - L21, p.87', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1875, 509, '0101000020E610000055D6CDF7365047C01EBA839CB38A37C0', 49, '49', NULL, 27, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L21, p.87', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1887, 509, '0101000020E610000017F87545EB4F47C07DD875B7828A37C0', 61, '61', NULL, NULL, NULL, NULL, 26, 4, 1936, NULL, 'Livro de Emplacamento - L21, p.87', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1883, 509, '0101000020E61000001DF87545EB4F47C07ED875B7828A37C0', 261, '261', NULL, 27, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L21, p.87', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1919, 509, '0101000020E6100000BBC0E0D5A14F47C026BA8CA8538A37C0', 153, '153', NULL, NULL, NULL, NULL, 26, 4, 1936, NULL, 'Livro de Emplacamento - L21, p.88', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1918, 509, '0101000020E6100000C1C0E0D5A14F47C024BA8CA8538A37C0', 493, '493', NULL, 27, 4, 1936, 28, 5, 1941, NULL, 'Livro de Emplacamento - L21, p.88', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1925, 509, '0101000020E610000055D6CDF7365047C029BA839CB38A37C0', 2, '2', NULL, NULL, NULL, NULL, 26, 4, 1936, NULL, 'Livro de Emplacamento - L21, p.87', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1926, 253, '0101000020E610000068B29C84345047C08DD79DD3288737C0', 20, '20', NULL, NULL, NULL, NULL, 11, 5, 1937, NULL, 'livro de emplacamento L22, p.114', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1927, 384, '0101000020E6100000DAD72526384F47C054F896FBB58937C0', 333, '333', NULL, 2, 6, 1938, NULL, NULL, NULL, NULL, 'Livro de Emplacamento L22, p.392', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1909, 384, '0101000020E6100000E0D72526384F47C049F896FBB58937C0', 80, '80', NULL, NULL, NULL, NULL, 1, 6, 1938, NULL, 'Livro de Emplacamento L22, p.289', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1928, 253, '0101000020E610000062B2DCF5285047C08ED71DCB568737C0', 27, '27', NULL, 12, 5, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.115', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1929, 245, '0101000020E61000005BBD9D8C695347C0A5D120F40F8E37C0', 10, '10', NULL, 31, 3, 1936, NULL, NULL, NULL, NULL, 'L21, p.8', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1930, 245, '0101000020E61000005ABD9DE1B95347C0A5D120103F8E37C0', 252, '252', NULL, 31, 3, 1936, NULL, NULL, NULL, NULL, 'L21, p.8', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1931, 245, '0101000020E61000005ABD9DC8E15347C0A5D120DC548E37C0', 390, '390', NULL, 31, 3, 1936, NULL, NULL, NULL, NULL, 'L21, p.8', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1932, 253, '0101000020E610000068B29C84345047C08DD79DD3288737C0', 81, '81', NULL, 12, 5, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.115', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1933, 245, '0101000020E610000058BD9D8C695347C0A1D120F40F8E37C0', 2, '2', NULL, NULL, NULL, NULL, 30, 3, 1936, NULL, 'L21, p.8', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1934, 245, '0101000020E610000057BD9DE1B95347C0A4D120103F8E37C0', 60, '60', NULL, NULL, NULL, NULL, 30, 3, 1936, NULL, 'L21, p.8', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1935, 245, '0101000020E61000005CBD9DC8E15347C0B3D120DC548E37C0', 80, '80', NULL, NULL, NULL, NULL, 30, 3, 1936, NULL, 'L21, p.8', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1936, 102, '0101000020E610000094BF1C5BAA5247C066BD4296288C37C0', 19, '19', NULL, 19, 5, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 129', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1937, 245, '0101000020E610000058BD9D8C695347C0A1D120F40F8E37C0', 13, '13', NULL, 31, 3, 1936, NULL, NULL, NULL, NULL, 'L21, p.9', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1938, 102, '0101000020E610000095BF1C5BAA5247C067BD4296288C37C0', 1, '1', NULL, NULL, NULL, NULL, 18, 5, 1936, NULL, 'livro de emplacamento n. 21, p. 129', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1939, 509, '0101000020E610000017F87545EB4F47C07DD875B7828A37C0', 258, '258', NULL, 27, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L21, p.87', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1941, 245, '0101000020E61000005CBD9DC8E15347C0B3D120DC548E37C0', 397, '397', NULL, 31, 3, 1936, NULL, NULL, NULL, NULL, 'L21, p.8', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1942, 245, '0101000020E61000005CBD9DC8E15347C0B3D120DC548E37C0', 397, '397', NULL, 31, 3, 1936, NULL, NULL, NULL, NULL, 'L21, p.8', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1943, 102, '0101000020E610000093BFBC84B35247C06CBDC299D18C37C0', 341, '341', NULL, 19, 5, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 129', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1944, 102, '0101000020E610000095BFBC84B35247C062BDC299D18C37C0', 75, '75', NULL, NULL, NULL, NULL, 18, 5, 1936, NULL, 'livro de emplacamento n. 21, p. 129', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1945, 245, '0101000020E610000058BD9D8C695347C0A1D120F40F8E37C0', 1, '1', NULL, NULL, NULL, NULL, 30, 3, 1936, NULL, 'L21, p.8', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1946, 245, '0101000020E61000005CBD9DC8E15347C0B3D120DC548E37C0', 109, '109', NULL, NULL, NULL, NULL, 30, 3, 1936, NULL, 'L21, p.9', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1947, 102, '0101000020E610000015C6D63A9E5247C0E8A9749E448D37C0', 495, '495', NULL, 19, 5, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 129', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1948, 272, '0101000020E6100000EB131613D94F47C00FD6805B8B8837C0', 28, '28', NULL, NULL, NULL, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.102', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1949, 102, '0101000020E610000019C6D63A9E5247C0E6A9749E448D37C0', 79.0999999999999943, '79A', NULL, NULL, NULL, NULL, 18, 5, 1936, NULL, 'livro de emplacamento n. 21, p. 129', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1950, 272, '0101000020E6100000E913968FA04F47C00FD6805CA88837C0', 148, '148', NULL, NULL, NULL, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.102', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1951, 272, '0101000020E6100000E91316185C4F47C00FD680DECB8837C0', 378, '378', NULL, NULL, NULL, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.102', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1952, 509, '0101000020E6100000BBC0E0D5A14F47C026BA8CA8538A37C0', 486, '486', NULL, 27, 4, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento - L21, p.88', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1953, 272, '0101000020E6100000E71316185C4F47C005D680DECB8837C0', 36, '36', NULL, NULL, NULL, NULL, NULL, NULL, 1937, NULL, 'livro de emplacamento L22, p.102', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1954, 509, '0101000020E6100000BBC0E0D5A14F47C026BA8CA8538A37C0', 152, '152', NULL, NULL, NULL, NULL, 26, 4, 1936, NULL, 'Livro de Emplacamento - L21, p.88', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1955, 102, '0101000020E610000095BF1C5BAA5247C067BD4296288C37C0', 122, '122', NULL, 19, 5, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 130', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1956, 272, '0101000020E6100000EA131613D94F47C018D6805B8B8837C0', 15, '15', NULL, NULL, NULL, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.103', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1957, 245, '0101000020E6100000CDA470B67E5347C0BF2936DC948B37C0', 15, '15', NULL, 12, 11, 1935, NULL, NULL, NULL, NULL, 'L20, p.176', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1958, 102, '0101000020E610000095BF1C5BAA5247C067BD4296288C37C0', 4, '4t', NULL, NULL, NULL, NULL, 18, 5, 1936, NULL, 'livro de emplacamento n. 21, p. 130', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1959, 272, '0101000020E6100000EA131613D94F47C018D6805B8B8837C0', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1937, NULL, 'livro de emplacamento L22, p.103', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1960, 102, '0101000020E610000095BFBC84B35247C062BDC299D18C37C0', 400, '400', NULL, 19, 5, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 130', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1961, 245, '0101000020E6100000DA068E5CB45347C0483295CD6E8B37C0', 195, '195', NULL, 12, 11, 1935, NULL, NULL, NULL, NULL, 'L20, p.176', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1962, 272, '0101000020E6100000E713968FA04F47C007D6805CA88837C0', 179, '179', NULL, NULL, NULL, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.103', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1963, 245, '0101000020E610000075FDA5A6E65347C0751AD026498B37C0', 353, '353', NULL, 12, 11, 1935, NULL, NULL, NULL, NULL, 'L20, p.176', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1964, 102, '0101000020E610000019C6D63A9E5247C0E6A9749E448D37C0', 512, '512', NULL, 19, 5, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 130', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1965, 272, '0101000020E6100000E713968FA04F47C007D6805CA88837C0', 21, '21', NULL, NULL, NULL, NULL, NULL, NULL, 1937, NULL, 'livro de emplacamento L22, p.103', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1966, 245, '0101000020E6100000CFA470B67E5347C0B82936DC948B37C0', 1, '1', NULL, NULL, NULL, NULL, 11, 11, 1935, NULL, 'L20, p.176', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1967, 102, '0101000020E610000019C6D63A9E5247C0E6A9749E448D37C0', 32.1000000000000014, '32A', NULL, NULL, NULL, NULL, 18, 5, 1936, NULL, 'livro de emplacamento n. 21, p. 130', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1968, 272, '0101000020E6100000E71316185C4F47C005D680DECB8837C0', 419, '419', NULL, NULL, NULL, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento L22, p.103', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1969, 245, '0101000020E6100000D9068E5CB45347C0563295CD6E8B37C0', 3, '3', NULL, NULL, NULL, NULL, 11, 12, 1935, NULL, 'L20, p.176', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1970, 245, '0101000020E61000007AFDA5A6E65347C0751AD026498B37C0', 11, '11', NULL, NULL, NULL, NULL, 11, 12, 1935, NULL, 'L20, p.176', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1971, 310, '0101000020E61000005AEA624B5F5347C02A37FDBFEE8A37C0', 26, '26', NULL, 9, 12, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p.215', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1972, 310, '0101000020E61000005DEA624B5F5347C03837FDBFEE8A37C0', 2, '2', NULL, NULL, NULL, NULL, 8, 12, 1935, NULL, 'livro de emplacamento n. 20, p.215', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1973, 310, '0101000020E6100000A8B380E9C95347C006EFAF9FEB8A37C0', 380, '380', NULL, 9, 12, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 215', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1974, 310, '0101000020E6100000A4B380E9C95347C011EFAF9FEB8A37C0', 66, '66', NULL, NULL, NULL, NULL, 8, 12, 1935, NULL, 'livro de emplacamento n. 20, p. 215', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1975, 112, '0101000020E61000000CF9CCBF875347C0128C71370E8A37C0', 50, '50', NULL, 20, 12, 1935, NULL, NULL, NULL, NULL, 'L20, p.272', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1976, 310, '0101000020E61000005DEA624B5F5347C03837FDBFEE8A37C0', 15, '15', NULL, 9, 12, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p.216', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1977, 310, '0101000020E61000005DEA624B5F5347C03837FDBFEE8A37C0', 15, '15', NULL, 9, 12, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p.216', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1978, 112, '0101000020E61000000DF9CCBF875347C0148C71370E8A37C0', 2, '2', NULL, NULL, NULL, NULL, 19, 12, 1935, NULL, 'L20, p.272', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1979, 310, '0101000020E6100000A4B380E9C95347C011EFAF9FEB8A37C0', 341, '341', NULL, 9, 12, 1935, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 20, p. 216', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1980, 310, '0101000020E6100000A4B380E9C95347C011EFAF9FEB8A37C0', 55, '55', NULL, NULL, NULL, NULL, 8, 12, 1935, NULL, 'livro de emplacamento n. 20, p. 216', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1981, 112, '0101000020E61000000CF9CC30AD5347C0128C7149CF8937C0', 28, '28', NULL, NULL, NULL, NULL, 19, 12, 1935, NULL, 'L20, p.272', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1982, 112, '0101000020E61000000DF9CCBF875347C0148C71370E8A37C0', 49, '49', NULL, 20, 12, 1935, NULL, NULL, NULL, NULL, 'L20, p.272', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1983, 112, '0101000020E61000000DF9CCBF875347C0148C71370E8A37C0', 1, '1', NULL, NULL, NULL, NULL, 19, 12, 1935, NULL, 'L20, p.272', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1984, 112, '0101000020E610000006F9CC30AD5347C01D8C7149CF8937C0', 153, '153', NULL, 20, 12, 1935, NULL, NULL, NULL, NULL, 'L20, p.272', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1985, 112, '0101000020E610000006F9CC30AD5347C01D8C7149CF8937C0', 21, '21', NULL, NULL, NULL, NULL, 19, 12, 1935, NULL, 'L20, p.272', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1986, 489, '0101000020E6100000A3A99F7A614F47C0CE078EFC448D37C0', 29, '29', NULL, 4, 5, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 108', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1987, 489, '0101000020E61000006F80E909654F47C0C8B22F43B68D37C0', 185, '185', NULL, 4, 5, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 108', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1988, 489, '0101000020E61000006B80E909654F47C0C4B22F43B68D37C0', 47, '47', NULL, NULL, NULL, NULL, 3, 5, 1936, NULL, 'livro de emplacamento n. 21, p. 108', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1989, 489, '0101000020E61000006B80E909654F47C0C4B22F43B68D37C0', 184, '184', NULL, 4, 5, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 109', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1990, 489, '0101000020E61000006B80E909654F47C0C4B22F43B68D37C0', 50, '50', NULL, NULL, NULL, NULL, 3, 5, 1936, NULL, 'livro de emplacamento n. 21, p. 109', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1991, 489, '0101000020E6100000A8A99F7A614F47C0D3078EFC448D37C0', 32, '32', NULL, 4, 5, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 109', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1992, 489, '0101000020E6100000A8A99F7A614F47C0D3078EFC448D37C0', 2, '2t', NULL, NULL, NULL, NULL, 3, 5, 1936, NULL, 'livro de emplacamento n. 21, p. 109', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1993, 348, '0101000020E610000051A7012BB55047C0D6E19B59058A37C0', 35, '35', NULL, 18, 6, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 170', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1994, 348, '0101000020E610000053A7012BB55047C0CAE19B59058A37C0', 1, '1', NULL, NULL, NULL, NULL, 17, 6, 1936, NULL, 'livro de emplacamento n. 21, p. 170', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1995, 348, '0101000020E61000009B329DA4875047C0D2B6B0D11A8A37C0', 125, '125', NULL, 18, 6, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 170', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1996, 348, '0101000020E610000096329DA4875047C0E0B6B0D11A8A37C0', 9, '9', NULL, NULL, NULL, NULL, 17, 6, 1936, NULL, 'livro de emplacamento n. 21, p. 170', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1997, 348, '0101000020E610000096329DA4875047C0E0B6B0D11A8A37C0', 132, '132', NULL, 18, 6, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 170', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1998, 348, '0101000020E610000096329DA4875047C0E0B6B0D11A8A37C0', 20, '20', NULL, NULL, NULL, NULL, 17, 6, 1936, NULL, 'livro de emplacamento n. 21, p. 170', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1999, 348, '0101000020E610000053A7012BB55047C0CAE19B59058A37C0', 44, '44', NULL, 18, 6, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 21, p. 170', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2000, 348, '0101000020E610000053A7012BB55047C0CAE19B59058A37C0', 2, '2', NULL, NULL, NULL, NULL, 17, 6, 1936, NULL, 'livro de emplacamento n. 21, p. 170', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2001, 298, '0101000020E61000009EA9F65DEE4E47C0E9DD90FB8D8A37C0', 59, '59', NULL, 10, 6, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 22, p. ?', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2002, 298, '0101000020E6100000A0A9F65DEE4E47C0ECDD90FB8D8A37C0', 3, '3', NULL, NULL, NULL, NULL, 9, 6, 1937, NULL, 'livro de emplacamento n. 22, p. ?', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2003, 298, '0101000020E610000019B0B3640E4F47C0F40E672FAB8937C0', 451, '451', NULL, 10, 6, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 22, p. ?', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2004, 298, '0101000020E61000001AB0B3640E4F47C0E60E672FAB8937C0', 109, '109', NULL, NULL, NULL, NULL, 9, 6, 1936, NULL, 'livro de emplacamento n. 22, p. ?', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2005, 298, '0101000020E6100000C4892A43144F47C0895BEA04AF8837C0', 877, '877', NULL, 10, 6, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 22, p. 236', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2006, 298, '0101000020E6100000C8892A43144F47C07E5BEA04AF8837C0', 219, '219', NULL, NULL, NULL, NULL, 9, 6, 1936, NULL, 'livro de emplacamento n. 22, p. 236', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2007, 298, '0101000020E6100000A0A9F65DEE4E47C0ECDD90FB8D8A37C0', 2, '2', NULL, NULL, NULL, NULL, 9, 6, 1937, NULL, 'livro de emplacamento n. 22, p. 233', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2008, 298, '0101000020E6100000A0A9F65DEE4E47C0ECDD90FB8D8A37C0', 12, '12', NULL, 10, 6, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 22, p. 233', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2009, 298, '0101000020E61000001AB0B3640E4F47C0E60E672FAB8937C0', 466, '466', NULL, 10, 6, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 22, p. 234', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2010, 298, '0101000020E6100000C8892A43144F47C07E5BEA04AF8837C0', 836, '836', NULL, 10, 6, 1936, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 22, p. 234', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2011, 298, '0101000020E6100000C8892A43144F47C07E5BEA04AF8837C0', 218, '218', NULL, NULL, NULL, NULL, 9, 6, 1936, NULL, 'livro de emplacamento n. 22, p. 234', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2012, 268, '0101000020E6100000B56E18626B4F47C08E3C11E38C8B37C0', 36, '36', NULL, 4, 6, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 22, p. 237', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2013, 268, '0101000020E6100000B56E18626B4F47C08B3C11E38C8B37C0', 2, '2', NULL, NULL, NULL, NULL, 3, 6, 1937, NULL, 'livro de emplacamento n. 22, p. 237', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2014, 268, '0101000020E6100000750720B7924F47C07A3CF09DEE8A37C0', 318, '318', NULL, 4, 6, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 22, p. 237', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2015, 268, '0101000020E61000007A0720B7924F47C0853CF09DEE8A37C0', 64, '64', NULL, NULL, NULL, NULL, 3, 6, 1937, NULL, 'livro de emplacamento n. 22, p. 237', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2016, 268, '0101000020E61000003FB376F2A64F47C0B1F451DEFC8837C0', 1148, '1148', NULL, 4, 6, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 22, p. 238', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2017, 268, '0101000020E61000003FB376F2A64F47C0ACF451DEFC8837C0', 186, '186', NULL, NULL, NULL, NULL, 3, 6, 1937, NULL, 'livro de emplacamento n. 22, p. 238', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2019, 268, '0101000020E6100000B56E18626B4F47C08B3C11E38C8B37C0', 1, '1', NULL, NULL, NULL, NULL, 3, 6, 1937, NULL, 'livro de emplacamento n. 22, p. 238', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2020, 268, '0101000020E6100000B56E18626B4F47C08B3C11E38C8B37C0', 71, '71', NULL, 4, 6, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 22, p. 238', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2021, 268, '0101000020E61000007A0720B7924F47C0853CF09DEE8A37C0', 53, '53', NULL, NULL, NULL, NULL, 3, 6, 1937, NULL, 'livro de emplacamento n. 22, p. 239', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2022, 268, '0101000020E61000007A0720B7924F47C0853CF09DEE8A37C0', 319, '319', NULL, 4, 6, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 22, p. 239', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2023, 268, '0101000020E61000003FB376F2A64F47C0ACF451DEFC8837C0', 209, '209', NULL, NULL, NULL, NULL, 3, 6, 1937, NULL, 'livro de emplacamento n. 22, p. 240', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (2018, 268, '0101000020E61000003FB376F2A64F47C0ACF451DEFC8837C0', 1157, '1157', NULL, 4, 6, 1937, NULL, NULL, NULL, NULL, 'livro de emplacamento n. 22, p. 240', 12, '2018-05-02', false);
INSERT INTO public.tb_places VALUES (1305, 328, '0101000020E61000007D5EF978B75147C0AB51CCB4E98A37C0', 33, '33', NULL, 20, 9, 1935, 1, 10, 1948, NULL, 'Livro de emplacamento n.20, p.44', 6, '2018-05-14', false);
INSERT INTO public.tb_places VALUES (1336, 328, '0101000020E61000006038A706D45147C07B598E68A58A37C0', 164, '164', NULL, 20, 9, 1935, 1, 8, 1942, NULL, 'Livro de emplacamento n.20, p.44', 6, '2018-05-14', false);
INSERT INTO public.tb_places VALUES (2024, 88, '0101000020E61000008C0AC9C0EC5247C0F4BDAF6E748B37C0', 60, '60', NULL, NULL, NULL, NULL, 8, 10, 1935, NULL, 'Livro de Emplacamento - L20, p.95', 6, '2018-05-14', false);
INSERT INTO public.tb_places VALUES (1940, 509, '0101000020E610000017F87545EB4F47C07DD875B7828A37C0', 68, '68', NULL, NULL, NULL, NULL, 26, 4, 1936, NULL, 'Livro de Emplacamento - L21, p.87', 6, '2018-05-14', false);
INSERT INTO public.tb_places VALUES (1604, 121, '0101000020E6100000BBBDD4DCE05347C056B3FF2C338C37C0', 131, '131', NULL, 13, 11, 1935, 8, 1, 1959, NULL, 'Livro de emplacamento, n.20, p. 182', 6, '2018-05-14', false);
INSERT INTO public.tb_places VALUES (2025, 357, '0101000020E610000077A86D536C5047C0AE4964896E8937C0', 172, '172', NULL, 27, 7, 1936, 24, 11, 1936, NULL, 'Livro de Emplacamento, n.21, p.200', 6, '2018-05-14', false);
INSERT INTO public.tb_places VALUES (2026, 357, '0101000020E610000070A86D536C5047C0B24964896E8937C0', 36, '36', NULL, NULL, NULL, NULL, 26, 7, 1936, NULL, 'Livro de Emplacamento, n.21, p.200', 6, '2018-05-14', false);
INSERT INTO public.tb_places VALUES (2027, 357, '0101000020E610000070A86D536C5047C0B24964896E8937C0', 59, '59', NULL, NULL, NULL, NULL, 26, 7, 1936, NULL, 'Livro de Emplacamento, n.21, p.200', 6, '2018-05-14', false);
INSERT INTO public.tb_places VALUES (2028, 357, '0101000020E610000070A86D536C5047C0B24964896E8937C0', 163, '163', NULL, 27, 7, 1936, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.21, p.200', 6, '2018-05-14', false);
INSERT INTO public.tb_places VALUES (2029, 357, '0101000020E61000003FDB1516675047C0DD76AA96558937C0', 47, '47', NULL, NULL, NULL, NULL, 26, 7, 1937, NULL, 'Livro de Emplacamento, n.21, p.199', 6, '2018-05-14', false);
INSERT INTO public.tb_places VALUES (2030, 357, '0101000020E61000003ADB1516675047C0D176AA96558937C0', 127, '127', NULL, 27, 7, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.21, p.199', 6, '2018-05-14', false);
INSERT INTO public.tb_places VALUES (2031, 357, '0101000020E61000003ADB1516675047C0D176AA96558937C0', 126, '126', NULL, 27, 7, 1937, NULL, NULL, NULL, NULL, 'Livro de Emplacamento, n.21, p.200', 6, '2018-05-14', false);
INSERT INTO public.tb_places VALUES (2032, 357, '0101000020E61000003ADB1516675047C0D176AA96558937C0', 30, '30', NULL, NULL, NULL, NULL, 26, 7, 1937, NULL, 'Livro de Emplacamento, n.21, p.200', 6, '2018-05-14', false);


--
-- TOC entry 3585 (class 0 OID 19665)
-- Dependencies: 202
-- Data for Name: tb_places2; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tb_places2 VALUES (24, 91, '0101000020E6100000305DFF2A0C5347C09A7A0A1AD28A37C0', 2, NULL, 'Hospital da S. Casa de Misericordia', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 421', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (47, 527, '0101000020E61000003AFCDDD2C64F47C0D358C063F88737C0', 67, NULL, NULL, NULL, NULL, 1933, NULL, NULL, NULL, NULL, 'GUIA E PLANTA DA CIDADE DE S PAULO ANNO  V MEZ IX ', 10, '2017-08-06');
INSERT INTO public.tb_places2 VALUES (57, 425, '0101000020E6100000677627BCFC5147C067C710D9A78E37C0', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GUIA E PLANTA DA CIDADE DE S PAULO ANNO  V MEZ IX ', 10, '2017-08-06');
INSERT INTO public.tb_places2 VALUES (50, 110, '0101000020E6100000AB9C1271A45047C0C0B39F59518D37C0', 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GUIA E PLANTA DA CIDADE DE S PAULO ANNO  V MEZ IX ', 10, '2017-08-06');
INSERT INTO public.tb_places2 VALUES (6, 16, '0101000020E6100000EF95AFB13C5147C069DEE6A6378C37C0', 82, '82', NULL, 13, 9, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento 26, p. 198', 9, '2017-07-16');
INSERT INTO public.tb_places2 VALUES (7, 16, '0101000020E6100000F695EFA3375147C05B8153BE608C37C0', 58, '58', NULL, 13, 9, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamento 26, p. 198', 9, '2017-07-16');
INSERT INTO public.tb_places2 VALUES (9, 302, '0101000020E6100000381099D3F15247C0623E3CAFCB8937C0', 133, '32', NULL, NULL, NULL, NULL, 14, 10, 1935, NULL, 'Livro de Emplacamento 20, p. 98', 9, '2017-07-16');
INSERT INTO public.tb_places2 VALUES (11, 302, '0101000020E61000002D10999EEA5247C0F7026DFBC28937C0', 30, '30', NULL, NULL, NULL, NULL, 14, 10, 1935, NULL, 'Livro de Emplacamentos 20, p. 98', 9, '2017-07-16');
INSERT INTO public.tb_places2 VALUES (12, 302, '0101000020E6100000560AF4AF1B5347C01DE3A530FF8937C0', 315, '315', NULL, 15, 10, 1935, NULL, NULL, NULL, NULL, 'Livro de Emplacamentos 20, p. 98', 9, '2017-07-16');
INSERT INTO public.tb_places2 VALUES (13, 302, '0101000020E6100000560AF4AF1B5347C01DE3A530FF8937C0', 2, '2 so.', NULL, NULL, NULL, NULL, 14, 10, 1935, NULL, 'Livro de Emplacamentos 20, p. 98', 9, '2017-07-16');
INSERT INTO public.tb_places2 VALUES (14, 513, '0101000020E6100000D79075143F5147C0F3150F07918C37C0', 39, '39', NULL, 24, 8, 1939, NULL, NULL, NULL, NULL, 'Livro de Emplacamentos 19a, p. 85', 9, '2017-07-16');
INSERT INTO public.tb_places2 VALUES (15, 513, '0101000020E6100000D79075143F5147C0F3150F07918C37C0', 7, '7', NULL, NULL, NULL, NULL, 23, 8, 1933, NULL, 'Livro de Emplacamentos 19a, p. 85', 9, '2017-07-16');
INSERT INTO public.tb_places2 VALUES (16, 513, '0101000020E6100000E40CB968485147C0EEA2752F928C37C0', 67, '67', NULL, 24, 8, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamentos 19a, p. 85', 9, '2017-07-16');
INSERT INTO public.tb_places2 VALUES (17, 513, '0101000020E6100000E40CB968485147C0EEA2752F928C37C0', 11, '11', NULL, NULL, NULL, NULL, 23, 8, 1933, NULL, 'Livro de Emplacamentos 19a, p. 85', 9, '2017-07-16');
INSERT INTO public.tb_places2 VALUES (18, 513, '0101000020E61000002070D9C9B65147C0135C8746738C37C0', 413, '413', NULL, 24, 8, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamentos 19a, p. 85', 9, '2017-07-16');
INSERT INTO public.tb_places2 VALUES (19, 513, '0101000020E6100000A3A42DD17E5147C0503D02B18C8C37C0', 210, '210', NULL, 24, 8, 1933, NULL, NULL, NULL, NULL, 'Livro de Emplacamentos 19a, p. 86', 9, '2017-07-16');
INSERT INTO public.tb_places2 VALUES (20, 513, '0101000020E6100000A3A42DD17E5147C0343D02B18C8C37C0', 30, '30', NULL, NULL, NULL, NULL, 23, 8, 1933, NULL, 'Livro de Emplacamentos 19a, p. 86', 9, '2017-07-16');
INSERT INTO public.tb_places2 VALUES (21, 20, '0101000020E6100000D36E69A5305147C0155E11AF868C37C0', 15, '15', NULL, NULL, 9, 1933, NULL, NULL, NULL, NULL, 'Guia e Planta da Cidade de São Paulo, p. 86', 9, '2017-07-16');
INSERT INTO public.tb_places2 VALUES (22, 6, '0101000020E6100000D36E69DE245147C04FDB98CA578C37C0', 15, '15', NULL, NULL, 9, 1933, NULL, NULL, NULL, NULL, 'Guia e Planta da Cidade de São Paulo, p. 121', 9, '2017-07-16');
INSERT INTO public.tb_places2 VALUES (29, 220, '0101000020E6100000C518B676ED5047C09A00668F0A8837C0', 5, NULL, 'Cadeia Pública', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 147', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (30, 220, '0101000020E61000005408A2A50A5147C0A585E65FC48837C0', 1, NULL, 'Lyceo de Artes e Officios', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 421', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (31, 220, '0101000020E61000005008422FE15047C032715621BF8737C0', 7, NULL, 'Escola Polytecnica', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 162', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (32, 207, '0101000020E6100000AF8E52619E5147C0861FCBEB738737C0', 82, NULL, 'Collégio Santa Ignes', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 325', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (33, 207, '0101000020E6100000AD8E32919D5147C0C629415D748737C0', 71, NULL, 'Escola de Pharmacia e Odontologia', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 162', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (34, 76, '0101000020E61000003622C4F8325347C0D4B33472648C37C0', 178, NULL, 'Grupo Escolar da Consolação', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, V.II, p.594', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (35, 174, '0101000020E61000006B26CFD98C5347C0EBB386F7108837C0', 1, NULL, 'Grupo Escolar da Barra Funda', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p.134', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (36, 181, '0101000020E6100000F254B01FA95347C09B908CEC428837C0', 21, NULL, 'Theatro S. Pedro', NULL, NULL, 1935, NULL, NULL, NULL, NULL, 'Correio Paulistano, 1935, n°24.217, p.3', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (37, 526, '0101000020E61000000E57BCB6BD5247C07E580DFAA28A37C0', 80, NULL, 'Colyseu Paulista', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 162', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (38, 323, '0101000020E61000002841A434EB5147C047ACD2C19F8937C0', 86, NULL, 'Gabinete de Investigações', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 97', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (39, 367, '0101000020E610000073B73C02325147C0BA3C923DC98A37C0', 67, NULL, 'Casino Antarctica', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 322', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (40, 268, '0101000020E610000061706B88A24F47C025A17EAEDB8937C0', 120, NULL, 'Escola Profissional Carlos de Campos', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 138', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (41, 76, '0101000020E6100000CB1DD5CB775247C0049E98473C8C37C0', 42, NULL, 'Cinema Odeon', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 162', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (42, 104, '0101000020E6100000B666D6D0CD5247C0F97D235CAF8C37C0', 46, NULL, 'Escola Alemã', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 593', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (43, 98, '0101000020E6100000D0FED7DAF85247C0D69EAAABCE8C37C0', 46, NULL, 'Collegio Des Oiseaux', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 593', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (44, 57, '0101000020E6100000EEBE7F2ED85147C0327766CF608B37C0', 23, NULL, 'Theatro S. Anna', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 162', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (45, 22, '0101000020E610000089EACB3F6C5147C03D764902DF8B37C0', 34, NULL, 'Prefeitura Municipal', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p. 96', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (46, 71, '0101000020E61000006B9698AAB25147C0E272F9844E8B37C0', 9, NULL, 'Quartel General da 2° região Militar', NULL, NULL, 1931, NULL, NULL, NULL, NULL, 'Almanak Laemmert, 1931, v.II, p.97', 6, '2017-08-01');
INSERT INTO public.tb_places2 VALUES (26, 300, '0101000020E610000085BA729DEF5247C06F268385868A37C0', 10, NULL, NULL, NULL, NULL, 1933, NULL, NULL, 1868, NULL, 'GUIA E PLANTA DA CIDADE DE S PAULO ANNO  V MEZ IX ', 10, '2017-08-06');
INSERT INTO public.tb_places2 VALUES (49, 425, '0101000020E610000066E169C0BF5147C0279EAADCE88D37C0', 113, NULL, NULL, NULL, NULL, 1933, NULL, NULL, NULL, NULL, 'GUIA E PLANTA DA CIDADE DE S PAULO ANNO  V MEZ IX ', 10, '2017-08-06');
INSERT INTO public.tb_places2 VALUES (51, 110, '0101000020E61000002622C40AC75347C02DC09F554F8C37C0', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GUIA E PLANTA DA CIDADE DE S PAULO ANNO  V MEZ IX ', 10, '2017-08-06');
INSERT INTO public.tb_places2 VALUES (52, 212, '0101000020E6100000C3A1E5F9855147C03A60580F1D8937C0', 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GUIA E PLANTA DA CIDADE DE S PAULO ANNO  V MEZ IX ', 10, '2017-08-06');
INSERT INTO public.tb_places2 VALUES (53, 402, '0101000020E610000096B09478E75347C0E5ADE7965C8E37C0', 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GUIA E PLANTA DA CIDADE DE S PAULO ANNO  V MEZ IX ', 10, '2017-08-06');
INSERT INTO public.tb_places2 VALUES (54, 425, '0101000020E61000004331D00A1E5247C0F191AE7DEF8E37C0', 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GUIA E PLANTA DA CIDADE DE S PAULO ANNO  V MEZ IX ', 10, '2017-08-06');
INSERT INTO public.tb_places2 VALUES (55, 223, '0101000020E6100000565180F6874F47C0771D188A038937C0', 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GUIA E PLANTA DA CIDADE DE S PAULO ANNO  V MEZ IX ', 10, '2017-08-06');
INSERT INTO public.tb_places2 VALUES (56, 220, '0101000020E6100000AD7D95FCE45047C0A283FFEAD38737C0', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GUIA E PLANTA DA CIDADE DE S PAULO ANNO  V MEZ IX ', 10, '2017-08-06');
INSERT INTO public.tb_places2 VALUES (58, 267, '0101000020E610000060A279A09C4F47C02F4A929FAF8837C0', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GUIA E PLANTA DA CIDADE DE S PAULO ANNO  V MEZ IX ', 10, '2017-08-06');
INSERT INTO public.tb_places2 VALUES (59, 251, '0101000020E6100000D4A02D35165047C0C74254AEB88737C0', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GUIA E PLANTA DA CIDADE DE S PAULO ANNO  V MEZ IX ', 10, '2017-08-06');
INSERT INTO public.tb_places2 VALUES (60, 220, '0101000020E610000034CAB90B135147C07C98F086F98837C0', 8, '8b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GUIA E PLANTA DA CIDADE DE S PAULO ANNO  V MEZ IX ', 10, '2017-08-06');
INSERT INTO public.tb_places2 VALUES (61, 130, '0101000020E61000004892952A994F47C0B8D96583CA8B37C0', 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GUIA E PLANTA DA CIDADE DE S PAULO ANNO  V MEZ IX ', 10, '2017-08-06');
INSERT INTO public.tb_places2 VALUES (62, 47, '0101000020E61000007191781D1F5147C07A282E5A798C37C0', 6, NULL, NULL, NULL, NULL, 1904, NULL, NULL, NULL, NULL, 'BARBUY, Heloisa. A cidade-exposiçao', 11, '2017-08-22');
INSERT INTO public.tb_places2 VALUES (63, 47, '0101000020E61000007191D8171F5147C07A286EBF798C37C0', 3, NULL, NULL, NULL, NULL, 1906, NULL, NULL, NULL, NULL, 'BARBUY, Heloisa. A cidade exposiçao', NULL, '2017-08-22');
INSERT INTO public.tb_places2 VALUES (64, 6, '0101000020E6100000FAD005F52D5147C07DCF4884468C37C0', 17, NULL, 'Club Internacional', NULL, NULL, 1890, NULL, NULL, 1911, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (65, 181, '0101000020E61000000BD28C45D35347C019AE0E80B88737C0', 74, NULL, 'Barra Funda, 74', NULL, NULL, 1897, NULL, NULL, 1897, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (66, 247, '0101000020E6100000AC5791D1015147C045D95BCAF98A37C0', 20, NULL, 'Eden Club', NULL, NULL, 1900, NULL, NULL, 1909, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (67, 247, '0101000020E610000090F7AA95095147C0E7A7380EBC8A37C0', 29, NULL, 'Excelsior', NULL, NULL, 1901, NULL, NULL, 1907, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (68, 320, '0101000020E61000006211C30E635247C00A6AF816D68937C0', 34, NULL, 'Familiar Club', NULL, NULL, 1901, NULL, NULL, 1901, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (69, 283, '0101000020E61000004DD9E907754F47C0732F302B148937C0', 2, NULL, 'Casino Penteado', NULL, NULL, 1902, NULL, NULL, 1904, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (70, 183, '0101000020E6100000B6F468AA275147C0350BB43BA48C37C0', 8, NULL, 'Cercle Français', NULL, NULL, 1902, NULL, NULL, 1905, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (71, 183, '0101000020E6100000485167EE215147C0CD3B4ED1918C37C0', 2, NULL, 'Alhambra, Salão; Centro Republicano Português; Galeria de Cristal', NULL, NULL, 1905, NULL, NULL, 1921, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (72, 21, '0101000020E6100000B4E908E0665147C0EA78CC40658C37C0', 14, NULL, 'Bevilacqua', NULL, NULL, 1906, NULL, NULL, 1909, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (73, 21, '0101000020E6100000EDD79DEE3C5147C0F646AD307D8B37C0', 79, NULL, 'Cercle Français', NULL, NULL, 1906, NULL, NULL, 1925, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (74, 329, '0101000020E61000000684D6C3975147C05DFB027AE18A37C0', 20, NULL, 'Lyra; Nordlyset', NULL, NULL, 1906, NULL, NULL, 1920, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (75, 1, '0101000020E61000005B24ED461F5147C027BEDA519C8B37C0', 23, NULL, 'Artistico, Salão', NULL, NULL, 1907, NULL, NULL, 1907, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (76, 200, '0101000020E610000064744012F65147C05DFB027AE18637C0', 116, NULL, 'Grêmio Dramático e Musical Luso-Brasileiro; Real Cinema; Bijou Bom Retiro', NULL, NULL, 1907, NULL, NULL, 1940, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (77, 247, '0101000020E61000001B2FDD24065147C0B4C876BE9F8A37C0', 45, NULL, 'Itália Fausta', NULL, NULL, 1909, NULL, NULL, 1921, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (78, 69, '0101000020E6100000632AFD84B35147C00806103E948C37C0', 56, NULL, 'Internacional, Salão', NULL, NULL, 1914, NULL, NULL, 1920, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (79, 478, '0101000020E610000046990D32C94C47C0A86DC328088E37C0', 508, NULL, 'Sociedade Italiana', NULL, NULL, 1921, NULL, NULL, 1921, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (80, 336, '0101000020E6100000DF180280635147C00C3B8C497F8B37C0', 20, NULL, 'Polytheama', NULL, NULL, 1892, NULL, NULL, 1914, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (81, 11, '0101000020E6100000B2648EE55D5147C01A36CAFACD8C37C0', 2, NULL, 'Paulista, Cinema; Salão Alhambra', NULL, NULL, 1899, NULL, NULL, 1910, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (82, 6, '0101000020E6100000711E4E603A5147C024456458C58B37C0', 63, NULL, 'Cineographo Lubin', NULL, NULL, 1900, NULL, NULL, 1902, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (83, 1, '0101000020E610000083328D26175147C0AE9FFEB3E68B37C0', 20, NULL, 'Santana', NULL, NULL, 1900, NULL, NULL, 1912, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (84, 6, '0101000020E610000025CCB4FD2B5147C0B1355B79C98B37C0', 52, NULL, 'Iris Theatre; Kinema', NULL, NULL, 1907, NULL, NULL, 1917, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (85, 38, '0101000020E61000002BDA1CE7365147C0FD14C781578B37C0', 10, NULL, 'Novo Seculo', NULL, NULL, 1907, NULL, NULL, 1907, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (86, 526, '0101000020E61000009E7C7A6CCB5247C033182312858A37C0', 65, NULL, 'High-Life; Cinetheatro Brasil; São Carlos', NULL, NULL, 1908, NULL, NULL, 1924, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (87, 181, '0101000020E61000004F965AEF375447C0BF2A172AFF8637C0', 158, NULL, 'João Minhoca', NULL, NULL, 1908, NULL, NULL, 1908, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (88, 53, '0101000020E61000004791B586525147C033A7CB62628B37C0', 10, NULL, 'Mignon Theatre', NULL, NULL, 1908, NULL, NULL, 1909, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (89, 367, '0101000020E6100000EF906280445147C036E675C4218B37C0', 12, NULL, 'Paris Theatre', NULL, NULL, 1908, NULL, NULL, 1909, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (90, 181, '0101000020E61000000395F1EF335447C0C310397D3D8737C0', 151, NULL, 'American Cinema', NULL, NULL, 1909, NULL, NULL, 1909, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (91, 240, '0101000020E61000000B0C59DDEA5147C0276893C3278937C0', 53, NULL, 'Brasil, Cinema', NULL, NULL, 1909, NULL, NULL, 1913, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (92, 50, '0101000020E61000008E588B4F015247C0B2D991EA3B8B37C0', 44, NULL, 'Ideal Cinema', NULL, NULL, 1909, NULL, NULL, 1909, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (93, 20, '0101000020E61000009DBB5D2F4D5147C03E247CEF6F8C37C0', 29, NULL, 'Paris Theatre', NULL, NULL, 1909, NULL, NULL, 1910, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (94, 526, '0101000020E6100000FD169D2CB55247C040FA264D838A37C0', 26, NULL, 'Smart; Cinematographica Brasileira; Cinema Guarany', NULL, NULL, 1909, NULL, NULL, 1921, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (95, 320, '0101000020E6100000E44EE960FD5147C0931D1B81788937C0', 73, NULL, 'Chantecler; Rio Branco', NULL, NULL, 1910, NULL, NULL, 1925, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (96, 169, '0101000020E6100000B345D26EF45347C01557957D578837C0', 53, NULL, 'Royal Cinema', NULL, NULL, 1910, NULL, NULL, 1910, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (97, 336, '0101000020E610000020EC14AB065347C0A5D93C0E838937C0', 371, NULL, 'São João', NULL, NULL, 1910, NULL, NULL, 1910, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (98, 313, '0101000020E6100000CBF3E0EEAC5147C064744012F68937C0', 59, NULL, 'Bijou Aurora; Santa Ephigenhia Theatre; Progredior; The Berlim Cinema; Aurora Theatre; Cinema Aurora', NULL, NULL, 1911, NULL, NULL, 1914, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (99, 313, '0101000020E6100000CBF3E0EEAC5147C064744012F68937C0', 59, NULL, 'Bijou Aurora; Santa Ephigenhia Theatre; Progredior; The Berlim Cinema; Aurora Theatre; Cinema Aurora', NULL, NULL, 1911, NULL, NULL, 1914, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (100, 384, '0101000020E6100000CBD765F84F4F47C00E2E1D739E8937C0', 41, NULL, 'Bijou Oriente; Flor do Oriente; Cinema Estrella; Cinema Oriente', NULL, NULL, 1911, NULL, NULL, 1919, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (101, 440, '0101000020E610000076FEEDB25F5147C0A8C4758C2B8E37C0', 34, NULL, 'Liberdade Theatre', NULL, NULL, 1911, NULL, NULL, 1913, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (102, 386, '0101000020E610000004577902614F47C078B7B244678937C0', 44, NULL, 'Oriente, Pavilhão, Cinema', NULL, NULL, 1911, NULL, NULL, 1913, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (103, 419, '0101000020E6100000B648DA8D3E5247C0D1747632388E37C0', 39, NULL, 'Recreio Cinema, Pavilhão', NULL, NULL, 1911, NULL, NULL, 1916, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (104, 317, '0101000020E6100000A9328CBB415247C0E4BED53A718937C0', 83, NULL, 'Te-Be; Guayanazes', NULL, NULL, 1911, NULL, NULL, 1913, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (105, 37, '0101000020E6100000FC6D4F90D85047C0C901BB9A3C8D37C0', 68, NULL, 'Ambrósio, Cinema', NULL, NULL, 1912, NULL, NULL, 1913, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (106, 336, '0101000020E6100000A9A44E40135347C0F6402B30648937C0', 389, NULL, 'Carlos Gomes, Cinema', NULL, NULL, 1912, NULL, NULL, 1912, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (107, 241, '0101000020E610000042B28009DC5047C03CA41820D18837C0', 11, NULL, 'Eden Cinema; Isola', NULL, NULL, 1912, NULL, NULL, 1921, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (108, 149, '0101000020E61000006BF3FFAA234F47C0E78BBD175F8C37C0', 95, NULL, 'Eros; Heros; Cine Theatro São Carlos', NULL, NULL, 1912, NULL, NULL, 1960, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (109, 207, '0101000020E6100000F73FC05AB55147C0261C7A8B878737C0', 96, NULL, 'Familiar, Cinema; Cinema/Theatro Variedades Familiar', NULL, NULL, 1912, NULL, NULL, 1914, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (110, 340, '0101000020E6100000C25087156E5147C0938AC6DADF8937C0', 5, NULL, 'Flor; Nordisk Cinema; Cinema Theatro', NULL, NULL, 1912, NULL, NULL, 1920, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (111, 198, '0101000020E610000008AF5DDA705247C0E1B721C66B8637C0', 70, NULL, 'Internacional', NULL, NULL, 1912, NULL, NULL, 1913, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (112, 76, '0101000020E610000069723106D65347C070253B36028D37C0', 217, NULL, 'Minerva; Guarany', NULL, NULL, 1912, NULL, NULL, 1919, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (113, 317, '0101000020E61000001D75745C8D5247C023D74D29AF8937C0', 46, NULL, 'Odeon; Éclair Palacio', NULL, NULL, 1912, NULL, NULL, 1914, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (114, 478, '0101000020E61000000E30F31DFC4C47C09A0645F3008E37C0', 492, NULL, 'São João; Bijou Mooca; Internacional', NULL, NULL, 1912, NULL, NULL, 1916, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (115, 80, '0101000020E6100000AC8DB1135E5247C07E01BD70E78A37C0', 50, NULL, 'Skating Palace; Gaumont Palacio; Republica', NULL, NULL, 1912, NULL, NULL, 1978, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (116, 181, '0101000020E6100000F2B0506B9A5347C033198EE7338837C0', 14, NULL, 'Barra Funda, Cinema', NULL, NULL, 1913, NULL, NULL, 1917, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (117, 241, '0101000020E6100000850662D9CC4F47C0C631923D428937C0', 226, NULL, 'Excelsior Theatre', NULL, NULL, 1913, NULL, NULL, 1914, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (118, 208, '0101000020E610000053D0ED258D5147C0AE9FFEB3E68737C0', 6, NULL, 'Marconi', NULL, NULL, 1913, NULL, NULL, 1939, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (119, 178, '0101000020E61000006E13EE95795347C0D4484BE5ED8837C0', 12, NULL, 'Paris Cinema; Bernardino de Campos', NULL, NULL, 1913, NULL, NULL, 1916, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (120, 442, '0101000020E6100000B79C4B71555147C063D4B5F63E8D37C0', 4, NULL, 'Pathé Palacio; Liberdade', NULL, NULL, 1913, NULL, NULL, 1954, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (121, 181, '0101000020E61000006C088ECBB85347C01822A7AFE78737C0', 62, NULL, 'Roma', NULL, NULL, 1913, NULL, NULL, 1929, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (122, 300, '0101000020E610000027C0B0FCF95247C00FF27A30298A37C0', 62, NULL, 'Royal Theatre', NULL, NULL, 1913, NULL, NULL, 1952, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (123, 50, '0101000020E610000097AB1F9BE45147C0F4FBFECD8B8B37C0', 10, NULL, 'Scala; Brasil Cinema; Universal Cinema; Cinema Municipal', NULL, NULL, 1913, NULL, NULL, 1917, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (124, 223, '0101000020E6100000DD7BB8E4B84F47C0B75D68AED38837C0', 47, NULL, 'Paz, Theatro da; Cine-Colombinho; Cine Rialto', NULL, NULL, 1914, NULL, NULL, 1934, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (125, 1, '0101000020E61000005DC0CB0C1B5147C05DBF60376C8B37C0', 52, NULL, 'Boa Vista, Theatro', NULL, NULL, 1916, NULL, NULL, 1947, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (126, 336, '0101000020E6100000227024D0605147C027840EBA848B37C0', 21, NULL, 'Central', NULL, NULL, 1916, NULL, NULL, 1922, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (127, 478, '0101000020E6100000A54E4013614D47C07C2766BD188E37C0', 419, NULL, 'Moderno, Theatro/Palacio', NULL, NULL, 1916, NULL, NULL, 1966, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');
INSERT INTO public.tb_places2 VALUES (128, 6, '0101000020E6100000698B6B7C265147C0C7D79E59128C37C0', 34, NULL, 'Triangulo', NULL, NULL, 1923, NULL, NULL, 1929, NULL, 'AialaLevy_theaters20170710', 12, '2017-09-28');


--
-- TOC entry 3589 (class 0 OID 19677)
-- Dependencies: 206
-- Data for Name: tb_street; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tb_street VALUES (528, 'rua wandenkoik', NULL, '0105000020E610000001000000010200000006000000DF570D61D74F47C0010F9337AB8D37C0683B6F2FD04F47C069041D4E618D37C037C3405ACB4F47C00047A0A5388D37C0D76DB755C54F47C07A1CCB9DFE8C37C0916D859CBD4F47C0004EE134B68C37C068AD86C1D34F47C0042B20B9648C37C0', 582.713840000000005, 1, 1920, 1920);
INSERT INTO public.tb_street VALUES (529, 'rua amelia', NULL, '0105000020E6100000010000000102000000050000005F2C79EF745047C0B12516EC8E8837C0D88B46167A5047C054B69BD7B08837C011FB0E19855047C08E4E1291FC8837C0A7F27C34895047C0A09AD764158937C00D3D8672975047C0BE0780B8568937C0', 301.47190999999998, 1, 1920, 1920);
INSERT INTO public.tb_street VALUES (530, 'avenida vautier', NULL, '0105000020E6100000010000000102000000080000007C5E41EB814F47C05E7DB9F5088837C07D56CB71874F47C0580D5406248837C017DCF8038D4F47C0FCE75780468837C0C56F8C67974F47C041DF56E17D8837C0FF465A209D4F47C0BD82E0E6AF8837C06C086554A64F47C0DFFE643DED8837C0CEC493DDA64F47C071021F0CF38837C04C6A9E0FA74F47C0FE533FCFF68837C0', 726.633000000000038, 2, 1920, 1920);
INSERT INTO public.tb_street VALUES (531, 'rua thiers', NULL, '0105000020E6100000010000000102000000090000009DC38ABC874F47C05A9CB251FE8837C09802AD59874F47C0A767F540F88837C0410835DB834F47C06BD01076E18837C0CB9054147F4F47C04E218FD2C68837C00FADCFBB784F47C095783AFE958837C012D21580724F47C070D702C4748837C04188F4DF6D4F47C0C403FE12508837C0CB7CB41D6B4F47C05D37F5133C8837C094B422AB674F47C076D40C3C238837C0', 824.164390000000026, 1, 1920, 1920);
INSERT INTO public.tb_street VALUES (532, 'rua dos tymbiras', NULL, '0105000020E61000000100000001020000000B000000738FF908075247C03FE0D2F0AB8A37C0C30FCC92FF5147C036D603649F8A37C0357E635DF95147C063BAE471968A37C05B8DA96AF15147C0259710D08A8A37C073C989EDEC5147C0B19A7760818A37C0703024FBE55147C083515172788A37C058F2CACCDA5147C001C2BA6F678A37C0B23B3F7DCE5147C096A03C93538A37C0E2D3F5CAC05147C058ABEF8D3E8A37C0D77267ABB75147C03F9897C6318A37C0A7728C03B15147C0A762ED59278A37C0', 483.081489999999974, 1, 1920, 1920);
INSERT INTO public.tb_street VALUES (533, 'rua da abolicao', NULL, '0105000020E610000001000000010200000006000000D2AD49A9395247C02EAC2E5BF78C37C0C2C65E24375247C0ECFC7A43198D37C0291A61F3315247C00148BAA5768D37C08B9CAF37305247C0778B9AC8958D37C022A6BE19305247C02150CB75A68D37C02815C5432E5247C0AD9F477EBE8D37C0', 511.558710000000019, 1, 1920, 1920);
INSERT INTO public.tb_street VALUES (534, 'rua das palmeiras', NULL, '0105000020E6100000010000000102000000070000002B594BD29D5347C07ED7795C268937C048A594B0AF5347C03D9B63C50A8937C080212B28CF5347C02A475637DB8837C053BAFD96E55347C01E382399B88837C0FA9CDF31EE5347C0195620B2AB8837C051AEF500F35347C00365F686A48837C05DFF8AF5F85347C03D8AF3DC9C8837C0', 0, 1, 1920, 1920);
INSERT INTO public.tb_street VALUES (535, 'avenida sao joao', NULL, '0105000020E61000000100000001020000000300000043385748535147C05ADDAD598B8B37C07770CB513E5147C0F43A7CE4A38B37C0F4A2EC19315147C0D863A7D6B98B37C0', 0, 2, 1920, 1920);
INSERT INTO public.tb_street VALUES (536, NULL, NULL, '0105000020E6100000010000000102000000020000000ABC8773825047C001DEF2B4F08A37C0A4E9AB143A5047C02F9BBE38F28A37C0', 0, 1, 1920, 1920);
INSERT INTO public.tb_street VALUES (537, 'avenida vautier', NULL, '0105000020E6100000010000000102000000080000007C5E41EB814F47C05E7DB9F5088837C07D56CB71874F47C0580D5406248837C017DCF8038D4F47C0FCE75780468837C0C56F8C67974F47C041DF56E17D8837C0FF465A209D4F47C0BD82E0E6AF8837C06C086554A64F47C0DFFE643DED8837C0CEC493DDA64F47C071021F0CF38837C04C6A9E0FA74F47C0FE533FCFF68837C0', 726.633000000000038, 2, 1920, 1920);
INSERT INTO public.tb_street VALUES (538, 'rua conselheiro belisario', NULL, '0105000020E61000000100000001020000000200000010334B694A4F47C0D88754909C8A37C011926F1D204F47C07500E615688A37C0', 0, 1, 1920, 1920);
INSERT INTO public.tb_street VALUES (539, 'avenida do estado', NULL, '0105000020E610000001000000010200000011000000AC0967C5225047C0FFAFD0C6458837C0E0ED80501B5047C08B532613628837C0163CB113145047C0990B7E8A7F8837C0870D9763115047C069D1988A8A8837C00347F78E0F5047C0E8975C16978837C0A4E115110F5047C033ECB08CAE8837C0789A4DBC0F5047C08FCF6667D68837C0D8C694BC115047C05EEB199BE58837C035641A7C175047C038AC732E0C8937C06AFDC4C31A5047C077CD7D871C8937C051EE1FF2235047C05B8317C53F8937C029B14253325047C01432905E7F8937C0ECF3F5C3455047C0F667C48DD48937C0553D5C4F6D5047C076650B4E838A37C0652F93EF865047C0A85203CFEF8A37C037194B33955047C09DAFC7421E8B37C0CDF78969955047C0AEB4A4411E8B37C0', 0, 2, 1920, 1920);
INSERT INTO public.tb_street VALUES (540, 'rua coronel mursa', NULL, '0105000020E610000001000000010200000002000000BECBD32E174F47C00B95E171B08C37C05AD784D3414F47C0A82D435CE08C37C0', 0, 1, 1920, 1920);
INSERT INTO public.tb_street VALUES (541, 'avenida do estado', NULL, '0105000020E610000001000000010200000024000000CF032BBD945047C02B54C3F81B8B37C010D84B7A915047C0E184E4CF3F8B37C0E21AFE48905047C0E7414873708B37C01FC0EB1B8E5047C06F8191F1A28B37C0B25914F68B5047C0EDF5C105DA8B37C04768CB0F895047C00A087AD7E78B37C01AAD8432895047C00A6B37DAFD8B37C09C11F571875047C0117DAE69248C37C0B00D3347805047C061264C42548C37C0BDFDF3B37B5047C01926D3F3568C37C072C883B8755047C0A2249BC9568C37C02AA3D35F6D5047C009967717568C37C015239F186A5047C04DF279835A8C37C0FF7DB7E3665047C0AF26EE8A6A8C37C07E43896A625047C060C4C4AF7B8C37C07F4141DC5C5047C00E571F9A8D8C37C0F9F242CB515047C00DDFA4C8B88C37C01BE7D25F405047C0AA642295048D37C01472A652305047C08AD985FD378D37C016484A8A285047C06961161B578D37C0AA032502235047C020D56DE36C8D37C0B2DF6C04215047C0B8D746577E8D37C0E6E2F859165047C0A9035506AD8D37C0E646E71A085047C0EA2AC01CE58D37C0E3804370FF4F47C0F6797DE4FC8D37C0A0F82EDFF44F47C0DD0232C7128E37C037201835E34F47C0612D6F9D2E8E37C02A0EFFDDCA4F47C02E67F4C7508E37C01E597C6CA84F47C0B61C1D65728E37C01084DF86A14F47C0BCB34DCB768E37C03DED6B8B6E4F47C0EC0F3F83998E37C08B57CF54414F47C07D90A123B58E37C0D7F4A609114F47C0AC20E438D18E37C06A0854C3C44E47C030164929038F37C0FDDF1DC7BB4E47C0697E7B26098F37C078ACDC22A84E47C085A3D152168F37C0', 0, 2, 1920, 1920);
INSERT INTO public.tb_street VALUES (542, NULL, 'sem nome', '0105000020E6100000010000000102000000020000004B7B5290205147C043074712708B37C04DFA592B175147C01407F64A898B37C0', 0, 0, 1920, 1920);
INSERT INTO public.tb_street VALUES (543, NULL, NULL, '0105000020E61000000100000001020000000200000044E3B5ABB85047C0160EBEF2138B37C0A31D25F6955047C0FE087FD71E8B37C0', 0, 0, 1920, 1920);
INSERT INTO public.tb_street VALUES (544, NULL, 'sem nome', '0105000020E61000000100000001020000000200000033D2B008B44F47C021F527D8738737C03A63962C944F47C04CA68AEA848737C0', 0, 0, 1920, 1920);
INSERT INTO public.tb_street VALUES (545, NULL, 'sem nome', '0105000020E610000001000000010200000002000000ED043F53BD4F47C078D7BF10B48737C019992E759D4F47C0E0F312ECC38737C0', 0, 0, 1920, 1920);
INSERT INTO public.tb_street VALUES (546, NULL, 'sem nome', '0105000020E6100000010000000102000000020000003648920F315147C03AB9BF26498D37C021B5D194375147C04E573D706A8D37C0', 0, 0, 1920, 1920);
INSERT INTO public.tb_street VALUES (105, 'rua gravatahy', NULL, '0105000020E610000001000000010200000002000000FF360305035347C04998D479938C37C083117037D75247C0B829161E768C37C0', 145.21875, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (123, 'jardim elydia', 'n.o. (no oficial)', '0105000020E61000000100000001020000000300000062AF586CBE5347C075104BF8388C37C087D58C5ABD5347C05A2531363D8C37C0D803D3E6A65347C07946D574808C37C0', 141.346450000000004, 9, 1930, 1940);
INSERT INTO public.tb_street VALUES (524, 'rua dos estudantes', NULL, '0105000020E610000002000000010200000009000000136BAA2E875047C09083FED5F28D37C0A5B0590A915047C013F017101E8E37C047FD95AA925047C0159D65AA228E37C066BD1F53B25047C0CBC1B24A278E37C0D132BE35E35047C0DFEAB5D92D8E37C0CCEBEC53075147C0B0866782328E37C08CC6F1D32C5147C04F483613378E37C0FFEA7824305147C0F1D1876E368E37C05480525C345147C0761DD04A368E37C00102000000020000005480525C345147C0761DD04A368E37C0826E0A32565147C0FECB3AA8358E37C0', 0, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (13, 'rua wenceslau braz', NULL, '0105000020E610000001000000010200000006000000AFF60D3B0A5147C045DB0753AA8C37C07FA2230C065147C03C36E789AA8C37C095454C68025147C0570A31DBA98C37C035B665D8FC5047C0C1FD0CF6A88C37C0C53F2D86DD5047C0CF9A1389A28C37C06C7435BBC35047C0F37FF7149D8C37C0', 220.918020000000013, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (79, 'praça do correio', NULL, '0105000020E6100000010000000102000000070000008562C8536C5147C0802127294E8B37C01FE9EB85695147C0DF0DFA77558B37C096B1E318635147C0CEBD9E675C8B37C03AF98E17625147C08158ED2D638B37C0AD2E9FF0665147C0DDB819D1748B37C0C4057D43745147C0D99E5BA5658B37C08562C8536C5147C0802127294E8B37C0', 179.16425000000001, 6, 1920, 1940);
INSERT INTO public.tb_street VALUES (95, 'rua maria borba', NULL, '0105000020E610000001000000010200000002000000982D7C56105347C057661F4F118C37C01769E545EF5247C08A6C3C0C138C37C0', 103.066569999999999, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (128, 'rua do gazometro', NULL, '0105000020E61000000100000001020000000200000099544046C54F47C02D1EFED3608B37C0935BC57C924F47C0D2458642568B37C0', 159.250460000000004, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (129, 'rua vasco da gama', NULL, '0105000020E61000000100000001020000000300000009F8425BA94F47C0056BD0045B8B37C09565FB19A94F47C06EDE3BDE608B37C0FD4C4FEF984F47C0AFE7E749C58B37C0', 186.929560000000009, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (165, 'rua da alfandega', NULL, '0105000020E61000000100000001020000000700000079913125C64F47C0E082E4A2548B37C046D8D9E9C74F47C0E29D8104508B37C0263A7476CD4F47C05057D5D4338B37C070D2C1C8D44F47C051D556630F8B37C08AF4DA09E64F47C05A9728E9B58A37C037591E63F64F47C0D708F9CE618A37C02979EB13F74F47C067D3B8805E8A37C0', 443.333889999999997, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (166, 'rua sergio lima', NULL, '0105000020E6100000010000000102000000020000005C2E9D6CF85347C0042199754C8737C0244A6711CF5347C020F4646A938737C0', 176.031020000000012, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (163, 'rua domingos', NULL, '0105000020E6100000010000000102000000050000000E968C54B44E47C05009E0894A8C37C05CD908B9B74E47C08C926335408C37C028E602B4C84E47C09A3051A60F8C37C0725FAD5BD74E47C07E7769AAE38B37C0C9306191144F47C0CA95A6DA308B37C0', 562.590779999999995, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (222, 'rua jorge miranda', NULL, '0105000020E61000000100000001020000000400000053BDF4F6E95047C0C3EA0028F08737C0093C1D14995047C00511D901198837C0DC0C00B7715047C0780760962F8837C0999BCF64265047C0B759B251568837C0', 633.468219999999974, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (224, NULL, 'sem nome', '0105000020E610000001000000010200000004000000AFD2D125AA5147C006F40462F58837C0C84E0A64855147C0D8EF4C27F98837C0AB9388267F5147C046C9BAF6C68837C0A2B53A217F5147C0ED9392FAC68837C0', 201.798859999999991, 0, 1920, 1940);
INSERT INTO public.tb_street VALUES (50, 'rua barao de itapetininga', NULL, '0105000020E610000001000000010200000003000000A05BC31BC45147C088653661C98B37C05549330FFF5147C090D4DD786C8B37C0EDF0256C255247C0C833479A2F8B37C0', 399.336680000000001, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (291, 'rua dr pacheco e silva', NULL, '0105000020E610000001000000010200000005000000E7414445D74E47C0BB5B79B8FA8737C09D2515FCD94E47C02FD3700AF48737C0E95658F2F24E47C095B41454AB8737C0F7A2105CFA4E47C009AA67F9948737C0BBAE47D1004F47C07EE1DFE4868737C0', 234.969529999999992, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (394, NULL, 'n.o. (no oficial)', '0105000020E6100000010000000102000000020000006759E3FC694F47C01C5514C5F28937C0389E0BDE3B4F47C08F0026B3EF8937C0', 143.805020000000013, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (385, 'rua elisa whitacker', NULL, '0105000020E610000001000000010200000007000000B73ED923A64F47C03B660BE5358937C050DC9FA6A24F47C0C1BE3655358937C0EF5C20D09A4F47C0A46744C4348937C06B06AC0E904F47C0177DD0DD358937C0565119DD8B4F47C0EE7831F4358937C0C39BF8CD684F47C093393C41348937C048E202C8374F47C01A907371328937C0', 344.066269999999975, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (388, 'rua julio ribeiro', NULL, '0105000020E61000000100000001020000000500000055DCBF5A694F47C0EBA19DDA8A8937C01E1C0FFC664F47C09E557FB98B8937C0DF24BA543A4F47C0ADD0F38B878937C00CD1DA40224F47C064CB3C7C858937C0D2C3773F0F4F47C01FFD3E96838937C0', 281.26715999999999, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (395, NULL, 'n.o. (no oficial)', '0105000020E610000001000000010200000003000000AD91A6F6514F47C0C640E5510D8A37C0F7B95477514F47C0226E3C23F18937C0AF523D31514F47C0DFE77E7ABE8937C0', 133.258499999999998, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (396, NULL, NULL, '0105000020E610000001000000010200000002000000FAC93E4A514F47C0B8E5468DD08937C0CC5DA5CA694F47C0C6CAC80DD38937C0', 76.4641400000000004, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (452, 'rua dr lund', NULL, '0105000020E6100000010000000102000000020000006B1248B7045147C0FF805CD7548E37C0AB44103FE35047C0478E3D0E5C8E37C0', 104.988470000000007, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (164, 'rua cruz branca', NULL, '0105000020E610000001000000010200000007000000AC8DBF99144F47C0ACA0E7E4308B37C0F82BACE7214F47C0409BE1B7098B37C0DF021E3D3A4F47C01536D833C48A37C06077D15D3D4F47C0B3539593BA8A37C0DDBB1090494F47C0D811C46F9E8A37C0D4659B75594F47C0C5D0C7FB7B8A37C0F26D9A386D4F47C0429078E6558A37C0', 463.26715999999999, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (24, 'rua vinte e cinco de marco', NULL, '0105000020E61000000100000001020000000F00000029AB99DBE55047C060FDF1EF148A37C0567B209CE75047C0D061CBED618A37C06CE7B2F7E75047C0616C66FF9C8A37C0F94E4291E95047C0F521CD8BB28A37C04E1846EAEC5047C00353A624D38A37C0441A36F9F45047C0BBA0CC37288B37C02A77EA6CF75047C02BADB314448B37C04FF6131DF85047C0BBFD56234C8B37C0DCDC6EE2F75047C04977555A538B37C0FDD8AA8BE95047C040C1CE1C958B37C01BA39F54DF5047C0BFA3A999BE8B37C02C12F4CBCB5047C086942F9C108C37C06BE8D439B05047C0148F487F7E8C37C0D639C668A75047C05FB6AE4CA08C37C07BDE5D6FA65047C004168605A38C37C0', 1164.11193000000003, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (58, 'rua de sao francisco', NULL, '0105000020E610000001000000010200000008000000D30B37B2B65147C0B71FB6D76D8C37C01D174467B65147C0E503EE38748C37C0D60E2FE5A55147C0CBD96325948C37C0195597E49F5147C0CF63C5EE9F8C37C0150183709A5147C0C67BF86DA28C37C0060F3CEA8F5147C089BD88F0A78C37C04221A8F9885147C0A12B0721AC8C37C0C4719FA1865147C08F698A86AF8C37C0', 196.315320000000014, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (180, 'rua camerino', NULL, '0105000020E610000001000000010200000002000000EBE96A459E5347C07DD7A942568737C00DAC1F24885347C07E6FD6A38E8737C0', 117.613650000000007, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (5, 'travessa porto geral', NULL, '0105000020E6100000010000000102000000020000001DAFA031145147C09098812B478B37C078A55BEA065147C0C3D83233698B37C0', 70.8427700000000016, 3, 1930, 1940);
INSERT INTO public.tb_street VALUES (59, 'rua sen paulo egydio', NULL, '0105000020E610000001000000010200000004000000DE9E145C715147C015AD676FB38C37C04D542EF1665147C0DE66BD9B9B8C37C09F32F25C625147C027623247908C37C05EA55FFA615147C0CE27D8A0898C37C0', 86.896569999999997, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (60, 'largo do ouvidor', NULL, '0105000020E610000001000000010200000002000000D27C9E15895147C06FC92510AC8C37C043CD4985825147C02F6BBEF6868C37C0', 65.9436299999999989, 4, 1920, 1940);
INSERT INTO public.tb_street VALUES (61, 'largo de sao francisco', NULL, '0105000020E610000001000000010200000009000000C4719FA1865147C08F698A86AF8C37C03F56C93E835147C0D1A14271AD8C37C01601B250735147C0E4FD90DBB58C37C041E02D77715147C0299F2A5FB38C37C0180B1E54765147C043BD48D1C88C37C07E780E31855147C0029ECDB8BA8C37C0437A4B28875147C029724592B58C37C0E043B8AD875147C008E17148B18C37C0C4719FA1865147C08F698A86AF8C37C0', 183.722939999999994, 4, 1920, 1940);
INSERT INTO public.tb_street VALUES (62, 'rua christovam colombo', NULL, '0105000020E610000001000000010200000004000000180B1E54765147C043BD48D1C88C37C005CB97AE785147C09BC162CBD48C37C07898ED8F7E5147C0D289EBD7ED8C37C02A69C97A7F5147C08329D317F48C37C0', 78.5914700000000011, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (63, 'rua asdrubal do nascimento', NULL, '0105000020E6100000010000000102000000060000008AA4DB88BF5147C0E34BB499B18C37C05A7A09C8BA5147C03322BFE2C28C37C0D01B5CA6B55147C0DFB2A3EFE08C37C0015DFCFBA55147C03524CFC03B8D37C0458095588F5147C076C0FEE0C88D37C08751DA0E8F5147C0481A869ACF8D37C0', 507.122839999999997, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (3, 'rua joao briccola', NULL, '0105000020E610000001000000010200000003000000944E83CE315147C02490829AB98B37C0AA6B7AC62D5147C0E7D8008DB78B37C0A0D8B93A1A5147C010CC4C4A908B37C0', 103.090639999999993, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (10, 'rua benjamin constant', NULL, '0105000020E61000000100000001020000000500000041E02D77715147C0299F2A5FB38C37C01F260CA1625147C0879E2143BC8C37C0A96923174A5147C0796B9405C78C37C09C56B4D13A5147C0F7A709D4CC8C37C061517C76295147C063A512B2D28C37C0', 230.757949999999994, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (44, 'travessa grande hotel', NULL, '0105000020E610000001000000010200000004000000C0F42D304F5147C01C3C14D0DF8B37C05707F161525147C02F4F73EBDD8B37C0F545333F655147C0C51F0642CB8B37C064510C6E675147C0E4C60C2BC98B37C0', 84.8222800000000063, 3, 1920, 1940);
INSERT INTO public.tb_street VALUES (47, 'rua anchieta', NULL, '0105000020E61000000100000001020000000600000071088BDA1E5147C08A683F4F748C37C0B15B60091B5147C09F229211718C37C0F1662708185147C0312C48A06E8C37C0D13866EE125147C0866C1A396A8C37C0702595320D5147C0DECC1600668C37C0AC45CE49095147C01B69F52C638C37C0', 73.1928699999999992, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (49, 'viaduto do cha', NULL, '0105000020E610000001000000010200000003000000EF44F414845147C07435D66E2F8C37C00B8380A8895147C02A100FB0288C37C0A05BC31BC45147C088653661C98B37C0', 263.900059999999996, 5, 1920, 1940);
INSERT INTO public.tb_street VALUES (66, 'largo da memoria', NULL, '0105000020E61000000100000001020000000B000000024F6153D35147C0B364B0884F8C37C0C660D5CEC85147C0F92F761B5B8C37C0DA20D568C35147C05E9E639B4E8C37C086370A7CB85147C0EEAA20415E8C37C0704AE592B65147C01F2108AA6D8C37C0DE9C3900BF5147C02145BC6B738C37C041D19747C55147C0E58AF0856E8C37C0D48F21C9BF5147C099CC94226B8C37C05E1B7931C15147C051EB0638658C37C04E1E6360C35147C010B220CF618C37C0524CEF49D35147C0A24158704F8C37C0', 280.60302999999999, 4, 1920, 1940);
INSERT INTO public.tb_street VALUES (43, 'rua do thesouro', NULL, '0105000020E610000001000000010200000003000000CB014467375147C0E85CBE405B8C37C0EB31DD53305147C036F7926B578C37C042D4B3A4245147C0CA38983C528C37C0', 60.4230000000000018, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (67, 'rua joao adolpho', NULL, '0105000020E6100000010000000102000000070000009A9B2AD3F85147C029E6B013BD8C37C039757191FE5147C02D04846BA88C37C0CA6AD116005247C09081CE4C9C8C37C0DB728B9A005247C0E803CB5A938C37C0D87B533FFE5147C0A2C4351B878C37C082A1F44BF95147C0F9D6BF2E768C37C0F137F4A0E85147C061A9CB093B8C37C0', 242.537740000000014, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (68, 'rua alvaro de carvalho', NULL, '0105000020E6100000010000000102000000070000002CB9CF2E4C5247C073F808CAA48C37C02DA330EA465247C06EEC27E8A08C37C0D65D2F71325247C00F5A60F38C8C37C065E3D77A1E5247C044E62C90788C37C092576ABB145247C030B61BFF6E8C37C06A0B1D1F005247C026EDEE70698C37C02606E611F55147C0638B382F678C37C0', 294.885809999999992, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (1, 'rua boa vista', NULL, '0105000020E6100000010000000102000000060000006886122F2D5147C05FFC12B94B8B37C03B91FEAE275147C060E47F81618B37C04F7F286C1A5147C0472170428E8B37C02D9E9E76165147C0021670E5B78B37C03AA30F8D135147C0EAE30F1FE08B37C078040783115147C030360FB4FC8B37C0', 315.508240000000001, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (45, 'praça antonio prado', NULL, '0105000020E6100000010000000102000000080000000BA8F5393D5147C02D8C6F3D9E8B37C0AEFD43CF365147C06563709AA88B37C012F3DA0C305147C0431C421EB48B37C0AC28A3822F5147C09FC42A6FB88B37C0944E83CE315147C02490829AB98B37C03B46608D345147C07357D2BFB68B37C0074EB57B3F5147C01F0641D7A68B37C0CE95B54F3D5147C0D71F53909E8B37C0', 138.910449999999997, 6, 1930, 1940);
INSERT INTO public.tb_street VALUES (145, 'rua mello barreto', 'n.o. (no oficial)', '0105000020E610000001000000010200000003000000C54E91DE8A4F47C0ABC258AAB88B37C023108CB7884F47C03D9BB85DBD8B37C055AC2E0A5D4F47C0756BBCD84C8C37C0', 288.436919999999986, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (146, 'rua wandenkoik', NULL, '0105000020E61000000100000001020000000600000081F2D8F4E04F47C0C35394F8088E37C05E3C4EE7D64F47C07FF897D1AD8D37C036528279D24F47C03A25956A818D37C0B7100C6DC94F47C02BF3A698288D37C0A4DD062FC54F47C08472448AFE8C37C00749A122BE4F47C0D15E0D2EB68C37C0', 582.713840000000005, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (158, 'rua aristides lobo', NULL, '0105000020E6100000010000000102000000020000005F2E927F1A4F47C061F08575328C37C01501E8C7FA4E47C0FA3C41468E8C37C0', 183.952940000000012, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (183, 'praça marechal deodoro', NULL, '0105000020E6100000010000000102000000080000001DD673C8F85347C07DCC20A48D8837C07B0BDB11DC5347C0FFE00088AC8837C01ED253E1A95347C00374F672E58837C0B1A91CD4965347C075314FD2F98837C05B1E25759D5347C0D78E6AC2268937C024F6E3FBAF5347C0220C3B8A0B8937C0356182BDE25347C0313B791FBD8837C00D036CE8F85347C0C8A1A6E99C8837C0', 802.620509999999967, 6, 1930, 1940);
INSERT INTO public.tb_street VALUES (197, NULL, 'n.o. (no oficial)', '0105000020E6100000010000000102000000020000005003398CF25247C083AF1BD9278737C0D2937AD7F15247C043CC7E324E8737C0', 64.8418300000000016, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (210, NULL, 'n.o. (no oficial)', '0105000020E61000000100000001020000000200000085E3C0C86D5147C01B949070C88737C0A97101CF505147C031E1CF5AD78737C0', 93.7458599999999933, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (219, 'rua deocliciana', NULL, '0105000020E610000001000000010200000003000000664410AB865047C0D64D359A4E8737C0531BF2D6735047C0571F6F5C5C8737C03B1443F6505047C012A22CFF6F8737C0', 176.752669999999995, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (231, 'rua d anna rosa', NULL, '0105000020E6100000010000000102000000040000000B0A6255AD5047C04F8AE549048D37C0FDA34EB6A05047C0820A36371B8D37C00B4C49B7955047C087A157082E8D37C04A4B101C925047C01514B43F348D37C0', 117.328670000000002, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (232, 'rua silveira martins', NULL, '0105000020E6100000010000000102000000060000007A9AC2AEBA5047C0CC7034EF1B8D37C01AA57762BE5047C0A4CAC17F228D37C026626C3FC25047C043222976298D37C0456B15CAC55047C0ED40CFEA2F8D37C044A062A5C85047C0505643FE348D37C052A55022CA5047C0F83AAB87378D37C0', 67.0269700000000057, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (261, 'rua conselheiro dantas', NULL, '0105000020E610000001000000010200000005000000B11D6AF3B34F47C0A66F8DEC748737C0C1292595B14F47C07601DF88768737C0FE2EC043944F47C0D2FA2215858737C020653621554F47C0963D7C79A58737C0BA3356181E4F47C0C1F92418C18737C0', 484.428470000000004, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (262, 'rua camomil', NULL, '0105000020E610000001000000010200000003000000F329703ABD4F47C05BA7833DB48737C08E51226A7B4F47C0B3B638FBD48737C09C8C8D105F4F47C03F71373EE48737C0', 304.45177000000001, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (265, 'rua itaquy', NULL, '0105000020E610000001000000010200000004000000E09E71A8AB4F47C09EC3107E358737C0206991AE8A4F47C062944EF7458737C0F0758D9F684F47C0C78CD39B588737C0A16C087C054F47C0E74A3EEF898737C0', 537.163180000000011, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (271, 'rua alexandrino pedroso', NULL, '0105000020E610000001000000010200000005000000C6756AB9D14F47C056C9530B3E8837C09A3ACCC5B14F47C0C6A318C44E8837C00DE78102914F47C04CE20082608837C061EE97764E4F47C07D321709818837C0E970187D434F47C0FECA4D58878837C0', 460.254680000000008, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (272, 'rua victor hugo', NULL, '0105000020E6100000010000000102000000050000009AF0083DDD4F47C00DBD6E76898837C0C45EF4EFBC4F47C025BB62B2998837C01ECDD84F9C4F47C08C82A790AA8837C044D3118F7E4F47C025450A55BA8837C04137A35E584F47C011EF92C3CD8837C0', 429.826540000000023, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (273, 'rua thiers', NULL, '0105000020E6100000010000000102000000090000009DC38ABC874F47C05A9CB251FE8837C09802AD59874F47C0A767F540F88837C05816BFD47D4F47C07E2DD9B3BA8837C0C7DC09BA724F47C00109714F6F8837C0D92AB991674F47C0C49AD981238837C09C8C8D105F4F47C03F71373EE48737C037EE0C36554F47C04361CB6EA58737C0A883F5F64B4F47C04E4737DE668737C04DAF05AA424F47C04E9483A0278737C0', 824.164390000000026, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (280, 'rua paganini', NULL, '0105000020E6100000010000000102000000030000003EB1492A374F47C058554483B48737C0D912D9E02D4F47C0E9315FD6758737C0DA941910234F47C04C6E87332D8737C0', 237.079689999999999, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (135, 'rua azevedo junior', NULL, '0105000020E6100000010000000102000000030000008AA58363005047C0EE77DF46FB8C37C00224CF09DB4F47C08A5BB437FD8C37C09EEC2270A14F47C057D1EBB3008D37C0', 295.982970000000023, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (284, 'rua dr ornellas', NULL, '0105000020E610000001000000010200000003000000B5CDCBB82D4F47C0ED728A913B8837C0107342D9274F47C06F69F9A23B8837C07F2BD407D94E47C0E8217B69FE8737C0', 284.813269999999989, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (287, 'rua cel silva gomes', NULL, '0105000020E610000001000000010200000002000000C4289756224F47C01AEB2E21CE8737C054AB6F82094F47C0825897C7E28737C0', 84.8760699999999986, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (315, 'rua frederico steidel', NULL, '0105000020E6100000010000000102000000040000003D53863FE75247C0B1BBDC3ECB8937C0F90232F7E85247C026AB8DDBD08937C0D377CDEADF5247C0CE4C3F6D338A37C03E54F493D65247C022B1B0909C8A37C0', 359.862829999999974, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (326, 'travessa sao joao', NULL, '0105000020E6100000010000000102000000020000001C7E2712395247C0F1E76A93C38A37C09D20F4D4235247C00F09837C9F8A37C0', 89.9949000000000012, 3, 1930, 1940);
INSERT INTO public.tb_street VALUES (327, 'rua dos tymbiras', NULL, '0105000020E61000000100000001020000000B00000082DEAD1A285247C0581F9033DE8A37C0DDD1DF76255247C0B6E9FFEEDA8A37C03C3F29E5115247C05D946FD2BB8A37C01DF063900E5247C0B953BE91B78A37C013353E6B075247C0AD56E766AC8A37C0530E477DF35147C046D5D4C58D8A37C06093CB05F05147C002D7D55A878A37C0D6C8D4CDDD5147C0ED4D36636C8A37C0D99D6A62D25147C08B933F225B8A37C08E3248A1C55147C03CF04920478A37C0A7728C03B15147C0A762ED59278A37C0', 483.081489999999974, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (348, 'rua miguel carlos', NULL, '0105000020E6100000010000000102000000030000006B0A4B51B85047C07BD79CA3038A37C01313357AAE5047C0E5CBE848088A37C03F44383A845047C044EC1A981C8A37C0', 167.701799999999992, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (356, 'rua francisco sa barbosa', 'n.o. (no oficial)', '0105000020E610000001000000010200000002000000150D11EC5D5047C0B98D255FC38837C0F36BC7F43F5047C0C810009FD38837C0', 97.3310599999999937, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (359, 'rua dr. claudio de souza', 'n.o. no oficial', '0105000020E610000001000000010200000004000000404862565D5047C0F339F922608937C0FD0C2ED8545047C0FD914467658937C0D01458873E5047C0ED6FC73D768937C00621984A315047C09548B924808937C0', 147.567389999999989, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (352, 'rua mercurio', NULL, '0105000020E61000000100000001020000000200000084C81B8E905047C02C2DE1B0558A37C0FF40929F6D5047C0F511AA618B8A37C0', 141.701060000000012, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (360, 'rua da economisadora', 'n.o.(no oficial)', '0105000020E61000000100000001020000000200000042E8FA274A5047C0B8C5D2776D8937C0504881AD365047C0CFEB5B02168937C0', 159.769689999999997, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (361, 'rua dr. luiz pisa', 'n.o. (no oficial)', '0105000020E6100000010000000102000000020000003DC4046D3C5047C0362391D12F8937C065CC8EE1235047C0281BD5B0428937C0', 82.8657299999999992, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (362, 'rua dr. gabriel dias', 'n.o. (no oficial)', '0105000020E6100000010000000102000000020000002BB4982C415047C0A1A89123458937C0CEBC64AB285047C0A5074818578937C0', 82.1660799999999938, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (363, 'rua leoncio gurgel', 'n.o. (no oficial)', '0105000020E610000001000000010200000002000000FF1E7291455047C008CB2ADE588937C0093367B12D5047C09DE624D56A8937C0', 80.3518300000000067, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (364, 'rua vinte e cinco de janeiro', NULL, '0105000020E61000000100000001020000000400000065A294608C5047C0D64C6584248937C0353230E5995047C00F407CB91C8937C0D9DBB2C0D75047C0A27F7567108937C0DB56636D075147C05C80FF93088937C0', 387.154429999999991, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (366, 'largo do pary', NULL, '0105000020E61000000100000001020000000600000024F7E1E14D5047C01C655B43428A37C0A0F923D63C5047C025C969D1458A37C08AB5E7AA3E5047C04EBF50B62A8A37C0D0E14336425047C05A3D3A27168A37C0B69B0DF84F5047C0B7CB25FC3B8A37C03E9ADCEB4D5047C06A5DF667428A37C0', 225.625, 4, 1930, 1940);
INSERT INTO public.tb_street VALUES (373, NULL, 'n.o. (no oficial)', '0105000020E610000001000000010200000002000000BEF6B397DD5047C0AEDEEDFA9B8937C0C628217DB05047C0BF1495E9B18937C0', 145.349860000000007, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (370, NULL, 'n.o. (no oficial)', '0105000020E6100000010000000102000000020000006A81BFD2C05047C054D0C8CB878937C03901DFE3B95047C0571EC0845B8937C0', 77.8785299999999978, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (371, NULL, 'n.o. (no oficial)', '0105000020E61000000100000001020000000500000065B8A8BCE65047C0659882757D8937C0715BD666BF5047C02501E106918937C0EDBBC66CC15047C05A1DFA719E8937C0A78D8723C05047C02DDE37AA9F8937C0A50D8C9CAE5047C013F07F9FA88937C0', 211.669019999999989, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (372, NULL, 'n.o. (no oficial)', '0105000020E610000001000000010200000003000000EDBBC66CC15047C05A1DFA719E8937C0DB2B7BF5C65047C043AEB1CB9C8937C08BE5E277E65047C048B471D28D8937C0', 118.860849999999999, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (510, 'praça eduardo rudge', NULL, '0105000020E6100000010000000102000000020000007F43C98DDA4E47C0DAD06698FF8737C013D0DC3DCE4E47C0D456B0DF1A8837C0', 59.9738400000000027, 6, 1930, 1940);
INSERT INTO public.tb_street VALUES (387, NULL, 'n.o. (no oficial)', '0105000020E6100000010000000102000000020000001FDE400A864F47C078B34EFF898937C0F52A2F55694F47C081F3CA38878937C0', 89.5759400000000028, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (391, 'villa hortencia', 'n.o. (no oficial)', '0105000020E610000001000000010200000003000000F9B19109F14E47C053C21CCD2A8A37C03125AD99FB4E47C02B724779088A37C05B67B322FC4E47C069997B76048A37C0', 73.6749599999999987, 11, 1930, 1940);
INSERT INTO public.tb_street VALUES (266, 'rua jurua', NULL, '0105000020E6100000010000000102000000040000006DA853C4684F47C0FC94B287588737C0EFAE7F20664F47C0ACA25D37478737C088877A03654F47C07784EB35448737C0B0AEE1344C4F47C0CDC84213288737C0', 127.298140000000004, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (403, 'rua antonio carlos', NULL, '0105000020E610000001000000010200000003000000B9E9CF2AE35347C053C87DFEE98E37C07C3DC91AE65347C0328AE174E78E37C0A2E30332F95347C066CE7F74CF8E37C0', 82.0982499999999931, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (397, NULL, 'n.o. (no oficial)', '0105000020E610000001000000010200000003000000F50D96F5474F47C05EDF91C10B8A37C0661239A5474F47C00D57E07BF08937C0146722DB464F47C04897776DC58937C0', 118.895610000000005, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (412, 'rua araquan', NULL, '0105000020E6100000010000000102000000020000004DF854CC085347C0CA9F2C37738D37C029617A81025347C01D1C1B8A998D37C0', 67.6645800000000008, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (422, 'travessa lettiere', 'n.o. (no oficial)', '0105000020E6100000010000000102000000030000008156A2DCDF5147C0033085D8978E37C032A75A73D85147C0B6C04469A28E37C09EAE5D3DE75147C084A3530AC28E37C0', 99.7557999999999936, 3, 1930, 1940);
INSERT INTO public.tb_street VALUES (424, 'rua vicente prado', 'n.o. (no oficial)', '0105000020E610000001000000010200000005000000E4AD35D2265247C09020AED9518E37C02B5ABFD71B5247C07BE8447E658E37C09D75D517045247C0D7087EEF928E37C04B475F03005247C0CCE3F059998E37C036863D76FC5147C0186ED67EA28E37C0', 190.014949999999999, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (465, 'travessa amalia franco', 'n.o. (no oficial)', '0105000020E61000000100000001020000000200000021E47D17C45047C0C159094D528E37C00EA00D56C55047C0F5BFB1D7298E37C0', 68.4783099999999934, 3, 1930, 1940);
INSERT INTO public.tb_street VALUES (428, 'rua da abolicao', NULL, '0105000020E610000001000000010200000006000000D2AD49A9395247C02EAC2E5BF78C37C0C2C65E24375247C0ECFC7A43198D37C0291A61F3315247C00148BAA5768D37C0DFFF1BE02D5247C09E7919B2CF8D37C01F55F1902D5247C0F23C0841EE8D37C0E6C59A7E2C5247C083308FEA248E37C0', 511.558710000000019, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (429, 'jardim heloisa', 'n.o. (no oficial)', '0105000020E6100000010000000102000000020000009B7749462D5247C0E62A1921FD8D37C00DFEFB704D5247C03823576AFF8D37C0', 100.295090000000002, 9, 1930, 1940);
INSERT INTO public.tb_street VALUES (433, 'travessa grass', 'n.o. (no oficial)', '0105000020E610000001000000010200000003000000CB58F4579B5147C04251D66A158D37C0050519E3A35147C0480F82EB368D37C08B9E034DA65147C06D5412EB398D37C0', 71.6282900000000069, 3, 1930, 1940);
INSERT INTO public.tb_street VALUES (435, 'travessa noschese', 'n.o. (no oficial)', '0105000020E61000000100000001020000000E000000422A0DA0CC5147C0CD432AD1E58C37C04302A95BCA5147C04CC4A2A7E98C37C0BF48DF16C95147C014941330EE8C37C0A4F55A56C75147C0CC70C736F58C37C0540B1791C65147C0291BFDA4F98C37C097220A57C35147C060B37D320C8D37C07682A146C25147C0362BB68D118D37C0D902677CC15147C0D48292DB128D37C04FC19896C05147C09F726AE0128D37C0882606A4BF5147C0513F87E5128D37C002C2B256BE5147C03B22E3181A8D37C0C02101E9BB5147C09405F4ED1F8D37C0CF9B026EBB5147C0C515E0E1228D37C0F545D6CAB95147C0E0DCF24B2C8D37C0', 137.924679999999995, 3, 1930, 1940);
INSERT INTO public.tb_street VALUES (436, NULL, 'n.o. (no oficial)', '0105000020E61000000100000001020000000300000038D7C8FABC5147C0DFC7705C1D8D37C00C550FFCBA5147C07DF568711B8D37C05DD17BE7AC5147C085A609A3138D37C0', 52.8212600000000023, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (494, 'rua alexandre levy', NULL, '0105000020E610000001000000010200000002000000D3D06974594F47C087E7BC72A78E37C09AC5EF68664F47C00B0F09C3EA8E37C0', 120.698160000000001, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (437, 'rua genebra', NULL, '0105000020E610000001000000010200000004000000AD69F1FAE25147C01F89B9F5078D37C0217DB446E15147C0744FD3050E8D37C0FDD36907E15147C089A84B98358D37C07C6D33A8E05147C011A14933C88D37C0', 326.159299999999973, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (454, 'becco dos afflictos', NULL, '0105000020E610000001000000010200000002000000F110F6823A5147C0D6A2F1215B8E37C05D5FEF78395147C077DA4132368E37C0', 62.5006800000000027, 8, 1930, 1940);
INSERT INTO public.tb_street VALUES (456, 'rua lins', 'n.o. (no oficial)', '0105000020E610000001000000010200000003000000AAA72F2FB95047C096320A54B58E37C0DDB07AF7C85047C0555AAC77B78E37C0258213B4D15047C09101890DB98E37C0', 76.6553200000000032, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (459, 'villa estudantes', 'n.o. (no oficial)', '0105000020E610000001000000010200000003000000022CC9FC9D5047C08FAD1E1B678E37C0D895CDD69F5047C0B8F439E83C8E37C05A97FE02A15047C02C4F0DC3248E37C0', 112.507429999999999, 11, 1930, 1940);
INSERT INTO public.tb_street VALUES (460, NULL, 'n.o. (no oficial)', '0105000020E610000001000000010200000003000000772962DC9F5047C05F8252753C8E37C031822A06945047C0DE2B11113A8E37C0660DF241905047C0B196375E3D8E37C0', 50.0932099999999991, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (461, NULL, 'n.o. (no oficial)', '0105000020E6100000010000000102000000030000008139B67B8B5047C0BB956EF02A8E37C0660DF241905047C0B196375E3D8E37C0C7FC16C4935047C0B4F720424B8E37C0', 60.404910000000001, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (462, NULL, 'sem nome', '0105000020E610000001000000010200000004000000EFFEC7148C5047C0E7D0463F2D8E37C08E4239B48F5047C0951FAB722A8E37C0B5DEEEED905047C0AA8B8168288E37C0DA58CB06935047C0462BDFB7228E37C0', 29.007200000000001, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (463, 'travessa sao paulo', NULL, '0105000020E6100000010000000102000000050000009BF950E9A85047C0BC1701F6728E37C0359CCB6FA95047C06017B5DE5D8E37C0F15D8186AA5047C0D7C40ADD398E37C0858245F5AA5047C0F072145E2D8E37C03FE7670AAB5047C02931383A268E37C0', 129.845689999999991, 3, 1930, 1940);
INSERT INTO public.tb_street VALUES (464, 'travessa rugero', 'n.o. (no oficial)', '0105000020E6100000010000000102000000020000002FE2C7EEBC5047C0BB0510B7288E37C02308F259BA5047C0317259D26C8E37C0', 115.370410000000007, 3, 1930, 1940);
INSERT INTO public.tb_street VALUES (466, 'travessa dos estudantes', NULL, '0105000020E610000001000000010200000002000000768BF5E1D65047C04F3D57322C8E37C0B003CFAED45047C01D7CD8055C8E37C0', 81.1090800000000058, 3, 1930, 1940);
INSERT INTO public.tb_street VALUES (468, 'villa conde de sarzedas', 'n.o. (no oficial)', '0105000020E610000001000000010200000002000000C54CBD38E45047C077460429928D37C063F54CE3E55047C03851D5A7A88D37C0', 38.3666199999999975, 11, 1930, 1940);
INSERT INTO public.tb_street VALUES (469, NULL, 'n.o. (no oficial)', '0105000020E61000000100000001020000000500000063F54CE3E55047C03851D5A7A88D37C036BEFAF4E95047C05FD6B05CA78D37C0D358A4A8F65047C0538A0B0EA18D37C002C27B04F85047C0C569E951A18D37C0C32FD2E8FF5047C0B53DEE569D8D37C0', 83.5989600000000053, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (471, 'villa carolina augusta', 'n.o (no oficial)', '0105000020E610000001000000010200000003000000F67D5FF6D05047C0D33F0651A68D37C0760BD273C25047C0B9827445AE8D37C0734285DCA85047C0F5426030BB8D37C0', 129.831690000000009, 11, 1930, 1940);
INSERT INTO public.tb_street VALUES (472, NULL, 'n.o. (no oficial)', '0105000020E610000001000000010200000004000000C865714BAD5047C06A1FC122DD8D37C0D10F638EA95047C07B8ADD9DC18D37C0734285DCA85047C0F5426030BB8D37C047D6A5D3A45047C037E6F41AA28D37C0', 103.227329999999995, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (473, 'rua sudan', 'n.o. (no oficial)', '0105000020E6100000010000000102000000020000008935157A585047C08B8A3290288E37C0C28184B5735047C0D3EDE8C60F8E37C0', 94.6206700000000041, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (483, 'rua da paz', NULL, '0105000020E6100000010000000102000000030000009AD98285DB4F47C06F5809B1D78D37C0139475CED64F47C0D27CC2F2D98D37C0809857B6AC4F47C0A0972BC0DE8D37C0', 146.578699999999998, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (484, 'villa alvarenga', 'n.o. (no oficial)', '0105000020E610000001000000010200000005000000B315188B854F47C082510778BD8D37C0E226C825864F47C05F0CC212DF8D37C0DC72B054824F47C07A7309E3DF8D37C076E8993F844F47C066F04CEC078E37C03E407F9A854F47C092FDB3682C8E37C0', 198.506040000000013, 11, 1930, 1940);
INSERT INTO public.tb_street VALUES (485, NULL, 'n.o. (no oficial)', '0105000020E6100000010000000102000000030000002A2F8FC87C4F47C0FC8074F1E68D37C0C7F9F1666D4F47C0B14A43A2E88D37C0816D82B8664F47C03D2CFB9DE98D37C0', 68.8906199999999984, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (486, NULL, 'n.o. (no oficial)', '0105000020E610000001000000010200000002000000404B08C57D4F47C08E246548FD8D37C0F0D40EDF674F47C0DC0B8DB8FF8D37C0', 68.3513599999999997, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (487, NULL, 'n.o. (no oficial)', '0105000020E6100000010000000102000000020000001CB943BE7E4F47C0B91474B8138E37C030BDEB3E684F47C009F642D7158E37C0', 70.1849799999999959, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (492, 'rua barao de jaguara', NULL, '0105000020E61000000100000001020000000200000014719AF1154F47C0C92A3B39EA8E37C03D9D76FF124F47C057A344B8D28E37C0', 40.7642000000000024, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (46, 'praça joao pessoa', NULL, '0105000020E6100000010000000102000000090000001897CC32095147C0585805A2638C37C02378792EFF5047C0DF89979A5B8C37C035727E1E045147C0AED20D9E458C37C0EDBFA504085147C0E330F980378C37C0401BEE040A5147C0122B52CC388C37C06C43CA390B5147C0BCF534733D8C37C092026A5D0D5147C0827DEC6C468C37C08FBA59930E5147C0048A35284B8C37C079271443095147C0C474844B638C37C0', 185.761210000000005, 6, 1930, 1940);
INSERT INTO public.tb_street VALUES (470, NULL, 'n.o. (no oficial)', '0105000020E61000000100000001020000000200000098029077C75047C0A0128715D08D37C0760BD273C25047C0B9827445AE8D37C0', 59.2360200000000034, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (497, 'rua andrade reis', 'n.o. (no oficial)', '0105000020E610000001000000010200000003000000669EEAD43C4F47C04D86F7E3508E37C004ED5B30564F47C0552009E44E8E37C0F7D3B3EF694F47C0CB5EF37C4C8E37C0', 140.733949999999993, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (506, 'largo conde de sarzedas', NULL, '0105000020E610000001000000010200000005000000136BAA2E875047C09083FED5F28D37C0470E0B1D715047C0088FC484058E37C0EA3F231B775047C01EB920ED1C8E37C0373DF0E28C5047C0F42528D90B8E37C0ECDB2F56875047C024B74A83F38D37C0', 237.752520000000004, 4, 1930, 1940);
INSERT INTO public.tb_street VALUES (521, 'villa suissa', 'n.o. (no oficial)', '0105000020E6100000040000000102000000020000005CCC69DD975047C0C7C7822DFA8D37C0C19AE8CD985047C0EB2708D2058E37C0010200000002000000C19AE8CD985047C0EB2708D2058E37C0F5ABB0B2995047C0130C5FE5108E37C0010200000001000000C19AE8CD985047C0EB2708D2058E37C0010200000004000000C19AE8CD985047C0EB2708D2058E37C0606F9D44955047C006D92D05078E37C0A5368EEC8F5047C0F6DE2E57088E37C0CCB0D7BB8C5047C0F9B8B92D0B8E37C0', 0, 11, 1930, 1940);
INSERT INTO public.tb_street VALUES (246, 'rua amelia', NULL, '0105000020E61000000100000001020000000500000071428A7C755047C0272DBE548E8837C075ABCD337A5047C08ABC2CD0B08837C0276E32FA845047C0623C9E31FD8837C0B9B183B0855047C09CD6AA8E028937C0B8B6B57F905047C053B43672398937C0', 301.47190999999998, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (501, 'rua ernersto de castro', NULL, '0105000020E610000001000000010200000003000000B5CE7685D54E47C0675227CF698D37C043325178CA4E47C06C90F3DC5C8D37C0608E8733B44E47C0640FE175428D37C0', 123.283799999999999, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (299, 'rua padre lima', NULL, '0105000020E61000000100000001020000000C0000002A570B90BF4E47C08F43CDFEC88737C044E633CEC34E47C0F79C8F40C28737C0B78654C3CD4E47C067DD2844C08737C05FFC2E27DB4E47C066D5C366C78737C0BBB11C66E54E47C04A88D4CAD28737C0B66D8B59EC4E47C00FCED03FE08737C00358FA8DF34E47C023662473F58737C0BEDD5DAFF74E47C0DDE0E17F0E8837C05C25FC48F74E47C02A61E4E9158837C0308B0E3FF54E47C03FD65C77378837C0A927060BEE4E47C00EBAF585508837C00FC1DC4BE74E47C03AA90BE15E8837C0', 396.975660000000005, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (434, 'travessa santa lucia', 'n.o. (no oficial)', '0105000020E610000001000000010200000002000000A2570389EA5147C081C44630DB8C37C0ECC3FBC9DB5147C0FC90531CFD8C37C0', 73.463949999999997, 3, 1930, 1940);
INSERT INTO public.tb_street VALUES (413, 'rua acarahu', NULL, '0105000020E6100000010000000102000000050000003138DBC0175347C01049D2DEB08D37C0E92360D2135347C00DBE8978B88D37C0BDF51816125347C0A8771A39BE8D37C0346A72DE0D5347C0DE4CEB61C88D37C05C13A3DA065347C0C7559DB0D38D37C0', 79.522279999999995, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (85, 'rua epitacio pessoa', NULL, '0105000020E6100000010000000102000000080000008261D888C35247C0D1F8AB16BD8B37C0BB975738C05247C0B995CC6FBD8B37C008EEDFBCA95247C012940E64C68B37C04FC2A62F8C5247C0346CC8A8D28B37C0422411C6865247C069B59955D48B37C0489BD4937A5247C0F3007F90C08B37C096211C914C5247C028189F98728B37C09C2FE03C3F5247C0FAF1744E5B8B37C0', 496.02328, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (293, 'rua coronel moraes', NULL, '0105000020E610000001000000010200000012000000E1CA5B7BB54E47C01B82E9BF9C8737C0E0906BB8C04E47C047399276958737C08C3D1FCEC94E47C0E34F1CC8938737C0B5E37976D24E47C080D1FABD948737C0E37FEE97DA4E47C07EA6C861988737C0352F005AE34E47C0744B448C9E8737C085E334E8F14E47C01962545BAE8737C092D5861C004F47C05280C33FC68737C0DC172C20054F47C09AA5A386D38737C054AB6F82094F47C0825897C7E28737C05E3AF5AC0C4F47C0D3039DA4F28737C00D028FD00E4F47C06CDE1578038837C0F819A3DB0F4F47C004522750138837C02812153F0F4F47C08E67BF86288837C0241BA497094F47C0BA64A703528837C0421E49D6044F47C088032A66628837C069BBD772FE4E47C0E05461AC738837C02430904DF54E47C0A99A5187838837C0', 615.729670000000056, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (368, 'avenida do estado', NULL, '0105000020E61000000100000001020000003900000005DB394BEE4E47C06D12BFF9E98E37C056B75FA10E4F47C0BE00385AD58E37C0D4DCFE1C454F47C0F03DD982B48E37C0107B25957B4F47C0C4C20C88918E37C0F5857DC2AA4F47C0C8BF10EB6F8E37C0825F1DDBB54F47C06151D111668E37C0E5EB885DC14F47C01E274FBD588E37C03EF40FC0D04F47C0D23B8A73458E37C0E5BC441CE04F47C08FBA10282E8E37C08F773F4EED4F47C03B89163E188E37C00C867D8BF34F47C05FC1E71D0C8E37C0AF6D35FEFB4F47C0F820FCA9FA8D37C0D329D86D045047C0B5A32942E78D37C01B8F56A50B5047C06A373C54D48D37C06CEF1340155047C030B78E2FB88D37C04CD6D531165047C04FA1FFC1B28D37C021D926E11F5047C0957BB687988D37C0ADA6117B275047C017962C3D8F8D37C024D174C2255047C02768182E7C8D37C086B8645A275047C05DDFBF26648D37C0BFD37577295047C06B468B2A568D37C07F54D9C13C5047C091E76D920A8D37C02836F4724E5047C0C6461BB8C78C37C004FBDDEB555047C0707D721EB78C37C00F73E2385C5047C025285F83A28C37C0252756456B5047C0EE29915E858C37C0E8A0A6CC705047C0330A1E377E8C37C01637BDD5785047C035D19066718C37C0BD604DF77E5047C0DEAF301D688C37C0DD331ACB8A5047C005CCBA0B518C37C03376276E8F5047C096B8E422438C37C04E5C2257925047C0CB6173C02F8C37C0D7E53E97925047C0C22E7309138C37C0D0FEC944905047C0E028BCEEFE8B37C094B56CCF8E5047C053C002E3EF8B37C00E51AEDB905047C00F53E686D78B37C0B1F050E3905047C0F66983A5BE8B37C0BE3ED6628E5047C0A280D92EA48B37C05678DE458E5047C04FE476F79C8B37C0501213038F5047C0D8B3A534938B37C04A5555CD8F5047C02DEFDC1B888B37C0BE9400E88F5047C0713ACC94778B37C0E067D310905047C0B77B12B32A8B37C017BAA0B7895047C0137FCB460B8B37C019E9FF97845047C013D2B506F88A37C08537E6A56D5047C09931F0578B8A37C0196EBB0C5B5047C0081BD1FB368A37C08A7EA90B575047C0830561BC268A37C0A52191C2545047C049B4BFCC1B8A37C0D882F63F4D5047C08B2FCD0EFD8937C00B594687405047C04D5BF98FC48937C0977013BF385047C0322BC72DA18937C00621984A315047C09548B924808937C0093367B12D5047C09DE624D56A8937C0CEBC64AB285047C0A5074818578937C065CC8EE1235047C0281BD5B0428937C0C3D401EF1B5047C0A57C6C8E1E8937C0', 3279.68073000000004, 2, 1930, 1940);
INSERT INTO public.tb_street VALUES (512, NULL, 'n.o. (no oficial)', '0105000020E610000001000000010200000002000000A4840E64EB4E47C017D2E1B63F8737C0DC95F50BF54E47C05B5A3910288737C0', 50.0271100000000004, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (414, 'avenida anhangabahu', NULL, '0105000020E610000003000000010200000008000000EB37911D285247C0B8BEC842AD8C37C0E44C7B07155247C09F50263E978C37C068FE4CEDFF5147C05BC041D68F8C37C04A15872EF15147C06BEC94EB8A8C37C0A59618D5E75147C007101BA2868C37C067BCEB84E15147C07156BCB8818C37C0B1D3C038D05147C07F5BB550768C37C041D19747C55147C0E58AF0856E8C37C0010200000002000000E6130B86985247C0815299BA0F8D37C0EB37911D285247C0B8BEC842AD8C37C001020000000F00000000686924055347C06C27ACE7058E37C09E565E3DFF5247C0606F68A0EC8D37C0B799E898F25247C0D4F63EE0B98D37C06439B515EE5247C09CA8F595AA8D37C06C946BFEE75247C001B7DF58988D37C03519D3C8E25247C0BE5B437A858D37C0F5A15428E05247C02EE2C578788D37C060467FFDD65247C083F37DC6548D37C0077672AED25247C000BFEDB2488D37C0E329FC30CD5247C07D948AE03C8D37C06CC039F7C65247C0A42E51E8328D37C096872DD1BF5247C0A787E2AD2A8D37C0D668B5AFB85247C0F1150152258D37C03D25613EB15247C0003E6CDA1F8D37C0E6130B86985247C0815299BA0F8D37C0', 1282.47415000000001, 2, 1930, 1940);
INSERT INTO public.tb_street VALUES (467, NULL, 'n.o. (no oficial)', '0105000020E610000001000000010200000005000000AFA35FF8025147C03C1FEA68B28D37C005275261025147C087526B7BAD8D37C08BA359E0FF5047C053D4951F9D8D37C0B86834D8FD5047C0AB824CBC918D37C0888A017DDF5047C0ADCD173D928D37C0', 152.093469999999996, 0, 1930, 1940);
INSERT INTO public.tb_street VALUES (100, 'rua avanhadava', NULL, '0105000020E610000001000000010200000029000000B8C031CD345347C06ACC0FC8EA8D37C0B8CF36B22F5347C07AE31018E98D37C05D2B57CE2A5347C0B64AE4E1E58D37C0F7A3642B225347C0BF3D0887DB8D37C06DEDC1621D5347C004E8864BD18D37C0FA95A9F91A5347C0DA5F1330C98D37C0FA11427D195347C081F125ACC08D37C03138DBC0175347C01049D2DEB08D37C0F9C6532E195347C0B720548BA28D37C05DBDAECF1A5347C08E0BD13F9A8D37C0B20A435F225347C0E00BA4AD8F8D37C0DC4813BA185347C096E80597898D37C01406254C1A5347C0AEE77EF0988D37C09C1D7DC4185347C05EAF225B898D37C03BC1A8B2115347C0A74A8166798D37C05D9A57BF0C5347C021C15016768D37C06AB6A0E2025347C05FBC80EA6E8D37C08ECCB4DFF75247C0AD6D6DDB678D37C03AEBBC95EE5247C0B285358A618D37C00A6A2501E65247C0040192AE598D37C039202680DF5247C093C067E44F8D37C04AC8D702DB5247C0CE10C644458D37C0CBFAA346D75247C08424FA013A8D37C0BE3A26AFD15247C0909ED982208D37C0ED8BBCD0CE5247C0D124CF09198D37C01CA4830CCA5247C09E17A537118D37C0273727B8C15247C0E5B19D3F088D37C0C488B2C0B85247C03165964D028D37C0E30A4C92A75247C010FAFB7BF78C37C030ACA3FF995247C07BD371D7EE8C37C0AAE6C6FC955247C0215DE5FDEA8C37C0E70CCA47925247C01594FBAEE18C37C0BB69A758915247C0256867B4D98C37C067151A62925247C0F56CC912CD8C37C01E611CA7945247C042F28342C78C37C070F80406965247C0304AD433C48C37C09751E119995247C0BD4C8857C18C37C0498D58F99C5247C0F0C97765BF8C37C02939EE23A35247C0E0190E8CC08C37C090D3A868A65247C0984C6DFBC28C37C03FBF0CF2B45247C009122932CB8C37C0', 983.342759999999998, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (511, 'rua s. biaggio', 'n.o. (no oficial)', '0105000020E6100000010000000102000000040000003397E1C0DA4E47C0E712D04E628737C08B704269EB4E47C01FB9BDD93F8737C08C958B1AEA4E47C0E54B2517378737C02083FC02E94E47C07DF66F8B288737C0', 118.174210000000002, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (54, 'rua formosa', NULL, '0105000020E610000001000000010200000006000000D8EC905FD35147C041D618A84F8C37C0031F01DCCD5147C0E18FF471418C37C0B88270A4B55147C0B0ACDCC7038C37C042A4F6A09C5147C02CB5233DC78B37C0433E84D37C5147C055A178BF7A8B37C007F35655745147C0F6432491658B37C0', 494.178560000000004, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (56, 'rua capitao salomao', NULL, '0105000020E610000001000000010200000003000000B1F0E16B9B5147C0ABC6ED0C018B37C03D70CD20965147C08AC7BEB9008B37C0B5ACC3C5745147C000404D04FA8A37C0', 121.052710000000005, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (57, 'rua vinte e quatro de maio', NULL, '0105000020E610000001000000010200000005000000A5C5CC7A0C5247C0208D005A078B37C0BC7A376B0A5247C0647DD1F50A8B37C0771AE1F4005247C0542F9C791A8B37C0D8A8D2E8EB5147C0139EEDF43B8B37C054393E09C45147C0A25E3AED7A8B37C0', 298.506100000000004, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (223, 'rua joao theodoro', NULL, '0105000020E61000000100000001020000000F00000066465858F85047C07C08CCD74C8837C0F718950FD05047C0A1FA5C25618837C0ABF4DC35A95047C0CB3AFB0B748837C0397CA7497C5047C07B671CFC8A8837C028D68701595047C0E4DEE0579C8837C0E33B7738155047C068377A44BE8837C00610EA08EF4F47C0F537F8A3D18837C08CE54DC0BD4F47C0FBD7B2DDEA8837C0108FF206A74F47C05DCBCFD3F68837C096FFF8E19F4F47C03C0B82EEF88837C09977956C7A4F47C088B30C4A018937C0AA3D0BD6524F47C0A7956239088937C09F0FBC3C364F47C052E009380D8937C08FC39EE4104F47C03AE0BDA3128937C09A352D79EE4E47C0674A2A77198937C0', 1667.83418000000006, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (300, 'rua sebastiao pereira', NULL, '0105000020E61000000100000001020000000F000000713B8AA4E95247C0995DC7C49B8A37C0E2D09FACE95247C0C232C169958A37C018CA2D56EB5247C0949844C88D8A37C0154E67A9ED5247C0A509E87E868A37C0FFE3DEDC0A5347C0FF6714072D8A37C08992C3A31E5347C008B2EC38EF8937C034B46F7E215347C08958FBB5E78937C067F08A74245347C03BEC2EC5E08937C0932C3BC8275347C095E9AB4CDA8937C0BE67975F2B5347C0A347D0AED48937C0D938A9602D5347C0F0DD3EA9D18937C018B2C6874B5347C03327B4C5A28937C08E3AE3CD7D5347C0ADF115EC568937C04F27EAB5985347C03244722D2F8937C09B71B5729D5347C0B1B8E6B1268937C0', 858.202710000000025, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (520, 'rua treze de maio', NULL, '0105000020E610000003000000010200000003000000E3068008CE5247C086ADCF33998D37C019674947CC5247C0673520D7AB8D37C0493FAD59C55247C04DBEC17F358E37C0010200000003000000E19C9D46C55247C0D9944C7C358E37C0D1E58C9BC25247C0E644F4F5738E37C00D9A7375BE5247C0FFEF283CCD8E37C00102000000020000008BAC13A3BE5247C0F8663D44CD8E37C0B02F448ABD5247C01C0D9F0BEB8E37C0', 0, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (139, 'rua sobral', NULL, '0105000020E61000000100000001020000000200000022C16D03B94F47C05EDDDEF5328C37C0041757B1A14F47C0EF5C9CAD1C8C37C0', 81.8389999999999986, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (489, 'rua mem de sa', NULL, '0105000020E610000001000000010200000003000000DD746133654F47C02A756E8ABC8D37C02B635DD9634F47C0137BB96D818D37C060DEDD72614F47C06A9AAD293F8D37C0', 212.206770000000006, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (55, 'becco paysandu', NULL, '0105000020E610000001000000010200000002000000008D8E8CA15147C0EE6083B2158B37C0B0753E94845147C08F90860F318B37C0', 101.42201, 8, 1920, 1940);
INSERT INTO public.tb_street VALUES (498, 'rua barao de jaguara', NULL, '0105000020E610000001000000010200000008000000D816BCCA114F47C0A09FC3E3BA8E37C01A00A98D0A4F47C09F923AE6728E37C01F1C092C064F47C007098C95488E37C068875084044F47C0F85AD197378E37C0377C42A3014F47C0A9786F98188E37C091A3FFB5F94E47C03C1BE28FCC8D37C0C1361D36F74E47C0A827019FB08D37C048D4EC4AF34E47C016927BF1878D37C0', 527.341490000000022, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (76, 'rua da consolaçao', NULL, '0105000020E61000000100000001020000001500000065413A84185247C04DA1B3A93E8C37C05E4AD1D63F5247C02B4E306D4A8C37C009D6C9A1465247C05B20ED2C4B8C37C037713BC44E5247C0D4A5C04A488C37C09A05DB23585247C0B998F624448C37C03A2D1F7A905247C062B92F802C8C37C0107D883FBB5247C09B7A4E8F1A8C37C01F4C7E6CC05247C0E675D0271A8C37C0D627F959C55247C0967B81FE1A8C37C01FFA1481CB5247C08ABA18841D8C37C07343C630D05247C0762683A8208C37C05E1B43190D5347C0B715171C478C37C069A88C4F255347C0C3043963568C37C0A51CD286795347C08D2A66D88C8C37C0CA944733805347C02DC6815A918C37C05335F1DB815347C0AB681834938C37C0113AC34D9F5347C08506C9C9B18C37C0CDF06DB4BE5347C0096774A7D28C37C0A5647159D05347C045F7C3DFE48C37C074D18942EF5347C05C68306D058D37C05F4B772AF95347C0E17135680F8D37C0', 1598.0929900000001, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (507, NULL, 'sem nome', '0105000020E610000001000000010200000002000000CE5EFE8CBE5047C0630A6867458C37C04CDBE8C8AD5047C07E4C9B5B348C37C0', 59.6548299999999969, 0, 1920, 1940);
INSERT INTO public.tb_street VALUES (4, 'ladeira porto geral', NULL, '0105000020E6100000010000000102000000040000004F7F286C1A5147C0472170428E8B37C0AC72A3E8175147C0ABC465D18A8B37C0D0CA87F5065147C0A7FA6F43698B37C0DCDC6EE2F75047C04977555A538B37C0', 147.052330000000012, 7, 1920, 1940);
INSERT INTO public.tb_street VALUES (69, 'largo do riachuelo', NULL, '0105000020E6100000010000000102000000060000008AA4DB88BF5147C0E34BB499B18C37C031D83F62B85147C0505DDDE6AA8C37C06AF46747C05147C07A1E1CF4998C37C0DE9C3900BF5147C02145BC6B738C37C01DE4D1AFC45147C051861560A68C37C08ADB7D29C65147C05642C156B88C37C0', 246.592410000000001, 4, 1920, 1940);
INSERT INTO public.tb_street VALUES (70, 'rua do patriarcha jose bonifacio', NULL, '0105000020E610000001000000010200000005000000317446267E5147C0964FFD6C1A8C37C01C9DD646665147C04B19FBD62F8C37C0D1880ACC6C5147C0D5AB2E40468C37C00DE57518845147C0C56E986A2F8C37C03E5853207E5147C0A127CD571A8C37C0', 248.082009999999997, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (71, 'rua conselheiro crispiniano', NULL, '0105000020E610000001000000010200000008000000E2C60135F95147C0CE016DE8008C37C0DD4F4480E75147C02D4911D9D48B37C09E34CD94DB5147C0B7256D29B78B37C0577752BED65147C0BD47D302AC8B37C0220A67F0CD5147C018B7B80C968B37C0BCCEA00AC45147C09D660AEB7A8B37C03BB22CD3A95147C0EB7718F9308B37C0C9F3A8DFA65147C07A11A7562C8B37C0', 441.987770000000012, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (75, 'rua quirino de andrade', NULL, '0105000020E610000001000000010200000007000000DFBC1C57D35147C038E64E924F8C37C062AE07B5E85147C0859708513B8C37C04C6A6918EF5147C055B35B23358C37C0A9E1E3E5F15147C08E99B297348C37C0BCB0E31B015247C0DE936B5B398C37C0F9DDC07E155247C0779FAAA23F8C37C02BE93984185247C0E9A48FAA3E8C37C0', 228.144659999999988, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (78, 'ladeira da memoria', NULL, '0105000020E6100000010000000102000000040000001C9D48A7E25147C0CE3A4A92258C37C044DD7EE2DF5147C08C7899C82B8C37C0ADB16AF7D45147C0F289ACC4438C37C03154AEA9D15147C07CBD7F3F4B8C37C0', 82.8038700000000034, 7, 1920, 1940);
INSERT INTO public.tb_street VALUES (77, 'rua do ouvidor', NULL, '0105000020E610000001000000010200000006000000884D881E9A5147C0EAB0C0C47F8C37C0955FBAD49E5147C09C7FDB1E838C37C0F74B734DA75147C0035CB46C918C37C00789637CB35147C057FE1891A48C37C0EBA27CEFB65147C0C97133CBA98C37C041443367B85147C0F27FBDD9AA8C37C0', 120.221159999999998, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (83, 'rua general jardim', NULL, '0105000020E6100000010000000102000000070000004C5E7A807E5247C097AFD7FD748B37C0921B0111A05247C008B31A15738B37C0B2E3E9ADC25247C0592C006C718B37C0522D14F1EC5247C0BF55CBC86F8B37C0071FA31D3B5347C0AA9F25D96A8B37C01D525145705347C095AB5DFC688B37C0CE52C39AA15347C05F9F0F44428B37C0', 920.681699999999978, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (84, 'rua major sertorio', NULL, '0105000020E610000001000000010200000007000000283F026F855247C0641DCD80A48B37C036AB7C4E885247C03FAE5B87A48B37C0C40ACC82A05247C0A4C30E64A38B37C0428C7E3AC35247C09F07FEE1A08B37C0C912B8ACED5247C0FF9B89ED9E8B37C0A24B546F3B5347C068D50BA39A8B37C05AF29E5C775347C07D6E8F50988B37C0', 754.11850000000004, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (192, 'rua joao monteiro', NULL, '0105000020E610000001000000010200000002000000CBEB09FEE45247C0FD199D50D18837C0D712E966005347C0733F5D15F48837C0', 103.668949999999995, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (86, 'rua dr. theodoro bayma', NULL, '0105000020E6100000010000000102000000040000006AAA5F29B85247C021A5C1DA1B8C37C0D203C493B75247C04034C7E5168C37C0C6F385B2AF5247C051C00689D38B37C06FABE5E9AD5247C07EDF4BBAC48B37C0', 150.654940000000011, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (87, 'rua rego freitas', NULL, '0105000020E610000001000000010200000009000000429F158AC45247C0B51520DB1A8C37C0C5C8B636C55247C004736596108C37C082035854C45247C021875F67E38B37C00F77EC85C35247C0B688FA16BD8B37C04FDA9E44C35247C001A986E1A08B37C0E04148A8C25247C07558456C718B37C04BF11F40C15247C06BDD500E388B37C0DCB06A5DC05247C03F8314DBF28A37C09D1C23F4BE5247C09E205F41B08A37C0', 613.214759999999956, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (88, 'rua amaral gurgel', NULL, '0105000020E6100000010000000102000000090000001E92F5A8EF5247C001177686348C37C01ACD77BBEF5247C0C7B12DCE2C8C37C0C5CAC455EF5247C014B49FD9158C37C019F014ECEE5247C0E280E930038C37C01C12515CED5247C00DC03DF19E8B37C00C7969B8EC5247C0708AFDCA6F8B37C05F464C95EB5247C070635B0C368B37C08819C6D3EA5247C0A6F81629F28A37C05C09B4D5E95247C0411FFBBBAE8A37C0', 658.964240000000018, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (89, 'rua bento freitas', NULL, '0105000020E610000001000000010200000008000000A03ECA70A15247C02A0FE3D5C98B37C02534FA38A15247C0373EBBFDC48B37C006F1C0DBA05247C02362AA48B38B37C091966A75A05247C051D1AF64A38B37C0AEC1C4A19F5247C0989A6E1B738B37C063AE2B989E5247C06ACC6BB3398B37C0E10598CD9C5247C0FD2FD200B88A37C0716A945C9B5247C0D8727ACFB58A37C0', 468.803769999999986, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (90, 'rua maria antonia', NULL, '0105000020E610000001000000010200000006000000EE9C78A4105347C0D2AE8B58498C37C075AA9F20125347C0DBD00B43408C37C07ED9795A1E5347C0E9714DAA2C8C37C0B3E78B39595347C07E863CF4CF8B37C0F5C7336C765347C02CA3CC2A9F8B37C05AF29E5C775347C07D6E8F50988B37C0', 442.460100000000011, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (92, 'rua santa isabel', NULL, '0105000020E610000001000000010200000007000000FB71A44B0C5347C08080E158F08A37C0A31E922AF95247C0478D07EAF18A37C0DF6BCAD2EA5247C0C6AA4CE6F18A37C0D5FED8ABCF5247C06C5D6735F38A37C0D696155FC05247C0F677635DF38A37C0956D8AD8B35247C0A9DB7A0EF18A37C00781278F9D5247C0AE088FBFEE8A37C0', 345.440330000000017, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (48, 'avenida sao joao', NULL, '0105000020E61000000100000001020000001300000008A0D744545147C0AF1EDE79898B37C0DDE62B61595147C07F5427B2848B37C0B2BC1A12695147C0FFF85652728B37C00DD0682C7B5147C01A9F15D25D8B37C09DF61C9AA45147C033C6BDE42E8B37C02E0C8DE6FB5147C069BEEFB3CC8A37C0D7881815555247C0939032B7678A37C0FB193877565247C0CB8DCEF7668A37C085B8A611585247C0468CB559668A37C0E763EB8D595247C017362B5D668A37C0E5E8660A5B5247C028481B83668A37C09AEC20485C5247C013856765668A37C0FB0BEFCF5D5247C0A69431D3658A37C098C1E8FF5E5247C03D62E2E6648A37C082C12AA06D5247C082B27E29548A37C08D4D85E3A45247C002F3B1CC158A37C0D2B47286265347C0435CDA26848937C0DB521D242A5347C09978F7AE7F8937C0B52B6FEE2C5347C00ACFC97F798937C0', 1725.53079000000002, 2, 1920, 1940);
INSERT INTO public.tb_street VALUES (80, 'praça da republica', NULL, '0105000020E61000000100000001020000000800000087592C4C675247C02FC04F4D138B37C0D7644982385247C059974C97C48A37C063B8D1ED115247C08256F4D1008B37C0A5C5CC7A0C5247C0208D005A078B37C0C1776456115247C0319DB9320F8B37C0417B3E33255247C07A3191F42F8B37C0BECFC9933F5247C0781AF5B55A8B37C02201134C675247C0F6AEF04D138B37C0', 760.551450000000045, 6, 1920, 1940);
INSERT INTO public.tb_street VALUES (81, 'rua araujo', NULL, '0105000020E61000000100000001020000000900000065275F8C985247C08A2D7C1D298C37C057F56FB7975247C04E9B79BB238C37C0791B743B935247C0B9C93EF3048C37C0CD4AA2BE905247C000FCF6AEF38B37C01936B82B8C5247C0AF794C8CD28B37C0420251CF7F5247C030EB24117E8B37C09CF362BB765247C0FFC643143F8B37C0C1440A18765247C01E5B9DB03C8B37C01EE7C692635247C01859BFFF198B37C0', 496.049969999999973, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (82, 'rua marques de ytu', NULL, '0105000020E61000000100000001020000000600000087592C4C675247C02FC04F4D138B37C09A4963F47F5247C0233DFBF2398B37C04836706F835247C0F0B658FD3A8B37C0A7486263E85247C026E89B32368B37C0FE8EC0F2965347C0DD562D072E8B37C0C99A2070C85347C0816D778B2C8B37C0', 1124.80634000000009, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (97, 'rua major quedinho', NULL, '0105000020E61000000100000001020000000900000046DCF31C425247C03FFE5FAD4A8C37C0E75A768D415247C0D0470450508C37C0AF4E3F92435247C0DEA4FB686A8C37C0461A0EEC4B5247C073A3D698A48C37C0570EF7C1525247C064CD8710D28C37C0A9B7FBD2555247C022962ED1E88C37C0E2773D73585247C0E09DA119018D37C05BC25B68595247C0AC3259580A8D37C07BA37E02595247C06B95F633118D37C0', 344.69195000000002, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (110, 'rua itambé', NULL, '0105000020E610000001000000010200000008000000C47B4895E45347C012D56545848C37C088CAA183E25347C0703CB8A1818C37C0D23A2B39CF5347C0CA84A5AB5A8C37C090830190C35347C0D1ABC56F438C37C05C5F5D8DA85347C0F55A456D0C8C37C054322A9C8C5347C0A6A3D3EECC8B37C04DEF3784795347C09316C581A08B37C0A142F6F2765347C0940683539B8B37C0', 521.702559999999949, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (98, 'rua caio prado', NULL, '0105000020E610000001000000010200000006000000241CA69A105347C0F3035952498C37C06B0146DC0B5347C01859BE9F648C37C0A98FB3D2025347C059967384948C37C0D8DF3AB8F05247C0C8B65411F28C37C0FA29FA80E75247C0A664EB16238D37C093F80160E85247C0A3099387278D37C0', 397.64127000000002, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (99, 'rua frei caneca', NULL, '0105000020E61000000100000001020000000B000000E512DE8CF95347C0382F0326398E37C05A02ABFDF25347C019EC0807288E37C0B12D682BED5347C08F3E3C8B188E37C07D7A5B89E35347C026FAF8DF0E8E37C07076D559BB5347C05B0C3144E48D37C055146E7FB25347C027F4710EDB8D37C06935BF0A505347C02091C333738D37C08A47CF51425347C07BD16DCD638D37C05BFA06303A5347C0850E00B65D8D37C085CD63D6EC5247C0B66F35512C8D37C093F80160E85247C0A3099387278D37C0', 979.482830000000035, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (101, 'rua augusta', NULL, '0105000020E61000000100000001020000000D000000006FFBCFB45247C01F36E91ECB8C37C0A2918D2DC15247C0FD498395D28C37C0B3E96EA4D85247C004EEE7D8E18C37C0576477D8F05247C07AD5BF6AF18C37C07FBE3FD6235347C097B4AA2A138D37C0A1A73C46735347C0C9ACA1EE478D37C0BA4989CC865347C0B9276277548D37C06EC59511915347C068F0E90E5B8D37C03580F3E2985347C041FB0155638D37C017B0D1D7B75347C05C159271848D37C039722C32D95347C09CBC1D37A88D37C0F5FB8A0CEE5347C0C88CA3DECE8D37C0FAC8F535F95347C0E8C25E49E38D37C0', 1129.0455300000001, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (102, 'rua martinho prado', NULL, '0105000020E610000001000000010200000007000000954C685B9D5247C04245B3A74A8D37C04BA932559E5247C04B2DA06F448D37C0785E4379AB5247C0394F05F1F98C37C0F92C14D6B45247C06E369722CB8C37C09C3251F2BD5247C09945C487958C37C002F2F33BBA5247C0E26D83E3818C37C04F2E803BA95247C0B12EE91D228C37C0', 527.987510000000043, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (103, 'rua floribella', NULL, '0105000020E61000000100000001020000000500000031C5C63C985247C05936DF3E298C37C04C9587DD9C5247C0AEC91260818C37C0AF3C59AB9E5247C0F0C81FEC968C37C080AAF4B3A05247C06B95B3409D8C37C0E48D57A2B95247C026938BE7AE8C37C0', 282.109399999999994, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (104, 'rua olinda', NULL, '0105000020E610000001000000010200000003000000E5440BF8E35247C0A9DC04252D8C37C054DFCAB7E35247C04FE0A3C3328C37C0AD1A4287C55247C047D7F769D58C37C0', 300.033839999999998, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (106, 'rua visconde de ouro preto', NULL, '0105000020E610000001000000010200000004000000D734F4A5675347C0FDEDDE48818C37C045BE3C4A595347C078CE60B3C98C37C0950AD2B3575347C02FE845D6CA8C37C06C4C5E46355347C0EBC1BA0BB48C37C0', 249.573640000000012, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (107, 'rua marquez de paranagua', NULL, '0105000020E61000000100000001020000000400000021F03517435347C0AE481FA5698C37C06C4C5E46355347C0EBC1BA0BB48C37C0A213B6EE225347C0E1F16B91128D37C0E8B3137C195347C034D1FDD3488D37C0', 398.839080000000024, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (108, 'rua antonia de queiroz', NULL, '0105000020E6100000010000000102000000090000006442F839CF5347C0FA3A34AA5A8C37C02722ACC9CC5347C06A7BA70E5F8C37C02D96F043BF5347C0A9EF7B82898C37C05C32BE409B5347C050102D08FA8C37C0100DF0DA975347C021C5CB98088D37C047CE0E1D955347C0E9C04683148D37C08AAC8A67855347C0C9A63492538D37C04F0F9C387C5347C089ED61577A8D37C0AD7FA36B745347C02A0E7C93998D37C0', 610.135160000000042, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (111, 'rua maranhão', NULL, '0105000020E61000000100000001020000000200000056A4D170F95347C019E62BEA7D8B37C0548E482F915347C007090554D78B37C0', 358.270260000000007, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (113, 'rua sao domingos', NULL, '0105000020E6100000010000000102000000060000003F8ECB0E305247C09EF38552768D37C0A7604CCB545247C0FF6E3CA17C8D37C03C6A7E23865247C0D5C8398D848D37C01A20AC86A45247C0D4F519D08A8D37C0D50F0EC7C75247C01AD6387C918D37C067E62736CC5247C00613C254928D37C0', 488.846029999999985, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (114, 'rua conselheiro ramos', NULL, '0105000020E61000000100000001020000000600000002E1441A8E5247C0BEA12E0B3D8D37C09F9296058A5247C039A60F5A858D37C07F1EF4E1875247C041978B5CB38D37C0D505FC65835247C0CCD64CEA048E37C0188BC0587D5247C0784F61F1798E37C009C0496B775247C05D7CF7FBEA8E37C0', 729.976840000000038, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (115, 'rua maria jose', NULL, '0105000020E6100000010000000102000000060000002B9FB15B685247C062BCA61C2A8E37C00547E703645247C0FC2836EA738E37C05635234C605247C075668C7FB68E37C0D579DAB15F5247C06F203A08BC8E37C0A841EBC15D5247C02A3DBD02DF8E37C0EE858AFE5C5247C00A5B07F8EA8E37C0', 327.860549999999989, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (121, 'rua alagoas', NULL, '0105000020E61000000100000001020000000400000055CF4ED8C65347C0D1980FFA498C37C0C5647D59C95347C03EA3C312478C37C000995140DD5347C018FC2A46368C37C0C8142C51F95347C0FE4717891E8C37C0', 173.628420000000006, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (122, 'rua mato grosso', NULL, '0105000020E610000001000000010200000002000000568B08ECED5347C062B26F7C7C8C37C081080227F95347C0E2FB6298878C37C0', 39.7095100000000016, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (124, 'rua itacolomy', NULL, '0105000020E610000001000000010200000003000000C0DBF423FA5347C095C3ECC1C68B37C0B2FF56DAEA5347C0D443146D8A8B37C0BB81678DDC5347C03048D6CE508B37C0', 219.60942, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (126, 'rua dona veridiana', NULL, '0105000020E610000001000000010200000008000000216F7D39775347C0C6A4163D988B37C059563F0C745347C015DA16A1808B37C01D525145705347C095AB5DFC688B37C0D03C7FDD665347C051B99247308B37C07A441A865B5347C03F1EDFF5EC8A37C0695F57F04F5347C0F18BD55CAA8A37C0840428F9385347C059B0F9B4218A37C0C47C2995385347C09688CF8E1F8A37C0', 665.868079999999964, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (127, 'rua monsenhor anacleto', NULL, '0105000020E61000000100000001020000000400000053BBEA22C64F47C0B93FF2A1548B37C099544046C54F47C02D1EFED3608B37C052516610D94F47C07F618CA8658B37C0224CE3EBC34F47C0780BFBECEB8B37C0', 319.243049999999982, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (130, 'avenida rangel pestana', NULL, '0105000020E610000001000000010200000009000000A133FA2F1B5047C035FAD3FD3A8C37C0DFB9DAEDC34F47C0C00A7EE0EB8B37C0FD4C4FEF984F47C0AFE7E749C58B37C0510EBEB8754F47C039F08AAFA58B37C0CF74A6386E4F47C0C0AB02C19D8B37C0D02E637E584F47C062D1BCB1838B37C081B7B704374F47C0D8DEB5025B8B37C0357CBDF51D4F47C0E908B65C3C8B37C0C7FA3213B54E47C094C2CAD7BB8A37C0', 1292.69933999999989, 2, 1920, 1940);
INSERT INTO public.tb_street VALUES (131, 'rua do lucas', NULL, '0105000020E610000001000000010200000005000000AE8C3F3FF34F47C028B22152668B37C01E86DFA6F34F47C044D4B63A618B37C074D93209015047C03DAEA29BF48A37C02C384C86125047C0524139C79C8A37C0FA579486125047C0371C0EF59C8A37C0', 355.335080000000005, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (132, 'rua assumpçao', NULL, '0105000020E610000001000000010200000004000000B89DD7BA315047C0117383BD358B37C0D54464192F5047C0B375DD48348B37C08D5B3ACFFB4F47C009264C061F8B37C02D52DF02924F47C0C6E5CEA1F48A37C0', 509.710620000000006, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (109, 'rua piauhy', NULL, '0105000020E610000001000000010200000007000000D30D387B7E5347C0CB363C31908C37C08CEEE68C7F5347C090949EB38B8C37C0553BF4AB965347C0E777F874418C37C0C60BFB82A65347C05688653A0E8C37C020E262B7AC5347C0A7B341C0088C37C02AF522CFCB5347C09651F97CEE8B37C005AEA02DFA5347C006A2A1B9C68B37C0', 539.950960000000009, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (112, 'avenida hygienopolis', NULL, '0105000020E61000000100000001020000000800000022C4246EF95347C0D47091F33B8B37C025E231F4C65347C092C72268608B37C0BF6D4E44A95347C0A5898BAB768B37C0138CCEC58B5347C070152B038C8B37C0A1724CE47F5347C01EBCDEF6938B37C0DBFDE4A07C5347C0D0CA92C8968B37C0731C1CDF765347C026E66C55988B37C023F9F0C4765347C0A0927056988B37C0', 436.55804999999998, 2, 1920, 1940);
INSERT INTO public.tb_street VALUES (116, 'rua sao miguel', NULL, '0105000020E610000001000000010200000002000000386BAD6AD15347C0E59DA6A9FB8D37C01E707166BE5347C06567CDA03D8E37C0', 126.240260000000006, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (119, 'rua sabara', NULL, '0105000020E610000001000000010200000005000000568B08ECED5347C062B26F7C7C8C37C030711854E25347C0C0343D274B8C37C0D92E654ADE5347C059A592793A8C37C05034998BCB5347C0616D05B6EE8B37C0C59CA09BAD5347C058BB226A738B37C0', 490.726760000000013, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (133, 'rua maria domitilla', NULL, '0105000020E61000000100000001020000000500000005981E1E2B5047C0F6C96C92E78B37C05FE7F133295047C028940402E78B37C09C0D3454F34F47C0F39C8A96B58B37C016B1167FD14F47C071E7A7B7958B37C09CEA3A07A64F47C097C53EF5738B37C0', 458.872740000000022, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (118, 'rua manoel dutra', NULL, '0105000020E6100000010000000102000000060000008CF599D0565347C078532E1E4F8E37C0774BA0910C5347C028F38764428E37C00033375CD65247C09ADEA695388E37C08B8AFFB1AE5247C03F57AC63318E37C088BCB6EA945247C04E70004F2D8E37C0D7087A044C5247C092394449208E37C0', 835.009429999999952, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (136, 'rua claudino pinto', NULL, '0105000020E6100000010000000102000000050000001256FDBEF04F47C0C9A9782D7D8C37C02650D886EE4F47C004F90D9A7B8C37C09BA92CD4D74F47C0C2CCF290698C37C0FB09599AC54F47C0A090623C578C37C0D5F971D8B54F47C062F42711478C37C0', 205.292959999999994, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (137, 'rua carneiro leao', NULL, '0105000020E610000001000000010200000007000000224CE3EBC34F47C0780BFBECEB8B37C09475D5EEC24F47C0FD8E3400F48B37C0D5F971D8B54F47C062F42711478C37C0BEEDA87F9E4F47C090E580DADB8C37C09EEC2270A14F47C057D1EBB3008D37C09B2DF2B9A44F47C032A876C62A8D37C0ACD83789B04F47C04416B87BB28D37C0', 788.925230000000056, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (138, 'rua caetano pinto', NULL, '0105000020E610000001000000010200000005000000D6A3C24EB54F47C0204F06C1DE8B37C058B1193DB44F47C04963D0D4E68B37C07C136746494F47C0284FE8611D8D37C0B148C8A8474F47C046C7D045228D37C0ACB7F330474F47C00B8C3096448D37C0', 703.394220000000018, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (140, 'rua santa rosa', NULL, '0105000020E610000001000000010200000008000000D213A2D63C5047C08220C6C0458A37C0B50536B23B5047C05E4197566C8A37C0074FC1623A5047C0D6FD4827BF8A37C079843F30395047C02919858AFC8A37C06014B751355047C0854AE07B1C8B37C0B89DD7BA315047C0117383BD358B37C08205EA07295047C089817235738B37C09CE642E9285047C0A16DC68B7A8B37C0', 528.289819999999963, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (142, 'rua s. anna', NULL, '0105000020E61000000100000001020000000300000094901207FA4F47C09BFEF09B488C37C0962D919DF54F47C0EEC84E48458C37C062100CBCDB4F47C01CDB10C32D8C37C0', 104.754980000000003, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (143, 'rua queiroz', 'n.o. (no oficial)', '0105000020E610000001000000010200000002000000D856795F1A5047C0E3537967D98B37C0691B562A0D5047C0A13848472E8C37C0', 149.211189999999988, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (144, 'rua pires ramos', 'n.o. (no oficial)', '0105000020E610000001000000010200000002000000DD7E15E90F5047C0D98D89CECF8B37C0AAC8FE32025047C02FA8FC55248C37C0', 149.092759999999998, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (147, 'rua do gazometro', NULL, '0105000020E6100000020000000102000000040000006CD695FA285047C0416584917A8B37C08D9520D21F5047C026277088778B37C0AF810039CF4F47C006DBCD68588B37C08B91D1CA874F47C01885BDB73A8B37C00102000000020000008B91D1CA874F47C01885BDB73A8B37C0F82BACE7214F47C0409BE1B7098B37C0', 841.818009999999958, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (239, 'rua santa luzia', NULL, '0105000020E610000001000000010200000002000000C4AC7E6C075147C0F91DE6F8008E37C014F81B85E35047C006918934FC8D37C0', 112.153260000000003, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (149, 'rua piratininga', NULL, '0105000020E610000001000000010200000006000000510EBEB8754F47C039F08AAFA58B37C0130DD1B46C4F47C08B6EF299BE8B37C0ECA531625C4F47C0D09E950EEC8B37C0AB05E9D83E4F47C06E9D033A3F8C37C0613176D3044F47C03516A193E38C37C0CE5F17F5B44E47C0E75FDD35C68D37C0', 1098.83062999999993, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (150, 'rua dr. almirante lima', NULL, '0105000020E610000001000000010200000006000000B90EB0E1EC4E47C058F3CC39008B37C098F78996E34E47C07C74CF101A8B37C0E665BEE3D44E47C0F271E849418B37C0053FFE23C74E47C0253B882E668B37C00DE458F8B54E47C0EE5502F7928B37C0917D55C1B44E47C0E15EE94D968B37C0', 308.075460000000021, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (151, 'rua paulo affonso', NULL, '0105000020E610000001000000010200000002000000D05B13E8C64E47C01980CECA668B37C0A41054E7B44E47C0A446E7EE4F8B37C0', 68.1081800000000044, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (154, 'avenida martim burchard', NULL, '0105000020E6100000010000000102000000060000005837FAB63B4F47C0867BDFB7608B37C0F361A099384F47C03EA2F899678B37C084600A551F4F47C06FD023CDB18B37C0FB25479A164F47C0E588F68FCB8B37C0053C537BDE4E47C01C1AA0976F8C37C04BA585F1CC4E47C010E2D093A38C37C0', 645.719839999999976, 2, 1920, 1940);
INSERT INTO public.tb_street VALUES (155, 'travessa malvina', 'n.o. (no oficial)', '0105000020E6100000010000000102000000060000002F7B273D154F47C048D3668CCF8B37C07E1BD431174F47C0A0F72788D28B37C06AAE10D61E4F47C05C54A43ADB8B37C0F2025AD3234F47C0493E0298E08B37C04D059A0D264F47C0D0E14317E68B37C01CEACE26454F47C064BCABAB0C8C37C0', 182.268220000000014, 3, 1920, 1940);
INSERT INTO public.tb_street VALUES (156, 'rua prudente de moraes', NULL, '0105000020E610000001000000010200000004000000B3BB264E374F47C049E72697548C37C0E2D37AD1344F47C085B25F60518C37C00332899BFE4E47C0CDA929B2118C37C0725FAD5BD74E47C07E7769AAE38B37C0', 354.672570000000007, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (157, 'rua campos sales', NULL, '0105000020E6100000010000000102000000040000002D1F054D664F47C08EA6FE1CC98C37C0B19CB4EE4E4F47C0DA250772AD8C37C00E76166CE54E47C059014267338C37C028E602B4C84E47C09A3051A60F8C37C0', 582.576919999999973, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (159, 'rua coronel mursa', NULL, '0105000020E61000000100000001020000000500000016C22DF9164F47C00CA1732CB08C37C06F0FE34F144F47C098382763AC8C37C01501E8C7FA4E47C0FA3C41468E8C37C0A45589D4DE4E47C09D71E2926E8C37C05CD908B9B74E47C08C926335408C37C0', 352.015179999999987, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (160, 'rua da alegria', NULL, '0105000020E610000001000000010200000005000000EFA3C4F9044F47C0E91F2027E38C37C0F55DA467024F47C00B017760E08C37C0D3940164EC4E47C0F5CDC68EC78C37C04BA585F1CC4E47C010E2D093A38C37C0573E0B9CB44E47C03C1FCFEE878C37C0', 294.046479999999974, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (161, 'rua parana', NULL, '0105000020E610000001000000010200000005000000453ADAEE494F47C0128ADC781B8D37C054568A14464F47C02684F658198D37C04EAFC6BD364F47C014073BF51C8D37C0FED7E39D314F47C02AB80562168D37C095EE0CF8044F47C0959BFD2BE38C37C0', 243.991620000000012, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (167, 'rua souza lima', NULL, '0105000020E610000001000000010200000004000000C1154D92EB5347C0BCF6C05EB88737C0244A6711CF5347C020F4646A938737C042DF2C50B95347C09FCEC120788737C046352DF58D5347C0F2CA3FD4418737C0', 353.889689999999973, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (168, 'rua capistrano de abreu', NULL, '0105000020E610000001000000010200000004000000C047B296C25347C0EF53BDB8278737C06A5D10468E5347C0F2028E39428737C0270D7684645347C07867C8B35A8737C02BFEB26E435347C0616CD1DB688737C0', 411.450240000000008, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (169, 'rua lopes de oliveira', NULL, '0105000020E61000000100000001020000000500000016013593F85347C04BE83C024A8837C03E22443BCD5347C0DDFCABE7E48737C038764106A45347C009BD96A5B18737C0D5D68E24885347C05C0266A48E8737C03FECBD11615347C055557C2D5C8737C0', 626.453830000000039, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (170, 'rua conselheiro brotero', NULL, '0105000020E610000001000000010200000003000000472B7E0AF95347C04A37AD0D718737C0F9A9067CEE5347C0593F77835D8737C087F774C2D05347C09AA81CA2278737C0', 176.497530000000012, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (171, 'alameda eduardo prado', NULL, '0105000020E61000000100000001020000000600000042F52EE0925347C0081CEC8A718837C0035F1A566E5347C08052A9C5418837C09ABD2F1F355347C0B465EE95F88737C0E3C252DFFF5247C03DF4A485B48737C06D78E5E5E15247C0E0620C338D8737C02A125727B35247C02FEE0EE2518737C0', 849.920700000000011, 10, 1920, 1940);
INSERT INTO public.tb_street VALUES (172, 'rua dr elias chaves', NULL, '0105000020E610000001000000010200000002000000A673238F2A5347C0D4750685AB8737C0762A6ABDEE5247C04E2318F2608737C0', 225.011950000000013, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (173, 'rua adolpho gordo', NULL, '0105000020E61000000100000001020000000300000080BF2F6A525347C022F56C0E1E8837C0CFEA192E345347C0E78B00A86F8837C0CD22E646115347C059246909CE8837C0', 360.051559999999995, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (174, 'rua albuquerque lins', NULL, '0105000020E6100000010000000102000000060000006E0D80B6F85347C08F566FC6F38837C00E1B0B55DB5347C07DE55DB2AA8837C03A6A4A10BB5347C06374BEF55A8837C0450BA240AC5347C0F2692710358837C028D86816865347C033599DFE028837C01BEFDD20865347C0A9DAFFE2028837C0', 546.974439999999959, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (176, 'rua brigadeiro galvao', NULL, '0105000020E610000001000000010200000006000000A2EEFA31F85347C0DF3ECBC8188837C04CBB765CC55347C0EB26E167748837C0578C04319F5347C042AF54719F8837C00E82E506965347C001ADA0B0AA8837C0D6D84473905347C04D692CAFB08837C0DA1B52128C5347C0A1E98922B48837C0', 430.179230000000018, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (152, 'rua cavalheiro', NULL, '0105000020E610000001000000010200000004000000E209DF0ED54E47C0C86BD2D6408B37C0B739527AD24E47C013BC8F423E8B37C04941D767B64E47C02D6E4F0F1A8B37C01C8153F3B44E47C026AAA17D188B37C0', 121.135459999999995, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (153, 'rua joaquim nabuco', NULL, '0105000020E6100000010000000102000000060000009D604AA5CE4E47C08EEE252DDB8A37C0FB304734CC4E47C00EFD195CE18A37C070B4B9C9BA4E47C0E17484E5108B37C0D6811EDDB84E47C0733A8D55158B37C0247300C8B64E47C0828D508B1A8B37C0AF0C08E2B44E47C052490D36208B37C0', 141.66040000000001, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (177, 'alameda ribeiro da silva', NULL, '0105000020E61000000100000001020000000A00000092B096926C5347C0181EABE7B58837C030332C4D505347C054CEFBF4918837C07EEE7794345347C04B61BA936E8837C0A9F0A316055347C04A84B04A338837C056D61EE4EB5247C0566F26A7128837C0C440CC0DD25247C046D5C70EF28737C08E27415DBD5247C0778CAFCED78737C05F3D7C7BA85247C0D6019F09BD8737C06EB16F738A5247C02E8982BE968737C08E06F7366F5247C003978859738737C0', 959.411709999999971, 10, 1920, 1940);
INSERT INTO public.tb_street VALUES (178, 'rua apa', NULL, '0105000020E6100000010000000102000000040000004F27EAB5985347C03244722D2F8937C05864670C805347C0523238610F8937C00AF75A3C665347C053BB5F0CED8837C0A2FF6C05405347C00BF38779BD8837C0', 336.625839999999982, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (179, 'rua dos pyrineus', NULL, '0105000020E6100000010000000102000000020000008E8548F99D5347C0346F2B422A8937C05855C97F8C5347C0723046CCB38837C0', 207.455579999999998, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (181, 'rua barra funda', NULL, '0105000020E610000001000000010200000006000000F536904DEF5347C015A73521B28737C0587F882FEB5347C03B05B4DEB78737C051518963CD5347C025BD9B45E58737C03BBD2360AC5347C05AF6C460358837C0E5ACD8B1925347C045E8E18A718837C093449EDC855347C0D211FD64918837C0', 503.000400000000013, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (184, 'rua sao vicente de paulo', NULL, '0105000020E6100000010000000102000000030000005D044818CF5347C0F6BB8D79DB8837C0769A33A5EC5347C09F400C79568937C06B867305F85347C04809FB0D978937C0', 342.080910000000017, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (185, 'rua carvalho', NULL, '0105000020E6100000010000000102000000080000001DBA01566C5347C08EFAA29AB58837C00BC30502695347C00E181530B98837C01FA13579455347C000CD6815BF8837C07C83ED1A405347C0ABA44C94BD8837C089DAB04A3C5347C00045331AC08837C0163576A21C5347C0C50360C2C58837C0553E99C8165347C01CE34CDAC68837C0658BDFD2135347C050A97226C78837C0', 279.406439999999975, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (187, 'alameda dino bueno', NULL, '0105000020E6100000010000000102000000080000004BA66F88A55247C0AB1D8826538737C00A0DFAF5965247C0EDA15A49798737C0C046FD4A8B5247C063C95DD1978737C082D786197B5247C02F436BC3C28737C07B7541CF675247C00A1240ECF58737C0C08FB9D4445247C02CE48E62538837C031A9F7B52A5247C0AD06C953988837C0165D3DB3FF5147C09947060A0C8937C0', 906.721260000000029, 10, 1920, 1940);
INSERT INTO public.tb_street VALUES (189, 'alameda cleveland', NULL, '0105000020E6100000010000000102000000070000007A67875F755247C0C3F8B28A668737C0AE6C1506705247C036AAB166748737C0E7956E214C5247C03E85BFD8D28737C070D74ADD375247C030F86359088837C067C7FB180E5247C0F845B97A788837C09C6F9A12F85147C052DCDA5FB38837C0EA7231B8E45147C0D00E6165E78837C0', 791.300929999999994, 10, 1920, 1940);
INSERT INTO public.tb_street VALUES (191, 'rua helvetia', NULL, '0105000020E61000000100000001020000000A000000C9E2546C2D5347C0272ABFB6D18937C02B7059D2065347C06A3E930EA58937C070EC664EF55247C01E7E637D908937C0AB8E5F60D15247C022034569658937C06BA3CA34B65247C0F67DC0C1448937C0DE0DE5679D5247C006979CE4258937C006005F7A615247C0A991AFB9DC8837C0D7399B92465247C01B75B5F7BA8837C0DA326A222B5247C0CA6F8C35978837C06B34F46C0F5247C0ED4707EA748837C0', 1068.60335000000009, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (193, 'rua barao de campinas', NULL, '0105000020E610000001000000010200000006000000CD22E646115347C059246909CE8837C0D712E966005347C0733F5D15F48837C05B80F12CEB5247C0A185394C268937C0F26A95BCD05247C07CFB6BA4648937C015DE9F72B05247C0DC57129BB48937C0C28B9807835247C055882DD4218A37C0', 725.44518000000005, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (194, 'rua anhaia', NULL, '0105000020E61000000100000001020000000300000050FCB7344E5247C05E181C57298737C0211C6DF53E5247C066BDA354628737C04AE503DD2A5247C06ECBE9A3A68737C0', 238.713950000000011, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (195, 'rua julio conceicao', NULL, '0105000020E6100000010000000102000000030000008B564922595247C0C3411830588737C0FCB20591475247C0D1992C28428737C0BED9F15A315247C08DB97755278737C0', 148.941550000000007, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (199, 'rua conego martins', NULL, '0105000020E6100000010000000102000000020000003182FAF5B15147C0CB15A6FD438837C0762AF4A1C55147C06F5868E3578837C0', 69.9166199999999947, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (200, 'rua da graça', NULL, '0105000020E610000001000000010200000007000000DCAD6EF0D65147C09ABC3853278737C05CCFA374CE5147C0F86B9FE5448737C0F4DF2FE3CC5147C0C473B0B2518737C0125A90FEC95147C0B367C276588737C0211DA03BB95147C0DE1FAFDAB48737C0F1A242F4AE5147C0065608ECEE8737C0761388D8AC5147C0BFE0CA45F28737C0', 369.797120000000007, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (41, 'rua lourenço gnecco', NULL, '0105000020E6100000010000000102000000020000007741DA04DC5047C093D85C57348C37C0FBF63570C65047C0315C82F7258C37C0', 71.4940699999999936, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (202, 'rua itaboca', NULL, '0105000020E610000001000000010200000004000000186D5661185247C03BC8749B958737C0917B8C030C5247C0F8216D65C28737C0D1928F7EEF5147C0140967A8298837C0893F3FE8E15147C01A6A68E6378837C0', 329.459729999999979, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (204, 'rua carmo cintra', NULL, '0105000020E610000001000000010200000002000000645C7E53D35147C010F96556CD8737C02BB26215E95147C0556CC3ECE18737C0', 76.2053800000000052, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (211, 'rua dos protestantes', NULL, '0105000020E6100000010000000102000000030000000D83C528A95147C00C7CC6FCFA8837C069DBF89FA25147C0E6CFED870A8937C008848DB8875147C0018D0FE3628937C0', 204.468899999999991, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (263, 'rua hahnemann', NULL, '0105000020E61000000100000001020000000400000010A6D297C64F47C04D4EBE38F38737C00978D9BE9B4F47C01457010C088837C0D4FEB7E95B4F47C02D5249A4298837C07F3DFF072E4F47C0EE06BC0B408837C0', 492.838489999999979, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (213, 'rua maua', NULL, '0105000020E6100000010000000102000000060000009C5ED1EE845147C0504566EEF38837C050E98EB1805147C0755D2FEDF78837C0EDC958FE4E5147C02AC9C828128937C08C427B9A455147C0274AF244168937C03359EA0A3B5147C018286E121E8937C04F602E62235147C057B9C8CB2A8937C0', 318.246069999999975, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (214, 'largo general osorio', NULL, '0105000020E61000000100000001020000000A000000EA7231B8E45147C0D00E6165E78837C0F53129D2E05147C00CE5BC62ED8837C001D4078FCC5147C09B18FD7AF18837C0F32A7C5DAA5147C0717DC837F48837C062683F0EA95147C04068DE3BFB8837C045EDD1ACB05147C08094A46BFB8837C0A13C806ABF5147C0C5D65E190F8937C0858FB6F3C35147C0650B0AE8188937C0854AE3B5CE5147C0510868B4FB8837C0B4027281D45147C022047E07F08837C0', 387.158059999999978, 4, 1920, 1940);
INSERT INTO public.tb_street VALUES (252, 'rua iguassu', NULL, '0105000020E61000000100000001020000000400000063BB40E4435047C0430CAB86778737C0315D0E731C5047C059D3E1E9538737C060994EAC185047C0340E1F47508737C002B98CB3145047C08250F6DB4F8737C0', 162.525450000000006, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (188, 'rua visconde do rio branco', NULL, '0105000020E61000000100000001020000000E000000762A6ABDEE5247C04E2318F2608737C0A19C5A1FDF5247C0708F6AAD898737C0BF92EC5AC05247C0E64F269ADB8737C0E09672F39D5247C0D746CA92398837C0EBD6D7817B5247C025AA1D7B978837C03543E0EB605247C06291C134DE8837C0A3593A36475247C04158FEF1228937C0AA4845B1FA5147C06A7C1D77EE8937C046677CEDE45147C0A1957E2E2A8A37C011079951D25147C0E6CAA54E5B8A37C04FFDE76EBF5147C032B5681B8E8A37C0D56720FDB25147C074F3F304B28A37C01A7D81DEAA5147C0C8B00FCBC98A37C0404435A4A55147C015382BDEDA8A37C0', 1820.44657000000007, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (207, 'rua tres rios', NULL, '0105000020E610000001000000010200000006000000125A90FEC95147C0B367C276588737C073FF68D9AA5147C0B6485DD5678737C027566B5E8C5147C022427613788737C0631DDCBF635147C05151B9828C8737C01A3A740F2C5147C01CB87BCEAA8737C0AF0742BEE45047C03F05AB91CE8737C0', 741.792249999999967, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (215, 'rua amazonas', NULL, '0105000020E6100000010000000102000000030000007109C54F485147C0715E02709B8737C042D5D82D3D5147C09873C9DD548737C088EBA195355147C0EF7E2FC6258737C0', 207.221049999999991, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (504, 'rua joao passalacqua', NULL, '0105000020E610000001000000010200000002000000F3D59586A75247C097AA74618B8D37C050F8BC369F5247C00C614BF02E8E37C0', 277.600270000000023, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (216, 'rua bandeirantes', NULL, '0105000020E6100000010000000102000000030000005AF738B9355147C06A3ADFA2268737C00BB4330F2F5147C0363C6631288737C0743E806FCF5047C0467A7FF0618737C0', 334.493130000000008, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (217, 'rua afonso penna', NULL, '0105000020E6100000010000000102000000060000000427BE393F5147C004922CAF288837C077A46D882B5147C043E43112AB8737C09B8A6F8C215147C085DEBF01668737C08C768F2C205147C0308E1C5B5B8737C0728ABD061A5147C0EB9C20E5348737C0C946CD5A175147C03325EA1A258737C0', 455.953199999999981, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (218, 'rua dr. rodrigo monteiro de barros', NULL, '0105000020E610000001000000010200000005000000743E806FCF5047C0467A7FF0618737C0381A2992C85047C0098A98A5668737C0C3D8782B865047C0CA19AC328D8737C0FF85AC23795047C0E8D13B4B958737C0124390173D5047C09F84FF67BA8737C0', 479.956529999999987, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (220, 'avenida tiradentes', NULL, '0105000020E6100000010000000102000000050000000DA4B5D7125147C093059D3AF48837C0E0F3C268F85047C0DA5E9B414D8837C06BD8BEC0E45047C00EB26B90CE8737C04ABB46CAD05047C09039171F618737C00EC79FB1C45047C03D2A1BBB258737C0', 818.944650000000024, 2, 1920, 1940);
INSERT INTO public.tb_street VALUES (221, 'rua alfredo maia', NULL, '0105000020E610000001000000010200000006000000093C1D14995047C00511D901198837C01538525E855047C07C8C22B28D8737C082BA4D37855047C0F8A4B5C6858737C0717B8CCF815047C0D187A6EF768737C0C2077438865047C04C5CF5ED4E8737C0E434A6848B5047C096E602D2258737C0', 424.306170000000009, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (201, 'rua correa dos santos', NULL, '0105000020E6100000010000000102000000040000000F2AD4DCB85147C0FEB038F2B68737C034470BD4B55147C06B896EE1A68737C0E13663F3AA5147C004C7176B688737C0C84761859F5147C0698C088A268737C0', 256.493749999999977, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (198, 'rua dos italianos', NULL, '0105000020E61000000100000001020000000200000008A2237F0E5247C09CB5BD7F8C8737C0980266B82A5247C02DD90356278737C0', 192.248840000000001, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (212, 'rua general couto de magalhaes', NULL, '0105000020E610000001000000010200000009000000D06C3AC56F5147C01EA604E2168A37C0CA25192D7C5147C0EC93594AE28937C00AF45605875147C03FE91E9FB28937C02B7F21C8865147C0508446FD8B8937C03F80E40A865147C0D57C2A426A8937C00E848DB8875147C0048D0FE3628937C0E59A1CBF855147C0C45CBBDA4F8937C0DDD859C4855147C005A8B471FD8837C00E0731E9845147C075693BAEF38837C0', 508.833160000000021, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (206, 'rua guarany', NULL, '0105000020E6100000010000000102000000050000009D8A6F8C215147C092DEBF01668737C06B17AD543B5147C0DAF5BB0B568737C01A9D81B13F5147C05E4E0B43538737C094AB1E98625147C0BC2775FD3C8737C028EB196C865147C001231A74268737C0', 332.190710000000024, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (227, 'rua dos carmelitas', NULL, '0105000020E610000001000000010200000006000000381B24E1865047C002279F5AF98C37C0345F5913885047C0DFBE83E8198D37C0C1D89AED885047C0A4AA08192B8D37C067CA45D4885047C0BAB46D6B438D37C01504CFD9875047C00D1322625A8D37C0F3E0396D875047C044059B52668D37C0', 184.551459999999992, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (228, 'rua conde do pinhal', NULL, '0105000020E6100000010000000102000000070000007A6E5541015147C0A25CED8E728D37C0507E9C1A025147C046D0A114778D37C0CE81ACAB165147C0A7F6A70D938D37C0F9C6EDC8235147C055F0F878A48D37C092E68F242D5147C08F3B35D9B08D37C0AE22617C2F5147C084E59DF6B18D37C0BAE4D9C3315147C04A2391F6B28D37C0', 188.792990000000003, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (229, 'rua do carmo', NULL, '0105000020E610000001000000010200000003000000860176CBCA5047C04075EBE1F98C37C00F950974C85047C06A51934CFE8C37C0F00304A9935047C008746CE96F8D37C0', 263.252279999999985, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (230, 'rua agassiz', NULL, '0105000020E610000001000000010200000005000000C2628E54A45047C0C4C69E094C8D37C06C61246AA25047C0731709DD498D37C0C6FE5E7C925047C04CC5EDC8348D37C0587A8BCB8B5047C044715F402B8D37C0531D3EBD885047C0CF38F249278D37C0', 106.083529999999996, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (233, 'rua anitta garibaldi', NULL, '0105000020E610000001000000010200000006000000860176CBCA5047C04075EBE1F98C37C0AE839116DB5047C0F463D31A138D37C0B87E6EFDF15047C05E36A2A4368D37C06D8270AAF95047C03DEC6BDA428D37C0F09F2579FC5047C03F5E602A4F8D37C03B3A13EE045147C0E15D0D0D708D37C0', 275.207150000000013, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (235, 'travessa do quartel', NULL, '0105000020E610000001000000010200000003000000DC53E584F95047C05B35B39E428D37C0A24F1A04FA5047C07BFCA563448D37C0285E69A8255147C0187452481B8D37C0', 156.058330000000012, 3, 1920, 1940);
INSERT INTO public.tb_street VALUES (236, 'rua conselheiro furtado', NULL, '0105000020E61000000100000001020000000300000088817BB50B5147C085C2F524848D37C0AAF0D662055147C0E3FADE543C8E37C0FF01BAAF005147C0B4ADB136E88E37C0', 602.694899999999961, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (237, 'rua conde de sarzedas', NULL, '0105000020E610000001000000010200000005000000D795C4380A5147C062207877AF8D37C05B37168C075147C048509020B08D37C0872839E2915047C0979B07CEEA8D37C03DF3FF918C5047C08EF9615FED8D37C0136BAA2E875047C09083FED5F28D37C0', 424.452020000000005, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (238, 'rua livre', NULL, '0105000020E61000000100000001020000000200000033B89969565147C01BEBFB8A8B8D37C0CD14A43C435147C0B504053B9A8D37C0', 64.6955800000000067, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (242, 'rua dutra rodrigues', NULL, '0105000020E610000001000000010200000004000000B78791DBDD5047C00C510247DF8837C078E9EC3ADD5047C0905B9865DA8837C041A38DA5D65047C0B7914B2EAA8837C0885B0C90CC5047C033C30CD9628837C0', 217.066499999999991, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (244, 'rua dr. pedro arbues', NULL, '0105000020E6100000010000000102000000040000005CF5D131AE5047C05FC9D236EF8837C07681DAA9AD5047C0ABEA9F4EEA8837C0EDE6A7D2A25047C0C2A36B4B9B8837C043FA270E9E5047C0434928BE798837C0', 204.792759999999987, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (245, 'rua guilherme maw', NULL, '0105000020E610000001000000010200000003000000DB68E4D6935047C0D5DB8BF57E8837C03D372403955047C0D8C8C7D8838837C0D680934EA45047C0ECAC5C91F28837C0', 202.107679999999988, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (253, 'rua victor ayrosa', NULL, '0105000020E610000001000000010200000003000000B0007AAA275047C04200850A5E8737C008C16CBD285047C08EBD165F578737C02564BF89345047C0E2AEB685288737C0', 99.045259999999999, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (256, 'rua pedro alvares cabral', NULL, '0105000020E610000001000000010200000004000000297BF5352A5047C0EC4EA6061A8937C0094EB3E5285047C0AAEDDE21128937C009107E56225047C026C798B7F38837C06F44331D175047C08754E451BD8837C0', 167.616150000000005, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (257, 'rua joao jacyntho', NULL, '0105000020E610000001000000010200000003000000E7D53A14F54F47C0916EF7922A8937C0067C4DAEF44F47C0A3514B6B268937C098B926CAEF4F47C0DF61EF41D18837C0', 151.844159999999988, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (258, 'rua affonso arinos', NULL, '0105000020E610000001000000010200000004000000EC459BFC175047C0F3FC647B078837C0B46B34C70C5047C0CD1567EC048837C0C255696CE74F47C0027096C7E28737C0C37AE98EC64F47C0D36FD8FCF28737C0', 271.12709000000001, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (250, 'avenida tamanduatehy', NULL, '0105000020E610000001000000010200000002000000A67BDFCD585047C09DDDD23E298737C03F6FBCC7195047C08FA27D27158837C0', 444.400620000000004, 2, 1920, 1940);
INSERT INTO public.tb_street VALUES (350, 'rua plinio ramos', NULL, '0105000020E610000001000000010200000003000000CF56FECD825047C01B9C5B02788937C0A1A7F3D0895047C0CC9BB1C2968937C0E113C956995047C0ED6A147AE08937C0', 190.001370000000009, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (351, 'rua page', NULL, '0105000020E61000000100000001020000000800000072A4FC7CEA5047C0DD021E83BB8A37C080A02845E75047C0D3E7CF51BC8A37C0CCC705A7DB5047C080507175B88A37C0C8C89663C35047C0DFD9B3FDB08A37C0F78EBA08BD5047C092E3DF45AF8A37C0B6C7A6ECB45047C0A76178A5AE8A37C013D03E4EA85047C0B1C2AB89B48A37C0DA6A9445A55047C0CCF2306AB78A37C0', 220.047689999999989, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (225, 'rua jose paulino', NULL, '0105000020E61000000100000001020000000E0000000DA4B5D7125147C093059D3AF48837C0D9F62AC7195147C04C298AC5F98837C0E8AF7993285147C08A6E7282F28837C0E2EDEE963F5147C006E5B64BE68837C03552B8A0695147C05B69E48ED08837C0AB9388267F5147C046C9BAF6C68837C067172E74875147C09E5EC628C18837C0187F59F9915147C0433EB79FA78837C04D43527BA35147C09BB2C0AB738837C0DA3C771EB25147C06CCE9926448837C0CF5EB60BC05147C0626B8CF40F8837C0645C7E53D35147C010F96556CD8737C073C8534AED5147C0CEB5B5216E8737C06567D7D6005247C0B774C284278737C0', 1168.48523999999998, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (251, 'avenida da cantareira', NULL, '0105000020E6100000010000000102000000030000003F6FBCC7195047C08FA27D27158837C05D9AA5FA165047C0D18AE0CCFF8737C0F257942F145047C0C66D7109288737C0', 401.834650000000011, 2, 1920, 1940);
INSERT INTO public.tb_street VALUES (254, 'rua tapajoz', NULL, '0105000020E610000001000000010200000003000000EA051BA7535047C0A5E44F873C8737C0A2858B014F5047C0A7CF2084388737C030D4D8C83D5047C04D883954288737C0', 76.2248500000000035, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (255, 'rua tibiriça', NULL, '0105000020E610000001000000010200000002000000C2C1316C2E5047C0B5B64BE3C78737C0999782FC155047C01569C71EB38737C0', 83.8462300000000056, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (249, 'rua da cantareira', NULL, '0105000020E6100000010000000102000000040000000DC314671E5047C0A6ABA374338837C0999BCF64265047C0B759B251568837C060ED4AEB375047C010FFFFE6AC8837C00C31864D4C5047C0A3BDC7190F8937C0', 397.812520000000006, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (268, 'rua monsenhor andrade', NULL, '0105000020E61000000100000001020000000B000000C9865712A74F47C0B263D0CDF68837C08BDE00ECA54F47C090A4FEAA448937C0E10D6B78A14F47C0546526A1F68937C05DCB66619F4F47C0788125B70F8A37C0439104709D4F47C0D5A93257558A37C0BCA607999B4F47C0D9E5CE6C838A37C0D6E2769B9A4F47C046ED6040948A37C0D8B1F692984F47C0D789F963AD8A37C0E6F90B16924F47C0C4DE7DA9F48A37C0BE645F61884F47C04AE552F63A8B37C026E55D1B684F47C02AF1A56B968B37C0', 1172.10129000000006, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (270, 'rua pasteur', NULL, '0105000020E610000001000000010200000004000000B469F6C4195047C04AEA5812158837C06AC552AB0F5047C0ED09A8572A8837C063B57C0DF74F47C03732729B358837C066664864D34F47C0B0E1F3F7488837C0', 242.653870000000012, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (274, 'rua amelia sa barbosa', 'n.o. (no oficial)', '0105000020E6100000010000000102000000030000009F978B9A565047C0C9A8F3430A8837C037E23F873E5047C0093D9589F58737C0430EC317315047C09D1E56BCE98737C0', 129.172159999999991, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (275, 'rua gabriella sa barbosa', 'n.o. (no oficial)', '0105000020E610000001000000010200000003000000889D339F485047C0300EF7B7448837C041378929495047C0727D68BA3E8837C09F978B9A565047C0C9A8F3430A8837C0', 108.312449999999998, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (276, 'rua odette sa barbosa', 'n.o. (no oficial)', '0105000020E610000001000000010200000004000000F10864754B5047C00E46FDC3358837C0AC8FDD84405047C00CFA71092C8837C06877DC8A295047C090451A63188837C056CFFD10265047C09605483A158837C0', 128.846890000000002, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (277, 'rua mathilde sa barbosa', 'n.o. (no oficial)', '0105000020E6100000010000000102000000030000001AB8BD09405047C0652126A02B8837C04BD066434B5047C0DBAB7680008837C02673FB245C5047C0E620BE1AC08737C0', 201.702059999999989, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (278, 'rua teresa benedita sa barbosa', 'n.o. (no oficial)', '0105000020E610000001000000010200000003000000032C1441595047C0D2764D21CB8737C06B8BD57B575047C0D3CD65C1C98737C03A34EBC24D5047C073D44753C18737C0', 39.4651199999999989, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (282, 'rua rio bonito', NULL, '0105000020E61000000100000001020000000F000000A6B98832B54E47C04F60B17A5B8737C0C103DCB0CA4E47C0628A0778558737C04A4B7BF3CE4E47C0CE456305588737C0F0F16B95E94E47C0C16FD03B6F8737C095F203B7014F47C06B86C362838737C0B136F494054F47C09C35D8E2898737C02730A114074F47C0FC0FA2F7908737C0FBA44D4B0E4F47C08F9C3268A48737C0B6BCFBAB134F47C0CE27605EB28737C030FB6AE11A4F47C04F9880BCBE8737C0BA3356181E4F47C0C1F92418C18737C07D5CBBF0214F47C04F844272CC8737C044232E0A244F47C0F13FFD53D58737C04035CEB2274F47C07E24C63BFE8737C07C16D5272E4F47C0C28730FC3F8837C0', 617.370099999999979, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (505, 'rua quatorze de julho', NULL, '0105000020E61000000100000001020000000200000097EF7B3A845247C0C80FA8D1F58D37C045BF9B784E5247C01923D89BEC8D37C0', 168.211299999999994, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (283, 'rua rodrigues dos santos', NULL, '0105000020E610000001000000010200000009000000AC7BC92E2E4F47C0EE2DCBF83F8837C0B56727BA304F47C0A9798442478837C0C8008D013A4F47C098083E04678837C0E970187D434F47C0FECA4D58878837C04137A35E584F47C011EF92C3CD8837C0F8B1F2F0674F47C0C820F186048937C08A2F11DA684F47C0FD07E7DD368937C0F733E5A3694F47C0C9636797BA8937C0C3D4277F6A4F47C02C79BDFF448A37C0', 919.449409999999943, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (285, 'rua maria marcelina', NULL, '0105000020E6100000010000000102000000030000006C5CC9F52E4F47C0D8E7CA32428837C0D3BADB602C4F47C065C69BD1468837C066618F8CEE4E47C004435273198937C0', 415.94353000000001, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (418, 'rua ricardo baptista', NULL, '0105000020E61000000100000001020000000300000065A072118C5247C05A41BB17618D37C04B497472895247C0240EB5755F8D37C001F3A964575247C0723E0B0F488D37C0', 169.509359999999987, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (243, 'rua d. antonio de mello', NULL, '0105000020E610000001000000010200000003000000ED67413EC15047C0C750D2C0E88837C0797844DFB15047C06CC9D317758837C06A29BE0AB15047C030AC9D3C708837C0', 209.835520000000002, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (240, 'rua dos andradas', NULL, '0105000020E610000001000000010200000004000000DD321E2CA45147C03DA3043ED78937C0CDB8DE20BB5147C081D7A1E59D8937C07AC5485FEF5147C05D3C1EC31C8937C031C82FCEF95147C07678BC4E038937C0', 446.618269999999995, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (234, 'rua irman simpliciana', NULL, '0105000020E6100000010000000102000000040000003238B30B315147C078426C3E498D37C0BEC1F198085147C036EDCAC86D8D37C03B3A13EE045147C0EB5D0D0D708D37C0786E5541015147C0A35CED8E728D37C0', 164.598929999999996, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (269, 'rua itariry', NULL, '0105000020E61000000100000001020000000300000066B57C0DF74F47C03232729B358837C05DE5C7CEFA4F47C06C64707FF48737C0CC412AC5005047C0C780FAA4A68737C0', 243.50997000000001, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (288, 'rua carlos de campos', NULL, '0105000020E6100000010000000102000000020000007F2BD407D94E47C0E8217B69FE8737C0053CD132B54E47C001CAD141B38737C0', 169.105349999999987, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (289, 'rua mendes gonçalves', NULL, '0105000020E610000001000000010200000002000000B629DCF8D44E47C009DE59E6F58737C0DFDFC38BB54E47C0A55CC06C3B8837C0', 152.947540000000004, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (290, 'rua dr. virg. do nascimento', NULL, '0105000020E6100000010000000102000000020000000CEECE29C04E47C097F595EF238837C0EC6786DFB54E47C0DA8E46F90D8837C0', 49.0463400000000007, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (298, 'rua miller', NULL, '0105000020E61000000100000001020000000A00000000D94E1A134F47C01347F3EC9C8837C0AC0F5E4D144F47C0ED13665BAF8837C0DC3FD6DC104F47C0F20749A5128937C019EB0ABF114F47C09CB366381D8937C0E211C6F20E4F47C03878AFDC8F8937C041C678340E4F47C0CC41CD24B48937C07FB9BBB60A4F47C0DFA6708D448A37C0982809A1064F47C0644793AA4C8A37C03450DAD1FE4E47C02DBC0E0A628A37C065593242EC4E47C0F07A0424948A37C0', 881.907040000000052, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (301, 'largo de santa cecilia', NULL, '0105000020E61000000100000001020000000800000050D8988E1F5347C0D886E7CEEC8937C004AE2307295347C0BCC4BC6CFB8937C083B784CD365347C080552F450F8A37C04CE21B953A5347C0FAAFF357188A37C0C47C2995385347C09688CF8E1F8A37C0B626B57F305347C06E1FFD33278A37C0FF25A3612B5347C02D388C81228A37C0A4EBA716185347C0BE431EB2038A37C0', 251.630329999999987, 4, 1920, 1940);
INSERT INTO public.tb_street VALUES (302, 'rua anna cintra', NULL, '0105000020E6100000010000000102000000050000002C59B1551B5347C00D5F048DF98937C0AD9904D90D5347C0FB434BAAE88937C0932EFDF6F05247C09543095BC58937C0ED3F8DC1EE5247C0286270CFC28937C0BD617D01C15247C0581594998B8937C0', 337.272839999999974, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (264, 'rua carnot', NULL, '0105000020E610000001000000010200000006000000FE9F59A0C84F47C06016BA4CE58837C0E7773D15BE4F47C05FE4B962A18837C05A21B875A64F47C0649CE7D6028837C0AAC32A609D4F47C01C2F2B16C48737C04EAA201B944F47C068B3FA29858737C0206991AE8A4F47C062944EF7458737C0', 727.916870000000017, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (297, 'rua silva telles', NULL, '0105000020E6100000010000000102000000050000009A352D79EE4E47C0674A2A77198937C081852997DB4E47C086CC72511D8937C0B32136DFD04E47C02EAE6ED6088937C08AFB77B4C64E47C0E06F58ECF38837C080BEB3ADB54E47C05C2EF24DCF8837C0', 236.270109999999988, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (303, 'rua fortunato', NULL, '0105000020E610000001000000010200000006000000657097365C5347C095E626A6F58937C0D041B6BC5D5347C0269F302EFB8937C0245601EC605347C0A93A84DF0E8A37C0D5AD727F685347C0F896FB7F3D8A37C0FDA3CA1E795347C079488C11A48A37C0E83F788A795347C0863F3032A88A37C0', 315.46053999999998, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (295, 'rua mendes junior', NULL, '0105000020E6100000010000000102000000030000000FDBA0ABCE4E47C08C794894198837C0180D3E20CC4E47C0EB6FF342218837C05893B9BCB54E47C0B7FD4726B08837C0', 266.545479999999998, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (305, 'rua jaguaribe', NULL, '0105000020E61000000100000001020000000D000000ECCC7403EE5347C095B2A43AA38A37C0F5803616EA5347C0781C9E0DA38A37C043D0A3E6D45347C0ED28ABDDA38A37C0C4617768C55347C0AD0937C6A48A37C04CF3BAA0995347C02B7CD8C1A78A37C0E83F788A795347C0863F3032A88A37C0B7B0862C715347C00121DA2DA98A37C08C256036655347C0005186F0A98A37C00D809D53595347C0B49DA643AA8A37C074DAA20E505347C07842FD0AAB8A37C04B0945E5355347C07CAE4273AB8A37C0F82CE5930B5347C0BAC0A02AAE8A37C071AA9ED8E95247C0C0A22082AF8A37C0', 811.02949000000001, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (306, 'rua canuto do val', NULL, '0105000020E61000000100000001020000000C0000001C0248AF445347C0C7475C65678A37C0B6AFCFA7475347C022B399F7658A37C0F3F710FE575347C004C88AB95C8A37C05F40757F645347C054DBA971558A37C0236726BE6B5347C02259E185518A37C08AB3BEE7745347C0F4C945274C8A37C09318DDA6895347C0CAEC61BB408A37C080AA85E78B5347C0341073733F8A37C09041249C955347C0A642A2133A8A37C053E7A3AF985347C0D09F43F1388A37C08CA228E19E5347C03A76FF72388A37C0AB39664CDC5347C046F2B42F348A37C0', 484.161279999999977, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (307, 'rua baroneza de itu', NULL, '0105000020E610000001000000010200000003000000E7B9D59ADC5347C0A2097F43368A37C02D955612E05347C01BBA94CD348A37C001511291F85347C01314B953288A37C0', 90.2664099999999934, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (308, 'rua barao de tatuhy', NULL, '0105000020E61000000100000001020000000B00000044FF8814D65347C0D4C316D2A38A37C0AC5ABD6CD55347C08A01F1E29E8A37C0F20895EAD05347C086E7A8CC838A37C08FC2363CCA5347C0033D3E4F5E8A37C093EAD28EC35347C06F9557E7358A37C000B55424B95347C053DAE054F98937C07BA957DFA65347C0A3A6FDC08E8937C02ECEE3EAA45347C06B2CA2C9878937C050FE70C8A45347C0D78DF1FF7F8937C0F9B14B02925347C0C7AB549F548937C0EBFCEAB28A5347C0615BFEDF438937C0', 647.332149999999956, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (309, 'rua imaculado conceiçao', NULL, '0105000020E610000001000000010200000005000000B6E54353B15347C07AF077BBCB8937C022907446AE5347C00A1AE2EBCD8937C072473D2D9F5347C0BC9D2719E78937C0125BBE828F5347C0775C7371018A37C07AD8C0C3835347C055356E23158A37C0', 189.168900000000008, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (310, 'dr martinico prado', NULL, '0105000020E610000001000000010200000005000000E52183C3F85347C0D7C23046E98A37C09601F7FFC65347C0BD7E6645EC8A37C029D8F70A9A5347C097AF42F6ED8A37C0ED337A1D8B5347C05743B10CEE8A37C0222FF2DC5B5347C058715AF9EE8A37C0', 489.015530000000012, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (311, 'rua jesuino paschoal', NULL, '0105000020E6100000010000000102000000060000006BFF5E0E335347C09A86ECA1AB8A37C06E904BA7325347C0823FAC99A68A37C0BF50C3542E5347C0C592F2538F8A37C0761C8CFE295347C0C41CC0BE758A37C0B3ACCD5E255347C06ADE9BC15A8A37C0BC8A4F6D215347C06D4493C0448A37C0', 182.449720000000013, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (312, 'rua barao de joatinga', NULL, '0105000020E610000001000000010200000002000000FF1CB7F7035347C0578E5327428A37C0ACDB6F29145347C0723799D8558A37C0', 60.4461000000000013, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (313, 'rua aurora', NULL, '0105000020E61000000100000001020000000E0000003F6D76169E5247C004705104158B37C0DB4BEC2B9B5247C0F6C8EF2F148B37C034C8EA658E5247C0592D10C0028B37C0D5B1DF24815247C092298F59F28A37C08E2C6783785247C0CFBA17DBE68A37C089302816535247C0DA1BE38EB78A37C018F10A0A335247C05D3711448E8A37C0B2B09024305247C0F2579C368B8A37C0762E2AB31F5247C0E86B2E8C758A37C06C75A949165247C0E56677E9698A37C0BA21BFE7E45147C07854A53D2A8A37C0A5D7CE49C35147C06DD84B2DFF8937C0D9321E2CA45147C03BA3043ED78937C04DDE5704875147C01F1820FEB18937C0', 1057.47020999999995, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (314, 'rua washington luis', NULL, '0105000020E61000000100000001020000000B000000B0035DE6865147C059E44727B38937C096D39D4E7B5147C05C30D0EDB28937C09B91A20F5E5147C09E3B4468B08937C0304766005B5147C0A687BC78B08937C0AF421F14535147C0FD998647B18937C09EF2164C505147C058D37E56B18937C09C2C16F43F5147C01300212BB18937C00E7C7336385147C0AE7A86E5B08937C09EDF4CE42F5147C0757D5CA2B18937C07798F30A155147C0DF799FC9B08937C0979B02E9035147C0CB74F76DB08937C0', 408.360619999999983, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (338, 'alameda glette', NULL, '0105000020E610000001000000010200000002000000AD5F78D6445247C0BF08E55D538837C0561DDF04295247C006FA5E34308837C0', 105.097440000000006, 10, 1920, 1940);
INSERT INTO public.tb_street VALUES (316, 'rua maria theresa', NULL, '0105000020E6100000010000000102000000070000009C1F9B3DC25247C0BEFA2B6A9D8A37C0E3417735C25247C079DB87C7978A37C02F73DD49C05247C07E784B22868A37C0D4520CEEBC5247C01456F332638A37C05FE0A85BB45247C07AC179A70F8A37C019F1F3C2B35247C009C281A10C8A37C0E6A953D0B15247C002E95847078A37C0', 259.903320000000008, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (318, 'rua dr. vieira de carvalho', NULL, '0105000020E61000000100000001020000000500000052C5EC80975247C01BE4B67C458A37C04314E0DC945247C0CEEA417C488A37C029B34C68785247C06949CF85848A37C0E7E3E67E5B5247C04A096C2FC28A37C00B1EE50E4B5247C0DD8FCDCBE38A37C0', 358.628440000000012, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (319, 'rua do arouche', NULL, '0105000020E610000001000000010200000004000000716A945C9B5247C0D8727ACFB58A37C0662177C57C5247C03F7DC986EC8A37C0D943DF6A6B5247C0439D72820B8B37C07D0FC94A675247C07411FA4A138B37C0', 226.454250000000002, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (320, 'rua general osorio', NULL, '0105000020E610000001000000010200000012000000E440A49AA55247C08F4D559C9E8A37C05D107E46A55247C0C7269E90968A37C0991C5B039C5247C0837C0D315F8A37C052C5EC80975247C01BE4B67C458A37C064ACBFB1955247C01E47F2133A8A37C0E16A470C8E5247C0E2342B932F8A37C0C28B9807835247C055882DD4218A37C09F2D54CA685247C081256AC3008A37C0BFB254C7535247C0F6257352E58937C0F0CF40CE395247C0F178BAA3C38937C0165AD48A365247C081B5FF84BF8937C00B5F2F0B335247C06829C5D3B98937C063C4BC792F5247C05B63AEC3B38937C02113ABCE2B5247C0FD68E0D3AD8937C0D7D6E6A21C5247C0D9FB7E2F948937C01B59CD57FB5147C065FF90E7648937C0A7ADC708E15147C00B15E433408937C0858FB6F3C35147C0650B0AE8188937C0', 994.075910000000022, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (321, 'rua victoria', NULL, '0105000020E61000000100000001020000001000000082CF9AA8775247C0BB72A81E868A37C0B72327616D5247C020A1722A798A37C049FD930D655247C0EE77288D6F8A37C00B865F915D5247C00C218AEA658A37C0A1E039024B5247C08D5BA178508A37C06D654121495247C051EF25224E8A37C0089C07163B5247C0C56A43013D8A37C098F04754325247C0037F5B5E328A37C0932275791A5247C0157DE14C168A37C06D98664CFA5147C01119E08BEF8937C0E3DCF01CF65147C05DE28D9CEA8937C0A1F9605DE25147C096DFB1A1D28937C0637BDAB2B95147C0BEF1F677A18937C02B4A62AAA95147C04C467C548E8937C00B0776DE9A5147C014EE204B7C8937C0D0EE7B5A875147C00F0A3880648937C0', 894.60172, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (322, 'rua conselheiro nebias', NULL, '0105000020E6100000020000000102000000040000005CBBB6D8385247C09D34F84C2B8A37C033B366DE2E5247C0C4C80770448A37C02C88B92F015247C0A69C97D3BC8A37C0AF1C5D1EFF5147C04A63180FC98A37C001020000000A0000002BFEB26E435347C0616CD1DB688737C0BAE9D1642A5347C09C064550AB8737C0B12E1C5D1A5347C0C4543762D68737C03C8E5344FC5247C02A6E72DD278837C0D8513256DB5247C085B5691E818837C05DD1E581B45247C0EC9EAB5AEA8837C0A66D165B9D5247C0C0669E05268937C0DC67541A805247C03DF71B26718937C05B0C8AA5665247C05965BF4BB48937C05CBBB6D8385247C09D34F84C2B8A37C0', 1777.03395, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (324, 'rua do triumpho', NULL, '0105000020E610000001000000010200000008000000BE4ED304C45147C0B26829FF188937C0EC7281E7B85147C00052EC9E348937C047E70FAAAF5147C0AA9C95624B8937C0A52F34FC9E5147C0100C0399748937C08B82A7A79B5147C057BD60407D8937C098F688D5925147C05E426A06938937C0F09BDC8F8A5147C0E7733286A88937C0C3957FF9865147C0CB7BE225AB8937C0', 313.504250000000013, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (325, 'travessa joaquim gustavo', NULL, '0105000020E610000001000000010200000002000000D7644982385247C059974C97C48A37C0E148F2C8475247C0F1C912FFA88A37C0', 66.6343999999999994, 3, 1920, 1940);
INSERT INTO public.tb_street VALUES (503, 'rua ruy barbosa', NULL, '0105000020E610000001000000010200000003000000F2841027A55247C00D86F6E02F8E37C0815524F89D5247C001F4297BC78E37C028D0F6949A5247C0C5CC287AEB8E37C0', 318.899189999999976, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (328, 'rua amador bueno', NULL, '0105000020E610000001000000010200000004000000E1B99C79E65147C0E900F438798A37C0DFAE710CE55147C0876A9C067D8A37C0848EB152CC5147C0ABF95BCFB78A37C0D8D13A4CB55147C05CCC4FF0EE8A37C0', 251.110579999999999, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (335, 'rua ypiranga', NULL, '0105000020E610000001000000010200000006000000263C34F7715147C0D76F2CD72B8A37C0FD1B9380755147C0FD72B3882D8A37C04C284C959C5147C0352BC97E608A37C00DFD91C8BF5147C0D685392A8D8A37C02C2282B0EF5147C0594D1670DA8A37C0B4EC70680C5247C05126267A078B37C0', 609.483939999999961, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (296, 'rua casemiro de abreu', NULL, '0105000020E61000000100000001020000000900000006082A39B54E47C06B159DA3158A37C0E566E236C24E47C0F21990C1F48937C024C0B8CCC24E47C032490B28E88937C037BDA1B8C34E47C0934C5FD86E8937C0B712BFA7C44E47C080DC884C138937C00EAF9120C54E47C0BB93968CF68837C0DE3CA18EC84E47C0D6F128D7F08837C09950383BEB4E47C033337096738837C0DC96754DED4E47C0AACE4D986E8837C0', 761.123360000000048, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (323, 'rua dos gusmoes', NULL, '0105000020E61000000100000001020000000C0000008093ADC2855147C0113759BF178937C0E911F8C9895147C012071D50188937C0DB6A7063985147C0451524262C8937C0E56564EDA45147C0AFBB8FD83C8937C0F1114736AF5147C01FA1A8CB4A8937C02CE6B606CD5147C0FC3E7DA8718937C0EB0EAE81E65147C0DB6C4984948937C0082B0EA10A5247C0EAF34514C48937C0157C0C252A5247C09AC5C4F4EC8937C0B367FBBE435247C0DA2CF6FA0E8A37C0B6DC98EE545247C0F0002C16258A37C0AC32A55E585247C0B9C5B2E2288A37C0', 804.202440000000024, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (336, 'rua de sao joao', NULL, '0105000020E610000002000000010200000002000000B52B6FEE2C5347C00ACFC97F798937C08303805E2D5347C085058DDF788937C0010200000004000000826E0314735347C0913FDDEEBC8837C046BEC2EB635347C0731DA82AEA8837C0FF4453C24B5347C0BB4EECAA288937C0CBAA78572D5347C0B8D419F2788937C0', 386.777480000000025, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (330, 'rua general rondon', NULL, '0105000020E61000000100000001020000000400000013908D40965247C045C33D8E918937C028D62E7F805247C0473A1A23708937C005AE8888665247C0E181D3264C8937C050CC53E9495247C0D0873ABA1B8937C0', 310.481269999999995, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (332, 'largo santa ephigenia', NULL, '0105000020E6100000010000000102000000070000006EEA560D865147C0D85F17F29E8A37C07D5484D87E5147C00E32040B998A37C0E1D8FF267C5147C07346ABBFA18A37C072E53A12785147C061D10895AE8A37C0C238558F7C5147C07B5328A6B08A37C00BD05A1F805147C0CC54828FAD8A37C06EEA560D865147C0D85F17F29E8A37C0', 124.173330000000007, 4, 1920, 1940);
INSERT INTO public.tb_street VALUES (51, 'rua d. jose de barros', NULL, '0105000020E6100000010000000102000000040000000F1CD509235247C0E1146C5D958B37C09778FD9B0E5247C0FE4B42A0748B37C01E611808DB5147C082C88464208B37C06CE520E0C85147C0FBA34918068B37C0', 370.960640000000012, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (337, 'alameda glette', NULL, '0105000020E61000000100000001020000000A000000B52B6FEE2C5347C00ACFC97F798937C05256823E245347C08BC61D0F6F8937C0D1C4B385F35247C0E0BA8066308937C06254DD87EB5247C093772375258937C03C276DAEDA5247C03564F509118937C06B40F97ED05247C0959F52EE038937C074022216B75247C0FA2E525DE38837C0711CDB6C9A5247C07C8BA54BBF8837C05FAFAC4E7B5247C0E7263D03988837C0223E4F2F605247C05FE100AE768837C0', 773.595000000000027, 10, 1920, 1940);
INSERT INTO public.tb_street VALUES (333, 'rua coronel baptista da luz', NULL, '0105000020E610000001000000010200000002000000AADEC7D57A5147C0677CDD04748A37C03E32E16A5C5147C0EE12A44F888A37C0', 100.792590000000004, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (329, 'largo do paysandu', NULL, '0105000020E610000001000000010200000007000000B1F0E16B9B5147C0ABC6ED0C018B37C0008D8E8CA15147C0EE6083B2158B37C00C6218F8A85147C02B484DFB298B37C0A7D4A1F2C85147C0E5F01DDF058B37C00C449B68B55147C02DDF5EACEE8A37C030F98BA9A55147C01855BBCCDA8A37C0B1F0E16B9B5147C0ABC6ED0C018B37C0', 401.915959999999984, 4, 1920, 1940);
INSERT INTO public.tb_street VALUES (334, 'rua capitao mor jeronymo leitao', NULL, '0105000020E6100000010000000102000000020000000C5B7E335B5147C081BCCBCC818A37C0F2EB57A1275147C0E4719C30A28A37C0', 169.758749999999992, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (339, 'rua victorino carmillo', NULL, '0105000020E610000003000000010200000002000000F828A6A51E5347C0B40BF6AE168937C0D229F13E0A5347C0A962CE9F4D8937C0010200000006000000B236E994D65347C0E779C72F328737C089E26471BA5347C03FD8888B798737C0174F419DA45347C090F96B61B28737C0C8023C7D705347C0D6739B073C8837C097BA05DE5C5347C01B64215E708837C0F828A6A51E5347C0B40BF6AE168937C0010200000002000000F828A6A51E5347C0B40BF6AE168937C09F28DCA31E5347C0F67F0B90158937C0', 1113.87820000000011, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (340, 'rua da conceicao', NULL, '0105000020E610000002000000010200000007000000CF6C3AC56F5147C028A604E2168A37C0A59526216D5147C0E80EF0B9038A37C0E30ED4586A5147C07CCADE8EEC8937C087EDD3C8685147C03317ABAED88937C0F6FCC8C9645147C0D22BC3FCB08937C0DA518B0A5E5147C098F5C992628937C053B010EC565147C044D878F90D8937C00102000000040000007D5484D87E5147C00E32040B998A37C0AADEC7D57A5147C0677CDD04748A37C0961328B1745147C0B0E072DE458A37C0CF6C3AC56F5147C028A604E2168A37C0', 679.467470000000048, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (384, 'rua oriente', NULL, '0105000020E6100000010000000102000000090000003F3266D3A24F47C02153AB71C08937C06765B7589E4F47C04000E265BD8937C0200279AF914F47C0E201F23EBE8937C0D545EAA3694F47C0F9B69A9ABA8937C08DD7BA053B4F47C0E70D7C67B68937C0BCD11B3C0E4F47C069F410B0B28937C0D2C3A791DE4E47C0EC20F609AF8937C0A60DFD3FC34E47C0C5FEF8E1AC8937C0D6415113B54E47C0E16E22A3AB8937C0', 742.501769999999965, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (341, 'rua senador queiroz', NULL, '0105000020E61000000100000001020000000F0000002EFCED336A5147C0F46E80B9EA8937C084AEE8764E5147C02401EB8CF88937C003F520EF435147C0DDD78F41FF8937C0E8B5FEA4355147C03E6AB621068A37C033631EC12D5147C09E84DACC098A37C0B38446721F5147C0BD3D5F380B8A37C08697163A0F5147C028E0B46F0B8A37C0D31464FC005147C0A2B363F30B8A37C0F139EBFEF25047C0A0B126C50B8A37C029AB99DBE55047C060FDF1EF148A37C0BBF912EECB5047C01558F1E0218A37C00C480BCBB85047C0C862A23B2B8A37C0745F80F4A45047C0A35C177A348A37C0F46125148F5047C0F62A80A93E8A37C0A12CC1668C5047C05834061D458A37C0', 715.741129999999998, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (342, 'travessa beneficiencia portugueza', NULL, '0105000020E6100000010000000102000000030000002EAF218E515147C0523009534D8A37C089968D6E575147C072E5F2E9498A37C0705EAD72735147C077C4F7FD398A37C0', 110.547160000000005, 3, 1920, 1940);
INSERT INTO public.tb_street VALUES (343, 'rua dr pedro lessa', NULL, '0105000020E610000001000000010200000006000000F879F0EF705147C08CDAE373EE8A37C0EFD1E6AB665147C08AD8E90BF58A37C04B3995A7635147C04E14CFA1F68A37C048755B8A585147C06FF9A4FDF38A37C0935F11CF465147C05B1FF61EEF8A37C09604A3A23E5147C01B0283D8EE8A37C0', 159.897030000000001, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (344, 'rua d. francisco de souza', NULL, '0105000020E61000000100000001020000000400000028D05199375147C0E330FA30058A37C02DC56A8E365147C0F66A98BC1A8A37C06F826671305147C07D5C75D78E8A37C0F8FC5218305147C0EE9FA0DF9C8A37C0', 257.411710000000028, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (345, 'rua augusto de queiroz', NULL, '0105000020E610000001000000010200000003000000A74569F91D5147C09D589B61898A37C05B91F97A1F5147C0321E7C20828A37C08F0E33E9215147C073EDC1F90A8A37C0', 214.616119999999995, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (346, 'rua augusto severo', NULL, '0105000020E610000001000000010200000004000000EEE1C0230F5147C0676A83700B8A37C0F47575F80E5147C0172308C4178A37C0F3F664E70C5147C045BB82836A8A37C05E59355F0C5147C02091ECF9748A37C0', 178.573260000000005, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (347, 'rua paula souza', NULL, '0105000020E610000001000000010200000007000000EE7336EA035147C0019CC547B08937C0B83F449FF95047C0422877A6AF8937C010056A4AE65047C06E3589A8B98937C0210D71B9B75047C0BD8339F2D08937C03955198E7A5047C09D37FA35F08937C0F6BB25D36B5047C060C7D376F88937C044AC12D5545047C001640A620A8A37C0', 568.544539999999984, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (349, 'rua antonio paes', NULL, '0105000020E6100000010000000102000000040000009CF8539CB75047C0AC021B01D18937C0602BBCCDB25047C07BFAFB5DBD8937C07E98DE84AB5047C0E2610052998937C0D5170396A15047C0ECB5D222688937C0', 190.103160000000003, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (353, 'rua da cantareira', NULL, '0105000020E61000000100000001020000000B000000132EB9EFC25047C0C03185A02D8B37C056B2799FB95047C08E12D7F1188B37C0477CF29DAE5047C0E4FD120EE48A37C0DA6A9445A55047C0CCF2306AB78A37C090B4FD08975047C0BBB77D43738A37C084C81B8E905047C02C2DE1B0558A37C0368F93628C5047C087BBD21B458A37C03F44383A845047C044EC1A981C8A37C02545721A7B5047C016D23EEEEF8937C0557877A8655047C00F7668B5878937C03FE5844C4C5047C0837C181A0F8937C0', 990.855850000000032, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (354, 'rua sa barbosa', 'n.o. (no oficial)', '0105000020E610000001000000010200000002000000697D0532725047C013DE2406258937C099E6BCBE5F5047C00FB38CDC328937C0', 62.0660000000000025, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (355, 'rua lazaro', NULL, '0105000020E6100000010000000102000000040000008DE7DCC57D5047C0BF7083B05B8937C09419F40E725047C0F5D77120258937C0EC514F7A6B5047C0C9722B51058937C08EE17B30565047C0D250BFC09D8837C0', 343.854960000000005, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (357, 'rua possidonio ignacio', NULL, '0105000020E6100000010000000102000000050000003D3CECCF575047C0FBA81F7D0B8937C0776EB5A0585047C0057B48A8108937C099E6BCBE5F5047C00FB38CDC328937C0EE666149685047C0BCD51F1E5B8937C0E664E0656C5047C0258513D56E8937C0', 179.745929999999987, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (358, 'rua dos clerigos', NULL, '0105000020E610000001000000010200000003000000D70456127B5047C02384981B4F8937C0E810C41B685047C0213A25475A8937C0D49EC46A5D5047C04B30EB83608937C0', 96.9747700000000066, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (331, 'rua santa ephigenia', NULL, '0105000020E610000001000000010200000009000000A1FF4443105247C01F839F4B228937C023A8F47F075247C0D17692063A8937C078B89C08F95147C0EFA5D5AE618937C091C86888E65147C0D1C1258D948937C088859596D55147C0B27C862FC38937C0D628A4E3C05147C09FB91219FC8937C0A0145D26B15147C0A229968F278A37C0CEE4077EAC5147C07A540C66348A37C06EEA560D865147C0D85F17F29E8A37C0', 774.105779999999982, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (365, 'rua luiz de camoes', NULL, '0105000020E6100000010000000102000000050000004EE803AB675047C00C525497F18A37C07FF8750D665047C0E505397CAE8A37C0C494E3F4615047C0CD4798D1968A37C0FC5138B2575047C09DB11D43668A37C024F7E1E14D5047C01C655B43428A37C0', 311.63760000000002, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (374, 'becco da fabrica', NULL, '0105000020E610000001000000010200000003000000F64F4983025147C049615532DC8937C0E2DC7FA4FE5047C02661738ADB8937C0F51A286FEB5047C00A111B84D98937C0', 72.0621100000000041, 8, 1920, 1940);
INSERT INTO public.tb_street VALUES (375, 'rua ceres', NULL, '0105000020E61000000100000001020000000600000049091BC3BF5047C09DE4BC23E58A37C047FE02C1BA5047C02FEB5FE0E88A37C05D6B9E69B35047C0018CE4C6EC8A37C0520B9E91B05047C01DED466FED8A37C0F18F2B048F5047C07C210E02EE8A37C0F6C51AF1825047C07A2FB033F08A37C0', 191.927420000000012, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (376, 'rua carlos garcia', NULL, '0105000020E610000001000000010200000004000000A2D66968545047C0C256D8D3F08A37C0D59B2183545047C02C938D53D58A37C0B7EBBDB5545047C0718463C2B28A37C040F16130555047C011E0A372918A37C0', 161.200829999999996, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (377, 'rua americo brasiliense', NULL, '0105000020E610000001000000010200000004000000D880E315625047C0D55C4490978A37C096BD0C523B5047C0EB78F213848A37C0F13A9A09F74F47C087031BB25E8A37C03645D0FA9E4F47C042CC75131E8A37C0', 642.46040000000005, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (378, 'rua alvares de azevedo', NULL, '0105000020E610000001000000010200000004000000E0E34768375047C07A13C53E0B8B37C0001664592F5047C037450FD1068B37C04490AFB0015047C054DD8152F18A37C000E6B2EEDD4F47C0A7288FF2DF8A37C0', 288.254650000000026, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (379, 'rua fernandes silva', NULL, '0105000020E61000000100000001020000000500000090CBBDB7085047C053458707CE8A37C0315FC60BFF4F47C031CCDE20C78A37C00592CDDCE54F47C03EFFCAD2B68A37C0769D0BA0CD4F47C0C9CB6B58A68A37C0FA576E739B4F47C0AED189EB858A37C0', 361.636739999999975, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (389, 'rua conselheiro belisario', NULL, '0105000020E610000001000000010200000006000000A24CD6F8204F47C0CFE61CFD688A37C01133A1A3084F47C0C4CD67AC488A37C055E113ADEC4E47C0F0B1FB47258A37C07C25A170D74E47C0C1C9F094098A37C0C865C775C24E47C00F40A577EF8937C044B01880B54E47C09C497A89DD8937C0', 409.532969999999978, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (399, 'travessa da concordia', NULL, '0105000020E61000000100000001020000000200000081D89C52FE4E47C0A19B8361638A37C0798B64DD174F47C01A18B194828A37C0', 95.4668800000000033, 3, 1920, 1940);
INSERT INTO public.tb_street VALUES (380, 'rua florida', NULL, '0105000020E610000001000000010200000004000000A08EBEDE9A4F47C04C846DC98F8A37C074664D35974F47C05854D9528D8A37C00ED66C598C4F47C0DC363FFC7E8A37C08E7A8B2D6D4F47C03830C8FB558A37C0', 173.070979999999992, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (381, 'rua sampaio moreira', NULL, '0105000020E6100000010000000102000000030000007DC2DC664A4F47C0A4313C9E9C8A37C02BA532C0644F47C0EF635D1CBD8A37C0791253F6914F47C0931C438FF58A37C0', 268.901959999999974, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (382, 'rua correa de andrade', NULL, '0105000020E61000000100000001020000000400000071311CB46A4F47C01F56128BC48A37C0F86A8B6A614F47C0BBD7A33FDF8A37C0A170F4E34B4F47C0C54712E91D8B37C09ED48453374F47C0AF3B7B625B8B37C0', 301.006239999999991, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (383, 'rua oyapock', NULL, '0105000020E610000001000000010200000004000000D0108DA96A4F47C0121587B52C8B37C0660BEF8B624F47C0E15EBEC9448B37C07C8E728C564F47C0FA796351668B37C018124DB54F4F47C082FF5C04798B37C0', 153.903819999999996, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (480, NULL, 'n.o. (no oficial)', '0105000020E61000000100000001020000000200000006825218D04E47C0F315BF63088E37C0CD9745BFD14E47C0E109E1B63A8E37C0', 85.1962299999999999, 0, 1920, 1940);
INSERT INTO public.tb_street VALUES (386, 'rua henrique dias', NULL, '0105000020E610000001000000010200000008000000E749A60D394F47C038D6C3E65C8937C0385308413C4F47C0FA7E7F625C8937C02789182B554F47C01E7D08975E8937C0B5EEF918694F47C09C9930ED5F8937C061820D5A804F47C03FC12D55638937C02D280223914F47C0529BE3BB648937C03C7832D4964F47C035C746D6638937C0A806BB1FA54F47C0532D6E91648937C0', 337.28597000000002, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (390, 'rua sayao lobato', NULL, '0105000020E610000001000000010200000004000000A8416200EE4E47C09B6970F5268A37C06FC33B30EC4E47C0E4967AB72B8A37C06C436EBDDD4E47C081C3E1884C8A37C078B1629BCF4E47C0A9636FAF6D8A37C0', 152.513599999999997, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (393, 'rua maria marcolina', NULL, '0105000020E61000000100000001020000000B000000615A5201B54E47C0A2D7DC27618A37C05BDE63FCBB4E47C01E4A5C5B518A37C09EFBD97FC84E47C0E1D4F984338A37C07027E38AD94E47C084C305530C8A37C08B682C05DB4E47C0E2D1FE58088A37C00259FC4FDB4E47C01C3B7EAA048A37C0A5688CA9DB4E47C015C6BD3EF98937C01ABA8679DE4E47C085A00E08AF8937C09A3E92FEE14E47C005D3C4E9788937C04E89BD44E84E47C0CDF0738D368937C08C72DBA4DB4E47C0A17FA74E1D8937C0', 606.513649999999984, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (402, 'rua peixoto gomide', NULL, '0105000020E61000000100000001020000000A00000029AD9244EF5347C029656619D18D37C007E4EB18ED5347C023543256D68D37C0716912DCE05347C0D5E060090C8E37C08C56C239E05347C0DB37985A128E37C021E535DDE75347C08CDD69395D8E37C0434F8308E65347C005B1506D9E8E37C00A5C298FE15347C00DD81E2BDC8E37C05A1E5D97E15347C06D9E6048E18E37C0FD613728E25347C0025001E4E58E37C0B9E9CF2AE35347C053C87DFEE98E37C0', 489.000360000000001, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (404, 'rua da fonte', NULL, '0105000020E6100000010000000102000000020000003DE07DBACE5347C0D1FCD987918E37C0EF5CC0DEC85347C0C699BEA8CF8E37C0', 106.56353, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (406, 'rua herculano de freitas', NULL, '0105000020E61000000100000001020000000700000053E8E642E75347C068AEEF50578E37C012639001DC5347C07F694B79518E37C0D70CA0ADC15347C03E7D4709438E37C01E707166BE5347C06567CDA03D8E37C0DEBB1703BB5347C0C87F57773F8E37C091240B6BA85347C0EBB1CDFB338E37C0CFAB415A655347C0D46F703B0D8E37C0', 426.78877, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (409, 'rua saracura pequena', NULL, '0105000020E610000001000000010200000007000000A78D6E4F885347C0BA766311CD8E37C07D5032746D5347C065A7BF50B28E37C0F73048365A5347C0EE8B81759D8E37C0E7DB8D1C475347C039E6B5A4898E37C0556422C03C5347C05CE5E25B798E37C0F43B6F5B2E5347C0A653B66F5E8E37C02920BD4B2F5347C04F7F4C58488E37C0', 376.678080000000023, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (410, 'rua rocha', NULL, '0105000020E610000001000000010200000003000000F43B6F5B2E5347C0A653B66F5E8E37C0F19086C72B5347C07F6469C38B8E37C06DFEEB0D285347C06F745362E98E37C0', 235.647359999999992, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (411, 'rua itapeva', NULL, '0105000020E61000000100000001020000000300000060238AE9495347C0478F2F68E98E37C0C778AC392F5347C00DA7E1F7BD8E37C06BF461162A5347C00EF2A049B68E37C0', 131.520649999999989, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (415, 'rua doutor luiz barreto', NULL, '0105000020E6100000010000000102000000080000006CD2BA5AD65247C0E4F569B7EA8E37C0EF7DAD97D75247C0794F96AFD18E37C06B8D222FDA5247C09220BDBF9C8E37C05E7C2554DF5247C088582B984B8E37C0A4927209E05247C0F2FAE2553A8E37C0FB05B3C3E25247C0154178C6098E37C04F46C9A7E35247C0523CB578FB8D37C070B9F8FFE65247C00088B3E7F88D37C0', 417.730830000000026, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (416, 'rua sao vicente', NULL, '0105000020E610000001000000010200000007000000EBD39FD3205347C02E154F86788E37C0DB7CA736185347C050827D007B8E37C00068884DFC5247C0A712CCA0758E37C074067330EC5247C01AB6E4C1728E37C036AD1ECDDC5247C062EBE876738E37C0B822153DD05247C078BB7D44748E37C0D1E58C9BC25247C0E644F4F5738E37C0', 294.623629999999991, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (419, 'rua major diogo', NULL, '0105000020E61000000100000001020000000800000002C12677595247C09B886421128D37C001F3A964575247C0723E0B0F488D37C050921086545247C0477659957C8D37C04AE42D7B515247C048F406A3B58D37C0A67A6EA34B5247C0645E8557208E37C01C55E087475247C08FFF8DFF7D8E37C06DCE0E6C445247C071F8D6F0B68E37C000A301E1415247C02E7EB474EA8E37C0', 801.583619999999996, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (420, 'rua humayta', NULL, '0105000020E610000001000000010200000002000000F3E98BB61D5247C00EE03518EA8E37C025A283CB315247C0C30642E9C78E37C0', 85.1551099999999934, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (421, 'rua condessa de sao joaquim', NULL, '0105000020E610000001000000010200000002000000E7446F14CC5147C019631969EA8E37C036863D76FC5147C0186ED67EA28E37C0', 193.624830000000003, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (423, NULL, NULL, '0105000020E6100000010000000102000000020000004F048726E55147C0FAC54F25C58E37C01949DB1FF55147C0AC417F1BEA8E37C0', 79.8629200000000026, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (426, 'rua japura', NULL, '0105000020E610000001000000010200000003000000B337DB721D5247C0820B471C9F8D37C06CB7C1801E5247C0413231367D8D37C04C12323F215247C07516F2FB158D37C0', 232.026939999999996, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (427, 'rua jacarehy', NULL, '0105000020E610000001000000010200000004000000AEFAC746375247C0E9934C48198D37C0CEF3BF3D215247C05E4B5632168D37C08751A0070F5247C0FB5A461D128D37C0DF1BBBECF75147C0F9997F57308D37C0', 214.283839999999998, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (430, 'rua aguiar de barros', NULL, '0105000020E61000000100000001020000000600000022EEAFAAFA5147C0561C9342D58D37C0BE884ABEE25147C097878BD1C78D37C070C60802DC5147C02176180DC98D37C0B13DA8D5D65147C090E2462DCE8D37C06321EFA8C55147C07E8092CEDD8D37C0B51A6688BF5147C0239E31C4E38D37C0', 198.56586999999999, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (431, 'rua francisca miquelina', NULL, '0105000020E61000000100000001020000000600000016822820F35147C03147659A118E37C0CE116FDFEE5147C045F7D36F0B8E37C0560E53FDE05147C0E267B15AD98D37C06EB5543DDC5147C0B3733E02C98D37C03109B9D4CC5147C0B120F1938F8D37C0F3EFF923BD5147C09BE79C8E568D37C0', 359.562209999999993, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (432, 'rua maria paula', NULL, '0105000020E610000001000000010200000003000000FDD36907E15147C089A84B98358D37C0F3EFF923BD5147C09BE79C8E568D37C0E575F1B7A05147C0E85F1AF9708D37C0', 224.093140000000005, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (439, 'rua condessa de sao joaquim', NULL, '0105000020E610000001000000010200000003000000703C60F0CD5147C0DC74ABA5E78E37C01E663B93CB5147C022C197EFD98E37C0E7465C80AE5147C0F5F965B45A8E37C0', 257.61678999999998, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (440, 'rua da liberdade', NULL, '0105000020E6100000010000000102000000080000005FBF6152895147C0B90F8C07EA8E37C00E29F060765147C0B6B8DD20A68E37C076E3A435725147C0C40743EC818E37C0970E39196B5147C08905D430418E37C0E071AD30685147C00D7BF4C0328E37C033C75D09615147C0997B60A2158E37C0CD14A43C435147C0B504053B9A8D37C0C6976425415147C03AC7F0BD928D37C0', 625.732250000000022, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (441, 'largo sete de setembro', NULL, '0105000020E6100000010000000102000000050000008DE8C87F375147C0D83539196A8D37C074A7E986285147C08AB0E898758D37C0BF2B5391325147C0297D689A9D8D37C0C6976425415147C03AC7F0BD928D37C0D9562E66375147C0898F14EB698D37C0', 249.389119999999991, 4, 1920, 1940);
INSERT INTO public.tb_street VALUES (443, 'rua da assemblea', NULL, '0105000020E61000000100000001020000000600000087AAC2C15F5147C06BF6620D8A8D37C086D008536B5147C062133B18888D37C035B92B826C5147C0091ABF39888D37C0010958CF715147C0D0107716928D37C0941B8345895147C0DCF79B8DD08D37C0267DB934BC5147C0797A0BC7518E37C0', 461.69222000000002, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (444, 'travessa jandaia', NULL, '0105000020E610000001000000010200000008000000BD0FD7C7CA5147C06D86A15E488E37C0D3B1DD1AC85147C045AF452A438E37C0A50AF73EBB5147C064703E4A3C8E37C0AE64993CBA5147C09F7E4B893A8E37C0A7B99C41AF5147C0DCE3120A1E8E37C06AF19C8F925147C0DE952030D48D37C08751DA0E8F5147C0481A869ACF8D37C02FED94678B5147C003E30DF7D58D37C0', 299.782289999999989, 3, 1920, 1940);
INSERT INTO public.tb_street VALUES (445, 'rua galvao bueno', NULL, '0105000020E6100000010000000102000000060000002E2AB919555147C002D8C334E48D37C085181F8A515147C038478B41F38D37C04F29520C505147C0B33E6CAB058E37C02A4F848E4D5147C0386BC0D1358E37C06074A50A4A5147C01AC4B7F3A48E37C0F8F6D896475147C024F2C1CDEA8E37C0', 447.345979999999997, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (446, 'rua thomaz gonzaga', NULL, '0105000020E6100000010000000102000000040000005AA2F20E7F5147C079D5A13DC58E37C0A3C91B9F785147C0C3A89331C78E37C03CE55082695147C0128601C2C88E37C04D55F3C1485147C0FCA23686C98E37C0', 169.530200000000008, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (447, 'largo da polvóra', NULL, '0105000020E610000001000000010200000006000000AFFE1C60765147C0DBECB319A68E37C04B4AEA13715147C094D3ABE3A78E37C0F097A9FD645147C0D9A2CDE5A68E37C09A3C388B645147C0854D6790B08E37C0FB416EE7655147C0332BF1EFB18E37C038406A68795147C0C7B68FFCB08E37C0', 136.487689999999986, 4, 1920, 1940);
INSERT INTO public.tb_street VALUES (448, 'rua americo de campos', NULL, '0105000020E610000001000000010200000009000000F097A9FD645147C0D9A2CDE5A68E37C02A0707975C5147C0790C2023A58E37C0D25FE9B0585147C0E0EEFAC7A48E37C0857AC6E5525147C06A1DC26DA58E37C0CDAC13564C5147C04CC9A8DDA48E37C0AB80D70D4A5147C0E3D4B08EA48E37C0BF217461465147C0524DDA5CA28E37C09D109E44315147C044E0A12DA08E37C0A206B013295147C00F3138689F8E37C0', 187.647590000000008, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (449, 'rua sao paulo', NULL, '0105000020E61000000100000001020000000C000000A206B013295147C00F3138689F8E37C091F2A33F255147C0B8737E0C9B8E37C0589275DB025147C0650FCDD1988E37C001F76971F55047C0BB79AE6E988E37C0F307AF2AE35047C08B5D87F7958E37C0006C680EBE5047C00D59AF23918E37C00F6B068C975047C0A64DDAD78C8E37C07FE9938A925047C0E26CF335898E37C06A5F15F2865047C0CCDEF1F3928E37C08A536E9D735047C07C2E8F76A28E37C037714075565047C05B6868CBBA8E37C04A38A3CE4F5047C0B492B66DBF8E37C0', 700.240139999999997, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (405, 'rua barbosa rodriquez', NULL, '0105000020E6100000010000000102000000030000000696AE40E75347C045312D3B578E37C06FBE8662EA5347C00D6C2623548E37C0AB2BF684F95347C0317D6011398E37C0', 76.7670999999999992, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (408, 'rua paim', NULL, '0105000020E61000000100000001020000000C000000A77FB2085C5347C08DB521DA7F8D37C01F875CE1595347C03280F156858D37C03EBDBF844B5347C0EFF32A47A88D37C0586234B7355347C0B2EA923EDB8D37C0967169BB345347C04E212FC2EA8D37C00C12569A315347C0F42A0D9C158E37C07266DEDE2D5347C0DCCAD7F5148E37C033CE2413175347C09D6182EC078E37C0A52D5D5E0E5347C0951B17D5028E37C0692911EF0C5347C020290B34028E37C0A7DEEF00FE5247C0A916B831118E37C04F25E8CDF05247C0A4DEB9F41D8E37C0', 513.179700000000025, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (479, 'rua nitcheroy', NULL, '0105000020E6100000010000000102000000020000006BCD34F8B44E47C061E580600D8E37C0CAE902EAE34E47C08D82D7BE048E37C0', 146.986750000000001, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (493, 'rua dos alpes', NULL, '0105000020E6100000010000000102000000020000002A8BDFD6424F47C0EE95BFE1B58E37C00CE1E118464F47C0C0B6E764EA8E37C0', 89.3160199999999946, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (401, 'rua bella cintra', NULL, '0105000020E610000001000000010200000005000000FF397EA99A5347C021578B90FC8C37C0F13FB0B3C75347C0B81B8CED438D37C06E924168E65347C0D3B2FFDD748D37C050A342B9ED5347C00C3402537B8D37C07815DE1BF95347C06F9E91AC818D37C0', 373.823599999999999, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (407, 'rua itarare', NULL, '0105000020E610000001000000010200000005000000A266FE52885347C039368670218E37C0BF93063B905347C0F23CF124FE8D37C0515DEBACC65347C04A842BEC208E37C0E35437D8DF5347C0598B1E01308E37C0E544B65BE35347C014442C0F318E37C0', 337.602809999999977, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (451, 'rua thomaz ribeiro de lima', NULL, '0105000020E610000001000000010200000009000000CDB298EAE15047C0072AA893EB8E37C015F4DB17E25047C0DD27604FE48E37C0C62BE5C5E25047C01F021C39D28E37C042D24DF8E25047C0433136C1AD8E37C0C3A55100E35047C07B9F04F2958E37C0DEEB1C71E35047C0798E5EE12D8E37C014F81B85E35047C006918934FC8D37C055162D14E35047C09499F20BDE8D37C0986EA451E25047C0DD1F78B1C28D37C0', 501.861789999999985, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (455, 'rua sinimou', NULL, '0105000020E61000000100000001020000000400000084733F06D45047C0728647FF938E37C0290F970BD25047C0FC36E374B18E37C0CDE581DCCF5047C0B5D33CFCE18E37C029438329CF5047C023DD6F67EB8E37C0', 148.514929999999993, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (458, 'rua teixeira leite', NULL, '0105000020E610000001000000010200000004000000DDDEE8E4725047C037258B10A38E37C051DAE87E7E5047C0B3857C1FD48E37C09590D786805047C0817FD487DC8E37C0A8E551CE835047C0E4E161B4EA8E37C0', 132.031090000000006, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (475, 'rua nioac', NULL, '0105000020E61000000100000001020000000600000010502A225B5047C0A00BED3E3C8D37C03E4A214D5E5047C0ADD4205A3E8D37C034223A08725047C0188DFEA9438D37C03833BABB785047C04E4BDE98448D37C03E0D7A897F5047C03BD4316C468D37C08C751C98885047C06CCD7EEF488D37C0', 143.516709999999989, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (476, 'rua coronel seabra', NULL, '0105000020E610000001000000010200000003000000D520206EFE4F47C0878A81264D8D37C00148A2F2CD4F47C095155DFB548D37C0562F51F6A84F47C0686E6C735B8D37C0', 267.387999999999977, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (477, 'rua bento pires', NULL, '0105000020E610000001000000010200000004000000D78F7095025047C054B719C7788D37C098B149A8EC4F47C0C794EECB7C8D37C0EEEF4F7CD24F47C0F0BBAF86818D37C07BB05DDEAC4F47C0FB2B4057888D37C0', 268.352530000000002, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (481, 'rua xingu', NULL, '0105000020E61000000100000001020000000500000026F0F444B54E47C0CA1325703E8E37C0CD9745BFD14E47C0E109E1B63A8E37C0B2270A11054F47C0D3202A8F378E37C06B1516DD5E4F47C038A31D1F308E37C0D0F46E73A74F47C040D6312A298E37C0', 755.441519999999969, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (495, 'rua luiz gama', NULL, '0105000020E610000001000000010200000004000000CA12BE6B9C4F47C01C34B31FE78E37C0667016239F4F47C0AEF79134B58E37C0D0603C1DA14F47C0AB89BD7E8C8E37C00838C41EA24F47C01FDEEA12768E37C0', 191.864530000000002, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (442, 'rua dr rodrigo silva', NULL, '0105000020E61000000100000001020000000500000033B89969565147C01BEBFB8A8B8D37C0CFC4E095575147C035E8EEAA848D37C0BAA1E026565147C023DF23ED698D37C0A5519B05535147C05495173A2E8D37C02E381DDF505147C06FB6DB10278D37C0', 172.773799999999994, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (517, 'rua sergipe', NULL, '0105000020E610000002000000010200000002000000568B08ECED5347C062B26F7C7C8C37C02630BB32F95347C096ECA4DD728C37C0010200000003000000565C6C8DC85347C033C8A9D2DC8C37C0C47B4895E45347C012D56545848C37C0B805E6D3ED5347C0E6F7BC157C8C37C0', 0, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (482, 'rua luiz gama', NULL, '0105000020E6100000010000000102000000040000000900A723A64F47C077B244FE568E37C031AB5944A74F47C04830B52E298E37C01AA0E304AD4F47C0D70F808EDA8D37C09C726574AF4F47C009FA25ADB28D37C0', 279.378219999999999, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (488, 'rua coronel cintra', NULL, '0105000020E610000001000000010200000007000000A634A4DE6A4F47C0AE47B7E96A8E37C0DEB4B1076A4F47C0F9AA6C854F8E37C081A39E07694F47C02FF5B8252F8E37C030BDEB3E684F47C009F642D7158E37C09F70D4E8674F47C0B48876B7FF8D37C0816D82B8664F47C03D2CFB9DE98D37C0331DC074654F47C07D992D83BC8D37C0', 295.240909999999985, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (490, 'rua itapira', NULL, '0105000020E6100000010000000102000000040000007EC0D6B6914F47C0C2C5804F338D37C0B3CBA06A924F47C04CFD1C563E8D37C0F6345AE1944F47C01405BB09768D37C007ED2AAE974F47C01CBEDFEBB68D37C0', 223.188350000000014, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (491, 'rua odorico mendes', NULL, '0105000020E6100000010000000102000000060000002C8E90E88F4F47C0E9A57ADD688E37C0A634A4DE6A4F47C0AE47B7E96A8E37C05A02FECB3D4F47C07FFDE4316E8E37C02EA11137FD4E47C0E0D9A91F748E37C07BEA6797C94E47C05D0BED0A798E37C0CC71052FB54E47C0FCE535DD7A8E37C0', 682.155039999999985, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (36, 'praça da se', NULL, '0105000020E61000000100000001020000000B000000BD0DB2DA0A5147C0A0B1C986888C37C0AFF60D3B0A5147C045DB0753AA8C37C029BB7FBD125147C05801A0FDCC8C37C0C36A17BE245147C00729D3F1178D37C0A143EF19315147C08362FC1F498D37C099BA02843A5147C0E1ACB90B428D37C0FF2EBBA5425147C0E8234F3D3A8D37C042B483A2345147C0E1900DD5FF8C37C040E1C9A5295147C0C20915A2D28C37C0F1FB7254225147C0F20ACA09B78C37C07B423085185147C0CE7C32128C8C37C0', 734.120520000000056, 6, 1920, 1940);
INSERT INTO public.tb_street VALUES (496, 'rua oscar horta', NULL, '0105000020E6100000010000000102000000050000001B3604B3404F47C00F6E7E699B8E37C07AA959F73D4F47C0F6DFBC2E6E8E37C0268FF88E3C4F47C0EA6504D6498E37C005DD91A43B4F47C0EFD1070A338E37C0D0C80F4B364F47C094AA7EA0C28D37C0', 367.796569999999974, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (134, 'rua cap. faustino de lima', NULL, '0105000020E610000001000000010200000005000000370B2D12015047C03F3A2050238C37C09B302E47FF4F47C00AB02FDF2A8C37C07EE31811DB4F47C0E8780AF6F78C37C050DB8919DB4F47C03B7D0E54FD8C37C0527DB206DB4F47C00E661832FD8C37C0', 387.803760000000011, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (11, 'rua senador feijo', NULL, '0105000020E610000001000000010200000006000000483FCCB4785147C0096E8CC7D48C37C0250FBBC96B5147C0860FAFC4DC8C37C03F621F655E5147C061960FA7E58C37C032B8EB9A505147C04FD5DD31F08C37C03FD3F3F2405147C04B66CC01FA8C37C042B483A2345147C0E1900DD5FF8C37C0', 224.445969999999988, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (96, 'rua de sao luiz', NULL, '0105000020E6100000010000000102000000060000005DD2E5CF585247C0EDA2CC58878B37C060B39FF6575247C0C5E1463C8A8B37C09FEF4CDB535247C0253955A3AE8B37C05E4A9DF64F5247C0D8191C2BD18B37C036D4FD92445247C0A1A104313A8C37C01434E7FF415247C094072CAA4A8C37C0', 337.939369999999997, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (42, 'rua maria benedicta', NULL, '0105000020E6100000010000000102000000040000004855C6F1D95047C0D0EF8D923D8C37C077F257C1D35047C021B5E99E398C37C0ACD40E0FC75047C067C0C3DC318C37C08E18B5F6C35047C0699C70D42F8C37C0', 72.3204300000000018, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (400, 'rua costa', NULL, '0105000020E6100000010000000102000000020000005E91436DDE5347C0FDFA58E9B18D37C0781D97C4ED5347C0AFB3932A7B8D37C0', 104.130489999999995, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (64, 'rua santo amaro', NULL, '0105000020E6100000010000000102000000100000008AA4DB88BF5147C0E34BB499B18C37C08ADB7D29C65147C05642C156B88C37C004194ABCC95147C05BCCC7ECD88C37C063BB1995CA5147C006F9307EE08C37C07B077748CB5147C042F0C3E6E28C37C0FA949F40CD5147C07DE1FC2DE78C37C0013EE0D0E65147C0489521BF0D8D37C0DFD16CAFED5147C00107DDFA188D37C0C6660560F65147C0CA1FAE5E2C8D37C0FD05F134FA5147C0B335E730368D37C0333F8444FC5147C08BB6B00C408D37C0FF1FE33AFD5147C0A4EB10D3478D37C03E3E676A005247C07ABBB419A48D37C0E3D302DDF85147C0247E69AEE48D37C0428A3401EF5147C08DFFCBDD318E37C0F21DFD32E95147C0FFBC8E56708E37C0', 841.71772999999996, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (514, 'largo coraçao de jesus', NULL, '0105000020E610000002000000010200000002000000CE14D729605247C0C11296BC768837C0C12F2B5D445247C086E992C4528837C00102000000020000002B5E2BC7545247C0791ED217958837C0D7387718395247C09E72215C728837C0', 0, 4, 1920, 1940);
INSERT INTO public.tb_street VALUES (259, 'rua madeira', NULL, '0105000020E6100000010000000102000000020000000A7FA1BBE64F47C0B66EC51EE38737C08439F1FED64F47C065D79CFD7E8737C0', 176.165960000000013, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (125, 'rua martim francisco', NULL, '0105000020E61000000100000001020000000D000000AFD2EBDAC85347C0D8899D085F8B37C07024E813C95347C09B3B49A9598B37C011A35964C85347C05ED1D18B2C8B37C09211C4C0C75347C01B8E91D7078B37C093DCC8FEC65347C00C5C311AEC8A37C0D917A058C55347C081484FFEA18A37C0F09815D0C35347C087B0AF009A8A37C00DE987D9C05347C0ED773BAE928A37C0B9D113F0BA5347C02A46C250868A37C0E6ECC31B955347C053FC6E0D398A37C02DD729F86A5347C0C08A2ECBE18937C01B8626C54B5347C019AC7C18A38937C0B52B6FEE2C5347C00ACFC97F798937C0', 1013.52632000000006, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (515, 'alameda barrosrua frederico abranches', NULL, '0105000020E6100000010000000102000000090000001EBDEB5FEF5247C0E1E65C3F818A37C00B067B7EF55247C0FBADF3217F8A37C0C4C2FC54045347C088FA78896B8A37C0F705CABA135347C07251F766568A37C0D5554807215347C04F637A4A458A37C03940076A395347C0CABBA054248A37C0C82FFF03415347C01A434A2E1A8A37C0D5FDC3FA6A5347C0D8FB91D0E18937C0D380A3386B5347C025F6266FE18937C0', 981.291550000000029, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (516, 'alameda barros', NULL, '0105000020E610000001000000010200000007000000D380A3386B5347C025F6266FE18937C067E38ADEA15347C003F2F1638B8937C0F907227BA85347C0DBD16D93838937C09E0B18B3BF5347C0DA573CAD758937C0587F6BB3D55347C07664A5B5698937C08A8216C3ED5347C024DE0BD05C8937C0012CF43CF85347C021F5AD51568937C0', 981.291550000000029, 10, 1920, 1940);
INSERT INTO public.tb_street VALUES (499, 'travessa placidina', NULL, '0105000020E61000000100000001020000000200000085F72DAF2B4F47C0E2A9A2D94B8D37C0804EFCA52E4F47C026E979077C8D37C0', 81.9369300000000038, 3, 1920, 1940);
INSERT INTO public.tb_street VALUES (500, 'rua placidina', NULL, '0105000020E610000001000000010200000004000000DCEF5E44434F47C0E703E683798D37C0804EFCA52E4F47C026E979077C8D37C06BA4BB6CF34E47C03EA46C50898D37C0369D564FC84E47C01EC51B4C8F8D37C0', 384.974490000000003, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (502, 'rua flora', NULL, '0105000020E6100000010000000102000000050000001A10ADC6304F47C08FD82C6B158D37C07A08273C364F47C026D18E7B058D37C06530D186404F47C021C888BBE48C37C05C836F274C4F47C0326D8F76C18C37C075B6A5F4514F47C0A0655E06B18C37C0', 198.699849999999998, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (508, NULL, 'sem nome', '0105000020E610000001000000010200000002000000DC36F5B7AF5047C0FD5D3671808C37C0D5E2BD9F9C5047C0DFFBB41D728C37C0', 64.2314599999999984, 0, 1920, 1940);
INSERT INTO public.tb_street VALUES (509, 'rua benjamin de oliveira', NULL, '0105000020E610000001000000010200000003000000FEC9F8873A5047C0198433F7B58A37C0B2E5E558EF4F47C062892806868A37C07BECFE8C9D4F47C06726C248518A37C0', 517.888249999999971, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (518, 'rua pennaforte mendes', NULL, '0105000020E610000002000000010200000002000000362C3ACF7C5347C0E70DD76CA28D37C0D0519DD5575347C0DD9E91C84A8E37C00102000000030000008A569CFF575347C0A0025A094A8E37C08CF599D0565347C078532E1E4F8E37C0A9BBE8F6565347C0D7F27B404F8E37C0', 0, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (519, 'rua conselheiro carrao', NULL, '0105000020E610000002000000010200000002000000568E99948B5247C077E26839C48E37C082BB7244445247C095ED71E9B68E37C0010200000002000000D40B9D97F75247C033B9305AD78E37C0568E99948B5247C077E26839C48E37C0', 0, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (19, 'rua da quitanda', NULL, '0105000020E61000000100000001020000000B00000035F9B7132B5147C07E73CF79288C37C0DEA283A8335147C09EA599E92C8C37C05758AEC0365147C010D50BBE2E8C37C02418B76C3C5147C02A66513E328C37C07350FCBB435147C0BAF92107348C37C0310F623D4C5147C0272F1B9E358C37C0ACD5A02B535147C07714E45D378C37C091E7C20A585147C01E140F87388C37C082CAC9C0595147C0118B2A3D388C37C0632A25A05C5147C02EEEA86B378C37C06D192460665147C044261BC32F8C37C0', 190.674350000000004, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (7, 'rua floriano peixoto', NULL, '0105000020E610000001000000010200000004000000BCA4FE091B5147C0C7B7D4A68A8C37C020284259145147C0E405016C8E8C37C0B1250F1D0D5147C02712B2248A8C37C04600C652ED5047C0E58F7164738C37C0', 151.722530000000006, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (457, 'rua glycerio', NULL, '0105000020E61000000100000001020000000B00000030E845DC4D5047C0E1EDF869648D37C0ABFDFFB14C5047C045E0EEB46E8D37C054CCFF454D5047C0C35773E2778D37C05064402A4E5047C009CBC67F7B8D37C06865AD6A565047C0FB3F1FFE9B8D37C02C5683B1735047C04B9568B70F8E37C04673C04A915047C03955C749828E37C00B16ED26935047C03E5A68A7898E37C091EE0308965047C0138F90B8928E37C0E1345495A95047C0296CDA5BDE8E37C0AB2641F1AC5047C0BB63FE2BEB8E37C0', 728.076639999999998, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (522, 'rua do riachuelo', NULL, '0105000020E61000000200000001020000000D0000003E443367B85147C0FF7FBDD9AA8C37C08AB956ABB25147C03648F30CBA8C37C04C0FA062AC5147C0168D7F56CA8C37C05CD70907A85147C0CF4BFE59D08C37C00EABD8D8985147C025E0997EDD8C37C013602C727F5147C0720626DDF38C37C0C3F8CFD9595147C0A70C9739158D37C0613A6C0A575147C0E0852E1C178D37C048F00C69545147C0BCD04C30198D37C0716C2C50535147C0DA7021421B8D37C0663288CB525147C009DDD7501D8D37C066B90877525147C072AA87911E8D37C02E381DDF505147C06FB6DB10278D37C0010200000002000000032AB6E1505147C0F9178219278D37C0CEB52C7D425147C071293E643A8D37C0', 0, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (162, 'rua visconde de parnahyba', NULL, '0105000020E61000000100000001020000000C000000AA760BEAFC4F47C04589194A1F8D37C0EC99BA7BC94F47C0CB70C428298D37C0702E7739A54F47C0183DDA7F308D37C05AFC71F8A24F47C08F9215DC2E8D37C06860FD9E794F47C05CF54D86398D37C0B705F5264C4F47C0C0E24721448D37C0ACB7F330474F47C00B8C3096448D37C09FEE1E861B4F47C07C1B071E508D37C043090126004F47C0FD3FF4C4308D37C0CD55DB37F04E47C0A603EC0D1E8D37C071B63861C14E47C06A095E73E88C37C0C90E2F74B44E47C0B3F2E281D88C37C0', 1087.58475999999996, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (182, 'praça olavo bilac', NULL, '0105000020E61000000100000001020000000800000093449EDC855347C0D211FD64918837C004F3D9148A5347C061E370519F8837C0136143488C5347C0E58107F8B38837C047AEF23C785347C0BBD5BD13B58837C0525168B6725347C0E57F3606BE8837C0DAC71A596C5347C02A5F939EB58837C02E37E2777A5347C0D50B4782A18837C093449EDC855347C0D211FD64918837C0', 272.656580000000019, 6, 1920, 1940);
INSERT INTO public.tb_street VALUES (205, 'rua ribeiro de lima', NULL, '0105000020E61000000100000001020000000C000000893F3FE8E15147C01A6A68E6378837C026CA0098DF5147C0F0475A75378837C0AE924EBCD55147C0DED25977298837C060C7C3F0CF5147C03EBE76AF238837C0D19FF00FC05147C0BFFC54FA0F8837C0543633F8AE5147C071B41B98F88737C0761388D8AC5147C0BFE0CA45F28737C069520139AA5147C06D8600ACF18737C04653FDE7775147C07E015F3D0B8837C0D3B293F2585147C04390E6DC1B8837C0BE0E8C7A265147C02527F104358837C0E0F3C268F85047C0DA5E9B414D8837C0', 788.635290000000055, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (226, 'rua brigadeiro tobias', NULL, '0105000020E61000000100000001020000000D00000008CB8DFC1B5147C0C3B714B0F88837C040A516F9235147C00039A07A2A8937C0D7E1ECA22B5147C07584371F5C8937C0DB36309F305147C0619B2CE17E8937C09DA2D59E3E5147C0A84D0A1EDB8937C0943D2CF8435147C04E48127FFF8937C07D8CFA61485147C051B47F6C1B8A37C04B3151215C5147C0DD6C96DA868A37C0FD422FB4645147C012863A55B28A37C061759C5A6C5147C04C7EA750D78A37C0510A441A735147C09A353F62F98A37C0D546A9B8735147C0A671E8B4078B37C03D6A4586735147C0DAF4E073048B37C0', 938.280189999999948, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (248, 'avenida tamanduatehy', NULL, '0105000020E61000000100000001020000000400000042C897BB645047C0706B706C298737C03F915D5B515047C0C64F41C66F8737C0124390173D5047C09F84FF67BA8737C00DC314671E5047C0A6ABA374338837C0', 500.184979999999996, 2, 1920, 1940);
INSERT INTO public.tb_street VALUES (260, 'rua vidal de negreiros', NULL, '0105000020E6100000010000000102000000060000001C299FFD155047C0528EA474B38737C05AF132280C5047C0B1B457E9B08737C0A56F84ECE04F47C0E8E9F8ED898737C08439F1FED64F47C065D79CFD7E8737C044A52B3DCC4F47C093E4C7CA768737C0497EDCD1B14F47C0D64A86C45D8737C0', 345.774490000000014, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (279, 'rua benecdita sa barbosa', 'n.o. (no oficial)', '0105000020E610000004000000010200000002000000541F612F345047C0DF03257D218837C0B404EB8C3F5047C092E2418BF68737C0010200000002000000B404EB8C3F5047C092E2418BF68737C0ECFDE5933F5047C07FA6E170F68737C0010200000004000000FB104870515047C04EC1C9D4AD8737C013BFA743515047C0C9DC9B7CB28737C0F48103C34D5047C046E75C53C18737C0B404EB8C3F5047C092E2418BF68737C0010200000002000000B404EB8C3F5047C092E2418BF68737C09704EB8C3F5047C001E3418BF68737C0', 216.421500000000009, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (294, 'rua parahyba', NULL, '0105000020E610000001000000010200000005000000A0902CA40B4F47C02ACB2558B68837C0FE6C3AF5084F47C006C2B55DB28837C02430904DF54E47C0A99A5187838837C08FF8813EE44E47C0DA068EE4568837C06F57A15ECA4E47C0B7B0295B0D8837C0', 351.214080000000024, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (317, 'rua duque de caxias', NULL, '0105000020E61000000400000001020000000200000041D9D72DB15247C05ABA3FAC068A37C00C0FC423B15247C03C81A89D068A37C001020000000E0000000C0FC423B15247C03C81A89D068A37C0FDD8FB13A85247C036A1E27EF98937C0892481139B5247C0BBCB5400E88937C09940DFBE815247C0C87043BFC38937C0C44CBE296C5247C0C019BDBEA58937C0B69D52A8525247C0A68E440F818937C014310DF1335247C066242133568937C069FCF4961F5247C0C7942E68398937C09F4B7AC91A5247C0795D1DB52F8937C05143F5CD075247C04EC32384178937C007184AE1FF5147C0B578238E0B8937C0FC58E5D3F15147C0BBB0DA79F88837C0EA7231B8E45147C0D00E6165E78837C0000B2ACBE45147C07B8E6232E78837C001020000000200000043707898B15247C06BBC1986078A37C00C0FC423B15247C03C81A89D068A37C00102000000010000000C0FC423B15247C03C81A89D068A37C0', 804.005639999999971, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (398, 'largo da concordia', NULL, '0105000020E61000000100000001020000000400000035EBB9C0D04E47C0330426C2DD8A37C042BF9F81EC4E47C0D9A68672948A37C06FE61F0C064F47C051B29F0FB48A37C013213A87EC4E47C0F0C6F4CAFF8A37C0', 397.598220000000026, 4, 1920, 1940);
INSERT INTO public.tb_street VALUES (369, 'rua maua', NULL, '0105000020E6100000010000000102000000080000004F602E62235147C057B9C8CB2A8937C007ABB4BB075147C05C783200378937C08145FA17FD5047C0B5E46C31398937C078483ED9E45047C06D064F37458937C0D5170396A15047C0ECB5D222688937C0F3A317D5825047C0A5F87D21788937C0E367205D655047C097D2194F868937C0724271864C5047C00F3C44C0948937C0', 693.555309999999963, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (392, 'rua chavantes', NULL, '0105000020E610000001000000010200000006000000DC395031064F47C04F7CA73DB48A37C065593242EC4E47C0F07A0424948A37C078B1629BCF4E47C0A9636FAF6D8A37C0E02BC9F6BB4E47C005DC7B61578A37C0DC66D105BC4E47C0C0122039478A37C080506AD7B44E47C0C8D2F705378A37C0', 342.29113000000001, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (35, 'rua barao de duprat', NULL, '0105000020E610000001000000010200000006000000207B9CFEC35047C02BC8E6464E8B37C0F54DBC0CC25047C09202A044128B37C0794F6A0BBD5047C034047387AF8A37C0E0B72247B95047C0E7764A96538A37C0FA654FB7B75047C0FC52E48FD18937C0210D71B9B75047C0BD8339F2D08937C0', 645.794719999999984, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (37, 'rua das flores', NULL, '0105000020E61000000100000001020000000700000059149195F75047C0E075B129D58C37C01917D434F65047C0A76734E3DA8C37C09DBD5759E15047C0B4DA7F2B068D37C04C40C835D95047C0F2E2A46D178D37C05A8A0D63C15047C06533AD904B8D37C00C720783B25047C0FDFD67FE6B8D37C0DEC5CA7CB25047C089072454708D37C0', 341.370009999999979, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (417, 'rua de santo antonio', NULL, '0105000020E6100000010000000102000000150000003954BA49EF5247C0E1CF384F738E37C0ACFECCC5EF5247C0EC1A33F1498E37C0B771A166EF5247C06A468B1D3D8E37C0C5924440EF5247C0E75F7A99258E37C04F25E8CDF05247C0A4DEB9F41D8E37C07343FFC6E85247C07225D152008E37C070B9F8FFE65247C00088B3E7F88D37C06460C036E25247C08233B752E58D37C067E62736CC5247C00613C254928D37C0F7720C09C15247C019E05AD57B8D37C059E11130B45247C09A3994E6668D37C07AF328EAA75247C04993026C558D37C0954C685B9D5247C04245B3A74A8D37C0CA7619188E5247C0C82EA0313D8D37C028BDEA5D685247C00248CBAC1E8D37C0F81C2FC1125247C062DB169AD68C37C09A9B2AD3F85147C029E6B013BD8C37C0941B9EEFDE5147C0E612E1E7A48C37C01EC56F83DB5147C043E4F184A48C37C0EC4E462BD65147C00DB93317A58C37C04FE349B2C45147C0BFF8247EA68C37C0', 1336.29303000000004, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (6, 'rua quinze de novembro', NULL, '0105000020E610000001000000010200000006000000944E83CE315147C02490829AB98B37C068833FE82F5147C0C9DAD861E48B37C0F7B47D792E5147C0C4581260088C37C0F50C204A2C5147C09842F39A208C37C0D5BDF362245147C023D060E7538C37C0BDA4FE091B5147C0D4B7D4A68A8C37C0', 362.132830000000013, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (523, 'rua silva pinto', NULL, '0105000020E610000002000000010200000002000000A352C12DC25147C08C189D4C268737C0FCA45E24CD5147C0DA389A9E4F8737C001020000000D0000005835A7D27D5347C054EE07F2568937C0FF9F9BFA4F5347C0358681C01D8937C093C406E82C5347C0CE509B91F08837C01781E25B115347C0DE11AAD0CD8837C044324377D95247C0B8C77030868837C0AC893F85BD5247C01F85A484618837C042EE4D4C9E5247C06EF9D0013A8837C0EB207E79675247C0060E1681F58737C02FF0BC9C4C5247C093CB0E78D38737C0EEDD09F9325247C05523C957B28737C0930834DE2C5247C0E517D67CA88737C0854D4B9CF25147C07791D3CC728737C0F4DF2FE3CC5147C0C473B0B2518737C0', 0, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (525, 'praça carlos gomes', NULL, '0105000020E6100000060000000102000000020000003487A8F6565147C0A19E2F50888D37C087629FB45B5147C03765C60ECA8D37C001020000000300000087629FB45B5147C03765C60ECA8D37C003B13EC05B5147C0C31CE8AFCA8D37C0EB01F222595147C017A819A5F28D37C0010200000002000000EB01F222595147C017A819A5F28D37C0A36DF704595147C00021476FF48D37C001020000000200000087AAC2C15F5147C06BF6620D8A8D37C087629FB45B5147C03765C60ECA8D37C001020000000200000087629FB45B5147C03765C60ECA8D37C0EB01F222595147C017A819A5F28D37C0010200000002000000EB01F222595147C017A819A5F28D37C0E901F222595147C033A819A5F28D37C0', 0, 6, 1920, 1940);
INSERT INTO public.tb_street VALUES (9, 'barao de paranapiacaba', NULL, '0105000020E6100000010000000102000000060000004B19E935225147C0028BF91DB78C37C0E709DC5C265147C0008C615FB48C37C050705C02325147C04A00BB56AE8C37C008567F22405147C058AA25ADA98C37C0FA82D677415147C0C2819CE3A88C37C0911D4811455147C030543ED8A58C37C0', 112.848619999999997, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (526, 'largo do arouche', NULL, '0105000020E6100000060000000102000000020000000CC6CC7AE95247C08CC48F799B8A37C09EBE377CE95247C0BCAD76C69B8A37C00102000000050000009EBE377CE95247C0BCAD76C69B8A37C05C09B4D5E95247C0411FFBBBAE8A37C09D1C23F4BE5247C09E205F41B08A37C0716A945C9B5247C0D8727ACFB58A37C07FB2BDB99C5247C0C0D2E660B38A37C00102000000040000007FB2BDB99C5247C0C0D2E660B38A37C0516A7539A55247C00A8B7239A48A37C0E440A49AA55247C08F4D559C9E8A37C09EBE377CE95247C0BCAD76C69B8A37C00102000000020000009EBE377CE95247C0BCAD76C69B8A37C0713B8AA4E95247C0995DC7C49B8A37C0010200000002000000C9FDE1A5775247C010A17624868A37C07FB2BDB99C5247C0C0D2E660B38A37C00102000000010000007FB2BDB99C5247C0C0D2E660B38A37C0', 0, 4, 1920, 1940);
INSERT INTO public.tb_street VALUES (527, 'rua caninde', NULL, '0105000020E61000000300000001020000000700000019117C8CE84F47C0C190DDF5D48837C07A13C313E84F47C02DE171B6D08837C034C93114DD4F47C08AD2F569888837C04EAE6BBED14F47C028E5F72C3E8837C0C37AE98EC64F47C0D36FD8FCF28737C049605E2CB44F47C03F3A6B57778737C0D059F302B24F47C0DA3DEFD95F8737C0010200000002000000D059F302B24F47C0DA3DEFD95F8737C0497EDCD1B14F47C0D64A86C45D8737C0010200000002000000D059F302B24F47C0DA3DEFD95F8737C0CE4416A8AA4F47C0542B22FE358737C0', 0, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (14, 'rua onze de agosto', NULL, '0105000020E610000001000000010200000005000000BF2B5391325147C0297D689A9D8D37C0BAA84B01205147C05F9A6DA4538D37C0EE16FC260B5147C0D375CBCB018D37C03AF5C7E8005147C0723DBD64D88C37C072429892FD5047C078C30314A98C37C0', 448.051789999999983, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (17, 'travessa do commercio', NULL, '0105000020E6100000010000000102000000040000006543BDFE485147C081B50396E08B37C034C67D2D435147C037E41731DF8B37C0EF10FBAE3A5147C091CBB830DD8B37C07ED1FE55305147C0F66232BADA8B37C0', 77.4692799999999977, 3, 1920, 1940);
INSERT INTO public.tb_street VALUES (18, 'rua general carneiro', NULL, '0105000020E6100000010000000102000000080000008C229E99245147C0749D8B84528C37C0115666B21D5147C070C1C1114B8C37C0F734C4DA1A5147C0A78D5DD2458C37C0BBDF0501155147C0D86F8AA7368C37C0B2A5E350115147C0B98E35A22D8C37C0A64AE69F035147C00D1DD8D50E8C37C0A775251EF75047C0C14DD42BF38B37C067D70135DF5047C0ECC4C953BE8B37C0', 332.445429999999988, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (20, 'rua direita', NULL, '0105000020E610000001000000010200000005000000BDA4FE091B5147C0D4B7D4A68A8C37C0BB1EFE5C315147C0803BA4CB808C37C07BD13C653B5147C077BC9F2E788C37C0A14732BC715147C04DB8D6CC418C37C0EF44F414845147C07435D66E2F8C37C0', 363.695370000000025, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (21, 'rua de sao bento', NULL, '0105000020E61000000100000001020000000B000000B9DF94987E5147C059B6B420878C37C0B081E1AF7D5147C08D166E5E818C37C09CFF4AE86C5147C03302B9A1468C37C0D6FFEC4C665147C0C50333D22F8C37C076ECEAA0505147C02180D6AFE38B37C09FA039BF4D5147C0CBC5BCEFDB8B37C08B141BC94C5147C0017559DED58B37C01C52A591425147C072F5B899B28B37C0030FE0843C5147C03D00518B9B8B37C01B060946335147C052B2FA267A8B37C0CA5617FA295147C03AF86A6C588B37C0', 576.019679999999994, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (22, 'rua libero badaro', NULL, '0105000020E61000000100000001020000000A000000150183709A5147C0C67BF86DA28C37C0590A6218995147C0BB03B64C858C37C08E95AB389A5147C086C892377F8C37C057714D088B5147C0106FCA62498C37C0CAFB430E845147C07B6A88752F8C37C04F823CF3705147C0FA30586BEB8B37C0B80207D7575147C039085614918B37C0751533E6405147C0E610EB3B608B37C0667050C4385147C0D63233BF4F8B37C0E1C55F3F335147C067AFA5A0488B37C0', 680.56889000000001, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (23, 'viaducto santa ephigenia', NULL, '0105000020E61000000100000001020000000400000072E53A12785147C061D10895AE8A37C0D8551C5A725147C01F26F969B98A37C0C101CC5B485147C0AA8AD6AC0A8B37C05835A7942F5147C0EAFF67313B8B37C0', 327.842440000000011, 5, 1920, 1940);
INSERT INTO public.tb_street VALUES (27, 'ladeira do carmo', NULL, '0105000020E61000000100000001020000000E0000002C809C49D95047C0AFB6CAB5D58C37C0B505F5FED65047C0318E7830D68C37C03DAA13D6D45047C091019C01D58C37C01AB263B5BA5047C098C1D2C9BE8C37C07DF119A39D5047C00C6E08D6A68C37C0782347A3805047C05AD43E988E8C37C0FC32E1C5765047C01C1D132F868C37C00FA36D4B6F5047C0EBD93C357C8C37C0045A8AD6685047C0C79A1FB7748C37C0B255C7FA605047C08E88AAE86C8C37C0EB8444DF575047C059408FDA658C37C0566EDFED4E5047C0E6874CB45F8C37C07EC1AF861C5047C091DFD3183C8C37C0A133FA2F1B5047C035FAD3FD3A8C37C0', 649.745450000000005, 7, 1920, 1940);
INSERT INTO public.tb_street VALUES (209, 'rua prates', NULL, '0105000020E610000001000000010200000008000000FD3CA51B555147C032151527268737C015A50FA9585147C064AE5054438737C084234E2B645147C0E5F3AB4C8C8737C047AF176C785147C0E2E43EFA0A8837C039FDB5A8875147C038DB2BB46F8837C0C1F869388F5147C0EB5561FA9F8837C070701F56925147C0F1A04FA1A88837C0B64B7F4E925147C042C116B7A88837C0', 681.469339999999988, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (241, 'rua sao caetano', NULL, '0105000020E610000001000000010200000008000000557B86270D5147C03C9A724CD08837C0B3FE32F5015147C04331B604D58837C0B1EA87ADD95047C048B41577E08837C0F3886338805047C07B8CA6CEFE8837C0F9830E41455047C005ED0F50118937C0D998AA55215047C0570BC1E21C8937C0DCA0B5C3DC4F47C0FCFC2118328937C0E943EE93A54F47C0854CD2C8448937C0', 1137.73076999999989, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (25, 'travessa do mercado', NULL, '0105000020E610000001000000010200000007000000094183E7EF5047C0ED2EB23AE38B37C0711B18CFED5047C0810FF478EA8B37C0874B7878E05047C0E3CF4588208C37C0DC3C3C13D35047C0A225AC235C8C37C080249579C65047C0BFD6F1ED958C37C0BD4FE1C4C35047C0EDFF02179D8C37C01AB263B5BA5047C098C1D2C9BE8C37C0', 406.824950000000001, 3, 1920, 1940);
INSERT INTO public.tb_street VALUES (34, 'rua lucrecia leme', NULL, '0105000020E610000001000000010200000002000000518DD864EF5047C03A5C1A50ED8A37C03F2D0F44E15047C0964FA1D8F18A37C0', 44.6835799999999992, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (26, NULL, 'sem nome', '0105000020E6100000010000000102000000080000002C809C49D95047C0AFB6CAB5D58C37C0DC969EBADB5047C0816C70A2D28C37C070EF1983E15047C09FE2995CC58C37C0A9694FA3E25047C00063B43FC08C37C0379A5524E65047C0399FB04DA48C37C0D6FD014EE85047C0A5489C8F968C37C0D2334A48EB5047C0F6E3B786808C37C04B00C652ED5047C0DA8F7164738C37C0', 181.418959999999998, 0, 1920, 1940);
INSERT INTO public.tb_street VALUES (28, 'rua frederico alvarenga', NULL, '0105000020E610000001000000010200000008000000A10831EE9F5047C0C652733DB08C37C091E1F71F7C5047C08B75ABE3F98C37C0F710128A675047C0A38CD1A2238D37C07906D2B3585047C09A6E7A11418D37C06A77FC84545047C0DF1704EB4B8D37C0FF2413AB525047C0491759F1528D37C0940092024F5047C096F7C2DB5F8D37C02BE845DC4D5047C0E9EDF869648D37C0', 399.189030000000002, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (29, 'rua do carmo', NULL, '0105000020E6100000010000000102000000060000008B711860D85047C0D0B99FE6D58C37C039359E4ED25047C086FDF4F5E78C37C046D5A3EFBA5047C0A507CAA91A8D37C0636C9674965047C058252FD3698D37C02BFA720E965047C0205A39886B8D37C04FB7CD2F965047C05074410F708D37C0', 334.68549999999999, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (52, 'rua antonio de godoy', NULL, '0105000020E61000000100000001020000000900000079217F02C95147C03DB6A1F1058B37C0393A7B2FB45147C0B95EFDA3ED8A37C0FA1604A7A05147C0A71C6738D68A37C0DA509F91935147C05967996BC68A37C00713FC918F5147C0747CDE46C08A37C00CE5C3128E5147C0536093E3BD8A37C05079432F8B5147C00D670A69BA8A37C01786232A855147C077B3BE80B38A37C00BD05A1F805147C0CC54828FAD8A37C0', 271.999120000000005, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (30, 'ladeira da constituicao', NULL, '0105000020E610000001000000010200000003000000BE7B6BED0F5147C06DDE6F1B108B37C0ABBE24D90A5147C00B20AA40168B37C0A5947C28F55047C0004903512A8B37C0', 94.5412500000000051, 7, 1920, 1940);
INSERT INTO public.tb_street VALUES (31, 'rua virgilina salles', NULL, '0105000020E61000000100000001020000000200000088DDDF0BF45047C0EF762D6E1E8B37C028907C15E65047C065E1141A238B37C0', 44.2160999999999973, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (32, 'rua itoby', NULL, '0105000020E61000000100000001020000000600000027E0BA0BF75047C0293EFD32578B37C0C993E06DEF5047C064909195558B37C001E1CB50E25047C03F26042D538B37C07658D117C95047C0E77937024F8B37C0207B9CFEC35047C02BC8E6464E8B37C023659337B55047C0389CEB0F658B37C0', 219.813580000000002, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (33, 'rua santo andre', NULL, '0105000020E610000001000000010200000005000000E199D4B8E95047C07B273D89548B37C056423FBCE95047C0F42C73D04C8B37C0843D87E1E75047C0BC19FB63388B37C028907C15E65047C065E1141A238B37C00321A990DB5047C0AE4AD490B78A37C0', 269.101369999999974, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (474, 'rua tabatinguera', NULL, '0105000020E61000000200000001020000000300000088AB86F07C5047C09AEDBFC6618D37C0BD3AAE405C5047C0A22623185C8D37C004ADB220515047C02579BB61588D37C001020000000800000088AB86F07C5047C09AEDBFC6618D37C0E4CC12C97F5047C05D471988628D37C0F3E0396D875047C044059B52668D37C0922626248F5047C00CF31EE66E8D37C0B04952EA905047C0188DD1E86F8D37C0AA167547E65047C0AB1B48FB6F8D37C09B33B840FC5047C0861FFC37708D37C07A6E5541015147C0A25CED8E728D37C0', 555.495970000000057, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (478, 'rua da mooca', NULL, '0105000020E61000000100000001020000000B0000009A177AB5075047C028B12C0DA38D37C0BA652415F14F47C0AA540BEAAA8D37C0ED5E498ADB4F47C0449FA584AD8D37C0F320D8E5D64F47C0BB56F1C2AD8D37C086A7910FC74F47C000C0A54BB08D37C0ACD83789B04F47C04416B87BB28D37C08E53186B974F47C0EE8DD9F7B68D37C0D29B1825654F47C09037048CBC8D37C00D054386284F47C0D299DE69C48D37C040006BF1F64E47C0F0B6360BCD8D37C08438E15DB54E47C08E6C7666D98D37C0', 1058.69762999999989, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (16, 'rua alvares penteado', NULL, '0105000020E6100000010000000102000000090000006D012666375147C0C76D586B668C37C002A9B667375147C031D8DCC6568C37C060A242B4395147C0CCB99CC4438C37C03B47D5C23B5147C07A920B2B358C37C09FD162073D5147C031ADA1942F8C37C0D7F0D369435147C0EEAFDBDA048C37C09E23EBD2475147C03593E970E78B37C06543BDFE485147C081B50396E08B37C09FA039BF4D5147C0CBC5BCEFDB8B37C0', 250.436990000000009, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (40, 'rua sao nicolau', NULL, '0105000020E6100000010000000102000000020000001D11CAC2E05047C038B20F5B1F8C37C01D4C2C30CC5047C00EFE6EF70E8C37C0', 69.8279399999999981, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (94, 'rua cunha horta', NULL, '0105000020E61000000100000001020000000200000031920EAD0F5347C05958195DD28B37C06C812630EE5247C0323B7510D48B37C0', 104.383359999999996, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (15, 'largo da misericordia', NULL, '0105000020E6100000010000000102000000020000005109A4973A5147C0201C5BD6748C37C06D012666375147C0C76D586B668C37C0', 26.3175600000000003, 4, 1920, 1940);
INSERT INTO public.tb_street VALUES (247, 'rua florencio de abreu', NULL, '0105000020E610000003000000010200000002000000B7880F6F075147C0332808F0088937C0F8A77FE9125147C05D8CD448F48837C0010200000010000000786C168A225147C0A62C194A468B37C0162B15161E5147C0EE726A3C428B37C0DFE3E2D61C5147C0CD11FFDE3E8B37C071B020E50F5147C07C477825108B37C0DD668FB70B5147C02074CFCA018B37C014663904075147C0E78EF2B4DC8A37C01D4BBA06015147C04D6D800CAF8A37C002B6AA36FD5047C00CA964DA968A37C0BD5FEEDEFC5047C0EB1B7384928A37C0C621DEEFFC5047C0690FE69F8A8A37C07958DC13FD5047C0F876FB7B858A37C04586A833FE5047C0520E6A9F668A37C0B1967358015147C0A5232D3D008A37C0E5EA4C35035147C07117F1B9C68937C07C3EFD12085147C022ACD62B2C8937C0B7880F6F075147C0332808F0088937C0010200000002000000B7880F6F075147C0332808F0088937C003BC2C6C075147C0C1043D51088937C0', 1049.43770999999992, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (367, 'rua anhangabahu', NULL, '0105000020E610000002000000010200000014000000303EF126625147C0F5C1F161638B37C01ACE07465B5147C0AC9AC71F4C8B37C09BADD897405147C06F225B60F58A37C0FEF15061295147C075DA23F2A78A37C09C6269AC225147C0D189AAE2918A37C078062A8D215147C0D92E47638E8A37C0E59ADA39205147C0383151068C8A37C09B28C8431C5147C0B0CCDA5F878A37C07FCCAF72065147C01BA9541E6E8A37C0E5381B1F035147C073A699D86B8A37C09411F351015147C0E34E46466B8A37C010FE142AFB5047C0D7B24E8A688A37C0955B06CBF45047C02E9D0842668A37C026C5AC93EB5047C02FA09901638A37C0DD813DA1EA5047C0C17353E4628A37C07025B79CE75047C0CDC4FB4E628A37C069D9F946B95047C090250089538A37C0DF4A49238D5047C04A383853458A37C0996381305F5047C04AF6C61D388A37C0028A52DF5A5047C06A7464EF368A37C00102000000020000001E3852ED4F5047C0D35ACD1D3C8A37C0028A52DF5A5047C06A7464EF368A37C0', 1091.2517499999999, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (141, 'rua da figueira', NULL, '0105000020E61000000100000001020000000B0000006CD695FA285047C0416584917A8B37C005981E1E2B5047C0F6C96C92E78B37C0C2922ACB2B5047C03B778770078C37C0D353F0ED245047C0972F11BA2D8C37C01049069D215047C0AD95E1B03F8C37C0C076A17A1F5047C002DCFF1C4F8C37C0A3850A38005047C048D32149FB8C37C08CFE43D9FC4F47C0B0AEE700208D37C0F66A4F2CFE4F47C092FBD4684A8D37C0E262F94F025047C0D5E51F8A768D37C09A177AB5075047C028B12C0DA38D37C0', 959.594029999999975, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (8, 'rua quintino bocayuva', NULL, '0105000020E610000001000000010200000008000000613A6C0A575147C0E0852E1C178D37C0DB8D5468555147C07DEAE811118D37C0568CD691505147C0F992B0F3EF8C37C00ADA152E4C5147C0421886B5D48C37C07D66DE4E485147C0A106F858BB8C37C0FA5480A8445147C06E84F820A38C37C026F14A31405147C08FEC33298C8C37C05109A4973A5147C0201C5BD6748C37C0', 288.722429999999974, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (304, 'rua veiga filho', NULL, '0105000020E610000001000000010200000002000000A99FD856EE5347C078CF8BAEA48A37C0BA0A2BBBF85347C06924AEE49D8A37C0', 34.3529499999999999, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (38, 'largo de sao bento', NULL, '0105000020E6100000010000000102000000090000005835A7942F5147C0EAFF67313B8B37C092CAEC89225147C03DCA8249468B37C03F113D11275147C00D992AA5568B37C0CF45CB7C2A5147C0D347CB66568B37C044AA1CA92C5147C05573C2E8578B37C05941257E335147C0BA6DD63A508B37C0E1C55F3F335147C067AFA5A0488B37C0371BBF4D325147C06235AE2D408B37C0DD50B19F2F5147C02F37CA1B3B8B37C0', 158.030550000000005, 4, 1920, 1940);
INSERT INTO public.tb_street VALUES (39, NULL, 'sem nome', '0105000020E61000000100000001020000000800000003A98FDF025147C0C4659BD0828C37C0C23CA5D3035147C041C673777E8C37C0F7119E12095147C083C7054D648C37C0133244E00C5147C014126717508C37C0336C73870E5147C06281572A4B8C37C03E3DA118125147C089D6AD864A8C37C07B86AB99145147C00FE7DA394B8C37C0ABC6D6091E5147C0241D1A704B8C37C0', 149.471350000000001, 0, 1920, 1940);
INSERT INTO public.tb_street VALUES (53, 'rua do seminario', NULL, '0105000020E6100000010000000102000000080000008662C8536C5147C0872127294E8B37C0782C537A6C5147C0184A46DB418B37C0175FE69D735147C0D68B4022078B37C05F75144A765147C019AC0DCDE88A37C0DC98CD5C765147C011A6D2EAE48A37C02AD3B8BB775147C02B1320A8D18A37C060304BEE785147C07FF8B26EC58A37C0C838558F7C5147C0805328A6B08A37C0', 271.703820000000007, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (513, 'rua jose bonifacio', NULL, '0105000020E610000002000000010200000003000000955FBAD49E5147C09C7FDB1E838C37C01503B524B35147C0DB41C188708C37C0D70B37B2B65147C0C21FB6D76D8C37C0010200000012000000E46CFE63305147C001919339818C37C00DDA1268325147C0AC123BDF828C37C08EB76EC9335147C09649E203858C37C08AA8CCD0345147C0BA842633878C37C0D0F05A4A355147C0BA2313C2878C37C031AB8FCC375147C0E6B288D7888C37C0F34B4C743C5147C0DCC333A78A8C37C02AF14A31405147C090EC33298C8C37C0C627EA3B415147C0F7DCD77D8C8C37C047326B08435147C0A55F521F8D8C37C0464BECCF435147C0CEA991128D8C37C082E762F3455147C0313B62ED8C8C37C03737EC26505147C0ECC712E98B8C37C0F6E4A763555147C02E5DDA7F8B8C37C0867844FB615147C03AFA47B0898C37C0FB5337977E5147C02D2A0E18878C37C0B175E987825147C0CDB79205878C37C0A0F42725995147C0191AB807858C37C0', 0, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (12, 'rua santa theresa', NULL, '0105000020E6100000010000000102000000050000007D1B4DD0125147C0563C71EDCC8C37C0DAE575D40A5147C0CD0C87CCD38C37C0A776AB63015147C0052E740BD88C37C0A9576085FE5047C0693BF520DA8C37C06DEF1983E15047C096E2995CC58C37C0', 164.292969999999997, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (120, 'rua aureliano coutinho', NULL, '0105000020E6100000010000000102000000080000008E18DDA6895347C0C9EC61BB408A37C01C56A09F995347C05596E304A78A37C0561B40099A5347C0E39D34A3ED8A37C05DE4E6A69A5347C0F90EE1690B8B37C093DFCAA19D5347C0370BE9D32D8B37C0E427FB83A15347C01F1DF155428B37C0080C4BA8A75347C0325E73505A8B37C08FCC8596AD5347C04FBFF66D738B37C0', 536.270660000000021, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (203, 'rua aymores', NULL, '0105000020E610000001000000010200000003000000A7924EBCD55147C0DED25977298837C043E3131DEA5147C06BC9B81DDE8737C0E85EC9DC025247C02C1602C7818737C0', 316.344190000000026, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (190, 'alameda barao de piracicaba', NULL, '0105000020E610000001000000010200000004000000A24B7AC91A5247C06D5D1DB52F8937C0F194C17F835247C093B88585188837C04834E041A65247C0C7F94F33BA8737C04CBD1235C55247C03DB7DECA688737C0', 934.346610000000055, 10, 1920, 1940);
INSERT INTO public.tb_street VALUES (175, 'avenida angelica', NULL, '0105000020E61000000100000001020000000B00000019068980925347C03440E00D718837C025183697925347C01C8D852B718837C03BA21FCD9E5347C04CA40FE39C8837C023D253E1A95347C00C74F672E58837C02C9EA857B05347C0C193E9C60D8937C048CFEB3BBF5347C0D4213496728937C0EB5D0780D75347C07D525FA7138A37C00BBA15EAE25347C04630C00A618A37C0CB432BEFEA5347C0AB7C077F958A37C08BF1E083EF5347C0454717EDA98A37C03F8087A8F85347C06DA7F0CCCF8A37C0', 1075.97277000000008, 2, 1920, 1940);
INSERT INTO public.tb_street VALUES (425, 'avenida brigadeiro luiz antonio', NULL, '0105000020E61000000100000001020000000A00000068499A4E7E5147C03F80E2DFF48C37C0199D36FD835147C0EEE86FAA078D37C01DC24BA69E5147C0B809567A698D37C0CD6EEA63A65147C035582E85858D37C0CC51C418C25147C028028A60ED8D37C0D46E60C7DC5147C08625FD384D8E37C09460EA7EE45147C08C5C01DA678E37C0F51DFD32E95147C001BD8E56708E37C031863D76FC5147C0256ED67EA28E37C0F4E98BB61D5247C00EE03518EA8E37C0', 986.814309999999978, 2, 1920, 1940);
INSERT INTO public.tb_street VALUES (267, 'avenida vautier', NULL, '0105000020E610000001000000010200000008000000526A9E0FA74F47C008543FCFF68837C0C9C493DDA64F47C072021F0CF38837C06F086554A64F47C0DCFE643DED8837C0F8465A209D4F47C0BB82E0E6AF8837C017EFC74F854F47C068B09DDA138837C0BC5B97C87B4F47C051763BCCD48737C0434E824A724F47C0BDFC6583968737C06DA853C4684F47C0FC94B287588737C0', 726.633000000000038, 2, 1930, 1940);
INSERT INTO public.tb_street VALUES (2, 'rua tres de dezembro', NULL, '0105000020E610000001000000010200000004000000DC29AAFC2F5147C0CAC12D65E48B37C063000C06295147C0325C4842E38B37C010748D0F1C5147C09FE1149CE08B37C08146EBA5135147C0A3E4B9C7DE8B37C0', 88.8131499999999932, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (73, 'rua sete de abril', NULL, '0105000020E61000000100000001020000000A000000AD05DACCE25147C0403496CF258C37C07D1A8858E45147C07F20A431228C37C004FF38EDEB5147C072B9D0DC158C37C0E2C60135F95147C0D7016DE8008C37C0889CFB87FC5147C03AD2F95CFC8B37C0A9C00ADDFE5147C009ADD187F68B37C08B6F386E0D5247C03BC1C2B8CE8B37C0FC696909235247C05A7EBF5C958B37C05513F76C315247C0D958A48A738B37C031ADE6AD3F5247C080A423885A8B37C0', 451.995339999999999, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (117, 'rua barata ribeiro', NULL, '0105000020E610000001000000010200000002000000A2BBE8F6565347C0CDF27B404F8E37C0BC160C53E75347C0563F39249F8E37C0', 469.595849999999984, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (450, 'rua barao de iguape', NULL, '0105000020E610000001000000010200000007000000E621FF1E255147C046866308EB8E37C0FF01BAAF005147C0ADADB136E88E37C048FD09EACF5047C00FFE84FDE18E37C00FF14CA9895047C0405B8355DB8E37C03FFAE043775047C0067065BEDD8E37C06D73768C735047C065DA77AADD8E37C0A7820A5F615047C07EB0EB2AE88E37C0', 613.483029999999985, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (286, 'rua barao de ladario', NULL, '0105000020E610000001000000010200000006000000DE395031064F47C05B7CA73DB48A37C0FA38C1833C4F47C02C6518971B8A37C09968EC543A4F47C0FB878192878937C0F2C1F2A9364F47C0BF18F7240D8937C063D9E092334F47C0CA05A09A678837C0D6495289344F47C0A10C024C548837C0', 1078.6123399999999, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (186, 'rua barao de limeira', NULL, '0105000020E6100000010000000102000000140000000192F7B52F5247C0E80FF6448C8A37C0BEFA4BD9535247C0BFA45CEE338A37C077A9F438675247C0A0CDBB98048A37C0D2B098CE805247C0AF6F5A0BC68937C06E11CCC7975247C0D6C6A1D08D8937C03F47A4A0C15247C0DE06EC54298937C0B7EE3AB8D65247C07E448D46F48837C021663A2BF55247C0C4DDBCB0A98837C09A37F8BC015347C02F737A4C888837C00317CFD7045347C077BBAB7A808837C0530DC00C095347C017E366C2748837C00FF6758D0D5347C012EC4B57688837C03CD6EEA5125347C0E3E7F5A95A8837C058723BB9155347C092A9D305538837C018F595BB1C5347C06F48A9123F8837C02267792A215347C01142617C338837C031A1958E265347C014E17AF8248837C03B0793F32B5347C0FA425A02178837C0E77673E4325347C03F9D212B048837C022A412C0365347C0414934ABFA8737C0', 1381.14824999999996, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (72, 'rua braulio gomes', NULL, '0105000020E6100000010000000102000000060000008B6F386E0D5247C03BC1C2B8CE8B37C02E828A35185247C0990F29F5DB8B37C06A76D28C185247C0D4308F5EE88B37C0C5F0DE8C185247C08D15CEBDFA8B37C04AF6F88F185247C069B6FE5F218C37C025E93984185247C0F6A48FAA3E8C37C0', 207.181009999999986, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (292, 'rua capitao mor passos', NULL, '0105000020E610000001000000010200000003000000883D1FCEC94E47C0EF4F1CC8938737C0A770519ECB4E47C08B82EFF25D8737C0BE03DCB0CA4E47C06E8A0778558737C0', 105.762079999999997, 1, 1930, 1940);
INSERT INTO public.tb_street VALUES (91, 'rua cesario mota', NULL, '0105000020E610000001000000010200000008000000EF5F66920B5347C04F3BC0A0AD8A37C01B24F24D0C5347C065DB442DF18A37C0A7A369210D5347C050E2A57A348B37C0456DC8100E5347C0190F70B16D8B37C0C0B3871E0F5347C037F126159D8B37C074A15854105347C02D2E48E6108C37C02100F41E115347C001A76AB1378C37C0E059CD62135347C08E4FA33E3E8C37C0', 679.28931, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (74, 'rua coronel xavier de toledo', NULL, '0105000020E61000000100000001020000000A000000FFFB40D0C35147C06ABB56DCC98B37C0BE2664B6C85147C05C0460B7D88B37C003821644D35147C02DD94F03FA8B37C0102634DCDF5147C0B1772F0C218C37C03C7EE902E15147C0989C71E0238C37C059FA87D3E25147C0B0ACF4BF258C37C0C8528C3FE45147C0F2F588D8268C37C025FC874CE75147C0A092CA5F288C37C0CE799DEBEB5147C0AC4BE3142A8C37C0DD7CA185185247C0E681DF293B8C37C0', 355.035720000000026, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (208, 'rua correa de mello', NULL, '0105000020E610000001000000010200000006000000384C3403AC5147C00AEAEF14F28737C062A92958AC5147C0AFDD6428F28737C0FA40E64E8D5147C003B55093778737C0498911DB7D5147C021B95FCD378737C0BC7E78937A5147C00C09B4E72D8737C078093C3C795147C05BF66847268737C0', 380.837220000000002, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (453, 'rua da gloria', NULL, '0105000020E610000001000000010200000007000000C02B5391325147C0217D689A9D8D37C0B5E4D9C3315147C0502391F6B28D37C089C6F1D32C5147C04D483613378E37C0F0535B742A5147C051D582CA798E37C0A506B013295147C0073138689F8E37C07C1A57C5265147C063FBBC6DE28E37C0E621FF1E255147C046866308EB8E37C0', 565.55822999999998, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (281, 'rua das olarias', NULL, '0105000020E6100000010000000102000000060000009F6C087C054F47C0EB4A3EEF898737C0BBAE47D1004F47C07EE1DFE4868737C084589156044F47C0F1247121798737C04A7F9E58184F47C0619750313E8737C0DA941910234F47C03F6E87332D8737C0BFA72CAA264F47C0F078D26C278737C0', 217.558690000000013, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (196, 'rua dos guayanazes', NULL, '0105000020E61000000100000001020000000D000000D694BC05F05147C01C87FD5A878A37C02F0AACC8095247C022FFD72A438A37C005D7CD33165247C08F26BB92218A37C0D0939F06265247C0FFBEB0D1F78937C0A8CBCF82395247C0E2F5DC6DC48937C048F36738525247C029F22D39828937C0A21A6F02675247C063B355E24A8937C0D756D1D2815247C054449E37048937C0C52C00689A5247C06818A458BF8837C0D5C8667BBD5247C0679D2E78618837C03912A66BE05247C08A1CA12E048837C063E31A82FE5247C0FA5184BBB28737C0EA5BCD4D0E5347C05F8AA34B888737C0', 1573.5761399999999, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (65, 'rua dr. falcao', NULL, '0105000020E61000000100000001020000000700000033526EEE855147C08FBEEC6D368C37C0A94E0AAC885147C02289E07C398C37C03D62B9448B5147C069D6987A3E8C37C0A91E474A925147C0389ACE884F8C37C002B32245955147C032D09DFE518C37C07DB2EB2BB35147C048E2B3B3688C37C0D70B37B2B65147C0C21FB6D76D8C37C0', 182.788180000000011, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (93, 'rua dr villa nova', NULL, '0105000020E6100000010000000102000000060000008C22B2303A5347C0EC41E85E328B37C06DFF670A3B5347C00A8F5CDA6A8B37C0320386603B5347C0360CDDA39A8B37C086F5822D3C5347C08DD26685D28B37C0456FCC863C5347C050508C58F28B37C0FED0EFB13E5347C026C1D4BBF98B37C0', 338.694029999999998, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (438, 'rua jaceguay', NULL, '0105000020E61000000200000001020000000500000077E3A435725147C0B70743EC818E37C04D1FB25D9D5147C01773D8DD658E37C05371B838C35147C0E61A1F354D8E37C03F4F08E9D85147C0D53795533F8E37C04881AB7EEF5147C0E80F84072E8E37C001020000000200000072E3D283EF5147C0C86A2ADF2D8E37C0D5087A044C5247C08F394449208E37C0', 704.502359999999953, 1, 1920, 1940);
INSERT INTO public.tb_street VALUES (148, 'rua jairo goes', NULL, '0105000020E610000001000000010200000007000000020668AF754F47C01871ABA5A58B37C08D9CE5F6774F47C0EC323709A08B37C027A621D07D4F47C08FCE34C1908B37C0883D19D1894F47C0BFBDDA1B6F8B37C04704ABFA924F47C00B3FB95C568B37C0C31FBCA0934F47C0727CF428548B37C0EFE30C269A4F47C019EE2259428B37C0', 202.690899999999999, 1, 1920, 1940);


--
-- TOC entry 3590 (class 0 OID 19685)
-- Dependencies: 207
-- Data for Name: tb_type_logradouro; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tb_type_logradouro VALUES (1, 'rua');
INSERT INTO public.tb_type_logradouro VALUES (3, 'travessa');
INSERT INTO public.tb_type_logradouro VALUES (5, 'viaduto');
INSERT INTO public.tb_type_logradouro VALUES (6, 'praça');
INSERT INTO public.tb_type_logradouro VALUES (8, 'beco');
INSERT INTO public.tb_type_logradouro VALUES (2, 'avenida');
INSERT INTO public.tb_type_logradouro VALUES (7, 'ladeira');
INSERT INTO public.tb_type_logradouro VALUES (9, 'jardim');
INSERT INTO public.tb_type_logradouro VALUES (10, 'alameda');
INSERT INTO public.tb_type_logradouro VALUES (11, 'vila');
INSERT INTO public.tb_type_logradouro VALUES (0, 'undefined');
INSERT INTO public.tb_type_logradouro VALUES (4, 'largo');


--
-- TOC entry 3592 (class 0 OID 19693)
-- Dependencies: 209
-- Data for Name: tb_users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tb_users VALUES (1, 'Administrator', 'admin@pauliceia.com.br', 'INPE', '4d5ecc6b451df5c8af2392aa4362843bee396eb6645c6961370dce56c41d862002a0e2102db30744784877115eaae2f3e96571446c03d4a441b14b3a45068e1f', 3, '2017-03-01', 1);
INSERT INTO public.tb_users VALUES (7, 'Rodrigo Mariano', 'rodrigo.mariano@inpe.br', 'INPE', '50474bd8bed60536f07189cf3f85a9bb81322962bb335d48983e957ebb9dc0fb805c6364d8badf267d2e87c190bf8eb47f192d905c9ba7e8ef00cc0978599108', 2, '2017-07-10', 1);
INSERT INTO public.tb_users VALUES (9, 'Cristiane Miyasaka', 'crismiyasaka@gmail.com', 'UNIFESP', '6d8d371af09a86b8ccdf451e4b32cdbaecaa9b32e2db3050719e87601d0fef7e5c317f28d60c1a063b3bb14494f8a45846630ed07390bd0e8d6e8e7235aa4b12', 2, '2017-07-12', 1);
INSERT INTO public.tb_users VALUES (6, 'Cintia Almeida', 'cintiara12@gmail.com', 'UNIFESP', '4527f097c719879492e425d6c5306fa8500164d1dfaeedf7f6dbbb426cb46938febdf485227c8535bfd1a9f27e0fea9f1c7818de2e7280aec299346538adbf47', 2, '2017-07-10', 1);
INSERT INTO public.tb_users VALUES (11, 'Luanna Nascimento', 'luannag.nascimento@gmail.com', 'UNIFESP', 'fbe6b4a554cfb7361f5561df9091e80716f1bbeacfe6e685e58a9a7a59646db4c8c12bfeee9ed5cb3f6f21bdb54f167f1f10706dd120822f476ed6919863000f', 2, '2017-08-02', 1);
INSERT INTO public.tb_users VALUES (12, 'Test Editor', 'editortest@pauliceia.com.br', 'INPE', 'bcc3d94c6659d9fa4a08e103df90ae8f5ea67cd0c661babfd468d1e34cac119f10ca41fa5d4ea201b4b9c78d9effd62abac96ac776f8c8476a3acad5a7ef2c87', 2, '2017-08-17', 1);
INSERT INTO public.tb_users VALUES (14, 'Priscila Meireles', 'arq.meireles@gmail.com', 'Pauliceia', '013092c8a94b5bf77977aecc43bfaa8459fedccd456ca44803aecb856b69933179a2b6aed70b24aeab0cb0db3299ad9bec53956dd98151bdce1a5f22f4e0eca0', 2, '2017-11-16', 1);
INSERT INTO public.tb_users VALUES (13, 'Wania Mazzarello', 'wania_mazzarello@hotmail.com', 'UNIFESP', '5bc13d0219d18a95a9e438294f29ead673e48f4a5b5b489235c07cbe20018dbc810513d9bf56d5861a70499275c832887924d71d0dbfbf44114b6c91aa511756', 2, '2017-11-14', 1);
INSERT INTO public.tb_users VALUES (15, 'Ana Maria Barbour', 'barbour.ana@gmail.com', 'UNIFESP', 'd37194a18ede4900cfc68113d7dfc51eb5d69a24af3bb048133c998dd5675ecc8107e2938e46fc9db52ea9f253002dd1fa7a444ce6880fe0669fa376ba433d35', 2, '2017-11-27', 1);
INSERT INTO public.tb_users VALUES (10, 'Jaíne Diniz', 'jainedinizz@gmail.com', 'UNIFESP', 'c917fc1eb5e092c87a5d92f8d2871284e7166221cf045d37cc684d07843c09410f38d8ab01eedf13d6324af3004f7a2dcda9aedcb43af6941f427142448026f2', 2, '2017-07-12', 1);
INSERT INTO public.tb_users VALUES (8, 'Luis Ferla', 'luis.ferla@terra.com.br', 'UNIFESP', '55530f28d4a7bf616e7494076930f0e3f05d354b75e8679de14daa682c97d19e9b5c2d73514d1da8bb2ccdd8b607f1cee2bb368daa3f9db789a78b8327082d6d', 2, '2017-07-10', 1);
INSERT INTO public.tb_users VALUES (3, 'Beto Noronha', 'beto_noronha@live.com', 'INPE', '694b86f352f5b7f80a037a55cbe935cd782d5a95b72fe1da8f84dfef1b6627d7606fcbe247d344e405638d4f3b3fdb948b6fad76035d8e5f9d578a3ea2db5bbd', 2, '2017-05-31', 1);
INSERT INTO public.tb_users VALUES (16, 'Monaliza Caetano', 'monaliza_caetano@hotmail.com', 'UNIFESP', 'f2cc391e25c5b38225f73fb4d26b029580eddd21ba625d47637bb93748f962d8702ff29364a2555abf5bf1a78bea8e55a2173710ee6fc173c939127daa748e35', 2, '2018-03-16', 1);
INSERT INTO public.tb_users VALUES (17, 'Samuel', 'samuelrbm@gmail.com', 'UNIFESP', 'f68e35aa3bdca9ece9ca48d287be280caed96987b6901e08e22bc328a555281adf15bf692cf1ff323da2d32dab77a2c0557e84cf737116367cfc1b97ac0f7449', 2, '2018-03-16', 1);


--
-- TOC entry 3612 (class 0 OID 0)
-- Dependencies: 203
-- Name: tb_places2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tb_places2_id_seq', 128, true);


--
-- TOC entry 3613 (class 0 OID 0)
-- Dependencies: 204
-- Name: tb_places_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tb_places_id_seq', 2032, true);


--
-- TOC entry 3614 (class 0 OID 0)
-- Dependencies: 205
-- Name: tb_street_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tb_street_id_seq', 527, false);


--
-- TOC entry 3615 (class 0 OID 0)
-- Dependencies: 208
-- Name: tb_type_logradouro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tb_type_logradouro_id_seq', 11, true);


--
-- TOC entry 3616 (class 0 OID 0)
-- Dependencies: 210
-- Name: tb_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tb_users_id_seq', 17, true);


--
-- TOC entry 3446 (class 2606 OID 19706)
-- Name: tb_places pk_id_places; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_places
    ADD CONSTRAINT pk_id_places PRIMARY KEY (id);


--
-- TOC entry 3450 (class 2606 OID 19708)
-- Name: tb_type_logradouro pk_id_type; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_type_logradouro
    ADD CONSTRAINT pk_id_type PRIMARY KEY (id);


--
-- TOC entry 3448 (class 2606 OID 19710)
-- Name: tb_street tb_streets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_street
    ADD CONSTRAINT tb_streets_pkey PRIMARY KEY (id);


--
-- TOC entry 3452 (class 2606 OID 19712)
-- Name: tb_users tb_users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_users
    ADD CONSTRAINT tb_users_email_key UNIQUE (email);


--
-- TOC entry 3454 (class 2606 OID 19714)
-- Name: tb_users tb_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_users
    ADD CONSTRAINT tb_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3455 (class 2606 OID 19715)
-- Name: tb_places fk_id_street; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_places
    ADD CONSTRAINT fk_id_street FOREIGN KEY (id_street) REFERENCES public.tb_street(id) ON UPDATE CASCADE;


--
-- TOC entry 3457 (class 2606 OID 19720)
-- Name: tb_places2 fk_id_street; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_places2
    ADD CONSTRAINT fk_id_street FOREIGN KEY (id_street) REFERENCES public.tb_street(id) ON UPDATE CASCADE;


--
-- TOC entry 3456 (class 2606 OID 19725)
-- Name: tb_places fk_id_user; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_places
    ADD CONSTRAINT fk_id_user FOREIGN KEY (id_user) REFERENCES public.tb_users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3458 (class 2606 OID 19730)
-- Name: tb_places2 fk_id_user; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_places2
    ADD CONSTRAINT fk_id_user FOREIGN KEY (id_user) REFERENCES public.tb_users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3459 (class 2606 OID 19735)
-- Name: tb_street fk_type_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tb_street
    ADD CONSTRAINT fk_type_id FOREIGN KEY (id_type) REFERENCES public.tb_type_logradouro(id) ON UPDATE CASCADE ON DELETE SET DEFAULT;