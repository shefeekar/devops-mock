# app.py
from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    version = os.getenv('APP_VERSION', '1.0.0')
    return f"<h1>Metasoft DevOps Test</h1><p>Status: Online</p><p>Version: {version}</p>"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
