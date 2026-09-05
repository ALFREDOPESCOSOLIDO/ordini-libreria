-- ══════════════════════════════════════════════════════
--  AGGIORNAMENTO COMPLETO CATALOGO — titoli IBS + volume
--  SQL Editor Supabase → New query → Run
-- ══════════════════════════════════════════════════════

-- Aggiunge colonna volume
ALTER TABLE catalogo_libri ADD COLUMN IF NOT EXISTS volume text;

-- ── ARTE E IMMAGINE ────────────────────────────────────
UPDATE catalogo_libri SET
  titolo   = 'Il sogno di Artemisia. Ediz. compatta',
  autore   = 'Vittorio Giudici, Andrea Pacini, Giulia Coco',
  editore  = 'Petrini',
  prezzo   = 28.65,
  volume   = NULL
WHERE isbn = '9788849425451';

-- ── FRANCESE ───────────────────────────────────────────
UPDATE catalogo_libri SET
  titolo   = 'Ensemble c''est mieux. En poche',
  autore   = 'Rossella Bruneri',
  editore  = 'Lang',
  prezzo   = 22.51,
  volume   = NULL
WHERE isbn = '9788861617841';

-- ── GEOGRAFIA ──────────────────────────────────────────
UPDATE catalogo_libri SET
  titolo   = 'Alisei',
  autore   = 'Giancarlo Corbellini',
  editore  = 'Edizioni Scolastiche Bruno Mondadori',
  prezzo   = 22.90,
  volume   = '1'
WHERE isbn = '9788869107467';

UPDATE catalogo_libri SET
  titolo   = 'Alisei',
  autore   = 'Giancarlo Corbellini',
  editore  = 'Edizioni Scolastiche Bruno Mondadori',
  prezzo   = 22.30,
  volume   = '2'
WHERE isbn = '9788869107474';

UPDATE catalogo_libri SET
  titolo   = 'Alisei',
  autore   = 'Giancarlo Corbellini',
  editore  = 'Edizioni Scolastiche Bruno Mondadori',
  prezzo   = 26.00,
  volume   = '3'
WHERE isbn = '9788869107481';

-- ── INGLESE ────────────────────────────────────────────
UPDATE catalogo_libri SET
  titolo   = 'iDiscover. Upgrade Pack',
  autore   = 'Elizabeth Foody, Liz Kilbey',
  editore  = 'Pearson',
  prezzo   = 23.30,
  volume   = '1'
WHERE isbn = '9788891939944';

UPDATE catalogo_libri SET
  titolo   = 'iDiscover',
  autore   = 'AA VV',
  editore  = 'Pearson Longman',
  prezzo   = 25.60,
  volume   = '2'
WHERE isbn = '9788883395659';

UPDATE catalogo_libri SET
  titolo   = 'iDiscover',
  autore   = 'AA VV',
  editore  = 'Pearson Longman',
  prezzo   = 25.60,
  volume   = '3'
WHERE isbn = '9788883395666';

-- ── ITALIANO — ANTOLOGIA ───────────────────────────────
UPDATE catalogo_libri SET
  titolo   = 'Nuovo amico libro. Epica + Quaderno + Cittadinanza',
  autore   = 'Vittoria Calvani, Chiara Ferri, Luca Mattei',
  editore  = 'Mondadori Scuola',
  prezzo   = 35.10,
  volume   = '1'
WHERE isbn = '9788824791991';

UPDATE catalogo_libri SET
  titolo   = 'Nuovo amico libro. Con Letteratura e Quaderno',
  autore   = 'Vittoria Calvani, Chiara Ferri, Luca Mattei',
  editore  = 'Mondadori Scuola',
  prezzo   = 38.00,
  volume   = '2'
WHERE isbn = '9788824774017';

UPDATE catalogo_libri SET
  titolo   = 'Nuovo amico libro. Con Quaderno',
  autore   = 'Vittoria Calvani, Chiara Ferri, Luca Mattei',
  editore  = 'Mondadori Scuola',
  prezzo   = 23.62,
  volume   = '3'
WHERE isbn = '9788824774352';

-- ── ITALIANO — GRAMMATICA ──────────────────────────────
UPDATE catalogo_libri SET
  titolo   = 'In ottima forma. In 2 volumi',
  autore   = 'Rosetta Zordan',
  editore  = 'Fabbri',
  prezzo   = 38.50,
  volume   = 'A-B'
WHERE isbn = '9788891596222';

UPDATE catalogo_libri SET
  titolo   = 'In forma semplice e chiara',
  autore   = 'Marcello Sensini',
  editore  = 'Mondadori Scuola',
  prezzo   = 42.40,
  volume   = 'A-B'
WHERE isbn = '9788824755726';

-- ── MATEMATICA ─────────────────────────────────────────
UPDATE catalogo_libri SET
  titolo   = 'Ellequadro. Aritmetica e Geometria',
  autore   = 'Roberto Vacca, Bruno Artuso, Claudia Bezzi',
  editore  = 'Atlas',
  prezzo   = 29.80,
  volume   = '1'
