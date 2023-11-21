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

create table statistiqueparmatch(
    idstatistiqueparmatch bigint primary key,
    idjoueur bigint REFERENCES joueur(idjoueur),
    idmatch bigint REFERENCES match(idmatch),
    point1 double precision,
    point2 double precision,
    point3 double precision,
    passedecisif double precision,
    rd double precision,
    ro double precision,
    block double precision,
    mpm time,
    tnmpoint1 double precision, 
    tnmpoint2 double precision,
    tnmpoint3 double precision
);