from flask import Flask
from public import public
from admin import admin
from user import user
from newsagent import newsagent

from database import*
app=Flask(__name__)

app.register_blueprint(public)
app.register_blueprint(admin,url_prefix='/admin')
app.register_blueprint(user,url_prefix='/user')
app.register_blueprint(newsagent,url_prefix='/newsagent')

app.secret_key='fakenews'
app.run(debug=True,port=5013) 