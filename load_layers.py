import os
from qgis.core import (QgsVectorLayer)
basePath = "D:/Gas Network Project/From Sinan Vai/15.07.2021__CGR Survey Data Check/Line Wise Data/16.Bakhrabad-Siddhirgonj"
path_to_line_layer = basePath+"/Line/GT-P-300-BS-30_line.shp"
path_to_point_layer1 = basePath+"/Shapefile/GT-P-300-BS-30.shp"
path_to_point_layer2 = basePath+"/Shapefile/GT-P-300-BS-30_CP.shp"
path_to_point_layer3 = basePath+"/Shapefile/GT-P-300-BS-30_Valve.shp"
vLayer1 = QgsVectorLayer(path_to_line_layer,"Bakhrabad Line","ogr")
vLayer2 = QgsVectorLayer(path_to_point_layer1,"All Points","ogr")
vLayer3 = QgsVectorLayer(path_to_point_layer2,"CP Points","ogr")
vLayer4 = QgsVectorLayer(path_to_point_layer3,"Valve Stations","ogr")
layerList = [vLayer1,vLayer2,vLayer3,vLayer4]

for x in layerList:
    if not x.isValid():
        print("Invalid Layer")
    else:
        QgsProject.instance().addMapLayer(x)