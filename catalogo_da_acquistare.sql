-- Aggiunge colonna da_acquistare e imposta TRUE su tutti i libri esistenti
ALTER TABLE catalogo_libri ADD COLUMN IF NOT EXISTS da_acquistare boolean DEFAULT true;
UPDATE catalogo_libri SET da_acquistare = true WHERE da_acquistare IS NULL;
