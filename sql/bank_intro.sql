-- Active: 1778173118744@@alo-nurt.pl@3306@alo_test_db
# 

# to jest komentarz - wszystko w linijce po znaku # jest ignorowane podczas wykonania kodu

# nasze pierwsze zapytanie - zwraca wszystkie dane z tabeli bank_client

describe bank_client;
describe bank_account;
describe bank_transaction;

# 1. PROJEKCJA - wybranie wyłącznie określonych kolumn z tabeli
#wszystkie rekordy i kolumny
select * from bank_client; 
#wybrane kolumny
select id, first_name, last_name, city from bank_client; 
#wybrane kolumny inna kolejnosc
select first_name, last_name, email from bank_client; 
# 2. SELEKCJA - wybranie z tabeli wierszy spełniających dany warunek

#wszystkie z imieniem na A
select first_name, last_name, email from bank_client WHERE first_name LIKE 'A%'; 


# 3. SORTOWANIE




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
