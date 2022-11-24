ALTER TABLE Flashcard_Set DROP FOREIGN KEY FK_FSUserID;
ALTER TABLE FlashCard DROP FOREIGN KEY FK_SetID;


DROP TABLE IF EXISTS FS_User;
DROP TABLE IF EXISTS Flashcard_Set;
DROP TABLE IF EXISTS FlashCard;





CREATE TABLE FS_User (
    FSUser_ID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    FSUser_Name varchar(15),
    Password varchar(200)
);

CREATE TABLE Flashcard_Set (
    Set_ID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Set_Name varchar(15),
    FSUser_ID int
);

CREATE TABLE FlashCard (
    Flashcard_ID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Set_ID int,
    Side1 varchar(100),
    Side2 varchar(100),
    Side3 varchar(100)

);


ALTER TABLE Flashcard_Set
ADD CONSTRAINT FK_FSUserID
FOREIGN KEY (FSUser_ID) REFERENCES FS_User(FSUser_ID);
ALTER TABLE FlashCard
ADD CONSTRAINT FK_SetID
FOREIGN KEY (Set_ID) REFERENCES Flashcard_Set(Set_ID);

SET FOREIGN_KEY_CHECKS=0;
