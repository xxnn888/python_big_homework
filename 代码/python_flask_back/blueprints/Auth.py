import random
import string
from typing import List

from flask import Blueprint, request, session, jsonify
import re
from flask_mail import Message
from werkzeug.security import generate_password_hash
from .forms import RegisterForm

from blueprints.forms import RegisterForm
from exts import db, mail
from models import UserModel, EmailCaptchaModel
from utils import model_list_to_dict  # 自定义的 utils 工具包
from entity import r

bp = Blueprint("Auth", __name__, url_prefix="/auth")

"""----------------------------------------
                API: 查询所有用户
-------------------------------------------"""


@bp.route('/user', methods=['GET'])
def user_find_all():
    userList: List[UserModel] = UserModel.query.all()
    return r(code=200, msg='用户查询成功', data=model_list_to_dict(userList))


@bp.route('/captcha', methods=["POST"])
def get_email_captcha():
    # /captcha/email/<email>
    # /captcha/email?email=xxx@qq.com
    # email = request.args.get("email")
    # email = request.args.get("email")
    email = request.values.get('email')
    print(email)
    # 4/6：随机数组、字母、数组和字母的组合
    source = string.digits * 4
    captcha = random.sample(source, 4)
    captcha = "".join(captcha)
    # I/O：Input/Output
    message = Message(subject="拉勾网注册验证码", recipients=[email], body=f"您的验证码是:{captcha}")
    mail.send(message)
    # memcached/redis
    # 用数据库表的方式存储
    email_captcha = EmailCaptchaModel(email=email, captcha=captcha)
    db.session.add(email_captcha)
    db.session.commit()
    # RESTful API
    # {code: 200/400/500, message: "", data: {}}
    return jsonify({"code": 200, "message": "", "data": None})


"""----------------------------------------
                API: 注册用户
-------------------------------------------"""


@bp.route('/register', methods=['POST'])
def user_register():
    username = request.values.get('username')
    password = request.values.get('password')
    email = request.values.get("email")
    code = request.values.get("code")
    # 2. 处理请求参数缺少
    if not all([username, password, email, code]):
        return r(code=401, msg='注册失败, 缺少请求参数', )
    # 3. 根据 user_name 字段判断用户是否注册过
    str2 = r"^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,15}$"
    if not re.match(str2, password):
        return r(code=405, msg='注册失败, 密码格式不正确', )
    str1 = r"^[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+){0,4}@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+){0,4}$"
    if not re.match(str1, email):
        return r(code=404, msg='注册失败, 邮箱格式不正确', )
    captcha_model = EmailCaptchaModel.query.filter_by(email=email, captcha=code).first()
    if not captcha_model:
        return r(code=406, msg='注册失败, 邮箱或验证码错误')
    try:
        user = UserModel.query.filter_by(username=username).first()
        if user:
            return r(code=403, msg='注册失败, 用户已存在')
    except Exception as e:
        print(e, '[Error] in [/user] [POST] when select MYSQL user where name=[] .')
        return r(code=402, msg='服务器内部出错')
    # 4. 注册用户到数据库
    user = UserModel(username=username, password=password, email=email)
    try:
        db.session.add(user)
        db.session.commit()  # 提交事务
    except Exception as e:
        db.session.rollback()  # 异常时回滚
        print(e, '[Error] in [/user] [POST] when inserting a user into MySQL.')
        return r(code=402, msg='服务器内部出错')
    print('新用户注册成功:  ', user.dict())
    db.session.delete(captcha_model)
    db.session.commit()
    return r(code=200, msg='注册成功', data=user.dict())


"""----------------------------------------
                API: 用户登录
-------------------------------------------"""


@bp.route('/login', methods=['POST'])
def user_login():
    username = request.values.get('username')
    password = request.values.get('password')
    print(username, password)
    # 2. 处理请求参数缺少
    if not all([username, password]):
        return r(code=401, msg='缺少请求参数')
    # 3. 验证账号和密码
    user = UserModel.query.filter_by(username=username, password=password).first()
    # 4. 用户不存在, 直接返回
    if not user:
        return r(code=404, msg='用户名或密码错误')
    else:
        # 5. 保存用户状态到 session
        session['user_info'] = user.dict()
        return r(msg='登录成功', data=user.dict())


@bp.route("/mail/test")
def mail_test():
    message = Message(subject="邮箱测试", recipients=["2561884482@qq.com"], body="这是一条测试邮件")
    mail.send(message)
    return "邮件发送成功！"
