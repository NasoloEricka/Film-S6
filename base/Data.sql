INSERT INTO Statut VALUES
    (DEFAULT,'Creer'),
    (DEFAULT,'En Cours'),
    (DEFAULT,'Realiser')
;

INSERT INTO Role VALUES
    (DEFAULT,'Realisateur'),
    (DEFAULT,'Auteur'),
    (DEFAULT,'Acteur')
;

INSERT INTO Utilisateur VALUES
    (DEFAULT,'Vanya','vanya@gmail.com',md5('vanya'),1),
    (DEFAULT,'Ericka','ericka@gmail.com',md5('ericka'),2),
    (DEFAULT,'Liantsoa','liantsoa@gmail.com',md5('liantsoa'),3),
    (DEFAULT,'Antsa','antsa@gmail.com',md5('antsa'),3)
;


INSERT INTO Films VALUES 
    (DEFAULT,'Marvel DC Super Hero','2018-01-01',1,1),
    (DEFAULT,'Spiderman Homecoming','2019-10-02',2,2)
;

INSERT INTO Plateau VALUES
    (DEFAULT,'Parc Littoral Itaosy'),
    (DEFAULT,'Maison Blanche'),
    (DEFAULT,'Ocean Atlantique')
;

INSERT INTO Scene VALUES
    (DEFAULT,'Scene de guerre',1,1),
    (DEFAULT,'Comerage autour du hero',2,1),
    (DEFAULT,'Est-ce le fin',1,1),
    (DEFAULT,'Scene de comedie',1,1),
    (DEFAULT,'La quete du hero',2,2),
    (DEFAULT,'Petite culture',3,2),
    (DEFAULT,'Un suspens bien attendu',1,2)
;

INSERT INTO Type VALUES 
    (DEFAULT,'Action'),
    (DEFAULT,'Dialogue')
;

INSERT INTO Scenario VALUES
    (DEFAULT,'00:30:00',1,1),
    (DEFAULT,'00:10:00',1,2)
;

INSERT INTO Personnage VALUES
    (DEFAULT,'Aucun','',1),
    (DEFAULT,'Carole','Fille tres serieuse',1),
    (DEFAULT,'Hubert','Homme tres comique',1)
;


INSERT INTO Action VALUES
    (DEFAULT,'Carole se promene dans une foret',1,1),
    (DEFAULT,'Elle voit une grosse flaque',1,1)
;

INSERT INTO Dialogue VALUES
    (DEFAULT,'Coucou Hubert','Heureuse',2,1),
    (DEFAULT,'Salut ma belle','Enjoleur',2,2)
;

INSERT INTO TempsTravail VALUES
    (DEFAULT,'00:45:00','03:00:00')
;

INSERT INTO Planning VALUES
    (DEFAULT,'2023-03-15 08:00:00','2023-03-18 21:00:00'),
    (DEFAULT,'2023-03-19 08:00:00','2023-03-21 21:00:00')
;

INSERT INTO PlanningPlateau VALUES
    (DEFAULT,1,'08:00:00','11:00:00',1),
    (DEFAULT,2,'13:00:00','16:00:00',1),
    (DEFAULT,2,'08:00:00','11:00:00',2),
    (DEFAULT,3,'13:00:00','16:00:00',2)
;

INSERT INTO PlanningScene(idPlanningScene,idScene,idPlanning,heureIdeal) VALUES
    (DEFAULT,1,1,'09:00:00'),
    (DEFAULT,2,1,'14:30:00'),
    (DEFAULT,5,2,'09:00:00'),
    (DEFAULT,6,2,'14:30:00')
;

