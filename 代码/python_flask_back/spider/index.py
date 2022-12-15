# 1.导入工具库
import csv
import requests
import re

from spider.mysql import CSV_SQL

url = 'https://www.lagou.com/wn/zhaopin'
headers = {
    'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)'
                  ' Chrome/98.0.4758.82 Safari/537.36'
}
response = requests.get(url=url, headers=headers)
# print(response.text)
str = re.compile(
    '<div class="item__10RTO">.*?<a>(?P<positionName>.*?)<!-- -->(?P<address>.*?)</a><span>(?P<time>.*?)'
    '</span></div><div class="p-bom__JlNur"><span ''class="money__3Lkgq">(?P<money>.*?)</span>(?P<education>.*?)'
    '</div>.*?<a>.*?</a></div><div class="industry__1HBkr">.*?</div></div>''<div class="com-logo'
    '__1QOwC"><img src="(?P<posturl>.*?)" .*?</div><div class="il__3lk85">(?P<jobNature>.*?)</div></div>'
    '</div>', re.S)
html_data = re.findall(str, response.text)
# print(html_data)
for it in html_data:
    # print(it)
    positionName = it[0]
    address = it[1].strip("[]")
    publishtime = it[2]
    money = it[3]
    education = it[4]
    posturl = it[5]
    jobNature = it[6].strip("”“”")
    # print('正在爬取：', positionName)
    with open('拉勾网.csv', mode='a', encoding='utf-8', newline='') as csvfile:
        csvwriter = csv.writer(csvfile, delimiter=',')  # delimiter=','  csv数据的分隔符
        csvwriter.writerow(
            [positionName, address, publishtime, money, education, posturl, jobNature])  # 序列化数据，写入csv
print("爬取成功")
CSV_SQL()
