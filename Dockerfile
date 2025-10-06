FROM python:3.10-slim

WORKDIR /usr/src/app

# Instala dependências do sistema operacional
RUN apt-get update && apt-get install -y \
    gcc \
    # Dependência de SQLite
    sqlite3 \
    && rm -rf /var/lib/apt/lists/*

# Copia o arquivo de requisitos e instala as dependências do Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo o código da sua aplicação para o container
COPY . .

EXPOSE 5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "run:app()"]