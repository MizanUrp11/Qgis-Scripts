layer = qgis.utils.iface.activeLayer()
features = layer.getFeatures()
field_names = layer.fields().names()  # getting field names

x = range(len(field_names))
mydata = []
for columnId in x:
    features = layer.getFeatures()
    print("----------------------")
    print(str(field_names[columnId]))
    print("----------------------")
    auxiliaryArray = []
    for feat in features:
        attrs = feat.attributes()
        targetAttr = attrs[columnId]
        mydata.append(targetAttr)
        auxiliaryArray = list(set(mydata))
    print(auxiliaryArray)
    auxiliaryArray = []
    mydata = []
