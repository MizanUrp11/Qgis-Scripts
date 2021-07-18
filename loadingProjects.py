from qgis.core import (QgsProject,QgsPathResolver)
from qgis.gui import (QgsLayerTreeMapCanvasBridge)
project = QgsProject.instance()
project_path = "D:\\Gas Network Project\\From Sinan Vai\\15.07.2021__CGR Survey Data Check\\Map.qgz"
project.read(project_path)
print(project.fileName())
project.write(project_path) #to save the qgis project
