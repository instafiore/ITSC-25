import json
import logging
import os
import sys

import traci

from common.Arguments import Arguments, PreProcessorType
from common.CloudLogger import CloudLogger
from preprocessors.CumulativeOccupancyHeuristic import CumulativeOccupancyHeuristicPreProcessor
from preprocessors.DensityHeuristic import DensityHeuristicPreProcessor
from preprocessors.Dijkstra import DijkstraPreProcessor
from preprocessors.Plain import PlainPreprocessor
from preprocessors.Random import RandomPreProcessor
from preprocessors.ASP import ASPPreProcessor
from common.LocalLogger import LocalLogger
# from preprocessors.MyPreProcessor import PreProcessor
from preprocessors.PreProcessor import PreProcessor
conf_path = os.getcwd()
sys.path.append(conf_path)

startingDir = os.path.dirname(os.path.abspath(__file__))
sys.path.append(startingDir)


def main():
    args = Arguments()

    args.rules = "v2.1.2"
    args.map = "acosta"
    args.HORIZON = 5000
    args.experimentSession = True
    args.emissionMapName = "emissionMapEV2"

    args.preprocessor=PreProcessorType("asp")
    args.run_name = f"{args.map}-{args.rules}-{args.emissionMapName}"
    # args.messageLog = f"emission map with electric cars, version rules {args.rules}, HORIZON {args.HORIZON}"
    args.messageLog = f" {args.run_name} , version rules {args.rules}, HORIZON {args.HORIZON}, emission map {args.emissionMapName}, preprocessor {args.preprocessor}"

    # args.inputFile = "maps/MK-sim/MK_sim.sumocfg"
    # args.networkFile = "maps/MK-sim/net.net.xml"

    logger = CloudLogger(args.experiment) if args.cloud else LocalLogger(args.experiment, args)

    logger.log(f"input file: {args.inputFile}", logging.INFO)
    logger.log(f"network file: {args.networkFile}", logging.INFO)
    logger.log(f"message: {args.messageLog}", logging.INFO)

    dirname = os.path.dirname(args.inputFile)
    emissionsMap = None
    if args.rules != "v1":
        with open(os.path.join(dirname, args.emissionMapName), "r") as mapFile:
            emissionsMapWithStringKeys = json.load(mapFile)
            emissionsMap = dict()
            for key in emissionsMapWithStringKeys:
                tupleKey = tuple(key.split("-"))
                emissionsMap[tupleKey] = float(emissionsMapWithStringKeys[key])
            logger.log(f"Emission awareness enabled")
            # logger.log(f"emissionsMap: {emissionsMap}")
    else:
        logger.log(f"Emission awareness not enabled")

    # preprocessor = PreProcessor(args.networkFile, args.inputFile, args.hasGUI, logger, "preprocessor")

    if args.preprocessor == PreProcessorType.ASP:
        preprocessor = ASPPreProcessor(args.networkFile, args.inputFile, args.hasGUI, logger, args, checkPointFile=args.checkpointFile, emissionMap=emissionsMap)
    elif args.preprocessor == PreProcessorType.RANDOM:
        preprocessor = RandomPreProcessor(args.networkFile, args.inputFile, args.hasGUI, logger)
    elif args.preprocessor == PreProcessorType.CUMULATIVE:
        preprocessor = CumulativeOccupancyHeuristicPreProcessor(args.networkFile, args.inputFile, args.hasGUI, logger)
    elif args.preprocessor == PreProcessorType.DENSITY:
        preprocessor = DensityHeuristicPreProcessor(args.networkFile, args.inputFile, args.hasGUI, logger)
    elif args.preprocessor == PreProcessorType.DIJKSTRA:
        preprocessor = DijkstraPreProcessor(args.networkFile, args.inputFile, args.hasGUI, logger)
    elif args.preprocessor == PreProcessorType.PLAIN:
        preprocessor = PlainPreprocessor(args.networkFile, args.inputFile, args.hasGUI, logger)
    else:
        raise Exception(f"Preprocessor {args.preprocessor} was not found")

    preprocessor.solve()

if __name__ == '__main__':
    main()
