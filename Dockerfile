FROM python:3.10-slim

WORKDIR /app

# Copia o arquivo de requisitos e instala as dependências do Python
COPY requirements.txt .


RUN pip install --no-cache-dir -r requirements.txt

# Copia todo o código da sua aplicação para o container
COPY . .

EXPOSE 5000

# CMD ["gunicorn", "--bind", "0.0.0.0:5000", "run:app()"]
CMD ["python", "run.py"]