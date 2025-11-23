#!/usr/bin/env bash

PROJECT_NAME="${1:-myapp}"

echo "🚀 Criando projeto Kotlin: $PROJECT_NAME"

# Criar diretório
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME"

# Inicializar com gradle (modo não-interativo onde possível)
gradle init \
    --type kotlin-application \
    --dsl kotlin \
    --test-framework kotlintest \
    --package com.exemplo \
    --project-name "$PROJECT_NAME" \
    --no-split-project \
    --java-version 17

tree -L 3 -I 'gradle|build' 2>/dev/null ||
    find . -type f -not -path '*/gradle/*' -not -path '*/build/*' |
    head -20

echo "✓ Projeto criado!"

pkill java

exit 0
