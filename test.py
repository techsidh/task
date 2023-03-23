import requests 

import json
url = "http://localhost:8000/"
payload = {"name":"siddhi"}


respons = requests.post(url,data = json.dumps(payload),headers = {'Content-Type': 'application/json'})
print(respons.status_code)
print(respons.json())
