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
    (2, 'https://i.pinimg.com/736x/10/a6/43/10a6435ba945aefd47bad3480d31246a.jpg', 'Livraria', '@ana', 'São Paulo');
