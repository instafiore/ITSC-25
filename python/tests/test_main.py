import json
import os
import sys
import pytest
import logging

import traci

conf_path = os.getcwd()
sys.path.append(conf_path)
startingDir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.append(startingDir)
print(f"startingDir: {startingDir}")

from common.Arguments import Arguments
from common.CloudLogger import CloudLogger
from emissions.EdgeEmissionSimulator import EdgeEmissionSimulator
from common.LocalLogger import LocalLogger
from preprocessors.ASP import ASPPreProcessor
from preprocessors.CumulativeOccupancyHeuristic import CumulativeOccupancyHeuristicPreProcessor
from preprocessors.DensityHeuristic import DensityHeuristicPreProcessor
from preprocessors.Dijkstra import DijkstraPreProcessor
from preprocessors.Plain import PlainPreprocessor
from preprocessors.PreProcessor import PreProcessorType, PreProcessor
from preprocessors.Random import RandomPreProcessor
from emissions.EdgeEmissionSimulator import EdgeEmissionSimulator
from traffic.Vehicle import Vehicle



@pytest.fixture(scope='module')
def preprocessorInstance() -> ASPPreProcessor:
    args = Arguments()

    args.rules = "v2.1"
    args.HORIZON = 1
    pathTests =  "/".join(__file__.split("/")[:-1])
    print(f"pathTests: {pathTests}")
    args.experiment = "/".join([pathTests, "exp"])
    args.emissionMapName = "emissionMapV3"
    args.preprocessor = PreProcessorType("asp")
    args.experimentSession = False

    # args.inputFile = "maps/MapTests/config_file.sumocfg"
    # args.networkFile = "maps/MapTests/pollution_test.net.xml"

    # args.inputFile = "maps/bologna/acosta/run/run.sumocfg"
    # args.networkFile = "maps/bologna/acosta/netedit/acosta_buslanes.net.xml"

    # args.inputFile = "maps/bologna/pasubio/run.sumocfg"
    # args.networkFile = "maps/bologna/pasubio/pasubio_buslanes.net.xml"

    # args.inputFile = "maps/bologna/joined/run.sumocfg"
    # args.networkFile = "maps/bologna/joined/joined_buslanes.net.xml"

    args.inputFile = "maps/MK-sim/MK_sim.sumocfg"
    args.networkFile = "maps/MK-sim/net.net.xml"

    logger = CloudLogger(args.experiment) if args.cloud else LocalLogger(args.experiment, args)

    logger.log(f"input file: {args.inputFile}", logging.INFO)
    logger.log(f"network file: {args.networkFile}", logging.INFO)

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

    return  ASPPreProcessor(args.networkFile, args.inputFile, args.hasGUI, logger, args,
                                       checkPointFile=args.checkpointFile, emissionMap=emissionsMap, testing=True)

def test_solve(preprocessorInstance):
    preprocessorInstance.solve()

# @pytest.mark.parametrize("id",[
#     ("Togliatti_72_5")
# ])
# def test_route_emission(preprocessorInstance, id):
#     preprocessorInstance.start()

#     sim = preprocessorInstance.simulation
#     v =  Vehicle(sim, id)