WHERE isbn = '9788826822211';

-- Matematica 1C — non trovato su IBS, solo volume aggiornato
UPDATE catalogo_libri SET
  volume   = '1'
WHERE isbn = '9788826822303';

UPDATE catalogo_libri SET
  titolo   = 'Ellequadro',
  autore   = 'Roberto Vacca, Bruno Artuso, Claudia Bezzi',
  editore  = 'Atlas',
  prezzo   = 21.60,
  volume   = '2'
WHERE isbn = '9788826822310';

UPDATE catalogo_libri SET
  titolo   = 'Ellequadro. Geometria e Algebra',
  autore   = 'Roberto Vacca, Bruno Artuso, Claudia Bezzi',
  editore  = 'Atlas',
  prezzo   = 30.50,
  volume   = '3'
WHERE isbn = '9788826822235';

-- ── MUSICA ─────────────────────────────────────────────
UPDATE catalogo_libri SET
  titolo   = 'Passione musica',
  autore   = 'Rosanna Castello',
  editore  = 'Minerva Scuola',
  prezzo   = 28.80,
  volume   = '1'
WHERE isbn = '9788829872954';

UPDATE catalogo_libri SET
  titolo   = 'Incanto. Capire e fare musica',
  autore   = 'Carlo Delfrati, Maria Luisa Merlo, Domenico Bellissimo',
  editore  = 'Principato',
  prezzo   = 37.60,
  volume   = 'A-B-C'
WHERE isbn = '9788841651261';

-- ── RELIGIONE — non trovati su IBS, solo volume ────────
UPDATE catalogo_libri SET volume = '1'     WHERE isbn = '9788805078646';
UPDATE catalogo_libri SET volume = '2-3'   WHERE isbn = '9788805074761';

-- ── SCIENZE ────────────────────────────────────────────
UPDATE catalogo_libri SET
  titolo   = 'Esperienza STEAM. Imparare le Scienze con metodo',
  autore   = 'Stefano Zanoli',
  editore  = 'Mondadori Scuola',
  prezzo   = 16.60,
  volume   = '1'
WHERE isbn = '9791220412667';

UPDATE catalogo_libri SET
  titolo   = 'Esperienza STEAM. Imparare le Scienze con metodo',
  autore   = 'Stefano Zanoli',
  editore  = 'Mondadori Scuola',
  prezzo   = 18.30,
  volume   = '2'
WHERE isbn = '9791220412704';

UPDATE catalogo_libri SET
  titolo   = 'Discovery. Le scienze in classe',
  autore   = 'Lea Alfieri, Giulio Moretti',
  editore  = 'Edizioni Scolastiche Bruno Mondadori',
  prezzo   = 19.90,
  volume   = '3'
WHERE isbn = '9788869108815';

-- ── SCIENZE MOTORIE ────────────────────────────────────
UPDATE catalogo_libri SET
  titolo   = 'Vivo sport',
  autore   = 'Antonio Rovida',
  editore  = 'Fabbri',
  prezzo   = 17.20,
  volume   = NULL
WHERE isbn = '9788891558343';

-- ── SPAGNOLO ───────────────────────────────────────────
UPDATE catalogo_libri SET
  titolo   = '¡Qué alegría! Edición compacta',
  autore   = 'Nello Fanciullo, Sonia Campos Cabrero, Ana Irene García Pérez',
  editore  = 'Lang',
  prezzo   = 35.60,
  volume   = NULL
WHERE isbn = '9788861619951';

-- ── STORIA ─────────────────────────────────────────────
UPDATE catalogo_libri SET
  titolo   = 'Storia per domani. Dalla caduta dell''Impero romano al Rinascimento',
  autore   = 'E. Pasqua, I. D''Intino, I. Scarpati',
  editore  = 'Lattes',
  prezzo   = 28.00,
  volume   = '1'
WHERE isbn = '9788869176418';

UPDATE catalogo_libri SET
  titolo   = 'Storia per domani. Dalla scoperta dell''America alla fine dell''Ottocento',
  autore   = 'E. Pasqua, I. D''Intino, I. Scarpati',
  editore  = 'Lattes',
  prezzo   = 21.25,
  volume   = '2'
WHERE isbn = '9788869176425';

UPDATE catalogo_libri SET
  titolo   = 'Storia per domani. Il Novecento',
  autore   = 'E. Pasqua, I. D''Intino, I. Scarpati',
  editore  = 'Lattes',
  prezzo   = 25.30,
  volume   = '3'
WHERE isbn = '9788869176432';

-- ── TECNOLOGIA ─────────────────────────────────────────
UPDATE catalogo_libri SET
  titolo   = 'Progettare il futuro. Con Tecnologia, ambiente e cittadinanza e Disegno',
  autore   = 'Antonio Conti',
  editore  = 'Minerva Scuola',
  prezzo   = 30.40,
  volume   = NULL
WHERE isbn = '9788829861606';
