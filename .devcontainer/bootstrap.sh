#!/usr/bin/env bash
set -e

# If no package.json yet, scaffold a fresh Next.js app into the repo root.
if [ ! -f "package.json" ]; then
  echo "Bootstrapping Next.js app..."
  npx --yes create-next-app@latest . --ts --eslint --use-npm
else
  echo "package.json found; installing deps..."
  npm install
fi

echo "Done. Start the dev server with: npm run dev"
