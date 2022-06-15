CONNECT manager/admin

DROP TABLE
TIPO_CONTA;

DROP TABLE
DOC;

DROP TABLE
CONTAS;

CREATE TABLE
    TIPO_CONTA(
        TIPO INT,
        NOME VARCHAR(40),
        PRIMARY KEY (TIPO)
);

CREATE TABLE
    DOC(
        DOC_ID INT,
        DOC_TIPO VARCHAR(200),
        DOC_HASH VARCHAR(200),
        PRIMARY KEY (DOC_ID)
);

CREATE TABLE
    CONTAS(
        ID INT,
        TIPO INT REFERENCES TIPO_CONTA (TIPO),
        DOC_ID INT REFERENCES DOC (DOC_ID),
        DAT_EMISS DATE,
        DAT_SCAD DATE,
        VALORE FLOAT,
        CONSUMO FLOAT,
        INIZ_CONS DATE,
        FINE_CONS DATE,
        PAGO VARCHAR(10),
        DATA_INS DATE NOT NULL,
        PRIMARY KEY (ID)
);

COMMIT;CONNECT manager/admin

DROP TABLE
TIPO_CONTA;

DROP TABLE
DOC;

DROP TABLE
CONTAS;

CREATE TABLE
    TIPO_CONTA(
        TIPO INT,
        NOME VARCHAR(40),
        PRIMARY KEY (TIPO)
);

CREATE TABLE
    DOC(
        DOC_ID INT,
        DOC_TIPO VARCHAR(200),
        DOC_HASH VARCHAR(200),
        PRIMARY KEY (DOC_ID)
);

CREATE TABLE
    CONTAS(
        ID INT,
        TIPO INT REFERENCES TIPO_CONTA (TIPO) NOT NULL,
        DOC_ID INT REFERENCES DOC (DOC_ID),
        DAT_EMISS DATE,
        DAT_SCAD DATE,
        VALORE FLOAT,
        CONSUMO FLOAT,
        INIZ_CONS DATE,
        FINE_CONS DATE,
        PAGO VARCHAR(10),
        DATA_INS DATE NOT NULL,
        PRIMARY KEY (ID)
);

INSERT INTO TIPO_CONTA (TIPO, NOME) VALUES (1, 'Electricity');
INSERT INTO TIPO_CONTA (TIPO, NOME) VALUES (2, 'Gas');
INSERT INTO TIPO_CONTA (TIPO, NOME) VALUES (3, 'Water');
INSERT INTO TIPO_CONTA (TIPO, NOME) VALUES (4, 'Internet');
INSERT INTO TIPO_CONTA (TIPO, NOME) VALUES (5, 'Rent/Mortgage');
INSERT INTO TIPO_CONTA (TIPO, NOME) VALUES (6, 'Other');


COMMIT;