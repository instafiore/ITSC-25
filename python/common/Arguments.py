import os

from preprocessors.PreProcessor import PreProcessorType


class Arguments:
    def __init__(self):
        self.experiment = os.getenv("EXPERIMENT_NAME", "exp_server")
        self.inputFile = os.getenv("SUMOCFG_FILE", "maps/bologna/acosta/run/run.sumocfg")
        self.networkFile = os.getenv("NETWORK_FILE", "maps/bologna/acosta/netedit/acosta_buslanes.net.xml")
        self.checkpointFile = os.getenv("CHECKPOINT_FILE", "")
        self.rules = os.getenv("RULES", "v2.1.2")
        preprocessorString = os.getenv("PREPROCESSOR", "asp")
        self.preprocessor = PreProcessorType(preprocessorString)
        self.hasGUI = False
        self.isInsideAWS = "AWS_BATCH_JOB_ID" in os.environ
        self.cloud = os.getenv("CLOUD_LOGGER", False)
        self.experimentSession = os.getenv("EXPERIMENT_SESSION",True)
        self.loggerDisabled = os.getenv("LOGGER_DISABLED",False)
        self.HORIZON = 5000
        self.emissionMapName = "emissionMapV2"
        self.messageLog = "noMessageLog"
        self.map = "acosta"
