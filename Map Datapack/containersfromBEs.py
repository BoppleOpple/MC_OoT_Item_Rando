import json
containers = ["universal_minecraft:chest", "universal_minecraft:barrel", "universal_minecraft:dispenser", "universal_minecraft:hopper", "universal_minecraft:dropper"]
blockEntities = []
with open("blockentitiespruned.json") as allBEsJSON:
  blockEntities = list(filter(lambda object : object["id"] in containers, json.load(allBEsJSON)))

with open("containers.json", 'w') as JSONFile:
  print(json.dumps(blockEntities))
  JSONFile.write(json.dumps(blockEntities))