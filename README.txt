GESTIÓ PEIXATERIA v6.2

Canvis:
- Tancament diari amb primer i últim número de tiquet.
- Desglossament per IVA: exempt, 4%, 10% i 21%.
- Càlcul de quota i total segons IVA.
- Historial i exportació CSV amb dades de tiquets i IVA.
- El desament d'entitats espera la transacció IndexedDB i verifica que el registre existeixi abans de confirmar.
- Formularis d'entitats limitats al seu contenidor.

Actualització:
1. Exporta primer una còpia JSON des de la versió actual.
2. Puja tots els fitxers d'aquest ZIP a l'arrel del repositori GitHub i substitueix els existents.
3. Mantén index.html, manifest.webmanifest, sw.js i les dues icones al mateix nivell.
4. Aquesta versió encara no inclou sincronització Supabase.
5. Confirma amb la gestoria els tipus d'IVA aplicables a cada producte/operació. Els tipus mostrats són configuració inicial, no assessorament fiscal.
