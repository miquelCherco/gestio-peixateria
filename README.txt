GESTIÓ PEIXATERIA v6 - CORRECCIÓ DEL DESAMENT

Fitxers:
- index.html: aplicació principal.
- manifest.webmanifest: configuració PWA.
- sw.js: memòria cau per obrir l'aplicació sense connexió després de la primera càrrega.
- icon-192.png i icon-512.png: icones.

Canvis d'aquesta correcció:
- «Desar ara» desa i verifica les dades a IndexedDB; ja no obre l'explorador de fitxers.
- El desament automàtic desa a IndexedDB.
- L'explorador de fitxers només s'utilitza en importar JSON; l'exportació genera una descàrrega JSON.

Per actualitzar GitHub Pages, puja i substitueix index.html, manifest.webmanifest, sw.js i les icones a l'arrel del repositori. Després espera que GitHub Pages acabi el desplegament. Si l'aplicació ja estava instal·lada, tanca-la completament i torna-la a obrir per carregar la versió nova.

IMPORTANT: Les dades continuen sent locals a cada dispositiu. Aquesta versió encara no sincronitza PC i iPhone. Exporta periòdicament còpies JSON i prova primer amb dades fictícies.
