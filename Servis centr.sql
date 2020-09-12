CREATE TABLE Sotrudniki
(
  Kod_sotrudnika INT NOT NULL,
  Vozrast INT NOT NULL,
  Pol VARCHAR NOT NULL,
  Adres VARCHAR NOT NULL,
  Telefon INT NOT NULL,
  Pasportnie_danie INT NOT NULL,
  Kod_doljnosti INT NOT NULL,
  FIO VARCHAR NOT NULL,
  PRIMARY KEY (Kod_sotrudnika),
  UNIQUE (Kod_doljnosti)
);

CREATE TABLE Remontiruemie_modeli
(
  Naimenovanie VARCHAR NOT NULL,
  Tip VARCHAR NOT NULL,
  Proizvoditel VARCHAR NOT NULL,
  Tex._characteristiki VARCHAR NOT NULL,
  Osobennosti VARCHAR NOT NULL,
  Kod_modeli INT NOT NULL,
  PRIMARY KEY (Kod_modeli)
);

CREATE TABLE Zakazi
(
  Data_zakaza DATE NOT NULL,
  FIO_zakazchika VARCHAR NOT NULL,
  Seriyniy_nomer INT NOT NULL,
  Kod_vida_neispravnosti INT NOT NULL,
  Kod_magazina INT NOT NULL,
  Otemka_o_garantii VARCHAR NOT NULL,
  Srok_garantii_remonta INT NOT NULL,
  Cena INT NOT NULL,
  Kod_sotrudnika INT NOT NULL,
  Data_vozvrata DATE NOT NULL,
  PRIMARY KEY (Kod_vida_neispravnosti),
  UNIQUE (Kod_magazina)
);

CREATE TABLE Zapchasti
(
  Kod_zapchasti INT NOT NULL,
  Cena INT NOT NULL,
  Funkcii VARCHAR NOT NULL,
  Naimenovanie VARCHAR NOT NULL,
  PRIMARY KEY (Kod_zapchasti)
);

CREATE TABLE Doljnosti
(
  Naimenovanie_ VARCHAR NOT NULL,
  Kod_doljnosti INT NOT NULL,
  Oklad INT NOT NULL,
  Obyazanosti VARCHAR NOT NULL,
  Trebovaniya VARCHAR NOT NULL,
  PRIMARY KEY (Kod_doljnosti)
);

CREATE TABLE VidbI_neispravnosti
(
  Kod_vida INT NOT NULL,
  Kod_modeli INT NOT NULL,
  Opisanie VARCHAR NOT NULL,
  Simptomi VARCHAR NOT NULL,
  Metod_remonta VARCHAR NOT NULL,
  Kod_zapchasti_1 INT NOT NULL,
  Kod_zapchasti_2 INT NOT NULL,
  Kod_zapchasti_3 INT NOT NULL,
  Cena_raboti INT NOT NULL,
  PRIMARY KEY (Kod_vida),
  UNIQUE (Kod_modeli),
  UNIQUE (Kod_zapchasti_1),
  UNIQUE (Kod_zapchasti_2),
  UNIQUE (Kod_zapchasti_3)
);

CREATE TABLE Obslujivaemie_magazini
(
  Kod_magazina INT NOT NULL,
  Naimenovanie VARCHAR NOT NULL,
  Adres VARCHAR NOT NULL,
  Telefon INT NOT NULL,
  PRIMARY KEY (Kod_magazina)
);