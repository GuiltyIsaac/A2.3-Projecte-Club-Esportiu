CREATE TABLE socis(
    id NUMBER(11),
    nom VARCHAR2(50),
    cognoms VARCHAR2(100),
    edat NUMBER(3),
    numCompte VARCHAR2(24)UNIQUE NOT NULL,
    email VARCHAR2(40) UNIQUE,
    telf NUMBER(9)UNIQUE NOT NULL

    CONSTRAINT pk_socias PRIMARY KEY(id)
);

CREATE TABLE activitats(
    id NUMBER(11),
    preu VARCHAR2(5,2),
    nom VARCHAR2(50),
    descripcio VARCHAR2(500),
    dataInici DATE
    numCompte VARCHAR2(24)UNIQUE NOT NULL,
    email VARCHAR2(40) UNIQUE,
    telf NUMBER(9)UNIQUE NOT NULL

    CONSTRAINT pk_socias PRIMARY KEY(id)
);
