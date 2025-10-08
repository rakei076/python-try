#python3 -m pip install Flask
from flask import Flask,render_template
from random import randint
app=Flask(__name__)


hero=[
    '阿米娅',
    '能天使',
    '夜莺',
    '星熊',
    '塞雷娅',
    '史尔特尔',
    '赫默',
    '伊芙利特',
    '斯卡蒂',
    '澄闪',
    '铃兰',
    '陈',
    '蓝毒',
    '白面鸮',
    '推进之王',
    '风笛'
]
#定义路由
@app.route('/index')
#定义视图函数
def index():
    return render_template('index.html',hero=hero)
@app.route('/choujiang')
def choujiang():
    num = randint(0,len(hero)-1)
    return render_template('index.html',hero=hero,h = hero[num])
app.run(debug=True)