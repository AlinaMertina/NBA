
INSERT INTO ville (idville, nomville) VALUES
  (1, 'New York'),
  (2, 'Los Angeles'),
  (3, 'Chicago'),
  (4, 'Houston'),
  (5, 'Phoenix'),
  (6, 'Philadelphia'),
  (7, 'San Antonio'),
  (8, 'San Diego'),
  (9, 'Dallas'),
  (10, 'San Jose');


INSERT INTO equipe (idequipe, nomequipe, idville) VALUES
  (1, 'Lakers', 1),
  (2, 'Clippers', 2);

insert into poste values (1,'Meneur de jeu (Point guard - PG)');
insert into poste values (2,'Arrière (Shooting guard - SG)');
insert into poste values (3,'Ailier (Small forward - SF)');
insert into poste values (4,'Ailier fort (Power forward - PF)');
insert into poste values (5,'Pivot (Center - C)');


insert into joueur values (1,'LeBron James',3);
insert into joueur values (2,'Anthony Davis',5);
insert into joueur values (3,'Russell Westbrook',1);
insert into joueur values (4,'Carmelo Anthony',4);
insert into joueur values (5,'Dwight Howard',5);
insert into joueur values (6,'Malik Monk',2);
insert into joueur values (7,'Kent Bazemore',2);
insert into joueur values (8,'Talen Horton-Tucker',4);
insert into joueur values (9,'Wayne Ellington',2);
insert into joueur values (10,'DeAndre Jordan',5);

insert into joueur values (11,'Kevin Durant',3);
insert into joueur values (12,'James Harden',2);
insert into joueur values (13,'Kyrie Irving',1);
insert into joueur values (14,'Joe Harris',3);
insert into joueur values (15,'Patty Mills',1);
insert into joueur values (16,'Blake Griffin',4);
insert into joueur values (17,'Bruce Brown',3);
insert into joueur values (18,'LaMarcus Aldridge',4);
insert into joueur values (19,'DeAndre Bembry',3);
insert into joueur values (20,'Nicolas Claxton',5);


insert into detailequipe values (1,1,1);
insert into detailequipe values (2,1,2);
insert into detailequipe values (3,1,3);
insert into detailequipe values (4,1,4);
insert into detailequipe values (5,1,5);
insert into detailequipe values (6,1,6);
insert into detailequipe values (7,1,7);
insert into detailequipe values (8,1,8);
insert into detailequipe values (9,1,9);
insert into detailequipe values (10,1,10);
insert into detailequipe values (11,2,11);
insert into detailequipe values (12,2,12);
insert into detailequipe values (13,2,13);
insert into detailequipe values (14,2,14);
insert into detailequipe values (15,2,15);
insert into detailequipe values (16,2,16);
insert into detailequipe values (17,2,17);
insert into detailequipe values (18,2,18);
insert into detailequipe values (19,2,19);
insert into detailequipe values (20,2,20);



insert into detailequipe values (21,3,21);
insert into detailequipe values (22,3,22);
insert into detailequipe values (23,3,23);
insert into detailequipe values (24,3,24);
insert into detailequipe values (25,3,25);
insert into detailequipe values (26,3,26);
insert into detailequipe values (27,3,27);
insert into detailequipe values (28,3,28);
insert into detailequipe values (29,3,29);
insert into detailequipe values (30,3,30);
insert into detailequipe values (31,3,31);
insert into detailequipe values (32,3,32);
insert into detailequipe values (33,3,33);
insert into detailequipe values (34,3,34);
insert into detailequipe values (35,3,35);
insert into detailequipe values (36,4,36);
insert into detailequipe values (37,4,37);
insert into detailequipe values (38,4,38);
insert into detailequipe values (39,4,39);
insert into detailequipe values (40,4,40);
insert into detailequipe values (41,4,41);
insert into detailequipe values (42,4,42);
insert into detailequipe values (43,4,43);
insert into detailequipe values (44,4,44);
insert into detailequipe values (45,4,45);
insert into detailequipe values (46,4,46);
insert into detailequipe values (47,4,47);

