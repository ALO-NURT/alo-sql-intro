-- Active: 1774593734735@@alo-nurt.pl@3306@alo_test_db
-- 

-- to jest komentarz - wszystko w linijce po znaku # jest ignorowane podczas wykonania kodu

-- nasze pierwsze zapytanie - zwraca wszystkie dane z tabeli bank_client

select * from bank_client; -- średnik oznacza koniec zapytania - gdyby go nie było wszystkie linijki poniżej byłyby traktowane jako jego dalszy ciąg

-- 1. PROJEKCJA - wybranie wyłącznie określonych kolumn z tabeli

select pesel, first_name, last_name, phone from bank_client;

-- 2. SELEKCJA - wybranie z tabeli wierszy spełniających dany warunek

select * from bank_client 
where first_name = "Anna";

-- 3. SORTOWANIE
select * from bank_client
order by pesel desc;

-- 4. ŁĄCZENIE
select ba.account_number, bank_client.first_name, bank_client.last_name from bank_account as ba
join bank_client
on bank_client.id = ba.client_id;