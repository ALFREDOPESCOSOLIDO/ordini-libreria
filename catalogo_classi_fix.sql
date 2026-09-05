-- ══════════════════════════════════════════════════════
--  CORREZIONE CLASSI — solo dove Da Acq. = Si nel PDF
--  SQL Editor Supabase → New query → Run
-- ══════════════════════════════════════════════════════

-- Aggiunge colonna da_acquistare e imposta TRUE su tutti
ALTER TABLE catalogo_libri ADD COLUMN IF NOT EXISTS da_acquistare boolean DEFAULT true;
UPDATE catalogo_libri SET da_acquistare = true WHERE da_acquistare IS NULL;

-- Arte e Immagine: Da Acq.=Si solo per 1A,1B,1C — in 2A/2B/2C/3A/3B è già in possesso
UPDATE catalogo_libri SET classi = ARRAY['1A','1B','1C']
WHERE isbn = '9788849425451';

-- Francese: Da Acq.=Si solo per 1A,1B,1C — in 2C e 3A/3B è già in possesso
UPDATE catalogo_libri SET classi = ARRAY['1A','1B','1C']
WHERE isbn = '9788861617841';

-- Italiano Grammatica (In ottima forma): Da Acq.=Si solo per 1A,1B,1C
-- In 2A/2B/2C Da Acq.=No (già in possesso)
UPDATE catalogo_libri SET classi = ARRAY['1A','1B','1C']
WHERE isbn = '9788891596222';

-- Italiano Grammatica 3A (In forma semplice e chiara): Da Acq.=No per tutti (3A e 3B)
UPDATE catalogo_libri SET classi = ARRAY[]::text[], da_acquistare = false
WHERE isbn = '9788824755726';

-- Musica Incanto A+B+C: Da Acq.=No per tutti (2A/2B/2C/3A/3B)
UPDATE catalogo_libri SET classi = ARRAY[]::text[], da_acquistare = false
WHERE isbn = '9788841651261';

-- Religione 2/3 (Conta le stelle): Da Acq.=No per tutti (2A/2B/2C/3A/3B)
UPDATE catalogo_libri SET classi = ARRAY[]::text[], da_acquistare = false
WHERE isbn = '9788805074761';

-- Scienze Motorie: Da Acq.=Si solo per 1A,1B,1C — in 2A/2B/2C/3A/3B è già in possesso
UPDATE catalogo_libri SET classi = ARRAY['1A','1B','1C']
WHERE isbn = '9788891558343';

-- Spagnolo: Da Acq.=No per tutti (2A e 2B)
UPDATE catalogo_libri SET classi = ARRAY[]::text[], da_acquistare = false
WHERE isbn = '9788861619951';

-- Tecnologia: Da Acq.=Si solo per 1A,1B,1C — in 2A/2B/2C/3A/3B è già in possesso
UPDATE catalogo_libri SET classi = ARRAY['1A','1B','1C']
WHERE isbn = '9788829861606';
