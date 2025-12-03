# Schema per l'universa tra corsi e insegnsti

## Dipartimenti

- id BIGINT UNSIGNED PK AI
- nome VARCHAR(100) NOT NULL
- created_at DATETIME DEFAULT NOW()
- updated_at DATETIME DEFAULT NOW()

## corsi di laurea

- id BIGINT UNSIGNED PK AI
- dipartimento_id BIGINT UNSIGNED FK
- nome VARCHAR(100) NOT NULL
- durata_anni TINYINT NOT NULL
- created_at DATETIME DEFAULT NOW()
- updated_at DATETIME DEFAULT NOW()

## insegnati

- id BIGINT UNSIGNED PK AI
- nome VARCHAR(50) NOT NULL
- cognome VARCHAR(50) NOT NULL
- email VARCHAR(100) NOT NULL UNIQUE
- telefono VARCHAR(15) NULL

## studenti

- id BIGINT UNSIGNED PK AI
- corso_laurea_id BIGINT UNSIGNED FK
- matricola CHAR(10) UNIQUE
- nome VARCHAR(50) NOT NULL
- cognome VARCHAR(50) NOT NULL
- data_nascita DATE
- email VARCHAR(100) UNIQUE
- telefono VARCHAR(15) NULL

## corsi

- id BIGINT UNSIGNED PK AI
- corso_laurea_id BIGINT UNSIGNED FK
- nome VARCHAR(100) NOT NULL
- cfu TINYINT NOT NULL
- anno_erogazione TINYINT NOT NULL
- obbligatorio BOOLEAN DEFAULT 1


## corsi_insegnanti

- id BIGINT UNSIGNED PK AI
- corso_id BIGINT UNSIGNED FK
- insegnante_id BIGINT UNSIGNED FK

## appelli_esame

- id BIGINT UNSIGNED PK AI
- corso_id BIGINT UNSIGNED FK
- data_appello DATE
- aula VARCHAR(20) NULL

## iscrizioni_appelli

- id BIGINT UNSIGNED PK AI
- appello_id BIGINT UNSIGNED FK
- studente_id BIGINT UNSIGNED FK
- voto TINYINT NULL
- esito ENUM('superato','respinto','ritirato')