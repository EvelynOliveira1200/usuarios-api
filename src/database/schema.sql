CREATE DATABASE usuarios;

\c usuarios;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    description TEXT,
    add_person VARCHAR(255),
    localization VARCHAR(255)
);

INSERT INTO users (name, email) VALUES
    ('Evelyn Oliveira', 'evelyn.oliveira@email.com'),
    ('Laura Violla', 'laura.violla@email.com'),
    ('Ana Carolina', 'Ana.carolina@email.com'),
    ('Carlos Silva', 'carlos.silva@email.com'),
    ('Mariana Santos', 'mariana.santos@email.com'),
    ('João Pereira', 'joao.pereira@email.com'),
    ('Fernanda Costa', 'fernanda.costa@email.com'),
    ('Rafael Almeida', 'rafael.almeida@email.com');

INSERT INTO posts (user_id, description, add_person, localization) VALUES 
    (1, 'Café parisien', '@laurinha', 'Paris'),
    (2, 'Livraria', '@ana', 'São Paulo'),
    (1, 'Café aconchegante', '@laurinha', 'Londres'),
    (2, 'Biblioteca moderna', '@ana', 'Nova York'),
    (3, 'Pôr do sol na praia', '@carlos', 'Florianópolis'),
    (4, 'Montanhas ao amanhecer', '@mariana', 'Andes'),
    (5, 'Praça histórica', '@joao', 'Madrid'),
    (6, 'Jardim botânico', '@fernanda', 'Berlim'),
    (7, 'Trilha na floresta', '@rafael', 'Serra Gaúcha'),
    (3, 'Praia ao entardecer', '@carlos', 'Rio de Janeiro'),
    (4, 'Montanhas nevadas', '@mariana', 'Patagônia'),
    (5, 'Centro histórico', '@joao', 'Lisboa'),
    (6, 'Parque florido', '@fernanda', 'Amsterdã'),
    (7, 'Cachoeira', '@rafael', 'Chapada Diamantina');

    ALTER TABLE posts ADD COLUMN photo TEXT;