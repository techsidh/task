from flask import Flask,request,jsonify
import json
app = Flask(__name__)

@app.route('/', methods = ['POST'])
def home():
   jsondata = json.loads(request.data)
   name = jsondata.get("name",None)
   return jsonify({"msg":f"hello {name}"})


