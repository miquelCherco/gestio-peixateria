GESTIO PEIXATERIA - VERSIO 6.7 (LOGIN + SINCRONITZACIO INICIAL)

NOVETATS
- Login amb correu i contrasenya de Supabase Auth.
- Conserva IndexedDB i permet continuar treballant offline un cop iniciada la sessio en aquell dispositiu.
- Primera sincronitzacio: si no hi ha dades al nuvol, puja les dades locals.
- Si detecta dades diferents als dos llocs, pregunta quina copia conservar. Si es tria el nuvol, descarrega abans una copia JSON local.
- Sincronitza els canvis locals al nuvol quan hi ha connexio.
- Taula privada per usuari amb RLS.

CONFIGURACIO OBLIGATORIA ABANS D'UTILITZAR
1. A Supabase, comprova que Authentication > Users conte el teu usuari i que coneixes la seva contrasenya.
2. Obre SQL Editor i executa el fitxer supabase-setup.sql.
3. Publica tots els fitxers d'aquesta carpeta al repositori GitHub Pages, substituint els anteriors.
4. Obre la web amb Internet i inicia sessio amb el correu/contrasenya creats a Supabase.
5. En el primer dispositiu, si la taula del nuvol esta buida, es pujaran les dades locals. Despres inicia sessio al segon dispositiu.

IMPORTANT / LIMITACIONS D'AQUESTA PRIMERA VERSIO
- La clau sb_publishable es publica per disseny; no hi ha cap clau service_role al navegador. La seguretat depen de les politiques RLS del SQL.
- La sincronitzacio desa un snapshot complet en una fila per usuari. No es una sincronitzacio camp-a-camp ni un motor de resolucio de conflictes multiusuari. Evita editar simultaniament des de dos dispositius.
- Si treballes offline, els canvis es queden a IndexedDB. En recuperar connexio s'intenta pujar el snapshot local.
- La primera autenticacio de cada dispositiu necessita Internet. Un dispositiu que no hagi iniciat sessio abans no pot autenticar-se offline.
- Fes sempre una copia JSON abans de publicar i abans de la primera sincronitzacio.
- Cal provar login, RLS i sincronitzacio real en Supabase abans de confiar-hi per a l'operativa diaria.
- La sincronitzacio no substitueix una copia de seguretat externa.

INFORME GESTORIA
Es manté el format de l'informe Llistat d'I.V.A. d'arqueigs de la versio 6.6.


VERSIÓ 6.8 - SINCRONITZACIÓ
- Els desaments que utilitzen saveNow() ara programen la pujada automàtica al núvol (retard aproximat de 2 segons).
- S’afegeix el botó «Sincronitzar ara» per forçar la comprovació/sincronització manual.
- Si hi ha dades diferents entre el dispositiu i el núvol, es manté el diàleg de decisió i la còpia de seguretat abans de substituir dades locals.
