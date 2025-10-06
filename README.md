# Flask MVC CRUD

## 📌 Como rodar o projeto

1. Clone o repositório:
   ```bash
   git clone <url-do-repo>
   cd flask-mvc-crud
   ```

2. Crie e ative o ambiente virtual:
   ```bash
   python -m venv venv
   source venv/bin/activate  # Linux/Mac
   venv\Scripts\activate     # Windows
   ```

3. Instale as dependências:
   ```bash
   pip install -r requirements.txt
   ```

4. Rode o projeto:
   ```bash
   python run.py
   ```

5. Acesse no navegador:
   - API → [http://localhost:5000/professores](http://localhost:5000/professores)
   - Swagger → [http://localhost:5000/apidocs](http://localhost:5000/apidocs)

---

## 📂 Arquitetura (MVC)

- **Models** → Definição das tabelas no banco (SQLAlchemy).  
- **Controllers** → Regras de negócio (CRUD).  
- **Routes** → Endpoints da API.  
- **Config** → Configurações (ex: banco).  
- **run.py** → Ponto de entrada da aplicação.  

---

## 🐳 Docker (futuro)

Será adicionado `Dockerfile` e `docker-compose.yml` para rodar a aplicação conteinerizada.
