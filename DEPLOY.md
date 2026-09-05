# Come pubblicare l'app Ordini Libreria

## Panoramica
- **Codice** → GitHub (versionamento + hosting)
- **Database** → Supabase (clienti, ordini, pagamenti, consegne)
- **Accesso** → qualsiasi browser, da qualsiasi dispositivo

---

## Passo 1 — Configura il database su Supabase

1. Vai su [supabase.com](https://supabase.com) e accedi
2. Apri il tuo progetto (o creane uno nuovo)
3. Menu a sinistra → **SQL Editor**
4. Incolla tutto il contenuto del file `schema.sql` di questa cartella
5. Clicca **Run** (▶)
6. Verifica che le tabelle siano state create: menu → **Table Editor**

### Crea l'utente operatore
1. Menu a sinistra → **Authentication → Users**
2. Clicca **Invite user** (o **Add user**)
3. Inserisci email e password dell'operatore della libreria
4. Ripeti per ogni operatore

### Prendi nota delle credenziali
1. Menu a sinistra → **Project Settings → API**
2. Copia:
   - **Project URL** (es. `https://xxxxxxxxxxxx.supabase.co`)
   - **anon / public** key (la chiave lunga sotto "Project API keys")

---

## Passo 2 — Pubblica su GitHub Pages

1. Vai su [github.com](https://github.com) e accedi
2. Clicca **New repository**
3. Nome: `ordini-libreria` (o quello che preferisci)
4. Visibilità: **Public** (necessario per GitHub Pages gratuito)
5. Clicca **Create repository**

### Carica i file
- Clicca **uploading an existing file**
- Trascina il file `index.html` da questa cartella
- Scrivi un messaggio di commit (es. "Prima versione")
- Clicca **Commit changes**

### Attiva GitHub Pages
1. Nel repository → **Settings** → **Pages** (menu a sinistra)
2. Source: **Deploy from a branch**
3. Branch: **main** — Cartella: **/ (root)**
4. Clicca **Save**
5. Dopo circa 1 minuto appare il link pubblico:
   `https://[tuo-username].github.io/ordini-libreria/`

---

## Passo 3 — Prima configurazione dell'app

1. Apri il link `https://[tuo-username].github.io/ordini-libreria/`
2. Apparirà la schermata "Configurazione Supabase"
3. Incolla:
   - **Supabase URL** → il Project URL del passo 1
   - **Anon Key** → la chiave anon/public del passo 1
4. Clicca **Salva e continua**
5. Accedi con email e password create nel passo 1

> ⚠️ Questa configurazione si salva nel browser. Se usi l'app su un nuovo dispositivo, dovrai inserire di nuovo le credenziali Supabase la prima volta.

---

## Per aggiornare l'app dopo modifiche

1. Vai nel repository GitHub
2. Clicca su `index.html`
3. Clicca l'icona matita ✏️ (Edit this file)
4. Incolla il nuovo contenuto del file `index.html`
5. Clicca **Commit changes**
6. GitHub Pages si aggiorna automaticamente in ~1 minuto

---

## Struttura tabelle

| Tabella | Contenuto |
|---------|-----------|
| `clienti` | Nome, cognome, telefono, email, note |
| `ordini` | Cliente, data, stato, totale libri, foderatura, note |
| `righe_ordine` | I libri dell'ordine (ISBN, titolo, prezzo, qty, qty consegnata) |
| `pagamenti` | Acconti, pagamenti parziali e saldi per ogni ordine |
| `consegne` | Registrazione consegne parziali o totali |
| `righe_consegna` | Quali libri sono stati consegnati in ogni consegna |

## Stati degli ordini

| Stato | Significato |
|-------|-------------|
| Confermato | Ordine creato, nessun libro ancora consegnato |
| Parz. consegnato | Alcuni libri consegnati, altri ancora attesi |
| Consegnato | Tutti i libri consegnati, in attesa del saldo |
| Saldato | Ordine completato e pagato |
| Annullato | Ordine annullato |
