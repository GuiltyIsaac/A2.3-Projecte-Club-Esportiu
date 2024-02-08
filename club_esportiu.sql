CREATE TABLE socis(
    id NUMBER(11),
    nom VARCHAR2(50),
    cognoms VARCHAR2(100),
    dataNaix DATE,
    num_compte VARCHAR2(24) UNIQUE NOT NULL,
    email VARCHAR2(40) UNIQUE NOT NULL,
    telf VARCHAR2(50),

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
    dni VARCHAR2(9) UNIQUE NOT NULL,
    nom VARCHAR2(50),
    cognoms VARCHAR2(50),
    email VARCHAR2(50),
    telf VARCHAR2(50), 
    compte VARCHAR2(50) UNIQUE NOT NULL,
    monitor_responsable NUMBER(11),
    seccio_id NUMBER(11),

    CONSTRAINT pk_monitors PRIMARY KEY(id),
    CONSTRAINT fk_seccio_id FOREIGN KEY(seccio_id) REFERENCES seccio(id)
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
    data_inscripcio DATE DEFAULT SYSDATE,
    estat_inscripcio NUMBER(1) DEFAULT 0, --L'estat de la inscripcio pot tenir 2 valors, pagat i no pagat (processat / no processat)

    CONSTRAINT pk_socis_activitats PRIMARY KEY(socis_id, activitats_id),
    CONSTRAINT fk_socis_activitats_socis FOREIGN KEY (socis_id) REFERENCES socis(id),
    CONSTRAINT ck_inscrit CHECK (estat_inscripcio IN (0,1))
);

CREATE TABLE activitats_monitors(
    activitats_id NUMBER(11),
    monitors_id NUMBER(11),

    CONSTRAINT pk_activitats_monitors PRIMARY KEY(activitats_id, monitors_id),
    CONSTRAINT fk_activitats_id FOREIGN KEY(activitats_id) REFERENCES activitats(id),
    CONSTRAINT fk_monitors_id FOREIGN KEY(monitors_id) REFERENCES monitors(id)
    
);

