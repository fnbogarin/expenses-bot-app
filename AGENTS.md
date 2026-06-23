# Expense Bot Workspace Guide

This is a local coordination workspace for the Expense Bot projects. The child
projects are independent repositories and should stay portable on their own.

## Projects

- `backend-node-expenses/`: Node.js, TypeScript, Express, Telegraf, MongoDB
  backend and Telegram bot.
  - Agent guide: `backend-node-expenses/AGENT.md`
  - Baseline verification: `npm run build`
- `web-react-expenses/`: React + Vite frontend dashboard.
  - Agent guide: `web-react-expenses/AGENTS.md`
  - Baseline verification: `npm run build`
- `backups/`: local MongoDB backup exports. Treat this directory as sensitive.

## Workspace Rules

- Do not treat this root folder as the source repository for either app.
- Make code changes inside the relevant child project.
- Read the child project's agent guide before changing that project.
- For cross-app or E2E work, read both child agent guides before editing.
- Keep backend and frontend portable as independent projects.
- Do not move shared code between projects unless explicitly requested.
- Do not inspect, summarize, modify, or commit `backups/` unless explicitly
  requested.
- Do not commit or copy real Telegram tokens, Telegram user ids, MongoDB URIs,
  production credentials, or backup data into docs, examples, logs, or code.

## Cross-App Feature Flow

1. Read `backend-node-expenses/AGENT.md`.
2. Read `web-react-expenses/AGENTS.md`.
3. Identify the API contract change first.
4. Update backend routes, services, types, and validation.
5. Update frontend API client, types, hooks, and UI.
6. Run the backend verification command.
7. Run the frontend verification command.
8. Report both verification results.

## Local Ports And Paths

- Backend API: `http://localhost:3000`
- API namespace: `/v1`
- Frontend dev server: `http://localhost:5173`
- Frontend production path: `/web/`

## Git

Each child project has its own Git repository. This workspace root intentionally
does not have its own Git repository unless the user explicitly creates a
meta-repository later.
