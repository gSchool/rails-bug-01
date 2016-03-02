SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

COPY quotes (id, text, author, created_at, updated_at) FROM stdin;
1	People who think they know everything are a great annoyance to those of us who do.	Isaac Asimov	2016-01-01 03:40:54.405448	2016-01-11 03:40:54.405448
2	As a child my family's menu consisted of two choices: take it or leave it.	Buddy Hackett	2015-06-12 03:40:54.405448	2016-01-12 03:40:54.405448
3	My fake plants died because I did not pretend to water them.	Mitch Hedberg	2014-07-12 03:40:54.405448	2014-07-12 03:40:54.405448
4	If the facts don't fit the theory, change the facts.	Albert Einstein	2014-07-12 03:40:54.4157	2014-07-12 03:40:54.4157
\.

SELECT pg_catalog.setval('quotes_id_seq', 4, true);


COPY users (id, name, email, password_digest) FROM stdin;
1	Some User	user@example.com	$2a$10$V42d9wmy7CQReGt1B6CUoe8ZDvu0VV6dNqFM2iHFTmPr578wvE8Lm
2	Other User	other@example.com	$2a$10$3tdLG44KNQD/9D8OcvnD7.A.9MaR10gBdzewrj9Wk00Iqm4sTf6em
\.

SELECT pg_catalog.setval('users_id_seq', 2, true);

