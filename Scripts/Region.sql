-- Create Table --

CREATE TABLE core_region (
  id 	INT 		NOT NULL AUTO_INCREMENT,
  name 	VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

-- Insert Data --

Insert into core_region (id, name) values (1, 'Norte');
Insert into core_region (id, name) values (2, 'Nordeste');
Insert into core_region (id, name) values (3, 'Sudeste');
Insert into core_region (id, name) values (4, 'Sul');
Insert into core_region (id, name) values (5, 'Centro-Oeste');