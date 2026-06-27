-- ══════════════════════════════════════════════════════════════════
--  SCHEMA COMPLETO — Ordini Libreria
--  Eseguire nel SQL Editor di Supabase (nuovo progetto cliente)
--  Selezionare "Run without RLS" quando richiesto
-- ══════════════════════════════════════════════════════════════════

-- CLIENTI
CREATE TABLE IF NOT EXISTS clienti (
  id          uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  nome        text NOT NULL,
  cognome     text,
  email       text,
  telefono    text,
  tipo_scuola text,
  classe      text,
  note        text,
  created_at  timestamptz DEFAULT now()
);

-- ORDINI
CREATE TABLE IF NOT EXISTS ordini (
  id          uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  cliente_id  uuid REFERENCES clienti(id) ON DELETE CASCADE,
  data_ordine date NOT NULL DEFAULT CURRENT_DATE,
  stato       text NOT NULL DEFAULT 'confermato',
  note        text,
  created_at  timestamptz DEFAULT now()
);

-- RIGHE ORDINE
CREATE TABLE IF NOT EXISTS righe_ordine (
  id                          uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  ordine_id                   uuid REFERENCES ordini(id) ON DELETE CASCADE,
  isbn                        text,
  titolo                      text NOT NULL,
  autore                      text,
  editore                     text,
  prezzo_unitario             numeric(10,2),
  quantita                    int NOT NULL DEFAULT 1,
  quantita_ordinata_fornitore int DEFAULT 0,
  quantita_arrivata           int DEFAULT 0,
  quantita_consegnata         int DEFAULT 0,
  created_at                  timestamptz DEFAULT now()
);

-- CATALOGO LIBRI
CREATE TABLE IF NOT EXISTS catalogo_libri (
  id              uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  isbn            text UNIQUE,
  titolo          text NOT NULL,
  autore          text,
  editore         text,
  prezzo          numeric(10,2),
  volume          text,
  materia         text,
  tipo_scuola     text,
  scuola          text,
  classi          text[],
  anno_scolastico text,
  da_acquistare   boolean DEFAULT true,
  sort_order      int DEFAULT 99,
  created_at      timestamptz DEFAULT now()
);

-- EDITORI
CREATE TABLE IF NOT EXISTS editori (
  id   uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  nome text NOT NULL UNIQUE
);

-- FORNITORI
CREATE TABLE IF NOT EXISTS fornitori (
  id         uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  nome       text NOT NULL,
  email      text,
  telefono   text,
  note       text,
  created_at timestamptz DEFAULT now()
);

-- FORNITORI <-> EDITORI
CREATE TABLE IF NOT EXISTS fornitori_editori (
  fornitore_id uuid REFERENCES fornitori(id) ON DELETE CASCADE,
  editore_id   uuid REFERENCES editori(id)   ON DELETE CASCADE,
  PRIMARY KEY (fornitore_id, editore_id)
);

-- ORDINI FORNITORE
CREATE TABLE IF NOT EXISTS ordini_fornitore (
  id           uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  data_ordine  date NOT NULL DEFAULT CURRENT_DATE,
  fornitore    text,
  fornitore_id uuid REFERENCES fornitori(id) ON DELETE SET NULL,
  stato        text NOT NULL DEFAULT 'inviato',
  note         text,
  created_at   timestamptz DEFAULT now()
);

-- RIGHE ORDINE FORNITORE
CREATE TABLE IF NOT EXISTS righe_ordine_fornitore (
  id                  uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  ordine_fornitore_id uuid REFERENCES ordini_fornitore(id) ON DELETE CASCADE,
  riga_ordine_id      uuid REFERENCES righe_ordine(id) ON DELETE SET NULL,
  isbn                text,
  titolo              text,
  quantita            int NOT NULL DEFAULT 1,
  quantita_arrivata   int DEFAULT 0
);

-- ARRIVI FORNITORE
CREATE TABLE IF NOT EXISTS arrivi_fornitore (
  id                  uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  ordine_fornitore_id uuid REFERENCES ordini_fornitore(id) ON DELETE CASCADE,
  data                date NOT NULL DEFAULT CURRENT_DATE,
  note                text,
  created_at          timestamptz DEFAULT now()
);

CREATE TABLE IF NOT EXISTS righe_arrivo (
  id                       uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  arrivo_id                uuid REFERENCES arrivi_fornitore(id) ON DELETE CASCADE,
  riga_ordine_fornitore_id uuid REFERENCES righe_ordine_fornitore(id) ON DELETE CASCADE,
  quantita                 int NOT NULL DEFAULT 1
);

-- ══════════════════════════════════════════════════════════════════
-- Dopo aver importato i PDF adozioni, popola editori:
-- INSERT INTO editori (nome)
-- SELECT DISTINCT TRIM(editore) FROM catalogo_libri
-- WHERE editore IS NOT NULL AND TRIM(editore) <> ''
-- ON CONFLICT (nome) DO NOTHING;
-- ══════════════════════════════════════════════════════════════════
