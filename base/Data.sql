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

INSERT INTO StatutScene VALUES
    (DEFAULT,'Creer',0),
    (DEFAULT,'Ecriture en cours',5),
    (DEFAULT,'Ecriture Termine',10),
    (DEFAULT,'Scene Plannifie',15)
;

INSERT INTO Scene VALUES
    (DEFAULT,'Scene de guerre',1,1,DEFAULT),
    (DEFAULT,'Comerage autour du hero',2,1,DEFAULT),
    (DEFAULT,'Est-ce le fin',1,1,DEFAULT),
    (DEFAULT,'Scene de comedie',1,1,DEFAULT),
    (DEFAULT,'La quete du hero',2,2,DEFAULT),
    (DEFAULT,'Petite culture',3,2,DEFAULT),
    (DEFAULT,'Un suspens bien attendu',1,2,DEFAULT)
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
    (DEFAULT,'2023-03-15','2023-03-18'),
    (DEFAULT,'2023-03-19','2023-03-21')
;

INSERT INTO PlateauIndisponible VALUES
    (DEFAULT,1,'2023-03-10',DEFAULT),
    (DEFAULT,2,'2023-04-15',DEFAULT),
    (DEFAULT,2,'2023-04-25',DEFAULT),
    (DEFAULT,3,'2023-05-10',DEFAULT)
;

INSERT INTO PlanningScene(idPlanningScene,idScene,idPlanning,idPlateau,datePlanning) VALUES
    (DEFAULT,1,1,2,'2023-03-15'),
    (DEFAULT,2,1,1,'2023-04-10'),
    (DEFAULT,5,2,1,'2023-03-15'),
    (DEFAULT,6,2,3,'2023-04-10')
;

INSERT INTO Planning VALUES 
    (DEFAULT,'2019-10-01','2019-10-03'),
    (DEFAULT,'2019-10-03','2019-10-05'),
    (DEFAULT,'2019-10-05','2019-10-07')
;
INSERT INTO JourFerier VALUES
    (DEFAULT,'2023-01-01','Jour de l''an'),
    (DEFAULT,'2023-03-08','Journée internationale de la femme'),
    (DEFAULT,'2023-03-29','Jour des Martyrs'),
    (DEFAULT,'2023-04-09','Pâques'),
    (DEFAULT,'2023-04-10','Lundi de pâques'),
    (DEFAULT,'2023-04-21','Id al Fitr'),
    (DEFAULT,'2023-05-01','Fête de travail'),
    (DEFAULT,'2023-05-18','Ascension'),
    (DEFAULT,'2023-05-28','Pentecôte'),
    (DEFAULT,'2023-05-29','Lundi de pentecôte'),
    (DEFAULT,'2023-06-26','Fete de l''indépendance'),
    (DEFAULT,'2023-06-28','Id al Adha'),
    (DEFAULT,'2023-08-15','Assomption'),
    (DEFAULT,'2023-11-01','Toussaint'),
    (DEFAULT,'2023-12-25','Jour de Noël')
;


