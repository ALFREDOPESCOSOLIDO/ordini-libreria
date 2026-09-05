-- ══════════════════════════════════════════════════════
--  AGGIORNAMENTO SCHEMA — Da eseguire DOPO schema.sql
--  SQL Editor di Supabase → New query → Run
-- ══════════════════════════════════════════════════════

-- ── Aggiunte alla tabella clienti ──────────────────────
ALTER TABLE clienti ADD COLUMN IF NOT EXISTS tipo_cliente text DEFAULT 'privato';
-- valori: 'privato' | 'medie' | 'superiori'
ALTER TABLE clienti ADD COLUMN IF NOT EXISTS classe text;
ALTER TABLE clienti ADD COLUMN IF NOT EXISTS scuola text;

-- ── Catalogo libri ─────────────────────────────────────
CREATE TABLE IF NOT EXISTS catalogo_libri (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  isbn text,
  titolo text NOT NULL,
  autore text,
  editore text,
  prezzo numeric(10,2),
  tipo_scuola text,        -- 'medie' | 'superiori'
  scuola text,
  classi text[],           -- es: ARRAY['1A','1B','1C']
  anno_scolastico text DEFAULT '2026/2027',
  materia text,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE catalogo_libri ENABLE ROW LEVEL SECURITY;
CREATE POLICY "auth" ON catalogo_libri FOR ALL TO authenticated USING (true) WITH CHECK (true);

-- ══════════════════════════════════════════════════════
--  CATALOGO LIBRI — Scuola Sec. I Grado ARCE 2026/2027
--  ISBN utilizzato: il SECONDO (in rosso nei documenti)
-- ══════════════════════════════════════════════════════

INSERT INTO catalogo_libri (isbn, titolo, autore, editore, prezzo, tipo_scuola, scuola, classi, anno_scolastico, materia) VALUES

-- ── ARTE E IMMAGINE (tutte le classi) ─────────────────
('9788849425451',
 'Sogno di Artemisia - Edizione Compatta Ebook',
 'Vivarelli L.', 'Petrini', 22.45, 'medie',
 'Sec. I Grado Arce', ARRAY['1A','1B','1C','2A','2B','2C','3A'], '2026/2027', 'Arte e Immagine'),

-- ── FRANCESE (1A, 1B, 1C, 2C, 3A) ─────────────────────
('9788861617841',
 'Ensemble C''est Mieux - En Poche (Modalità Digitale C)',
 'R. Bruneri', 'Lang Edizioni', 25.20, 'medie',
 'Sec. I Grado Arce', ARRAY['1A','1B','1C','2C','3A'], '2026/2027', 'Francese'),

-- ── GEOGRAFIA 1 (1A, 1B, 1C) ──────────────────────────
('9788869107467',
 'Alisei 1 - L''Europa e L''Italia (Modalità Digitale C)',
 'Giancarlo Corbellini', 'B.Mondadori', 16.10, 'medie',
 'Sec. I Grado Arce', ARRAY['1A','1B','1C'], '2026/2027', 'Geografia'),

-- ── GEOGRAFIA 2 (2A, 2B, 2C) ──────────────────────────
('9788869107474',
 'Alisei 2 - Gli Stati d''Europa (Modalità Digitale C)',
 'Giancarlo Corbellini', 'B.Mondadori', 15.60, 'medie',
 'Sec. I Grado Arce', ARRAY['2A','2B','2C'], '2026/2027', 'Geografia'),

-- ── GEOGRAFIA 3 (3A) ──────────────────────────────────
('9788869107481',
 'Alisei 3 - I Continenti Extraeuropei',
 'Giancarlo Corbellini', 'B.Mondadori', 26.00, 'medie',
 'Sec. I Grado Arce', ARRAY['3A'], '2026/2027', 'Geografia'),

-- ── INGLESE 1 (1A, 1B, 1C) ────────────────────────────
('9788891939944',
 'iDiscover 1 - 2nd Edition Upgrade Pack',
 'Elizabeth Foody', 'Pearson Longman', 23.30, 'medie',
 'Sec. I Grado Arce', ARRAY['1A','1B','1C'], '2026/2027', 'Inglese'),

-- ── INGLESE 2 (2A, 2B, 2C) ────────────────────────────
('9788883395659',
 'iDiscover 2',
 'AA VV', 'Pearson Longman', 25.60, 'medie',
 'Sec. I Grado Arce', ARRAY['2A','2B','2C'], '2026/2027', 'Inglese'),

-- ── INGLESE 3 (3A) ────────────────────────────────────
('9788883395666',
 'iDiscover 3',
 'AA VV', 'Pearson Longman', 25.60, 'medie',
 'Sec. I Grado Arce', ARRAY['3A'], '2026/2027', 'Inglese'),

-- ── ITALIANO ANTOLOGIA 1 (1A, 1B, 1C) ─────────────────
('9788824791991',
 'Nuovo Amico Libro MB + Cont. Digit. Vol. 1 + Epica + Quaderno + Cittadinanza 2020',
 'Calvani V., Ferri C., Mattei L.', 'A. Mondadori Scuola', 27.38, 'medie',
 'Sec. I Grado Arce', ARRAY['1A','1B','1C'], '2026/2027', 'Italiano - Antologia'),

-- ── ITALIANO ANTOLOGIA 2 (2A, 2B, 2C) ─────────────────
('9788824774017',
 'Nuovo Amico Libro MB + Cont. Digit. Vol. 2 + Letteratura + Quaderno',
 'Calvani V., Ferri C., Mattei L.', 'A. Mondadori Scuola', 29.64, 'medie',
 'Sec. I Grado Arce', ARRAY['2A','2B','2C'], '2026/2027', 'Italiano - Antologia'),

-- ── ITALIANO ANTOLOGIA 3 (3A) ──────────────────────────
('9788824774352',
 'Nuovo Amico Libro MB + Cont. Digit. Vol. 3 + Quaderno',
 'Calvani V., Ferri C., Mattei L.', 'A. Mondadori Scuola', 28.70, 'medie',
 'Sec. I Grado Arce', ARRAY['3A'], '2026/2027', 'Italiano - Antologia'),

-- ── ITALIANO GRAMMATICA 1/2 (1A, 1B, 1C, 2A, 2B, 2C) ─
('9788891596222',
 'In Ottima Forma - Ed. in Due Volumi (Fonologia, Ortografia, Morfologia, Lessico, Sintassi)',
 'Zordan Rosetta', 'Fabbri Scuola', 30.60, 'medie',
 'Sec. I Grado Arce', ARRAY['1A','1B','1C','2A','2B','2C'], '2026/2027', 'Italiano - Grammatica'),

-- ── ITALIANO GRAMMATICA 3A ─────────────────────────────
('9788824755726',
 'In Forma Semplice e Chiara MB + Cont. Digit. Vol. A + Vol. B + Quaderno + Per Te',
 'Sensini Marcello', 'A. Mondadori Scuola', 33.07, 'medie',
 'Sec. I Grado Arce', ARRAY['3A'], '2026/2027', 'Italiano - Grammatica'),

-- ── MATEMATICA 1 (1A, 1B) ─────────────────────────────
('9788826822211',
 'Ellequadro - Volume 1',
 'Vacca R., Artuso B., Bezzi C.', 'Atlas', 21.70, 'medie',
 'Sec. I Grado Arce', ARRAY['1A','1B'], '2026/2027', 'Matematica'),

-- ── MATEMATICA 1 (1C — ISBN diverso) ──────────────────
('9788826822303',
 'Ellequadro - Volume 1',
 'Vacca R., Artuso B., Bezzi C.', 'Atlas', 21.70, 'medie',
 'Sec. I Grado Arce', ARRAY['1C'], '2026/2027', 'Matematica'),

-- ── MATEMATICA 2 (2A, 2B, 2C) ─────────────────────────
('9788826822310',
 'Ellequadro - Volume 2',
 'Vacca R., Artuso B., Bezzi C.', 'Atlas', 21.60, 'medie',
 'Sec. I Grado Arce', ARRAY['2A','2B','2C'], '2026/2027', 'Matematica'),

-- ── MATEMATICA 3 (3A) ─────────────────────────────────
('9788826822235',
 'Ellequadro - Volume 3',
 'Vacca R., Artuso B., Bezzi C.', 'Atlas', 22.20, 'medie',
 'Sec. I Grado Arce', ARRAY['3A'], '2026/2027', 'Matematica'),

-- ── MUSICA 1 (1A, 1B, 1C) ─────────────────────────────
('9788829872954',
 'Passione Musica MB + Cont. Digit. Volume Unico',
 'Castello Rosanna', 'Minerva Italica', 22.46, 'medie',
 'Sec. I Grado Arce', ARRAY['1A','1B','1C'], '2026/2027', 'Musica'),

-- ── MUSICA 2/3 (2A, 2B, 2C, 3A) ──────────────────────
('9788841651261',
 'Incanto - Volume A+B+C',
 'Delfrati C., Merlo M.L.', 'Principato', 30.30, 'medie',
 'Sec. I Grado Arce', ARRAY['2A','2B','2C','3A'], '2026/2027', 'Musica'),

-- ── RELIGIONE 1 (1A, 1B, 1C) ──────────────────────────
('9788805078646',
 'Relimaker 1 + Con Occhi Diversi E-Book Interattivo',
 'Paolini L., Pandolfi B.', 'SEI', 7.80, 'medie',
 'Sec. I Grado Arce', ARRAY['1A','1B','1C'], '2026/2027', 'Religione'),

-- ── RELIGIONE 2/3 (2A, 2B, 2C, 3A) ───────────────────
('9788805074761',
 'Conta le Stelle... (2 Tomi) + Le Grandi Religioni nel Mondo E-Book',
 'Stroppiana E., Fossati M.', 'SEI', 16.50, 'medie',
 'Sec. I Grado Arce', ARRAY['2A','2B','2C','3A'], '2026/2027', 'Religione'),

-- ── SCIENZE 1 (1A, 1B, 1C) ────────────────────────────
('9791220412667',
 'Esperienza Steam MB + Cont. Digit. Volume 1',
 'Zanoli Stefano', 'A. Mondadori Scuola', 12.95, 'medie',
 'Sec. I Grado Arce', ARRAY['1A','1B','1C'], '2026/2027', 'Scienze'),

-- ── SCIENZE 2 (2A, 2B, 2C) ────────────────────────────
('9791220412704',
 'Esperienza Steam MB + Cont. Digit. Volume 2',
 'Zanoli Stefano', 'A. Mondadori Scuola', 14.27, 'medie',
 'Sec. I Grado Arce', ARRAY['2A','2B','2C'], '2026/2027', 'Scienze'),

-- ── SCIENZE 3 (3A) ────────────────────────────────────
('9788869108815',
 'Discovery - Volume 3 (Modalità Digitale C) Le Scienze in Classe',
 'Alfieri L., Moretti G.', 'B.Mondadori', 14.10, 'medie',
 'Sec. I Grado Arce', ARRAY['3A'], '2026/2027', 'Scienze'),

-- ── SCIENZE MOTORIE (tutte le classi) ─────────────────
('9788891558343',
 'Vivo Sport - Libro Digitale Volume per lo Studente',
 'Rovida Antonio', 'Fabbri Scuola', 13.00, 'medie',
 'Sec. I Grado Arce', ARRAY['1A','1B','1C','2A','2B','2C','3A'], '2026/2027', 'Scienze Motorie'),

-- ── SPAGNOLO (2A, 2B) ─────────────────────────────────
('9788861619951',
 '¡Qué Alegría! - Edición Compacta (Modalità Digitale C)',
 'Fanciullo N., Perez A.I.G., Almarza D.M.', 'Lang Edizioni', 24.80, 'medie',
 'Sec. I Grado Arce', ARRAY['2A','2B'], '2026/2027', 'Spagnolo'),

-- ── STORIA 1 (1A, 1B, 1C) ─────────────────────────────
('9788869176418',
 'Storia per Domani Vol. 1 + Educazione Civica + Il Mio Libro per Mappe 1',
 'Pasqua E., D''Intino I., Scarpati I.', 'Lattes', 23.80, 'medie',
 'Sec. I Grado Arce', ARRAY['1A','1B','1C'], '2026/2027', 'Storia'),

-- ── STORIA 2 (2A, 2B, 2C) ─────────────────────────────
('9788869176425',
 'Storia per Domani Vol. 2 + Il Mio Libro per Mappe 2',
 'Pasqua E., D''Intino I., Scarpati I.', 'Lattes', 21.25, 'medie',
 'Sec. I Grado Arce', ARRAY['2A','2B','2C'], '2026/2027', 'Storia'),

-- ── STORIA 3 (3A) ─────────────────────────────────────
('9788869176432',
 'Storia per Domani Vol. 3 + Il Mio Libro per Mappe 3 + Esame di Stato',
 'Pasqua E., D''Intino I., Scarpati I.', 'Lattes', 25.30, 'medie',
 'Sec. I Grado Arce', ARRAY['3A'], '2026/2027', 'Storia'),

-- ── TECNOLOGIA (tutte le classi) ──────────────────────
('9788829861606',
 'Progettare il Futuro MB + Cont. Digit. Volume + Fascicolo + Disegno',
 'Conti Antonio', 'Minerva Italica', 23.71, 'medie',
 'Sec. I Grado Arce', ARRAY['1A','1B','1C','2A','2B','2C','3A'], '2026/2027', 'Tecnologia');
