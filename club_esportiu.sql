CREATE TABLE socis(
    id NUMBER(11),
    nom VARCHAR2(50),
    cognoms VARCHAR2(100),
    edat NUMBER(3),
    numCompte VARCHAR2(24)UNIQUE NOT NULL,
    email VARCHAR2(40) UNIQUE,
    telf NUMBER(9)UNIQUE NOT NULL,

    CONSTRAINT pk_socis PRIMARY KEY(id)
);

CREATE TABLE activitats(
    id NUMBER(11),
    preu VARCHAR2(5,2),
    nom VARCHAR2(50),
    descripcio VARCHAR2(500),
    dataInici DATE,
    dataFinal DATE,
    
    CONSTRAINT pk_activitats PRIMARY KEY(id)
);
CREATE TABLE monitors(
    dni VARCHAR2(9),
    nom VARCHAR2(50),
    cognoms VARCHAR2(50),
    email VARCHAR2(500) UNIQUE NOT NULL,
    telf VARCHAR2(500) UNIQUE NOT NULL, 
    compte VARCHAR2(50) UNIQUE NOT NULL,

    CONSTRAINT pk_dni_monitor PRIMARY KEY(dni)
);
CREATE TABLE seccio(
    id NUMBER(11),
    nom VARCHAR2(50),
    desc. VARCHAR2(500),
    
CONSTRAINT pk_id PRIMARY KEY(id)
);
