import requests


class LV95Convert:
    def convert(self, est, nord):
        urlConverter = "http://geodesy.geo.admin.ch/reframe/lv95towgs84?format=json"
        estParam = "&easting=" + str(est)
        nordParam = "&northing=" + str(nord)
        r = requests.get(urlConverter + estParam + nordParam)
        coord = r.json()
        return float(coord["northing"]), float(coord["easting"])
