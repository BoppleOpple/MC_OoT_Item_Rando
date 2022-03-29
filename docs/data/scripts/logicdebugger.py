import json
from sys import argv

OPERATIONS = {"", "AND", "OR", "NOT"}

def filterSet(inpSet, fn = lambda n: n == None):
  result = set()
  for element in inpSet:
    if fn(element):
      result.add(element)
  return result

path = "" if len(argv) <= 1 else str(argv[1])
macroPath = "" if len(argv) <= 2 else str(argv[2])

conditions = set()

if (path == ""):
  exit()
else:
  with open(path, 'r') as logicSheet:
    logic = json.load(logicSheet)
    for region in logic:
      for check in logic[region]:
        if (type(check) == str):
          continue
        conditions.update(set(check["requirements"].replace('(', ' ').replace(')', ' ').split(' ')))
    conditions.difference_update(OPERATIONS)

    if (macroPath != ""):
      with open(macroPath, 'r') as logicMacros:
        logicSheet = json.load(logicMacros)
        for macro in logicSheet:
          conditions.update(set(macro["requirements"].replace('(', ' ').replace(')', ' ').split(' ')))
        
        conditions.difference_update(OPERATIONS)

        references = set()

        for macro in logicSheet:
          references.add(macro["key"])

        references = filterSet(references, lambda ref: not (ref.startswith("Setting") or ref.startswith("Has") or ref.startswith("State")))
        conditions = filterSet(conditions, lambda ref: not (ref.startswith("Setting") or ref.startswith("Has") or ref.startswith("State")))

        print("Missing:", conditions.difference(references))
        print("Unused:", references.difference(conditions))
