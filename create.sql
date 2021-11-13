-- Create Period table --

CREATE TABLE Publish
(
  publish_id      char(10)  NOT NULL ,
  publish_data    date      NOT NULL  
);


-- Create Format table --


CREATE TABLE Format
(
  format_id      char(10)  NOT NULL ,
  format_name    VARCHAR(20)  NOT NULL 
);



-- Create Writer table --


CREATE TABLE Writer
(
  writer_id      char(10)  NOT NULL ,
  writer_name    char(50)  NOT NULL 
);


-- Create Comics table --


CREATE TABLE Comics
(
  comics_id           char(10)   NOT NULL ,
  format_id           char(10)   NOT NULL ,
  writer_id           char(10)   NOT NULL ,
  publish_id          char(10)   NOT NULL ,
  comics_name         char(50)  NOT NULL,
  comics_title        char(50)  NOT NULL,
  comics_description  char(1000) NOT NULL 
);


-- Define primary keys --

ALTER TABLE Publish ADD CONSTRAINT PK_Publish PRIMARY KEY (publish_id);
ALTER TABLE Format ADD CONSTRAINT PK_Format PRIMARY KEY (format_id);
ALTER TABLE Writer ADD CONSTRAINT PK_Writer PRIMARY KEY (writer_id);
ALTER TABLE Comics ADD CONSTRAINT PK_Comics PRIMARY KEY (comics_id);



-- Define foreign keys --

ALTER TABLE Comics ADD CONSTRAINT FK_Comics_Publish FOREIGN KEY (publish_id) REFERENCES Publish (publish_id);
ALTER TABLE Comics ADD CONSTRAINT FK_Comics_Format FOREIGN KEY (format_id) REFERENCES Format (format_id);
ALTER TABLE Comics ADD CONSTRAINT FK_Comics_Writer FOREIGN KEY (writer_id) REFERENCES Writer (writer_id);