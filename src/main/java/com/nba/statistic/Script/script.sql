nbastatistic

create table ville (
    idville bigint primary key,
    nomville text
);

create table equipe(
    idequipe bigint primary key,
    nomequipe text,
    idville bigint,
    FOREIGN KEY (idville)  REFERENCES ville(idville)
);

create table poste(
    idposte bigint primary key,
    nomposte varchar(100)
);


create table joueur(
    idjoueur bigint primary key,
    nomjoueur text,
    idposte bigint,
    FOREIGN KEY (idposte)  REFERENCES poste(idposte)
);


create table detailequipe(
    iddetailequipe bigint primary key,
    idequipe bigint ,
    idjoueur bigint,
    FOREIGN KEY (idequipe)  REFERENCES equipe(idequipe),
    FOREIGN KEY (idjoueur)  REFERENCES joueur(idjoueur)
);


create table saison(
    idsaison bigint primary key,
    nom varchar(50)
);

create table match(
    idmatch bigint primary key,
    idsaison bigint REFERENCES saison(idsaison),
    equipe1 bigint REFERENCES equipe(idequipe),
    equipe2 bigint REFERENCES equipe(idequipe),
    datedebut timestamp,
    datefin timestamp,
    score1 double precision,
    score2 double precision
);

create table typepasse(
    idtype bigint primary key,
    nomtype text
);

create table entrersortie(
    identrersortie bigint primary key,
    idmatch bigint,
    idjoueur bigint REFERENCES equipe(idequipe),
    entrer timestamp,
    sortie timestamp
);


insert into typepasse values (1,'point1');
insert into typepasse values (2,'point2');
insert into typepasse values (3,'point3');
insert into typepasse values (4,'passedecisif');
insert into typepasse values (5,'rd');
insert into typepasse values (6,'ro');
insert into typepasse values (7,'block');
insert into typepasse values (8,'mpm');
insert into typepasse values (9,'tnmpoint1');
insert into typepasse values (10,'tnmpoint2');
insert into typepasse values (11,'tnmpoint3');
insert into typepasse values (12,'passe');
insert into typepasse values (13,'lancer front');



create table statistiqueparmatch(
    idstatistiqueparmatch bigint primary key,
    idjoueur bigint REFERENCES joueur(idjoueur),
    idmatch  bigint REFERENCES match(idmatch),
    idaction bigint REFERENCES typepasse(idtype),
    date timestamp
);

select sum(idaction) from statistiqueparmatch join match on statistiqueparmatch.idmatch=match.idmatch where idjoueur=1 and idaction=1 and match.idsaison=1

select sum(idmatch) from statistiqueparmatch join match on statistiqueparmatch.idmatch=match.idmatch where idjoueur=1  and match.idsaison=1

select sum(idmatch) from statistiqueparmatch join match on statistiqueparmatch.idmatch=match.idmatch where match.idsaison=1;

select sum((sortie - entrer) / 60) from entrersortie join match on entrersortie.idmatch=match.idmatch where idjoueur=1  and match.idsaison=1
