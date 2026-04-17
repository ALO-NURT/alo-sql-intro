-- Active: 1774593739771@@alo-nurt.pl@3306@alo_test_db
-- 

-- to jest komentarz - wszystko w linijce po znaku # jest ignorowane podczas wykonania kodu

-- nasze pierwsze zapytanie - zwraca wszystkie dane z tabeli bank_client

SELECT * FROM bank_client; -- średnik oznacza koniec zapytania - gdyby go nie było wszystkie linijki poniżej byłyby traktowane jako jego dalszy ciąg

-- 1. PROJEKCJA - wybranie wyłącznie określonych kolumn z tabeli

select * from bank_client
where first_name = "Anna";

-- 2. SELEKCJA - wybranie z tabeli wierszy spełniających dany warunek



-- 3. SORTOWANIE
select*from bank_client
order by pesel;
