# Flask MVC CRUD

## 📌 Como Rodar o Projeto

Seu projeto agora está configurado para ser rodado primariamente com Docker, a forma mais eficiente e recomendada para ambientes de produção.

### Rodar com Docker  

### A aplicação está conteinerizada com os seguintes arquivos:

- **Dockerfile** 🐳: Define o ambiente Python e instala todas as dependências.


1.  **Pré-requisito:** Certifique-se de ter o Docker Desktop instalado e rodando.

2.  **Construa a imagem:**
    ```bash
    docker build -t ap1_api:latest .
    ```
3.  **Inicie o container:**
    ```bash
    docker run -d -p 5000:5000 --name ap1_api -v escola-ap1:/app/data ap1_api:latest
    ```

### Rodar Localmente (Desenvolvimento)

Use esta opção apenas para depuração ou desenvolvimento rápido.

1.  **Clone o repositório e ative seu ambiente virtual (`venv`).**

    ```bash
    python -m venv venv
    .\venv\Scripts\activate
    ```

2.  **Instale as dependências:**
    ```bash
    pip install -r requirements.txt
    ```

3.  **Rode o projeto:**
    ```bash
    python run.py
    ```

---

## 💻 Acessando a API

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

### Colaboradores:

- Alex Manoel - 1701381
- Ana Laura Brandão - 2402680
- Gustavo Bomfim - 2403139