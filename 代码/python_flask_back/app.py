from flask import Flask
import config
from exts import db, mail

from blueprints.user import bp as user_bp
from blueprints.Auth import bp as Auth_bp
from flask_migrate import Migrate
from flask_cors import CORS

app = Flask(__name__)
# r'/*' 是通配符，让本服务器所有的 URL 都允许跨域请求
CORS(app, resources=r'/*')
# 解决中文乱码
app.config['JSON_AS_ASCII'] = False
app.config['SECRET_KEY'] = 'I LIKE U'
app.config.from_object(config)
db.init_app(app)
mail.init_app(app)
Migrate = Migrate(app, db)
app.register_blueprint(user_bp)
app.register_blueprint(Auth_bp)

if __name__ == '__main__':
    app.run()
