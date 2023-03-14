create database film;
CREATE USER film WITH PASSWORD 'film';
GRANT ALL PRIVILEGES ON DATABASE film to film;
ALTER DATABASE film OWNER TO film;


CREATE TABLE Role (
  idRole  SERIAL NOT NULL, 
  nom varchar(200) NOT NULL, 
  PRIMARY KEY (idRole)
);

CREATE TABLE Utilisateur (
  idUtilisateur         SERIAL NOT NULL, 
  nom        varchar(200) NOT NULL, 
  email      varchar(255) NOT NULL UNIQUE, 
  motDePasse varchar(255) NOT NULL, 
  idRole     int4 NOT NULL, 
  PRIMARY KEY (idUtilisateur)
);

CREATE TABLE Films (
  idFilms            SERIAL NOT NULL, 
  nom           varchar(200) NOT NULL, 
  dateCreation  date NOT NULL, 
  idStatut      int4 NOT NULL, 
  idUtilisateur int4 NOT NULL, 
  PRIMARY KEY (idFilms)
);

CREATE TABLE Statut (
  idStatut  SERIAL NOT NULL, 
  nom varchar(200) NOT NULL, 
  PRIMARY KEY (idStatut)
);

CREATE TABLE Plateau (
  idPlateau  SERIAL NOT NULL, 
  nom varchar(200), 
  PRIMARY KEY (idPlateau)
);

CREATE TABLE Scene (
  idScene        SERIAL NOT NULL, 
  titre     varchar(200) NOT NULL, 
  idPlateau int4 NOT NULL, 
  PRIMARY KEY (idScene)
);

ALTER TABLE Scene 
ADD COLUMN idFilms int REFERENCES Films(idFilms);

CREATE TABLE Personnage (
  idPersonnage          SERIAL NOT NULL, 
  nom         varchar(200), 
  descriptions text, 
  idFilms      int4 NOT NULL, 
  PRIMARY KEY (idPersonnage)
);

CREATE TABLE Scenario (
  idScenario      SERIAL NOT NULL, 
  duree   time(7) DEFAULT '00:00:00', 
  idScene int4 NOT NULL, 
  idType  int4 NOT NULL, 
  PRIMARY KEY (idScenario)
);

ALTER TABLE Scenario add COLUMN TempsTravail int not null DEFAULT 1;

CREATE TABLE Type (
  idType  SERIAL NOT NULL, 
  nom varchar(200), 
  PRIMARY KEY (idType)
);

CREATE TABLE Action (
  idAction     SERIAL NOT NULL, 
  descriptions  text, 
  idScenario   int4 NOT NULL, 
  idPersonnage int4 NOT NULL,
  PRIMARY KEY (idAction)
);

CREATE TABLE Dialogue (
  idDialogue           SERIAL NOT NULL, 
  script       text NOT NULL, 
  emotion      varchar(200), 
  idScenario   int4 NOT NULL, 
  idPersonnage int4, 
  PRIMARY KEY (idDialogue)
);

ALTER TABLE Utilisateur ADD CONSTRAINT FKUtilisateu324072 FOREIGN KEY (idRole) REFERENCES Role (idRole);
ALTER TABLE Films ADD CONSTRAINT FKFilms139231 FOREIGN KEY (idStatut) REFERENCES Statut (idStatut);
ALTER TABLE Films ADD CONSTRAINT FKFilms954141 FOREIGN KEY (idUtilisateur) REFERENCES Utilisateur (idUtilisateur);
ALTER TABLE Scene ADD CONSTRAINT FKScene935628 FOREIGN KEY (idPlateau) REFERENCES Plateau (idPlateau);
ALTER TABLE Personnage ADD CONSTRAINT FKPersonnage423929 FOREIGN KEY (idFilms) REFERENCES Films (idFilms);
ALTER TABLE Scenario ADD CONSTRAINT FKScenario984857 FOREIGN KEY (idScene) REFERENCES Scene (idScene);
ALTER TABLE Scenario ADD CONSTRAINT FKScenario253140 FOREIGN KEY (idType) REFERENCES Type (idType);
ALTER TABLE Action ADD CONSTRAINT FKAction96870 FOREIGN KEY (idScenario) REFERENCES Scenario (idScenario);
ALTER TABLE Dialogue ADD CONSTRAINT FKDialogue986948 FOREIGN KEY (idScenario) REFERENCES Scenario (idScenario);

CREATE TABLE ImageFilms(
  idImageFilms SERIAL NOT NULL,
  idFilms int4 NOT NULL,
  image varchar(100) NOT NULL,
  PRIMARY KEY (idImageFilms)
);
ALTER TABLE ImageFilms ADD FOREIGN KEY (idFilms) REFERENCES Films(idFilms);

CREATE TABLE TempsTravail(
    idTempsTravail SERIAL NOT NULL,
    dureejour time NOT NULL,
    dureenuit time NOT NULL
);

CREATE TABLE Planning(
    idPlanning SERIAL NOT NULL,
    dateDebut timestamp NOT NULL,
    dateFin timestamp NOT NULL,
    PRIMARY KEY (idPlanning)
);

CREATE TABLE PlanningPlateau(
    idPlanningPlateau SERIAL NOT NULL,
    idPlateau INT4 NOT NULL,
    heure_debut time NOT NULL,
    heure_fin time NOT NULL,
    PRIMARY KEY (idPlanningPlateau)
);
ALTER TABLE PlanningPlateau ADD FOREIGN KEY (idPlateau) REFERENCES Plateau(idPlateau) ;
ALTER  TABLE PlanningPlateau ADD COLUMN idPlanning INT4 NOT NULL;
ALTER TABLE PlanningPlateau ADD FOREIGN KEY (idPlanning) REFERENCES Planning(idPlanning) ;

CREATE TABLE PlanningScene(
    idPlanningScene SERIAL NOT NULL,
    idScene INT4 NOT NULL,
    idPlanning INT4 NOT NULL,
    dateDebut timestamp DEFAULT now(),
    dateFin timestamp DEFAULT now(),
    heureIdeal time,
    PRIMARY KEY (idPlanningScene)
);
ALTER TABLE PlanningScene ADD FOREIGN KEY (idScene) REFERENCES Scene(idScene);
ALTER TABLE PlanningScene ADD FOREIGN KEY (idPlanning) REFERENCES Planning(idPlanning);

