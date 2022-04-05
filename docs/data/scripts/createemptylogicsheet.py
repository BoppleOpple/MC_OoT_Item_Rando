import json
from sys import argv


update = False if len(argv) <= 1 else bool(str(argv[1]))

with open("referencespoilerlog.json") as spoiler:
  if (not update):
    logicSheet = json.load(spoiler)
    for region in logicSheet:
      for check in logicSheet[region]:
        check["requirements"] = ""
      logicSheet[region].append("")
  else:
    # broken
    with open("logicsheet.json", 'r') as oldLogic:
      oldLogicSheet = json.load(oldLogic)
      logicSheet = json.load(spoiler)
      for region in logicSheet:
        for check in logicSheet[region]:
          sel = list(filter(lambda n: False if type(n) == type("") else (n["coords"] == check["coords"]), oldLogicSheet[region]))[0]
          print(sel)
          check["requirements"] = sel["requirements"]
        logicSheet[region].append("")

with open("logicsheet.json", 'w') as JSONFile:
  JSONFile.write(json.dumps(logicSheet))