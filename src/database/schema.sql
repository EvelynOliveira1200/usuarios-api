CREATE DATABASE usuarios;

\c usuarios

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    image VARCHAR(255) NOT NULL,
    description TEXT,
    add_person VARCHAR(255),
    localization VARCHAR(255)
);

INSERT INTO users (name, email) VALUES
    ('Evelyn Oliveira', 'evelyn.oliveira@email.com'),
    ('Laura Violla', 'laura.violla@email.com'),
    ('Ana Carolina', 'Ana.carolina@email.com');

INSERT INTO users (name, email) VALUES 
    ('Carlos Silva', 'carlos.silva@email.com'),
    ('Mariana Santos', 'mariana.santos@email.com'),
    ('João Pereira', 'joao.pereira@email.com'),
    ('Fernanda Costa', 'fernanda.costa@email.com'),
    ('Rafael Almeida', 'rafael.almeida@email.com');

INSERT INTO posts (user_id, image, description, add_person, localization) VALUES 
    (1, 'https://i.pinimg.com/736x/d6/f3/9a/d6f39a67801826241a501a91dec4b455.jpg', 'Café parisien', '@laurinha', 'Paris'),
    (2, 'https://i.pinimg.com/736x/10/a6/43/10a6435ba945aefd47bad3480d31246a.jpg', 'Livraria', '@ana', 'São Paulo'),
    (1, 'https://i.pinimg.com/736x/a1/b2/c3/a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6.jpg', 'Café aconchegante', '@laurinha', 'Londres'),
    (2, 'https://i.pinimg.com/736x/b2/c3/d4/b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6q7.jpg', 'Biblioteca moderna', '@ana', 'Nova York'),
    (3, 'https://i.pinimg.com/736x/c3/d4/e5/c3d4e5f6g7h8i9j0k1l2m3n4o5p6q7r8.jpg', 'Pôr do sol na praia', '@carlos', 'Florianópolis'),
    (4, 'https://i.pinimg.com/736x/d4/e5/f6/d4e5f6g7h8i9j0k1l2m3n4o5p6q7r8s9.jpg', 'Montanhas ao amanhecer', '@mariana', 'Andes'),
    (5, 'https://i.pinimg.com/736x/e5/f6/g7/e5f6g7h8i9j0k1l2m3n4o5p6q7r8s9t0.jpg', 'Praça histórica', '@joao', 'Madrid'),
    (6, 'https://i.pinimg.com/736x/f6/g7/h8/f6g7h8i9j0k1l2m3n4o5p6q7r8s9t0u1.jpg', 'Jardim botânico', '@fernanda', 'Berlim'),
    (7, 'https://i.pinimg.com/736x/g7/h8/i9/g7h8i9j0k1l2m3n4o5p6q7r8s9t0u1v2.jpg', 'Trilha na floresta', '@rafael', 'Serra Gaúcha'),
    (3, 'https://i.pinimg.com/736x/3a/2b/4c/3a2b4c5d6e7f8a9b0c1d2e3f4g5h6i7j.jpg', 'Praia ao entardecer', '@carlos', 'Rio de Janeiro'),
    (4, 'https://i.pinimg.com/736x/4b/5c/6d/4b5c6d7e8f9a0b1c2d3e4f5g6h7i8j9k.jpg', 'Montanhas nevadas', '@mariana', 'Patagônia'),
    (5, 'https://i.pinimg.com/736x/5c/6d/7e/5c6d7e8f9a0b1c2d3e4f5g6h7i8j9k0l.jpg', 'Centro histórico', '@joao', 'Lisboa'),
    (6, 'https://i.pinimg.com/736x/6d/7e/8f/6d7e8f9a0b1c2d3e4f5g6h7i8j9k0l1m.jpg', 'Parque florido', '@fernanda', 'Amsterdã'),
    (7, 'https://i.pinimg.com/736x/7e/8f/9a/7e8f9a0b1c2d3e4f5g6h7i8j9k0l1m2n.jpg', 'Cachoeira', '@rafael', 'Chapada Diamantina');