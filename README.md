# ClearPlay

Cliente web de vídeos sem anúncios, sem login e sem rastreamento. Usa a API aberta do [Piped](https://github.com/TeamPiped/Piped) e funciona como site estático.

## Recursos
Em alta por região · busca com sugestões (vídeos, canais, playlists) · player com qualidade, velocidade e modo só áudio · lives (HLS) · comentários · vídeos relacionados · canais e playlists · inscrições, histórico e "Ver depois" salvos localmente · tema claro/escuro · troca de instância da API.

## Rodar
```
python3 -m http.server 8000
```
Abra http://localhost:8000. Para publicar: suba para o GitHub e ative Settings → Pages → Source: GitHub Actions.

## Limitações
- Depende de instâncias públicas do Piped, que podem cair ou limitar acesso. Troque em Ajustes.
- Resoluções acima de 720p exigem DASH com áudio separado; ainda não implementado.
- Sem login: não sincroniza inscrições nem curtidas com a conta do Google.
- Respeite os Termos de Serviço do YouTube. Uso pessoal.

Licença MIT.

## APK Android
O workflow `Build APK` (Actions) gera o APK com Capacitor a cada push. Baixe `clearplay-apk` na aba Actions, extraia o `app-debug.apk` e instale (permita "fontes desconhecidas").
Local: `npm install && npm run prep && npx cap add android && npx cap sync android && cd android && ./gradlew assembleDebug`.
