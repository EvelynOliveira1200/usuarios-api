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

INSERT INTO users (name, email) VALUES
    ('Alice Souza', 'alice.souza@email.com'),
    ('Bruno Lima', 'bruno.lima@email.com'),
    ('Camila Rocha', 'camila.rocha@email.com'),
    ('Daniel Costa', 'daniel.costa@email.com'),
    ('Eduarda Martins', 'eduarda.martins@email.com'),
    ('Felipe Alves', 'felipe.alves@email.com'),
    ('Gabriela Mendes', 'gabriela.mendes@email.com'),
    ('Henrique Silva', 'henrique.silva@email.com'),
    ('Isabela Ferreira', 'isabela.ferreira@email.com'),
    ('Joana Ribeiro', 'joana.ribeiro@email.com'),
    ('Leonardo Oliveira', 'leonardo.oliveira@email.com'),
    ('Marcos Santos', 'marcos.santos@email.com'),
    ('Natália Almeida', 'natalia.almeida@email.com'),
    ('Otávio Pereira', 'otavio.pereira@email.com'),
    ('Patrícia Lima', 'patricia.lima@email.com'),
    ('Renato Souza', 'renato.souza@email.com'),
    ('Sabrina Costa', 'sabrina.costa@email.com'),
    ('Thiago Rocha', 'thiago.rocha@email.com'),
    ('Vanessa Martins', 'vanessa.martins@email.com'),
    ('William Mendes', 'william.mendes@email.com'),
    ('Yasmin Ribeiro', 'yasmin.ribeiro@email.com'),
    ('Zé Carlos', 'ze.carlos@email.com'),
    ('Amanda Silva', 'amanda.silva@email.com'),
    ('Bernardo Alves', 'bernardo.alves@email.com'),
    ('Carolina Mendes', 'carolina.mendes@email.com'),
    ('Diego Costa', 'diego.costa@email.com'),
    ('Elisa Martins', 'elisa.martins@email.com'),
    ('Fernando Rocha', 'fernando.rocha@email.com'),
    ('Giovana Ribeiro', 'giovana.ribeiro@email.com'),
    ('Hugo Pereira', 'hugo.pereira@email.com'),
    ('Ingrid Lima', 'ingrid.lima@email.com'),
    ('Juliana Souza', 'juliana.souza@email.com'),
    ('Lucas Oliveira', 'lucas.oliveira@email.com'),
    ('Marcela Santos', 'marcela.santos@email.com'),
    ('Nicolas Mendes', 'nicolas.mendes@email.com'),
    ('Olivia Ribeiro', 'olivia.ribeiro@email.com'),
    ('Pedro Costa', 'pedro.costa@email.com'),
    ('Quésia Martins', 'quesia.martins@email.com'),
    ('Rafaela Rocha', 'rafaela.rocha@email.com'),
    ('Samuel Pereira', 'samuel.pereira@email.com'),
    ('Tatiana Lima', 'tatiana.lima@email.com'),
    ('Ursula Souza', 'ursula.souza@email.com'),
    ('Victor Alves', 'victor.alves@email.com'),
    ('Wesley Mendes', 'wesley.mendes@email.com'),
    ('Xavier Ribeiro', 'xavier.ribeiro@email.com'),
    ('Yuri Costa', 'yuri.costa@email.com'),
    ('Zilda Martins', 'zilda.martins@email.com'),
    ('Ana Paula', 'ana.paula@email.com'),
    ('Bruna Oliveira', 'bruna.oliveira@email.com'),
    ('Carlos Eduardo', 'carlos.eduardo@email.com');

    UPDATE users SET photo = 'https://example.com/photos/evelyn.jpg' WHERE name = 'Evelyn Oliveira';
    UPDATE users SET photo = 'https://example.com/photos/laura.jpg' WHERE name = 'Laura Violla';
    UPDATE users SET photo = 'https://example.com/photos/ana.jpg' WHERE name = 'Ana Carolina';
    UPDATE users SET photo = 'https://example.com/photos/carlos.jpg' WHERE name = 'Carlos Silva';
    UPDATE users SET photo = 'https://example.com/photos/mariana.jpg' WHERE name = 'Mariana Santos';
    UPDATE users SET photo = 'https://example.com/photos/joao.jpg' WHERE name = 'João Pereira';
    UPDATE users SET photo = 'https://example.com/photos/fernanda.jpg' WHERE name = 'Fernanda Costa';
    UPDATE users SET photo = 'https://example.com/photos/rafael.jpg' WHERE name = 'Rafael Almeida';
    UPDATE users SET photo = 'https://example.com/photos/alice.jpg' WHERE name = 'Alice Souza';
    UPDATE users SET photo = 'https://example.com/photos/bruno.jpg' WHERE name = 'Bruno Lima';
    UPDATE users SET photo = 'https://example.com/photos/camila.jpg' WHERE name = 'Camila Rocha';
    UPDATE users SET photo = 'https://example.com/photos/daniel.jpg' WHERE name = 'Daniel Costa';
    UPDATE users SET photo = 'https://example.com/photos/eduarda.jpg' WHERE name = 'Eduarda Martins';
    UPDATE users SET photo = 'https://example.com/photos/felipe.jpg' WHERE name = 'Felipe Alves';
    UPDATE users SET photo = 'https://example.com/photos/gabriela.jpg' WHERE name = 'Gabriela Mendes';
    UPDATE users SET photo = 'https://example.com/photos/henrique.jpg' WHERE name = 'Henrique Silva';
    UPDATE users SET photo = 'https://example.com/photos/isabela.jpg' WHERE name = 'Isabela Ferreira';
    UPDATE users SET photo = 'https://example.com/photos/joana.jpg' WHERE name = 'Joana Ribeiro';
    UPDATE users SET photo = 'https://example.com/photos/leonardo.jpg' WHERE name = 'Leonardo Oliveira';
    UPDATE users SET photo = 'https://example.com/photos/marcos.jpg' WHERE name = 'Marcos Santos';
    UPDATE users SET photo = 'https://example.com/photos/natalia.jpg' WHERE name = 'Natália Almeida';
    UPDATE users SET photo = 'https://example.com/photos/otavio.jpg' WHERE name = 'Otávio Pereira';
    UPDATE users SET photo = 'https://example.com/photos/patricia.jpg' WHERE name = 'Patrícia Lima';
    UPDATE users SET photo = 'https://example.com/photos/renato.jpg' WHERE name = 'Renato Souza';
    UPDATE users SET photo = 'https://example.com/photos/sabrina.jpg' WHERE name = 'Sabrina Costa';
    UPDATE users SET photo = 'https://example.com/photos/thiago.jpg' WHERE name = 'Thiago Rocha';
    UPDATE users SET photo = 'https://example.com/photos/vanessa.jpg' WHERE name = 'Vanessa Martins';
    UPDATE users SET photo = 'https://example.com/photos/william.jpg' WHERE name = 'William Mendes';
    UPDATE users SET photo = 'https://example.com/photos/yasmin.jpg' WHERE name = 'Yasmin Ribeiro';
    UPDATE users SET photo = 'https://example.com/photos/ze.jpg' WHERE name = 'Zé Carlos';
    UPDATE users SET photo = 'https://example.com/photos/amanda.jpg' WHERE name = 'Amanda Silva';
    UPDATE users SET photo = 'https://example.com/photos/bernardo.jpg' WHERE name = 'Bernardo Alves';
    UPDATE users SET photo = 'https://example.com/photos/carolina.jpg' WHERE name = 'Carolina Mendes';
    UPDATE users SET photo = 'https://example.com/photos/diego.jpg' WHERE name = 'Diego Costa';
    UPDATE users SET photo = 'https://example.com/photos/elisa.jpg' WHERE name = 'Elisa Martins';
    UPDATE users SET photo = 'https://example.com/photos/fernando.jpg' WHERE name = 'Fernando Rocha';
    UPDATE users SET photo = 'https://example.com/photos/giovana.jpg' WHERE name = 'Giovana Ribeiro';
    UPDATE users SET photo = 'https://example.com/photos/hugo.jpg' WHERE name = 'Hugo Pereira';
    UPDATE users SET photo = 'https://example.com/photos/ingrid.jpg' WHERE name = 'Ingrid Lima';
    UPDATE users SET photo = 'https://example.com/photos/juliana.jpg' WHERE name = 'Juliana Souza';
    UPDATE users SET photo = 'https://example.com/photos/lucas.jpg' WHERE name = 'Lucas Oliveira';
    UPDATE users SET photo = 'https://example.com/photos/marcela.jpg' WHERE name = 'Marcela Santos';
    UPDATE users SET photo = 'https://example.com/photos/nicolas.jpg' WHERE name = 'Nicolas Mendes';
    UPDATE users SET photo = 'https://example.com/photos/olivia.jpg' WHERE name = 'Olivia Ribeiro';
    UPDATE users SET photo = 'https://example.com/photos/pedro.jpg' WHERE name = 'Pedro Costa';
    UPDATE users SET photo = 'https://example.com/photos/quesia.jpg' WHERE name = 'Quésia Martins';
    UPDATE users SET photo = 'https://example.com/photos/rafaela.jpg' WHERE name = 'Rafaela Rocha';
    UPDATE users SET photo = 'https://example.com/photos/samuel.jpg' WHERE name = 'Samuel Pereira';
    UPDATE users SET photo = 'https://example.com/photos/tatiana.jpg' WHERE name = 'Tatiana Lima';
    UPDATE users SET photo = 'https://example.com/photos/ursula.jpg' WHERE name = 'Ursula Souza';
    UPDATE users SET photo = 'https://example.com/photos/victor.jpg' WHERE name = 'Victor Alves';
    UPDATE users SET photo = 'https://example.com/photos/wesley.jpg' WHERE name = 'Wesley Mendes';
    UPDATE users SET photo = 'https://example.com/photos/xavier.jpg' WHERE name = 'Xavier Ribeiro';
    UPDATE users SET photo = 'https://example.com/photos/yuri.jpg' WHERE name = 'Yuri Costa';
    UPDATE users SET photo = 'https://example.com/photos/zilda.jpg' WHERE name = 'Zilda Martins';
    UPDATE users SET photo = 'https://example.com/photos/ana_paula.jpg' WHERE name = 'Ana Paula';
    UPDATE users SET photo = 'https://example.com/photos/bruna.jpg' WHERE name = 'Bruna Oliveira';
    UPDATE users SET photo = 'https://example.com/photos/carlos_eduardo.jpg' WHERE name = 'Carlos Eduardo';

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