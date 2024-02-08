CREATE TABLE socis(
    id NUMBER(11),
    nom VARCHAR2(50),
    cognoms VARCHAR2(100),
    dataNaix DATE,
    num_compte VARCHAR2(24),
    email VARCHAR2(40) ,
    telf NUMBER(50),

    CONSTRAINT pk_socis PRIMARY KEY(id)
);

CREATE TABLE activitats(
    id NUMBER(11),
    preu NUMBER(10,2),
    nom VARCHAR2(50),
    descripcio VARCHAR2(500),
    data_inici DATE,
    data_final DATE,
    
    CONSTRAINT pk_activitats PRIMARY KEY(id)
);
CREATE TABLE monitors(
    id NUMBER(9),
    dni VARCHAR2(9),
    nom VARCHAR2(50),
    cognoms VARCHAR2(50),
    email VARCHAR2(50),
    telf VARCHAR2(50), 
    compte VARCHAR2(50),

    CONSTRAINT pk_monitors PRIMARY KEY(id)
);
CREATE TABLE seccio(
    id NUMBER(11),
    nom VARCHAR2(50),
    descripcio VARCHAR2(500),
    
CONSTRAINT pk_seccio PRIMARY KEY(id)
);
CREATE TABLE socis_activitats(
    socis_id NUMBER(11),
    activitats_id NUMBER(11),
    data_inscripcio DATE,
    estat_inscripcio NUMBER(1) DEFAULT 0, --L'estat de la inscripcio pot tenir 2 valors, pagat i no pagat (processat / no processat)

    CONSTRAINT pk_socis_activitats PRIMARY KEY(socis_id, activitats_id),
    CONSTRAINT fk_socis_activitats_socis FOREIGN KEY (socis_id) REFERENCES socis(id),
    CONSTRAINT ck_inscrit CHECK estat_inscripcio(0,1)
);

CREATE TABLE activitats_monitors(
    activitats_id NUMBER(11),
    monitors_id NUMBER(11),

    CONSTRAINT pk_activitats_monitors PRIMARY KEY(activitats_id, monitors_id)
);

CREATE TABLE monitors_responsable(
     monitors_id NUMBER(11),

    CONSTRAINT pk_monitors_responsable PRIMARY KEY(monitors_id)
);

