# This script should link to a file containing the JSON-ified text contents of the datapack, in this repo it is the file named "OoT_data.json"
import json, re
from sys import argv

path = "" if len(argv) <= 1 else str(argv[1])
outPath = "" if len(argv) <= 2 else str(argv[2])

with open(path, 'r') as dataJSON:
	data = json.load(dataJSON)
	files = re.findall(r"(?<=run function ocarina_of_time:).*?(?=\n)", list(filter(lambda file: file["path"]=="/data/ocarina_of_time/functions/teleports/loop.mcfunction", data))[0]["content"])
	loadingZones = []
	for funcName in files:
		with open(path, 'r') as loopFile:
			loopData = json.load(loopFile)
			print("/data/ocarina_of_time/functions/" + funcName + ".mcfunction")
			loadingZones.extend(re.findall(r"(?<=run function ocarina_of_time:).*?(?=\n)", list(filter(lambda file: file["path"]=="/data/ocarina_of_time/functions/" + funcName + ".mcfunction", data))[0]["content"]))
	print(loadingZones)