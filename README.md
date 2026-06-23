# Expense Bot Workspace

This folder is a local workspace for the Expense Bot application. It groups the
backend, frontend, and local backups so cross-app work can be done from one
place, while each app remains its own independent Git repository.

## Contents

- `backend-node-expenses/`: Telegram bot, Express API, MongoDB integration, and
  maintenance scripts.
- `web-react-expenses/`: React + Vite dashboard for viewing and editing
  expenses.
- `backups/`: local MongoDB backup exports. Treat these files as sensitive.
- `docker-compose.yml`: local stack for the backend, frontend, and MongoDB.
- `AGENTS.md`: root instructions for agents working across projects.

## Common Commands

Run commands from the project they belong to.

Backend:

```sh
cd backend-node-expenses
npm run build
npm run dev
```

Frontend:

```sh
cd web-react-expenses
npm run build
npm run dev
```

## Local URLs

- Backend API: `http://localhost:3000`
- API namespace: `/v1`
- Frontend dev server: `http://localhost:5173`
- Frontend production path: `/web/`

## Full local stack

Create a root `.env` from `.env.example`, fill in the Telegram settings, then run:

```sh
docker compose up --build
```

The backend backup command writes exports to this workspace's `backups/` directory by default.

## Notes

- The root folder is not intended to be a Git repository.
- Keep each child project self-contained.
- Keep secrets and backups out of documentation and source control.
- For cross-app work, start with `AGENTS.md`.
