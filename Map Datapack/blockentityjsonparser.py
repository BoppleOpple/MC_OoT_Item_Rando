import json
bounds = []
usedBlockEntities = []


with open("areaboundaries.txt", 'r') as boundsString:
  bounds = boundsString.readlines()
  for i in range(len(bounds)):
    if bounds[i][0] == '#': continue
    bounds[i] = bounds[i].split(' ')
    if len(bounds[i]) < 23: continue
    bounds[i] = {
      "p1": [int(float(bounds[i][6])),  int(float(bounds[i][7])),  int(float(bounds[i][8]))],
      "p2": [int(float(bounds[i][17])), int(float(bounds[i][18])), int(float(bounds[i][19]))],
      "region": bounds[i][22][slice(0,-1)]
    }
removeArr = []
for elmt in bounds:
  if type(elmt) != type({}):
    removeArr.append(elmt)

for elmt in removeArr:
  bounds.remove(elmt)


with open("blockentitiesraw.json", 'r') as rawBEData:
  for blockEntity in json.load(rawBEData):
    used = False
    for area in bounds:
      if (blockEntity['x'] in range(min(area['p1'][0], area['p2'][0]), max(area['p1'][0], area['p2'][0]))):
        if (blockEntity['y'] in range(min(area['p1'][1], area['p2'][1]), max(area['p1'][1], area['p2'][1]))):
          if (blockEntity['z'] in range(min(area['p1'][2], area['p2'][2]), max(area['p1'][2], area['p2'][2]))):
            blockEntity["region"] = area["region"]
            usedBlockEntities.append(blockEntity)
            used = True
            break
    if (used): continue
    print("Unused " + blockEntity['id'] + " at " + str(blockEntity['x']) + ' ' + str(blockEntity['y']) + ' ' + str(blockEntity['z']))

with open("blockentitiespruned.json", 'w') as JSONFile:
  JSONFile.write(json.dumps(usedBlockEntities))