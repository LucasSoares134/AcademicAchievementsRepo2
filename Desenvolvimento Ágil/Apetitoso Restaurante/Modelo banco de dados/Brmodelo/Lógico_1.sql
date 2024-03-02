/* Lógico_1: */

CREATE TABLE User (
    id INTEGER PRIMARY KEY,
    name VARCHAR,
    password VARCHAR
);

CREATE TABLE Pedido (
    id INTEGER PRIMARY KEY,
    prato VARCHAR
);

CREATE TABLE Pesquisar (
    id INTERGER PRIMARY KEY
);

CREATE TABLE Item (
    id INTEGER PRIMARY KEY,
    adicional VARCHAR
);

CREATE TABLE senha (
    id INTEGER PRIMARY KEY
);

CREATE TABLE status (
    INICIO INTEGER,
    PROCESSADO INTEGER,
    FINALIZADO INTEGER,
    id INTEGER PRIMARY KEY
);

CREATE TABLE User_Pedido (
    fk_User_id INTEGER,
    fk_Pedido_id INTEGER
);

CREATE TABLE status_Pedido (
    fk_status_id INTEGER,
    fk_Pedido_id INTEGER
);

CREATE TABLE senha_Pedido (
    fk_senha_id INTEGER,
    fk_Pedido_id INTEGER
);

CREATE TABLE Pedido_Pesquisar (
    fk_Pedido_id INTEGER,
    fk_Pesquisar_id INTERGER
);

CREATE TABLE senha_Pesquisar (
    fk_senha_id INTEGER,
    fk_Pesquisar_id INTERGER
);

CREATE TABLE status_Pesquisar (
    fk_status_id INTEGER,
    fk_Pesquisar_id INTERGER
);

CREATE TABLE Item_Pedido (
    fk_Item_id INTEGER,
    fk_Pedido_id INTEGER
);
 
ALTER TABLE User_Pedido ADD CONSTRAINT FK_User_Pedido_1
    FOREIGN KEY (fk_User_id)
    REFERENCES User (id)
    ON DELETE RESTRICT;
 
ALTER TABLE User_Pedido ADD CONSTRAINT FK_User_Pedido_2
    FOREIGN KEY (fk_Pedido_id)
    REFERENCES Pedido (id)
    ON DELETE RESTRICT;
 
ALTER TABLE status_Pedido ADD CONSTRAINT FK_status_Pedido_1
    FOREIGN KEY (fk_status_id)
    REFERENCES status (id)
    ON DELETE RESTRICT;
 
ALTER TABLE status_Pedido ADD CONSTRAINT FK_status_Pedido_2
    FOREIGN KEY (fk_Pedido_id)
    REFERENCES Pedido (id)
    ON DELETE RESTRICT;
 
ALTER TABLE senha_Pedido ADD CONSTRAINT FK_senha_Pedido_1
    FOREIGN KEY (fk_senha_id)
    REFERENCES senha (id)
    ON DELETE RESTRICT;
 
ALTER TABLE senha_Pedido ADD CONSTRAINT FK_senha_Pedido_2
    FOREIGN KEY (fk_Pedido_id)
    REFERENCES Pedido (id)
    ON DELETE RESTRICT;
 
ALTER TABLE Pedido_Pesquisar ADD CONSTRAINT FK_Pedido_Pesquisar_1
    FOREIGN KEY (fk_Pedido_id)
    REFERENCES Pedido (id)
    ON DELETE RESTRICT;
 
ALTER TABLE Pedido_Pesquisar ADD CONSTRAINT FK_Pedido_Pesquisar_2
    FOREIGN KEY (fk_Pesquisar_id)
    REFERENCES Pesquisar (id)
    ON DELETE SET NULL;
 
ALTER TABLE senha_Pesquisar ADD CONSTRAINT FK_senha_Pesquisar_1
    FOREIGN KEY (fk_senha_id)
    REFERENCES senha (id)
    ON DELETE RESTRICT;
 
ALTER TABLE senha_Pesquisar ADD CONSTRAINT FK_senha_Pesquisar_2
    FOREIGN KEY (fk_Pesquisar_id)
    REFERENCES Pesquisar (id)
    ON DELETE SET NULL;
 
ALTER TABLE status_Pesquisar ADD CONSTRAINT FK_status_Pesquisar_1
    FOREIGN KEY (fk_status_id)
    REFERENCES status (id)
    ON DELETE RESTRICT;
 
ALTER TABLE status_Pesquisar ADD CONSTRAINT FK_status_Pesquisar_2
    FOREIGN KEY (fk_Pesquisar_id)
    REFERENCES Pesquisar (id)
    ON DELETE SET NULL;
 
ALTER TABLE Item_Pedido ADD CONSTRAINT FK_Item_Pedido_1
    FOREIGN KEY (fk_Item_id)
    REFERENCES Item (id)
    ON DELETE SET NULL;
 
ALTER TABLE Item_Pedido ADD CONSTRAINT FK_Item_Pedido_2
    FOREIGN KEY (fk_Pedido_id)
    REFERENCES Pedido (id)
    ON DELETE SET NULL;