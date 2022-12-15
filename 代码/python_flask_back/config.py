# 数据库的配置信息  使用时配置为自己的
HOSTNAME = '127.0.0.1'
PORT = '3306'
DATABASE = 'flask_web'
USERNAME = 'root'
PASSWORD = 'admin123'
DB_URI = 'mysql+pymysql://{}:{}@{}:{}/{}?charset=utf8'.format(USERNAME, PASSWORD, HOSTNAME, PORT, DATABASE)
SQLALCHEMY_DATABASE_URI = DB_URI
SQLALCHEMY_TRACK_MODIFICATIONS = False

# 邮箱配置信息  使用时配置为自己的
MAIL_SERVER = "smtp.qq.com"
MAIL_USE_SSL = True
MAIL_PORT = 465
MAIL_USERNAME = "1521891733@qq.com"
MAIL_PASSWORD = "lxngxstqmmcahgif"
MAIL_DEFAULT_SENDER = "1521891733@qq.com"
