import json

with open("referencespoilerlog.json") as spoiler:
  logicSheet = json.load(spoiler)
  for region in logicSheet:
    for check in logicSheet[region]:
      check["requirements"] = ""
    logicSheet[region].append("")

with open("logicsheet.json", 'w') as JSONFile:
  JSONFile.write(json.dumps(logicSheet))