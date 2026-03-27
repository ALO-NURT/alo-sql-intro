-- Active: 1773386263109@@alo-nurt.pl@3306@alo_test_db
-- 

-- to jest komentarz - wszystko w linijce po znaku # jest ignorowane podczas wykonania kodu

-- nasze pierwsze zapytanie - zwraca wszystkie dane z tabeli bank_client

select * from bank_client; # średnik oznacza koniec zapytania - gdyby go nie było wszystkie linijki poniżej byłyby traktowane jako jego dalszy ciąg

-- 1. PROJEKCJA - wybranie wyłącznie określonych kolumn z tabeli

select pesel, first_name, phone FROM bank_client

-- 2. SELEKCJA - wybranie z tabeli wierszy spełniających dany warunek

select * FROM bank_client

WHERE first_name = "Anna";


-- 3. SORTOWANIE