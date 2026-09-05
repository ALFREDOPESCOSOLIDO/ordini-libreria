-- ══════════════════════════════════════════════════════
--  AGGIORNAMENTO CATALOGO — dati da IBS.it
--  SQL Editor Supabase → New query → Run
-- ══════════════════════════════════════════════════════

-- ARTE E IMMAGINE
UPDATE catalogo_libri SET
  titolo  = 'Il sogno di Artemisia. Ediz. compatta. Con Fascicolo competenze e Dizionario dell''arte',
  autore  = 'Vittorio Giudici, Andrea Pacini, Giulia Coco',
  editore = 'Petrini',
  prezzo  = 28.65
WHERE isbn = '9788849425451';

-- FRANCESE
UPDATE catalogo_libri SET
  titolo  = 'Ensemble c''est mieux. En poche. Avec Apprendre pour tous. Con e-book. Con espansione online',
  autore  = 'Rossella Bruneri',
  editore = 'Lang',
  prezzo  = 22.51
WHERE isbn = '9788861617841';

-- GEOGRAFIA 1
UPDATE catalogo_libri SET
  titolo  = 'Alisei. Con Atlante, Regioni, Atlante della sostenibilità. Per la Scuola media. Con e-book. Con espansione online. Vol. 1',
  autore  = 'Giancarlo Corbellini',
  editore = 'Edizioni Scolastiche Bruno Mondadori',
  prezzo  = 22.90
WHERE isbn = '9788869107467';

-- GEOGRAFIA 2
UPDATE catalogo_libri SET
  titolo  = 'Alisei. Con Atlante. Per la Scuola media. Con e-book. Con espansione online. Vol. 2: Gli stati d''Europa',
  autore  = 'Giancarlo Corbellini',
  editore = 'Edizioni Scolastiche Bruno Mondadori',
  prezzo  = 22.30
WHERE isbn = '9788869107474';

-- GEOGRAFIA 3
UPDATE catalogo_libri SET
  titolo  = 'Alisei. Con Atlante, Atlante della sostenibilità. Per la Scuola media. Con e-book. Con espansione online. Vol. 3: I continenti extraeuropei',
  autore  = 'Giancarlo Corbellini',
  editore = 'Edizioni Scolastiche Bruno Mondadori',
  prezzo  = 26.00
WHERE isbn = '9788869107481';

-- INGLESE 1
UPDATE catalogo_libri SET
  titolo  = 'iDiscover. Upgrade Pack. Per la Scuola media. Con e-book. Con espansione online. Vol. 1',
  autore  = 'Elizabeth Foody, Liz Kilbey',
  editore = 'Pearson',
  prezzo  = 23.30
WHERE isbn = '9788891939944';

-- INGLESE 2
UPDATE catalogo_libri SET
  titolo  = 'iDiscover. Per la Scuola media. Con e-book. Con espansione online. Vol. 2',
  autore  = 'AA VV',
  editore = 'Pearson Longman',
  prezzo  = 25.60
WHERE isbn = '9788883395659';

-- INGLESE 3
UPDATE catalogo_libri SET
  titolo  = 'iDiscover. Per la Scuola media. Con e-book. Con espansione online. Vol. 3',
  autore  = 'AA VV',
  editore = 'Pearson Longman',
  prezzo  = 25.60
WHERE isbn = '9788883395666';

-- ITALIANO ANTOLOGIA 1
UPDATE catalogo_libri SET
  titolo  = 'Nuovo amico libro. Per la Scuola media. Con e-book. Con espansione online. Vol. 1: Epica + Quaderno + Cittadinanza',
  autore  = 'Vittoria Calvani, Chiara Ferri, Luca Mattei',
  editore = 'Mondadori Scuola',
  prezzo  = 35.10
WHERE isbn = '9788824791991';

-- ITALIANO ANTOLOGIA 2
UPDATE catalogo_libri SET
  titolo  = 'Nuovo amico libro. Con Letteratura. Con Quaderno. Per la Scuola media. Con e-book. Con espansione online. Vol. 2',
  autore  = 'Vittoria Calvani, Chiara Ferri, Luca Mattei',
  editore = 'Mondadori Scuola',
  prezzo  = 38.00
WHERE isbn = '9788824774017';

-- ITALIANO ANTOLOGIA 3
UPDATE catalogo_libri SET
  titolo  = 'Nuovo amico libro. Con Quaderno. Per la Scuola media. Con e-book. Con espansione online. Vol. 3',
  autore  = 'Vittoria Calvani, Chiara Ferri, Luca Mattei',
  editore = 'Mondadori Scuola',
  prezzo  = 23.62
WHERE isbn = '9788824774352';

-- ITALIANO GRAMMATICA (classi 1A-2C)
UPDATE catalogo_libri SET
  titolo  = 'In ottima forma. In 2 volumi. Fonologia ortografia morfologia lessico sintassi. Con Comunicazione e scrittura. Per la Scuola media. Con e-book. Con espansione online',
  autore  = 'Rosetta Zordan',
  editore = 'Fabbri',
  prezzo  = 38.50
WHERE isbn = '9788891596222';

-- ITALIANO GRAMMATICA 3A
UPDATE catalogo_libri SET
  titolo  = 'In forma semplice e chiara. Per la Scuola media. Con e-book. Con espansione online. Con 2 libri: Quaderno-Per te. Vol. A-B',
  autore  = 'Marcello Sensini',
  editore = 'Mondadori Scuola',
  prezzo  = 42.40
WHERE isbn = '9788824755726';

-- MATEMATICA 1 (1A, 1B)
UPDATE catalogo_libri SET
  titolo  = 'Ellequadro. Aritmetica. Geometria. Per la Scuola media. Con e-book. Con espansione online. Vol. 1',
  autore  = 'Roberto Vacca, Bruno Artuso, Claudia Bezzi',
  editore = 'Atlas',
  prezzo  = 29.80
