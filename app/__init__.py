from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flasgger import Swagger
from .config import Config

db = SQLAlchemy()

def create_app():
    app = Flask(__name__)
    app.config.from_object(Config)

    # Inicializa extensões
    db.init_app(app)
    Swagger(app)

    # Importa rotas
    from .routes.route_alunos import registra_alunos

    from .routes.route_professores import registra_professores

    from .routes.route_turmas import registra_turmas

    registra_alunos(app)
    registra_professores(app)
    registra_turmas(app)

    return app
