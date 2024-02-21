--
-- Docs
-- https://www.w3schools.com/sql/default.asp
-- https://sqlzoo.net/wiki/SQL_Tutorial
-- Playground:
-- https://sqlfiddle.com/sqlite/online-compiler
-- https://sqlite.org/fiddle/
--

-- Izveidot tabulu
-- Izveidot 10 pokemonu ierakstus
-- Atlasīt visus pokemonus un visas kolonnas
-- Atlasīt visu pokemonu nosaukums un tos kuriem ir "Fire" tips
-- Atlasīt pokemonus ar kopējām statistikām (total) virs 500
-- Atlasīt pokemonus ar "Flying" tipu un statistikam virs 500
-- Atlasīt unikālās vērtības no type_1 stabiņa (DISTINCT)
-- Sakārtot pokemonus pēc augstāka HP

-- Izdzēst tos, kam attack mazāks par 50



CREATE TABLE Pokemons(
    number INTEGER,
   name VARCHAR(100),
   type_1 VARCHAR(100),
   type_2 VARCHAR(100),
   total INTEGER,
   hp INTEGER,
   attack INTEGER,
   defense INTEGER
);

INSERT INTO Pokemons (number, name, type_1, type_2, total, hp, attack, defense)
VALUES (1, 'Bulbasaur', 'Grass', 'Poison', 318, 45, 49, 49),
(2, 'Ivysaur', 'Grass', 'Poison', 405, 60, 62, 63),
(3, 'Venusaur', 'Grass', 'Poison', 525, 80, 82, 83),
(4, 'Charmander', 'Fire', '', 309, 39, 52, 43),
(5, 'Charmeleon', 'Fire', '', 405, 58, 64, 58),
(6, 'Charizard', 'Fire', 'Flying', 534, 78, 84, 78),
(7, 'Squirtle', 'Water', '', 314, 44, 48, 65),
(8, 'Wartortle', 'Water', '', 405, 59, 63, 80),
(9, 'Blastoise', 'Water', '', 530, 79, 83, 100),
(10, 'Caterpie', 'Bug', '', 195, 45, 30, 35);

SELECT name FROM Pokemons WHERE type_1='Fire' OR type_2='Fire';
SELECT name,total FROM Pokemons WHERE total>500;
SELECT name,total FROM Pokemons WHERE type_1='Flying' OR type_2='Flying' AND  total>500;
SELECT DISTINCT type_1 FROM Pokemons;
SELECT name,hp FROM Pokemons
ORDER BY hp;