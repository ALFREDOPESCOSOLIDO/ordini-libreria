-- ══════════════════════════════════════════════════════
--  ORDINE LIBRI — come da PDF adozioni Arce 2026/2027
--  SQL Editor Supabase → New query → Run
-- ══════════════════════════════════════════════════════

ALTER TABLE catalogo_libri ADD COLUMN IF NOT EXISTS sort_order integer DEFAULT 99;

UPDATE catalogo_libri SET sort_order = 10  WHERE isbn = '9788849425451'; -- Arte e Immagine
UPDATE catalogo_libri SET sort_order = 20  WHERE isbn = '9788861617841'; -- Francese
UPDATE catalogo_libri SET sort_order = 30  WHERE isbn = '9788869107467'; -- Geografia 1
UPDATE catalogo_libri SET sort_order = 31  WHERE isbn = '9788869107474'; -- Geografia 2
UPDATE catalogo_libri SET sort_order = 32  WHERE isbn = '9788869107481'; -- Geografia 3
UPDATE catalogo_libri SET sort_order = 40  WHERE isbn = '9788891939944'; -- Inglese 1
UPDATE catalogo_libri SET sort_order = 41  WHERE isbn = '9788883395659'; -- Inglese 2
UPDATE catalogo_libri SET sort_order = 42  WHERE isbn = '9788883395666'; -- Inglese 3
UPDATE catalogo_libri SET sort_order = 50  WHERE isbn = '9788824791991'; -- Italiano Antologia 1
UPDATE catalogo_libri SET sort_order = 51  WHERE isbn = '9788824774017'; -- Italiano Antologia 2
UPDATE catalogo_libri SET sort_order = 52  WHERE isbn = '9788824774352'; -- Italiano Antologia 3
UPDATE catalogo_libri SET sort_order = 60  WHERE isbn = '9788891596222'; -- Italiano Grammatica 1/2
UPDATE catalogo_libri SET sort_order = 61  WHERE isbn = '9788824755726'; -- Italiano Grammatica 3A
UPDATE catalogo_libri SET sort_order = 70  WHERE isbn = '9788826822211'; -- Matematica 1 (1A, 1B)
UPDATE catalogo_libri SET sort_order = 71  WHERE isbn = '9788826822303'; -- Matematica 1 (1C)
UPDATE catalogo_libri SET sort_order = 72  WHERE isbn = '9788826822310'; -- Matematica 2
UPDATE catalogo_libri SET sort_order = 73  WHERE isbn = '9788826822235'; -- Matematica 3
UPDATE catalogo_libri SET sort_order = 80  WHERE isbn = '9788829872954'; -- Musica 1
UPDATE catalogo_libri SET sort_order = 81  WHERE isbn = '9788841651261'; -- Musica 2/3
UPDATE catalogo_libri SET sort_order = 90  WHERE isbn = '9788805078646'; -- Religione 1
UPDATE catalogo_libri SET sort_order = 91  WHERE isbn = '9788805074761'; -- Religione 2/3
UPDATE catalogo_libri SET sort_order = 100 WHERE isbn = '9791220412667'; -- Scienze 1
UPDATE catalogo_libri SET sort_order = 101 WHERE isbn = '9791220412704'; -- Scienze 2
UPDATE catalogo_libri SET sort_order = 102 WHERE isbn = '9788869108815'; -- Scienze 3
UPDATE catalogo_libri SET sort_order = 110 WHERE isbn = '9788891558343'; -- Scienze Motorie
UPDATE catalogo_libri SET sort_order = 120 WHERE isbn = '9788861619951'; -- Spagnolo
UPDATE catalogo_libri SET sort_order = 130 WHERE isbn = '9788869176418'; -- Storia 1
UPDATE catalogo_libri SET sort_order = 131 WHERE isbn = '9788869176425'; -- Storia 2
UPDATE catalogo_libri SET sort_order = 132 WHERE isbn = '9788869176432'; -- Storia 3
UPDATE catalogo_libri SET sort_order = 140 WHERE isbn = '9788829861606'; -- Tecnologia
