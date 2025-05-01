import random

from asp.Atoms import Vehicle, Route
from common.CloudLogger import CloudLogger
from preprocessors.PreProcessor import PreProcessor
import traci

from traffic.Solution import Solution


class PlainPreprocessor(PreProcessor):

    def __init__(self, networkFile, sumocfgFile, hasGUI, logger: CloudLogger):
        super(PlainPreprocessor, self).__init__(networkFile, sumocfgFile, hasGUI, logger,
                                                                       "plain")

    def onTick(self, step: int, vehiclesInside: [Vehicle], newVehicles: [Vehicle],
               previousSolution: Solution) -> Solution:
        return previousSolution
