import os.path
import sys
import xml.etree.ElementTree as ET
import statistics
import csv

emissionPath = sys.argv[1]
filename = sys.argv[2]
tree = ET.parse(emissionPath)
root = tree.getroot()

# Collect data
data = []
vehicles = set()
for tripinfo in root.findall("tripinfo"):
    id = tripinfo.attrib["id"]
    depart = float(tripinfo.attrib["depart"])
    departLane = tripinfo.attrib["departLane"]
    departPos = float(tripinfo.attrib["departPos"])
    departSpeed = float(tripinfo.attrib["departSpeed"])
    departDelay = float(tripinfo.attrib["departDelay"])
    arrival = float(tripinfo.attrib["arrival"])
    arrivalLane = tripinfo.attrib["arrivalLane"]
    arrivalPos = float(tripinfo.attrib["arrivalPos"])
    arrivalSpeed = float(tripinfo.attrib["arrivalSpeed"])
    duration = float(tripinfo.attrib["duration"])
    routeLength = float(tripinfo.attrib["routeLength"])
    waitingTime = float(tripinfo.attrib["waitingTime"])
    waitingCount = int(tripinfo.attrib["waitingCount"])
    stopTime = float(tripinfo.attrib["stopTime"])
    timeLoss = float(tripinfo.attrib["timeLoss"])
    rerouteNo = int(tripinfo.attrib["rerouteNo"])
    devices = tripinfo.attrib["devices"]
    vType = tripinfo.attrib["vType"]
    speedFactor = float(tripinfo.attrib["speedFactor"])
    vehicles.add(id)
    vaporized = tripinfo.attrib["vaporized"]  # Note: This appears to be an empty string in your example
    for emissions in tripinfo.findall("emissions"):
        CO_abs = float(emissions.attrib["CO_abs"])
        CO2_abs = float(emissions.attrib["CO2_abs"])
        HC_abs = float(emissions.attrib["HC_abs"])
        PMx_abs = float(emissions.attrib["PMx_abs"])
        NOx_abs = float(emissions.attrib["NOx_abs"])
        fuel_abs = float(emissions.attrib["fuel_abs"])
        electricity_abs = float(emissions.attrib["electricity_abs"])
        entry = {
            "id": id,
            "depart": depart,
            "departLane": departLane,
            "departPos": departPos,
            "departSpeed": departSpeed,
            "departDelay": departDelay,
            "arrival": arrival,
            "arrivalLane": arrivalLane,
            "arrivalPos": arrivalPos,
            "arrivalSpeed": arrivalSpeed,
            "duration": duration,
            "routeLength": routeLength,
            "waitingTime": waitingTime,
            "waitingCount": waitingCount,
            "stopTime": stopTime,
            "timeLoss": timeLoss,
            "rerouteNo": rerouteNo,
            "devices": devices,
            "vType": vType,
            "speedFactor": speedFactor,
            "CO_abs": CO_abs,
            "CO2_abs": CO2_abs,
            "HC_abs": HC_abs,
            "PMx_abs": PMx_abs,
            "NOx_abs": NOx_abs,
            "fuel_abs": fuel_abs,
            "electricity_abs": electricity_abs
        }
        data.append(entry)

# Helper to summarize a single metric
def summarize(name, values, vehicles):
    if not values:
        return f"{name}: No data"
    valuesKg = [v * 10 ** (-6) for v in values]
    meanPerVehicle = sum(valuesKg) / len(vehicles)
    return (
        f"{name}:\n"
        f"  Total: {sum(valuesKg):.2f}Kg\n"
        f"  Mean: {sum(values) / len(values):.2f}mg\n"
        f"  MeanPerVehicle: {meanPerVehicle:.2f}Kg\n"
        f"  Max: {max(values):.2f}mg\n"
        f"  Min: {min(values):.2f}mg\n"
        f"  Std Dev: {statistics.stdev(values):.2f}mg\n"
        f"  Median: {statistics.median(values):.2f}mg\n"
        f"  Number of vehicles: {len(vehicles)}\n"
    )

# Extract lists
CO2_vals = [d["CO2_abs"] for d in data]
electricity_vals = [d["electricity_abs"] for d in data]

# Print summaries
print(summarize("CO2_abs (mg)", CO2_vals, vehicles))
# print(summarize("electricity_abs (mg)", electricity_vals, vehicles))


# Optional: write detailed raw data to CSV
basename = os.path.basename(emissionPath)
with open(f"{filename}.csv", "w", newline="") as f:
    writer = csv.DictWriter(f, fieldnames=data[0].keys())
    writer.writeheader()
    writer.writerows(data)
