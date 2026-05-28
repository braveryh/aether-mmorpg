# Aether Realms MMORPG

Protótipo MMORPG 2D/3D fake com HTML Canvas + servidor Python FastAPI WebSocket + módulo C nativo.

## Rodar local

```bash
pip install -r requirements.txt
bash build_native.sh
python -m uvicorn server.main:app --host 0.0.0.0 --port 8000
```

Abra: http://localhost:8000

## Subir no GitHub

```bash
git init
git add .
git commit -m "primeira versao mmorpg"
git branch -M main
git remote add origin https://github.com/SEU_USUARIO/aether-mmorpg.git
git push -u origin main
```

## Publicar no Render

1. Crie um repositório no GitHub e envie estes arquivos.
2. No Render: New + > Web Service.
3. Conecte o GitHub.
4. Runtime: Docker.
5. Deploy.

O Dockerfile já compila o módulo C e inicia o servidor.

## Controles

- WASD ou setas: mover
- Clique no mapa: atacar mob próximo
- Enter: enviar chat

