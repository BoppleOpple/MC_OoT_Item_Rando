from fs import open_fs 
import json

def createJsonFrom(fs):
  JSONObject = []
  for path in fs.walk.files():
    with fs.open(path) as python_file:
      JSONObject.append({
        "path": path,
        "content": python_file.read()
      })
  return JSONObject

with open("../docs/data/OoT_data.json", 'w') as JSON:
  JSON.write(json.dumps(createJsonFrom(open_fs("./Legend Of Zelda Data/"))))