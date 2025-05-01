import os
import random
import sys
from xml.dom import minidom

file = sys.argv[1]
dirname = os.path.dirname(file)
random.seed(42)
routeFile = minidom.parse(file)

routes = routeFile.getElementsByTagName("routes")[0]
vehicles = routes.getElementsByTagName("vehicle")

for vehicle in vehicles:
    if random.choice([True, False]):
        vehicle.setAttribute("type", "electric")

count = 0
for vehicle in vehicles:
    if vehicle.getAttribute("type") == "electric":
        count += 1

print(f"there are {count} electric routes on {len(vehicles)} vehicles")

open(f"{dirname}/electricRoutes.xml", "w").write(routes.toxml())