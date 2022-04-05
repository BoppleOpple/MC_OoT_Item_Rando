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
printAll = "" if len(argv) <= 3 else str(argv[3])
printContents = "" if len(argv) <= 4 else str(argv[4])

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

    if (printAll != "" and printAll != "x"):

      setToPrint = set()

      for region in logic:
        for check in logic[region]:
          if (type(check) == str):
            continue
          setToPrint.add(check[printAll])
      print(printAll+':', setToPrint, '\n')

    if (bool(printContents)):

      contents = set()

      for region in logic:
        for check in logic[region]:
          if (type(check) == str):
            continue
          if (check["contents"] == ''):
            continue
          for item in check["contents"].split(','):
            item = list(filter(('').__ne__, item.split(' ')))[-1]
            contents.add(item)
      print("Contents:", contents, '\n')

    if (macroPath != "" and macroPath != "x" ):
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

        print("Missing:", conditions.difference(references), '\n')
        print("Unused:", references.difference(conditions), '\n')
    else:
      print("Conditions", conditions, '\n')
