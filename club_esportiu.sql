CREATE TABLE socis(
    id NUMBER(11),
    nom VARCHAR2(50),
    cognoms VARCHAR2(100),
    dataNaix DATE,
    num_compte VARCHAR2(24)UNIQUE NOT NULL,
    email VARCHAR2(40) UNIQUE,
    telf NUMBER(9)UNIQUE NOT NULL,

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
    descripcio VARCHAR2(500),
    
CONSTRAINT pk_id PRIMARY KEY(id)
);
CREATE TABLE socis_activitats(
    id_socis_activitats NUMBER(11),
    data_inscripcio DATE,
    estat_inscripcio NUMBER(1) DEFAULT 0,

    CONSTRAINT pk_dni_monitor PRIMARY KEY(soci_id, activitats_id)
);

CREATE TABLE activitats_monitors(
    id_activitats_monitors NUMBER(11),

    CONSTRAINT pk_dni_monitor PRIMARY KEY(activitats_id, monitor_dni)
);

CREATE TABLE monitors_responsable(
     dni_responsable NUMBER(11),

    CONSTRAINT pk_dni_monitor PRIMARY KEY(monitors_dni, dni_responsable)
);

