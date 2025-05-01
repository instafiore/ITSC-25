import json
import sys

pathFile = sys.argv[1]
with open(pathFile) as f:
    stats = json.load(f)["stats"]

statsDict = {}
for x in stats:
    stat = stats[x]
    for y in stat:
        stat = stat[y]
        for key in stat:
            statsDict.setdefault(key, []).append(stat[key])

for key in statsDict:
    minv = min(statsDict[key])
    maxv = max(statsDict[key])
    meanv = sum(statsDict[key]) / len(statsDict[key])
    sumv = sum(statsDict[key])
    print(f"{key}: {minv}, {maxv}, {meanv}, {sumv}")