INSERT INTO match (idmatch, idsaison, equipe1, equipe2, datedebut, datefin, score1, score2)
VALUES
  (1, 1, 1, 2, '2023-01-15 18:00:00', '2023-01-15 20:00:00', 105, 98),
  (2, 1, 3, 4, '2023-02-20 19:30:00', '2023-02-20 21:30:00', 110, 105),
  (3, 1, 4, 1, '2023-03-10 17:45:00', '2023-03-10 19:45:00', 95, 100);


  INSERT INTO statistiqueparmatch (idstatistiqueparmatch, idjoueur, idmatch, idaction, date)
  VALUES
    (1, 1, 1, 1, '2023-01-15 18:01:00'),
    (2, 1, 1, 2, '2023-01-15 18:02:00'),
    (3, 1, 1, 3, '2023-01-15 18:03:00'),
    (4, 1, 1, 4, '2023-01-15 18:04:00'),
    (5, 1, 1, 5, '2023-01-15 18:05:00'),
    (6, 1, 1, 6, '2023-01-15 18:06:00'),
    (7, 1, 1, 7, '2023-01-15 18:07:00'),
    (8, 2, 1, 8, '2023-01-15 18:08:00'),
    (9, 2, 1, 9, '2023-01-15 18:09:00'),
    (10,2, 1, 10, '2023-01-15 18:10:00'),
    (11, 2, 1, 3, '2023-01-15 18:11:00'),
    (12, 2, 1, 4, '2023-01-15 18:12:00'),
    (13, 2, 1, 2, '2023-01-15 18:13:00'),
    (14, 2, 1, 6, '2023-01-15 18:14:00'),
    (15, 2, 1, 1, '2023-01-15 18:15:00'),
    (16, 2, 1, 2, '2023-01-15 18:16:00'),
    (17, 2, 1, 3, '2023-01-15 18:17:00'),
    (18, 2, 1, 4, '2023-01-15 18:18:00'),
    (19, 3, 1, 5, '2023-01-15 18:19:00'),
    (20, 3, 1, 6, '2023-01-15 18:20:00'),
    (21, 3, 1, 7, '2023-01-15 18:21:00'),
    (22, 3, 1, 8, '2023-01-15 18:22:00'),
    (23, 3, 1, 9, '2023-01-15 18:23:00'),
    (24, 4, 1, 10, '2023-01-15 18:24:00'),
    (25, 4, 1, 11, '2023-01-15 18:25:00'),
    (26, 4, 1, 1, '2023-01-15 18:26:00'),
    (27, 4, 1, 2, '2023-01-15 18:27:00'),
    (28, 4, 1, 4, '2023-01-15 18:28:00'),
    (29, 4, 1, 2, '2023-01-15 18:29:00'),
    (30, 5, 1, 5, '2023-01-15 18:30:00'),
    (31, 5, 1, 6, '2023-01-15 18:31:00'),
    (32, 5, 1, 7, '2023-01-15 18:32:00'),
    (33, 5, 1, 8, '2023-01-15 18:33:00'),
    (34, 5, 1, 3, '2023-01-15 18:34:00'),
    (35, 6, 1, 2, '2023-01-15 18:35:00'),
    (36, 6, 1, 5, '2023-01-15 18:36:00'),
    (37, 6, 1, 8, '2023-01-15 18:37:00'),
    (38, 7, 1, 9, '2023-01-15 18:38:00'),
    (39, 7, 1, 3, '2023-01-15 18:39:00'),
    (40, 7, 1, 2, '2023-01-15 18:40:00'),
    (41, 8, 1, 1, '2023-01-15 18:41:00'),
    (42, 8, 1, 1, '2023-01-15 18:42:00'),
    (43, 8, 1, 4, '2023-01-15 18:43:00'),
    (44, 9, 1, 5, '2023-01-15 18:44:00'),
    (45, 9, 1, 6, '2023-01-15 18:45:00'),
    (46, 10, 1, 7, '2023-01-15 18:45:00'),
    (47,10, 1, 8, '2023-01-15 18:46:00'),
    (48, 11, 1, 9, '2023-01-15 18:47:00'),
    (49, 11, 1, 4, '2023-01-15 18:48:00'),
    (50, 11, 1, 5, '2023-01-15 18:49:00'),
    (51, 12, 1, 2, '2023-01-15 18:50:00'),
    (52, 12, 1, 5, '2023-01-15 18:51:00'),
    (53, 12, 1, 1, '2023-01-15 18:52:00'),
    (54, 12, 1, 2, '2023-01-15 18:53:00'),
    (55, 13, 1, 3, '2023-01-15 18:54:00'),
    (56, 13, 1, 4, '2023-01-15 18:55:00'),
    (57, 13, 1, 5, '2023-01-15 18:56:00'),
    (58, 13, 1, 4, '2023-01-15 18:57:00'),
    (59, 14, 1, 5, '2023-01-15 18:58:00'),
    (60, 14, 1, 1, '2023-01-15 18:59:00'),
    (61, 14, 1, 2, '2023-01-15 19:00:00'),
    (62, 14, 1, 3, '2023-01-15 19:01:00'),
    (63, 15, 1, 4, '2023-01-15 19:02:00'),
    (64, 16, 1, 5, '2023-01-15 19:03:00'),
    (65, 16, 1, 1, '2023-01-15 19:04:00'),
    (66, 16, 1, 2, '2023-01-15 19:05:00'),
    (67, 16, 1, 3, '2023-01-15 19:06:00'),
    (68, 16, 1, 4, '2023-01-15 19:07:00'),
    (69, 17, 1, 5, '2023-01-15 19:08:00'),
    (70, 17, 1, 1, '2023-01-15 19:09:00'),
    (71, 17, 1, 2, '2023-01-15 19:10:00'),
    (72, 17, 1, 3, '2023-01-15 19:11:00'),
    (73, 17, 1, 4, '2023-01-15 19:12:00'),
    (74, 17, 1, 5, '2023-01-15 19:13:00');



