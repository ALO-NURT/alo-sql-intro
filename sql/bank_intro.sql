-- Active: 1774594058648@@alo-nurt.pl@3306@alo_test_db
# qa64

-- to jest komentarz - wszystko w linijce po znaku # jest ignorowane podczas wykonania kodu

-- nasze pierwsze zapytanie - zwraca wszystkie dane z tabeli bank_client


-- 1. PROJEKCJA - wybranie wyłącznie określonych kolumn z tabeli


SELECT pesel, first_name, last_name FROM bank_client
-- 2. SELEKCJA - wybranie z tabeli wierszy spełniających dany warunek



-- 3. SORTOWANIE