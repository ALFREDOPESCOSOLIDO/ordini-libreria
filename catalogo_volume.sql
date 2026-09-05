-- ══════════════════════════════════════════════════════
--  AGGIORNAMENTO SOLO CAMPO VOLUME — da titoli PDF
--  SQL Editor Supabase → New query → Run
-- ══════════════════════════════════════════════════════

-- Arte e Immagine — volume unico
UPDATE catalogo_libri SET volume = 'Unico' WHERE isbn = '9788849425451';

-- Francese — volume unico
UPDATE catalogo_libri SET volume = 'Unico' WHERE isbn = '9788861617841';

-- Geografia
UPDATE catalogo_libri SET volume = '1' WHERE isbn = '9788869107467';
UPDATE catalogo_libri SET volume = '2' WHERE isbn = '9788869107474';
UPDATE catalogo_libri SET volume = '3' WHERE isbn = '9788869107481';

-- Inglese
UPDATE catalogo_libri SET volume = '1' WHERE isbn = '9788891939944';
UPDATE catalogo_libri SET volume = '2' WHERE isbn = '9788883395659';
UPDATE catalogo_libri SET volume = '3' WHERE isbn = '9788883395666';

-- Italiano — Antologia
UPDATE catalogo_libri SET volume = '1' WHERE isbn = '9788824791991';
UPDATE catalogo_libri SET volume = '2' WHERE isbn = '9788824774017';
UPDATE catalogo_libri SET volume = '3' WHERE isbn = '9788824774352';

-- Italiano — Grammatica
UPDATE catalogo_libri SET volume = 'Unico (2 vol.)' WHERE isbn = '9788891596222'; -- classi 1-2
UPDATE catalogo_libri SET volume = 'A-B'            WHERE isbn = '9788824755726'; -- classe 3A

-- Matematica
UPDATE catalogo_libri SET volume = '1' WHERE isbn = '9788826822211'; -- 1A, 1B
UPDATE catalogo_libri SET volume = '1' WHERE isbn = '9788826822303'; -- 1C
UPDATE catalogo_libri SET volume = '2' WHERE isbn = '9788826822310';
UPDATE catalogo_libri SET volume = '3' WHERE isbn = '9788826822235';

-- Musica
UPDATE catalogo_libri SET volume = 'Unico' WHERE isbn = '9788829872954'; -- classi 1
UPDATE catalogo_libri SET volume = 'A-B-C' WHERE isbn = '9788841651261'; -- classi 2-3

-- Religione
UPDATE catalogo_libri SET volume = '1'   WHERE isbn = '9788805078646';
UPDATE catalogo_libri SET volume = 'Unico (2 tomi)' WHERE isbn = '9788805074761'; -- classi 2-3

-- Scienze
UPDATE catalogo_libri SET volume = '1' WHERE isbn = '9791220412667';
UPDATE catalogo_libri SET volume = '2' WHERE isbn = '9791220412704';
UPDATE catalogo_libri SET volume = '3' WHERE isbn = '9788869108815';

-- Scienze Motorie — volume unico
UPDATE catalogo_libri SET volume = 'Unico' WHERE isbn = '9788891558343';

-- Spagnolo — volume unico
UPDATE catalogo_libri SET volume = 'Unico' WHERE isbn = '9788861619951';

-- Storia
UPDATE catalogo_libri SET volume = '1' WHERE isbn = '9788869176418';
UPDATE catalogo_libri SET volume = '2' WHERE isbn = '9788869176425';
UPDATE catalogo_libri SET volume = '3' WHERE isbn = '9788869176432';

-- Tecnologia — volume unico
UPDATE catalogo_libri SET volume = 'Unico' WHERE isbn = '9788829861606';
