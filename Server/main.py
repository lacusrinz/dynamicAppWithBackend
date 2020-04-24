#!/usr/bin/env python
# -*- coding: utf-8 -*-
# by vellhe 2017/7/9

from flask import Flask
import json

app = Flask(__name__)


@app.route('/hello')
def hello_world():
    return "Hello World!"

@app.route('/setting')
def setting():
    with open('data.json','r') as f:
        data = json.load(f)
        return data
        
if __name__ == "__main__":
    app.run(debug=True)