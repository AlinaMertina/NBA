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

create table joueur(
    idjoueur bigint primary key,
    nomjoueur text
);

create table poste(
    idposte bigint primary key,
    nomposte varchar(100)
);

create table detailequipe(
    idequipe bigint REFERENCES equipe(id),
    idjoueur bigint REFERENCES joueur(id),
);

create table saison(
    idsaison bigint primary key,
    nom varchar(50)
);

create table match(
    idmatch bigint primary key,
    idsaison bigint REFERENCES saison(id),
    equipe1 bigint REFERENCES equipe(id),
    equipe2 bigint REFERENCES equipe(id),
    datedebut timestamp,
    datefin timestamp,
    score1 double precision,
    score2 double precision
);

create table statistiqueparmatch(
    idjoueur bigint REFERENCES joueur(id),
    idmatch bigint REFERENCES match(id),
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