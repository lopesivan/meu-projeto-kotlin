.PHONY: help build run clean install

help:
	@echo "${PWD} - Comandos disponíveis:"
	@echo "  make build    - Compila o projeto"
	@echo "  make run      - Executa a aplicação"
	@echo "  make clean    - Limpa arquivos compilados"
	@echo "  make all      - Instala, compila e executa"

build:
	@echo "🔧  Compilando..."
	./gradlew build

run:
	@echo "🚀 Executando..."
	./gradlew run

clean:
	@echo "🧹 Limpando..."
	./gradlew clean

all: build run
