--Publish--

INSERT INTO Publish(publish_id, publish_data)
VALUES('01', TO_DATE('2018-3-4', 'yyyy-mm-dd'));
INSERT INTO Publish(publish_id, publish_data)
VALUES('02', TO_DATE('2018-7-9', 'yyyy-mm-dd'));
INSERT INTO Publish(publish_id, publish_data)
VALUES('03', TO_DATE('2019-9-9', 'yyyy-mm-dd'));
INSERT INTO Publish(publish_id, publish_data)
VALUES('04', TO_DATE('2019-9-27', 'yyyy-mm-dd'));
INSERT INTO Publish(publish_id, publish_data)
VALUES('05', TO_DATE('2020-4-15', 'yyyy-mm-dd'));
INSERT INTO Publish(publish_id, publish_data)
VALUES('06', TO_DATE('2020-12-10', 'yyyy-mm-dd'));

--Format--

INSERT INTO Format(format_id, format_name)
VALUES('FOR1', 'Digest');
INSERT INTO Format(format_id, format_name)
VALUES('FOR2', 'Comics');
INSERT INTO Format(format_id, format_name)
VALUES('FOR3', 'Comics');
INSERT INTO Format(format_id, format_name)
VALUES('FOR4', 'Digest');
INSERT INTO Format(format_id, format_name)
VALUES('FOR5', 'Infinite Comics');
INSERT INTO Format(format_id, format_name)
VALUES('FOR6', 'Comics');

--Writer--

INSERT INTO Writer(writer_id, writer_name)
VALUES('WR1', 'Ryan North');
INSERT INTO Writer(writer_id, writer_name)
VALUES('WR2', 'Chuck Wendig');
INSERT INTO Writer(writer_id, writer_name)
VALUES('WR3', 'Paul Allor');
INSERT INTO Writer(writer_id, writer_name)
VALUES('WR4', 'Amy Chu');
INSERT INTO Writer(writer_id, writer_name)
VALUES('WR5', 'Dennis Culver');
INSERT INTO Writer(writer_id, writer_name)
VALUES('WR6', 'Jeremy Whitley');

--Comics--


INSERT INTO Comics(comics_id, format_id, writer_id, publish_id, comics_name, comics_title, comics_description)
VALUES('COM1', 'FOR1', 'WR3', '03', 'A-Force', 'A-Force (2015) #5', 'The EXPLOSIVE finale to the first adventure of Marvels mightiest team of Avengers: A-FORCE! Though ...');
INSERT INTO Comics(comics_id, format_id, writer_id, publish_id, comics_name, comics_title, comics_description)
VALUES('COM2', 'FOR1', 'WR3', '04', 'Age of Apocalypse', 'Age of Apocalypse (2011) #6', 'With monsters appearing on the utopian island of Arcadia and threatening its inhabitants, She-Hulk a...');
INSERT INTO Comics(comics_id, format_id, writer_id, publish_id, comics_name, comics_title, comics_description)
VALUES('COM3', 'FOR3', 'WR2', '05', 'Aero', 'Aero (2019) #6', 'Does defeating Antimatter mean the end of Singularity? As Singularity faces Antimatter on her own, p...');
INSERT INTO Comics(comics_id, format_id, writer_id, publish_id, comics_name, comics_title, comics_description)
VALUES('COM4', 'FOR6', 'WR6', '01', 'Adventures of Spider-Man', 'Adventures of Spider-Man (3000) #3', 'On another day unlike any other, a new collection of Earths Mightiest Heroes rocked their own remark...');
INSERT INTO Comics(comics_id, format_id, writer_id, publish_id, comics_name, comics_title, comics_description)
VALUES('COM5', 'FOR6', 'WR5', '01', 'Adventure Into Fear', 'Adventure Into Fear (2020) #27', 'While Ant-Man and Stinger assist Mainframe, the rest of the team finds out where Scarlet Witch has b...');
INSERT INTO Comics(comics_id, format_id, writer_id, publish_id, comics_name, comics_title, comics_description)
VALUES('COM6', 'FOR5', 'WR4', '01', 'Absolute Carnage', 'Absolute Carnage: Symbiote Of Vengeance (2019) #1', 'Doctor Strange summons the Hulk and the Sub-Mariner to combat the A-Next crew! Its the original DEF...');
INSERT INTO Comics(comics_id, format_id, writer_id, publish_id, comics_name, comics_title, comics_description)
VALUES('COM7', 'FOR4', 'WR1', '02', 'Age of Conan: Belit', 'Age of Conan: Belit (2019) #2 #1', 'BÊLIT has a plan to extort the rich cities along the coast --but as she makes her name in the Hybori...');
INSERT INTO Comics(comics_id, format_id, writer_id, publish_id, comics_name, comics_title, comics_description)
VALUES('COM8', 'FOR4', 'WR1', '06', 'Age of Heroes ', 'Age of Heroes (2010) #4', 'The Heroic Age continues with more titantic tales from across the mighty Marvel U! Follow Shuri, the...');
INSERT INTO Comics(comics_id, format_id, writer_id, publish_id, comics_name, comics_title, comics_description)
VALUES('COM9', 'FOR4', 'WR4', '06', 'Age of Ultron', 'Age of Ultron (2013) #10', 'One of Marvels most classic characters, Hank Pym, stands at the crossroads! Faced with a dilemma on...');
INSERT INTO Comics(comics_id, format_id, writer_id, publish_id, comics_name, comics_title, comics_description)
VALUES('COM10', 'FOR2', 'WR4', '04', 'Age of X-Man Alpha', 'Age of X-Man Alpha (2019) #1', 'THE AGE OF X-MAN DAWNS…AND THE X-MEN CANNOT STOP IT.');
INSERT INTO Comics(comics_id, format_id, writer_id, publish_id, comics_name, comics_title, comics_description)
VALUES('COM11', 'FOR1', 'WR4', '01', 'Age Of X-Man Omega', 'Age Of X-Man Omega (2019) #1', 'THE AGE OF X-MAN CONCLUDES! As twilight falls on the Age of X-Man, the X-Men are forced to decide wh...');