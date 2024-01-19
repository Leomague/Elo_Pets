CREATE DATABASE pets;

CREATE TABLE usuarios (
  id serial PRIMARY KEY,
  nome text,
  email varchar(250) UNIQUE NOT NULL,
  senha text NOT NULL
  );
  
 CREATE TABLE categorias (
   id serial PRIMARY KEY,
   descricao text NOT NULL
   );
   
  INSERT INTO categorias (descricao)
  VALUES
  ('caninos'),
  ('felinos'),
  ('aves'),
  ('peixes'),
  ('repteis');
  
 CREATE TABLE animais (
   id serial PRIMARY KEY,
   nomePet text NOT NULL,
   categoria_id integer REFERENCES categorias(id)
   );