--1. actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
(
	SELECT first_name FROM actor
)
UNION
(
	SELECT first_name FROM customer
);
--2. actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
(
	SELECT first_name FROM actor
	ORDER BY first_name
)
INTERSECT
(
	SELECT first_name FROM customer
	ORDER BY first_name
);
--3. actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
(
	SELECT first_name FROM actor
	ORDER BY first_name
)
EXCEPT
(
	SELECT first_name FROM customer
	ORDER BY first_name
);
--4. İlk 3 sorguyu tekrar eden veriler için de yapalım.
--1A
(
	SELECT first_name FROM actor
)
UNION ALL
(
	SELECT first_name FROM customer
);
--2A
(
	SELECT first_name FROM actor
	ORDER BY first_name
)
INTERSECT ALL
(
	SELECT first_name FROM customer
	ORDER BY first_name
);
--3A
(
	SELECT first_name FROM actor
	ORDER BY first_name
)
EXCEPT ALL
(
	SELECT first_name FROM customer
	ORDER BY first_name
)