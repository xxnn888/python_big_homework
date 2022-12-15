import pymysql  # 缺少pymysql时，在终端输入“pip install pymysql”来安装。


# 自定义函数CSV_SQL()
def CSV_SQL():
    sql_conn = pymysql.connect(host='127.0.0.1', port=3306, user='root',
                               password='admin123', db='flask_web', charset='utf8', connect_timeout=1000)
    # 创建数据库对象
    cursor = sql_conn.cursor()
    with open('C:\PycharmProjects\pythonProject\web\spider\拉勾网.csv', encoding='utf-8') as line_1:
        # 依次读取CSV文件的每一行
        for line_2 in line_1.readlines():
            # strip() 方法用于移除字符串头尾指定的字符（默认为空格或换行符）或字符序列“
            line_2 = line_2.strip()
            # split() 通过指定分隔符对字符串进行切片，这里指定','，而“-1”表示分隔所有
            list_1 = line_2.split(',', -1)
            # 执行插入表数据语句
            sql_3 = 'INSERT INTO csv_position_py (positionName, address, publishtime, money, education, ' \
                    'posturl,jobNature) value (%s, %s, %s, %s, %s, %s, %s) '
            cursor.execute(sql_3,
                           (list_1[0], list_1[1], list_1[2], list_1[3], list_1[4], list_1[5], list_1[6]))
    sql_conn.commit()  # 提交事务
    sql_conn.close()  # 关闭连接
    print('写入数据库成功')
