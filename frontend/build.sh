#!/bin/sh

set -e # stop if any command fails

echo "📦 Installing dependencies..."
npm install

echo "🏗️ Building React app..."
npm run build

echo "✅ Build completed successfully"
