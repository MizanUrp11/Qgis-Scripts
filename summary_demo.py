lyr = iface.activeLayer()

features = lyr.getFeatures()
count = 0
attrInfo = ""
listArr = []
for feat in features:
    attrs = feat.attributes()
    targetAttr = attrs[5]
    if(len(listArr) == 0):
        listArr.append(targetAttr)
    if(listArr[0] == targetAttr):
        listArr.append(targetAttr)
    else:
        print(str(listArr[0])+" = "+str(len(listArr)))
        listArr = []







layer = qgis.utils.iface.activeLayer()
field_names = layer.fields().names() #getting field names
for x in field_names:
    print(x)



