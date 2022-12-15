from exts import db
from datetime import datetime


class UserModel(db.Model):
    __tablename__ = "user"
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    # varchar, null=0
    username = db.Column(db.String(100), nullable=False)
    password = db.Column(db.String(100), nullable=False)
    email = db.Column(db.String(100), nullable=False, unique=True)
    Join_time = db.Column(db.DateTime, default=datetime.now)

    def dict(self):
        return {
            'id': self.id,
            'name': self.username,
            # 'password': self.password
            "email": self.email,
            "Join_time": self.Join_time
        }


class PositionModel(db.Model):
    __tablename__ = "csv_position_py"
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    positionName = db.Column(db.String(255), nullable=False)
    address = db.Column(db.String(255), nullable=False)
    publishtime = db.Column(db.String(255))
    money = db.Column(db.String(255), nullable=False)
    education = db.Column(db.String(255), nullable=False)
    posturl = db.Column(db.String(255), nullable=False)
    jobNature = db.Column(db.String(255), nullable=False)

    def dict(self):
        return {
            'id': self.id,
            'positionName': self.positionName,
            'address': self.address,
            'publishtime': self.publishtime,
            'money': self.money,
            'education': self.education,
            "posturl": self.posturl,
            "jobNature": self.jobNature
        }


class EmailCaptchaModel(db.Model):
    __tablename__ = "email_captcha"
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    email = db.Column(db.String(100), nullable=False)
    captcha = db.Column(db.String(100), nullable=False)
