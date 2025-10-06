# Flask MVC CRUD

## 📌 Como Rodar o Projeto

Seu projeto agora está configurado para ser rodado primariamente com Docker, a forma mais eficiente e recomendada para ambientes de produção.

### Opção 1: Rodar com Docker (Recomendado)

Esta é a maneira mais simples, que usa o servidor de produção **Gunicorn** e garante que seu banco de dados (SQLite) seja persistente usando Volumes.

1.  **Pré-requisito:** Certifique-se de ter o Docker Desktop instalado e rodando.
2.  **Construa a imagem:**
    ```bash
    docker-compose build
    ```
3.  **Inicie os serviços em segundo plano:**
    ```bash
    docker-compose up -d
    ```

### Opção 2: Rodar Localmente (Desenvolvimento)

Use esta opção apenas para depuração ou desenvolvimento rápido.

1.  Clone o repositório e ative seu ambiente virtual (`venv`).
2.  Instale as dependências:
    ```bash
    pip install -r requirements.txt
    ```
3.  **Rode o projeto com Gunicorn:**
    ```bash
    gunicorn --bind 127.0.0.1:5000 run:app
    ```

---

## 💻 Acessando a API

Após iniciar o projeto (com Docker ou localmente):

- **API Base:** `http://127.0.0.1:5000/`
- **Documentação Interativa (Swagger UI):** `http://127.0.0.1:5000/apidocs`

---

## 📂 Arquitetura (MVC)

O projeto segue o padrão Model-View-Controller (MVC) para organização:

- **Models** → Definição das tabelas no banco de dados (SQLAlchemy). Contém lógica de dados, como a propriedade calculada `media_final`.
- **Controllers** → Lógica de negócio e operações CRUD. Responsável por garantir a integridade dos dados e realizar as operações no banco.
- **Routes** → Endpoints da API, responsáveis por receber as requisições HTTP e chamar o Controller.
- **Config** → Arquivo de configurações.
- **run.py** → Ponto de entrada da aplicação, onde a instância `app` é criada e exposta para o servidor Gunicorn.

---

## 🐳 Detalhes da Contêinerização

A aplicação está conteinerizada com os seguintes arquivos:

- **`Dockerfile`**: Define o ambiente Python e instala todas as dependências, incluindo o servidor **Gunicorn**.
- **`docker-compose.yml`**: Orquestra o serviço `api`, garantindo que o banco de dados (SQLite) persista os dados através do Volume Docker `api_data`. O comando de inicialização usa `gunicorn run:app`.