WHERE isbn = '9788826822211';

-- MATEMATICA 1 (1C) — non trovato su IBS, mantengo dati PDF
-- isbn 9788826822303 invariato

-- MATEMATICA 2
UPDATE catalogo_libri SET
  titolo  = 'Ellequadro. Per la Scuola media. Con e-book. Con espansione online. Vol. 2',
  autore  = 'Roberto Vacca, Bruno Artuso, Claudia Bezzi',
  editore = 'Atlas',
  prezzo  = 21.60
WHERE isbn = '9788826822310';

-- MATEMATICA 3
UPDATE catalogo_libri SET
  titolo  = 'Ellequadro. Geometria. Algebra. Per la Scuola media. Con e-book. Con espansione online. Vol. 3',
  autore  = 'Roberto Vacca, Bruno Artuso, Claudia Bezzi',
  editore = 'Atlas',
  prezzo  = 30.50
WHERE isbn = '9788826822235';

-- MUSICA 1
UPDATE catalogo_libri SET
  titolo  = 'Passione musica. Per la Scuola media. Con e-book. Con espansione online',
  autore  = 'Rosanna Castello',
  editore = 'Minerva Scuola',
  prezzo  = 28.80
WHERE isbn = '9788829872954';

-- MUSICA 2/3
UPDATE catalogo_libri SET
  titolo  = 'Incanto. Capire e fare musica. Con Raccoglitore, con Studiafacile. Per la Scuola media. Con e-book. Con espansione online. Vol. A-B-C',
  autore  = 'Carlo Delfrati, Maria Luisa Merlo, Domenico Bellissimo',
  editore = 'Principato',
  prezzo  = 37.60
WHERE isbn = '9788841651261';

-- RELIGIONE 1 — non trovato su IBS, mantengo dati PDF
-- isbn 9788805078646 invariato

-- RELIGIONE 2/3 — non trovato su IBS, mantengo dati PDF
-- isbn 9788805074761 invariato

-- SCIENZE 1
UPDATE catalogo_libri SET
  titolo  = 'Esperienza STEAM. Imparare le Scienze con metodo. Per la Scuola media. Con e-book. Con espansione online. Vol. 1',
  autore  = 'Stefano Zanoli',
  editore = 'Mondadori Scuola',
  prezzo  = 16.60
WHERE isbn = '9791220412667';

-- SCIENZE 2
UPDATE catalogo_libri SET
  titolo  = 'Esperienza STEAM. Imparare le Scienze con metodo. Per la Scuola media. Con e-book. Con espansione online. Vol. 2',
  autore  = 'Stefano Zanoli',
  editore = 'Mondadori Scuola',
  prezzo  = 18.30
WHERE isbn = '9791220412704';

-- SCIENZE 3
UPDATE catalogo_libri SET
  titolo  = 'Discovery. Le scienze in classe. Per la Scuola media. Con e-book. Con espansione online. Vol. 3',
  autore  = 'Lea Alfieri, Giulio Moretti',
  editore = 'Edizioni Scolastiche Bruno Mondadori',
  prezzo  = 19.90
WHERE isbn = '9788869108815';

-- SCIENZE MOTORIE
UPDATE catalogo_libri SET
  titolo  = 'Vivo sport. Per la Scuola media. Con e-book. Con espansione online',
  autore  = 'Antonio Rovida',
  editore = 'Fabbri',
  prezzo  = 17.20
WHERE isbn = '9788891558343';

-- SPAGNOLO
UPDATE catalogo_libri SET
  titolo  = '¡Qué alegría! ...siempre con ¡Mi banda! Edición compacta. Con Aprende, Gramma-vacanze. Con e-book. Con espansione online',
  autore  = 'Nello Fanciullo, Sonia Campos Cabrero, Ana Irene García Pérez',
  editore = 'Lang',
  prezzo  = 35.60
WHERE isbn = '9788861619951';

-- STORIA 1
UPDATE catalogo_libri SET
  titolo  = 'Storia per domani. Con Educazione civica, Il mio libro per mappe. Per la Scuola media. Con e-book. Con espansione online. Vol. 1: Dalla caduta dell''Impero romano al Rinascimento',
  autore  = 'E. Pasqua, I. D''Intino, I. Scarpati',
  editore = 'Lattes',
  prezzo  = 28.00
WHERE isbn = '9788869176418';

-- STORIA 2
UPDATE catalogo_libri SET
  titolo  = 'Storia per domani. Con Il mio libro per mappe. Per la Scuola media. Con e-book. Con espansione online. Vol. 2: Dalla scoperta dell''America alla fine dell''Ottocento',
  autore  = 'E. Pasqua, I. D''Intino, I. Scarpati',
  editore = 'Lattes',
  prezzo  = 21.25
WHERE isbn = '9788869176425';

-- STORIA 3
UPDATE catalogo_libri SET
  titolo  = 'Storia per domani. Con Esame di stato, Il mio libro per mappe. Per la Scuola media. Con e-book. Con espansione online. Vol. 3: Il Novecento',
  autore  = 'E. Pasqua, I. D''Intino, I. Scarpati',
  editore = 'Lattes',
  prezzo  = 25.30
WHERE isbn = '9788869176432';

-- TECNOLOGIA
UPDATE catalogo_libri SET
  titolo  = 'Progettare il futuro. Con Tecnologia, ambiente e cittadinanza, Percorso agile per il ripasso e il recupero e Disegno. Con e-book. Con espansione online',
  autore  = 'Antonio Conti',
  editore = 'Minerva Scuola',
  prezzo  = 30.40
WHERE isbn = '9788829861606';
