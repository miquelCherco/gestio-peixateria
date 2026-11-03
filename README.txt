GESTIÓ PEIXATERIA v5 - IndexedDB + PWA (primera fase)

Què incorpora:
- IndexedDB com a emmagatzematge local principal.
- Migració automàtica: si hi ha dades anteriors a localStorage (fish_v2_fallback), les copia a IndexedDB la primera vegada.
- Es manté localStorage com a còpia de compatibilitat temporal.
- Es manté l'exportació i importació de còpies JSON.
- Manifest PWA, icones i service worker per poder instal·lar l'aplicació i obrir-la offline.
- Sol·licitud d'emmagatzematge persistent al navegador quan aquest ho permet.

IMPORTANT:
1. Aquesta versió encara NO sincronitza PC i iPhone entre ells. Cada dispositiu té la seva base de dades local.
2. Per instal·lar-la com a PWA a iPhone i disposar de service worker/offline, s'ha de publicar en un allotjament HTTPS. Obrir el fitxer HTML directament des de Fitxers no activa el service worker.
3. A iPhone: obrir l'adreça publicada amb Safari > Compartir > Afegir a la pantalla d'inici.
4. Abans de provar la migració, exportar una còpia JSON de les dades actuals.
5. Supabase i la sincronització bidireccional són una fase posterior; no s'han configurat credencials ni servidor.

Fitxers:
- gestio_peixateria_v5.html
- manifest.webmanifest
- sw.js
- icon-192.png
- icon-512.png
