DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS assets;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER FOREIGN KEY REFERENCES users(id),
    coin TEXT NOT NULL,
    amount FLOAT NOT NULL,
    date TEXT NOT NULL
);