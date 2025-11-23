#!/bin/bash
echo "👀 Observando mudanças..."
find app/src -name "*.kt" | entr -r ./gradlew run
