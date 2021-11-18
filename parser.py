from fhirpathpy import evaluate
import json
import glob
import time

ID_FHIR_PATH="CapabilityStatement.id"
LAT_FHIR_PATH="CapabilityStatement.contained.where(resourceType='Organization').address.extension.where(url='http://hl7.org/fhir/StructureDefinition/geolocation').extension.where(url='latitude').valueDecimal"
LONG_FHIR_PATH="CapabilityStatement.contained.where(resourceType='Organization').address.extension.where(url='http://hl7.org/fhir/StructureDefinition/geolocation').extension.where(url='longitude').valueDecimal"
NAME_FHIR_PATH="CapabilityStatement.contained.where(resourceType='Organization').name"
onlyfiles=glob.glob("./output/CapabilityStatement-*.json")

print(onlyfiles)

result={}
final_list=[]
for file in onlyfiles:
    with open(file) as json_file:
        data = json.load(json_file)
    is_mappable = True
    if not(is_mappable):
      continue
    node={"type":"Feature","properties":{"iconSize":[20,20]},"geometry":{"type":"Point"}}
    org_name=evaluate(data,NAME_FHIR_PATH,"")[0]
    cs_id=evaluate(data,ID_FHIR_PATH , "")[0]
    lat = evaluate(data, LAT_FHIR_PATH, "")
    long = evaluate(data,LONG_FHIR_PATH , "")

    node["properties"]["message"]="<a href='www.google.com'>"+org_name+"</a>"
    node["geometry"]["coordinates"]=[long[0],lat[0]]
    #result[cs_id].append(lat[0],long[0])
    final_list.append(node)
#print(result)
result['type']='FeatureCollection'
result["features"]=final_list

print(result)

with open("./map/geodata.js", "w") as fout:
        fout.write("const geojson = ")
        json.dump(result, fout)

