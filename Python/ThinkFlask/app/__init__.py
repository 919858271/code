
# !/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:      jianwen
# Email:       npujianwenxu@163.com
# app

from werkzeug.utils import import_string
from flask import Flask
from app.urls import blueprints
from app import config
from app.models import db
import home
import admin

class App():
    def __init__(self):
        self.app = Flask(__name__)
        self.app.config.from_object(config)
        self.db = db
        self.create_blueprints(blueprints)
        self.db.init_app(self.app)

    def create_blueprints(self, blueprints):
        for bp in blueprints:
            self.app.register_blueprint(
                import_string(bp['url']), url_prefix=bp['url_prefix'])