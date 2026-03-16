#!/usr/bin/env bash
set -euo pipefail

cleanup() {
  if [[ -n "${WATCH_PID:-}" ]]; then
    kill "$WATCH_PID" 2>/dev/null || true
  fi
}

trap cleanup EXIT INT TERM

echo "Building JS bundle..."
npm run build:js

echo "Watching JS changes..."
npm run watch:js &
WATCH_PID=$!

echo "Starting local site at http://localhost:4000 ..."
docker compose up --build "$@"
