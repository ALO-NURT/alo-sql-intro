-- Active: 1774593929257@@alo-nurt.pl@3306@alo_test_db
-- Active: 1774593929257@@alo-nurt.pl@3306
-- 

-- to jest komentarz - wszystko w linijce po znaku # jest ignorowane podczas wykonania kodu

-- nasze pierwsze zapytanie - zwraca wszystkie dane z tabeli bank_client

select * from bank_client; # średnik oznacza koniec zapytania - gdyby go nie było wszystkie linijki poniżej byłyby traktowane jako jego dalszy ciąg


-- 1. PROJEKCJA - wybranie wyłącznie określonych kolumn z tabeli
select pesel, first_name, last_name FROM bank_client;




-- 2. SELEKCJA - wybranie z tabeli wierszy spełniających dany warunek



-- 3. SORTOWANIE
select * from bank_client
where first_name = "Anna"
ORDER BY pesel DESC;

--4. ŁĄCZENIE
select account_number from bank_account as ba 
join bank_client as bc 
on bc.id = ba.client_id;
-- 5. AGREGACJA
select count(*) from bank_account;

select distinct account_type from bank_account;

select account_type, count(*) as ilosc from bank_account group by account_type order by account_type desc;

select first_name, count(*) as ilosc 
from bank_client 
group by first_name 
order by first_name desc;
