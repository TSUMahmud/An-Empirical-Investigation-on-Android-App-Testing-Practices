import regionManager


class RegionManagerFactory:
    def __init__(self, config):
        self.config = config
        self.regionManager = {}

    def getRegionManager(self, dossierId, regionName):
        if not dossierId in self.regionManager.keys():
            self.regionManager[dossierId] = regionManager.RegionManager(
                self.config, dossierId, regionName)

        return self.regionManager[dossierId]
