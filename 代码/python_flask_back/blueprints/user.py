from flask import Blueprint, jsonify, request

from entity import r
from exts import db
from models import PositionModel

bp = Blueprint("user", __name__, url_prefix="/api")


# 查询所有
@bp.route("/user", methods=['GET'])
def index():
    # userList: List[PositionModel] = PositionModel.query.all()
    # return r(code=200, msg='用户查询成功', data=model_list_to_dict(userList))
    result = PositionModel.query.all()
    payload = []
    for i in result:
        payload.append(i.dict())
    return jsonify(payload)


# 删除
@bp.route("/delete/<int:del_id>")
def delete(del_id):
    """删除数据"""
    # 方式1: 先查后删除
    Position = PositionModel.query.filter_by(id=del_id).first()
    # 删除数据
    db.session.delete(Position)
    # 提交会话 增删改都要提交会话
    db.session.commit()
    return r(code=200, msg='删除成功')


# 增加
@bp.route("/add", methods=["POST"])
def add_user():
    msg = "添加成功！"
    print(request.json)
    if "positionName" in request.json and "address" in request.json and "publishtime" in request.json and "money" in \
            request.json and "education" in request.json and "posturl" in request.json and "jobNature" in request.json:
        new_user = PositionModel()
        new_user.positionName = request.json["positionName"]
        new_user.address = request.json["address"]
        new_user.publishtime = request.json["publishtime"]
        new_user.money = request.json["money"]
        new_user.education = request.json["education"]
        new_user.posturl = request.json["posturl"]
        new_user.jobNature = request.json["jobNature"]
        db.session.add(new_user)
        db.session.commit()
    else:
        msg = "添加失败！缺少参数"
    return r(code=201, msg=msg)


# 改
@bp.route("/update", methods=["POST"])
def update_user():
    msg = "修改成功！"
    print(request.json)
    if "positionName" in request.json and "address" in request.json and "publishtime" in request.json and "money" in \
            request.json and "education" in request.json and "posturl" in request.json and "jobNature" in request.json:
        update_id = request.json["id"]
        update_user = PositionModel.query.get(update_id)
        update_user.positionName = request.json["positionName"]
        update_user.address = request.json["address"]
        update_user.publishtime = request.json["publishtime"]
        update_user.money = request.json["money"]
        update_user.education = request.json["education"]
        update_user.posturl = request.json["posturl"]
        update_user.jobNature = request.json["jobNature"]
        db.session.commit()
    else:
        msg = "修改失败！"
    return r(code=201, msg=msg)
