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
