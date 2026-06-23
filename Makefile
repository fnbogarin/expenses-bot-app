BACKEND_DIR := backend-node-expenses
FRONTEND_DIR := web-react-expenses

.PHONY: install install-backend install-frontend build build-backend build-frontend \
	dev-backend dev-frontend docker-build-backend docker-build-frontend \
	compose-build compose-build-backend compose-build-frontend up down restart deploy \
	logs logs-backend logs-frontend ps

install: install-backend install-frontend

install-backend:
	npm --prefix $(BACKEND_DIR) ci

install-frontend:
	npm --prefix $(FRONTEND_DIR) ci

build: build-backend build-frontend

build-backend:
	npm --prefix $(BACKEND_DIR) run build

build-frontend:
	npm --prefix $(FRONTEND_DIR) run build

dev-backend:
	npm --prefix $(BACKEND_DIR) run dev

dev-frontend:
	npm --prefix $(FRONTEND_DIR) run dev

docker-build-backend:
	npm --prefix $(BACKEND_DIR) run docker:build

docker-build-frontend:
	npm --prefix $(FRONTEND_DIR) run docker:build

compose-build:
	docker compose build

compose-build-backend:
	docker compose build app

compose-build-frontend:
	docker compose build web

up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

deploy: compose-build
	docker compose up -d --remove-orphans

logs:
	docker compose logs -f

logs-backend:
	docker compose logs -f app

logs-frontend:
	docker compose logs -f web

ps:
	docker compose ps
