Alias: $sct = http://snomed.info/sct
Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type

Instance: Org1
InstanceOf: Organization
Usage: #inline
* identifier.use = #official
* identifier.type.text = "Rusthuis"
* identifier.system = "http://www.belgianhealthinstitutions.be/"
* identifier.value = "9000282434"
* active = true
* type.coding[0] = $sct#405608006 "Academic Medical Center"
* type.coding[+] = $organization-type#prov
* name = "Groene rust huis 9000"
* telecom.system = #phone
* telecom.value = "+3293738738"
* telecom.use = #work
* address.use = #work
* address.line = "groene plats 230"
* address.city = "Gent"
* address.postalCode = "9000BE"
* address.country = "BEL"
* address.extension[0]
  * url = "http://hl7.org/fhir/StructureDefinition/geolocation"
  * extension[0].url = "latitude"
  * extension[0].valueDecimal = 51.040355
  * extension[1].url = "longitude"
  * extension[1].valueDecimal = 3.7400413


Instance: exampleMappedCapability
InstanceOf: CapabilityStatement
Usage: #definition
* contained = Org1
* status = #draft
* experimental = true
* date = "2012-01-04"
* publisher = "ACME Corporation"
* contact.name = "System Administrator"
* contact.telecom.system = #email
* contact.telecom.value = "wile@acme.org"
* description = "Sample capability statement of a capability implemented in a hospital"
* kind = #instance
* software.name = "EHR"
* implementation.description = "Acme hospital"
* implementation.url = "http://acem.com/fhir"
* implementation.custodian = Reference (#Org1)
* fhirVersion = #4.0.1
* format[+] = #xml
* format[+] = #json