GESTIO PEIXATERIA v6.4

Canvis en factures de proveïdors i balanços:
- Les factures de proveïdors poden agrupar albarans de proveïdor i/o compres de llotja del mateix proveïdor.
- Les compres de llotja continuen registrant-se en el moment de la compra per controlar l'estoc, però NO entren al balanç econòmic fins que es vinculen a una factura de proveïdor.
- Des de la llista de compres de llotja es pot prémer Facturar per crear una factura i vincular aquella compra.
- Les compres de llotja i els albarans ja vinculats a una factura apareixen com a FACTURAT i no es poden tornar a vincular a una altra factura.
- El balanç ara compta les factures de proveïdors per la data de la factura, no les compres de llotja pel dia de compra. Això evita comptar dues vegades el mateix peix.
- La vista imprimible de la factura mostra els albarans i les compres de llotja vinculats.
- S'ha actualitzat la versió de la memòria cau PWA perquè els dispositius descarreguin la nova versió.

Actualització:
1. Fes una còpia JSON de les dades abans d'actualitzar.
2. Descomprimeix aquest ZIP.
3. Puja tots els fitxers a l'arrel del repositori GitHub i substitueix els existents.
4. Mantén index.html, manifest.webmanifest, sw.js i les icones al mateix nivell.
5. Després del desplegament, obre la web amb connexió. Si l'iPhone conserva una versió antiga, tanca la PWA i torna-la a obrir.

Notes importants:
- Les factures antigues de proveïdors es mantenen. Les compres de llotja anteriors no es consideren facturades automàticament: cal vincular-les a la factura corresponent perquè entrin al balanç.
- El balanç és orientatiu i de gestió interna. No substitueix la comptabilitat oficial ni valida per si sol el tractament fiscal; confirma el criteri amb la gestoria.
- Encara no s'hi inclou el registre de pagaments ni la sincronització Supabase.
- S'ha comprovat la sintaxi JavaScript, però no s'ha fet una prova completa en navegador amb dades reals.
