-- Active: 1778173118744@@alo-nurt.pl@3306@alo_test_db
# 

# to jest komentarz - wszystko w linijce po znaku # jest ignorowane podczas wykonania kodu

# nasze pierwsze zapytanie - zwraca wszystkie dane z tabeli bank_client

describe bank_client;
describe bank_account;
describe bank_transaction;

# 1. PROJEKCJA - wybranie wyłącznie określonych kolumn z tabeli

#SELECT <PROJEKCJA> FROM TABLE;

#wszystkie rekordy i kolumny
select * from bank_client; 
#wybrane kolumny
select id, first_name, last_name, city from bank_client; 
#wybrane kolumny inna kolejnosc
select first_name, last_name, email from bank_client; 
# 2. SELEKCJA - wybranie z tabeli wierszy spełniających dany warunek
#SELECT <PROJEKCJA> FROM TABLE WHERE <SELEKCJA>;
#wszystkie z imieniem na A
select first_name, last_name, email from bank_client WHERE first_name LIKE 'A%'; 
select * from bank_client WHERE first_name LIKE 'A%'; 
select * from bank_client WHERE city = 'Wrocław' AND postal_code LIKE '50%'; 

select * from bank_client WHERE id>2 and id<10 and id<>5 or id=20;
select first_name from bank_client WHERE first_name LIKE 'E%' AND first_name LIKE '%na' or first_name='ANNA';

# 3. SORTOWANIE
#SELECT <PROJEKCJA> FROM TABLE WHERE <SELEKCJA> ORDER BY <SORTOWANIE>;

#sortowanie proste
select * from bank_client ORDER BY city; 
#sortowanie proste odwrotna kole4jnoscv
select * from bank_client ORDER BY city DESC; 
#sortowanie po wielu komumnach
select * from bank_client ORDER BY city ASC, last_name DESC; 
select * from bank_client ORDER BY city ASC, last_name DESC, id; 

##### LACZENIE TABEL

select * from bank_client INNER JOIN bank_account ON bank_client.id = bank_account.client_id;
select * from bank_client INNER JOIN bank_account ON bank_client.id = bank_account.client_id INNER JOIN bank_transaction ON bank_account.id=bank_transaction.account_id;

select * from bank_transaction;



# CWICZENIA DONOWE

#CREATE TABLE tabelka ( 
#    id INT,
 #   Name VARCHAR(50),
 #   czas timestamp
#);
#INSERT INTO tabelka VALUES (1, 'Jakis tekst', '2026-01-01 13:00:00');
#INSERT INTO tabelka VALUES (2, 'Jakis tekst 2', '2026-01-02 13:00:00');
#INSERT INTO tabelka VALUES (3, 'Jakis tekst 3', '2026-01-03 13:00:00');
#INSERT INTO tabelka VALUES (4, 'Jakis tam 4', '2026-01-03 13:00:00');
#INSERT INTO tabelka VALUES (5, 'Jakis tam 5', '2026-01-03 13:00:00');
#INSERT INTO tabelka VALUES (6, 'Jakis tam 3', '2026-01-03 13:00:00');

#select * from tabelka WHERE name LIKE '%3%' AND id>=3;
