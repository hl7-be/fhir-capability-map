Alias: $sct = http://snomed.info/sct
Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type

Instance: Org1
InstanceOf: Organization
Usage: #inline
* identifier.use = #official
* identifier.type.text = "Zorginstelling naam"
* identifier.system = "http://www.zorgkaartnederland.nl/"
* identifier.value = "Blijdorp MC"
* active = true
* type.coding[0] = $sct#405608006 "Academic Medical Center"
* type.coding[+] = $organization-type#prov
* name = "Blijdorp Medisch Centrum (BUMC)"
* telecom.system = #phone
* telecom.value = "+31107040704"
* telecom.use = #work
* address.use = #work
* address.line = "apenrots 230"
* address.city = "Blijdorp"
* address.postalCode = "3056BE"
* address.country = "NLD"
* address.extension[0]
  * url = "http://hl7.org/fhir/StructureDefinition/geolocation"
  * extension[0].url = "latitude"
  * extension[0].valueDecimal = 51.040355
  * extension[1].url = "longitude"
  * extension[1].valueDecimal = 3.7400413


Instance: messagedefinition
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
* description = "Sample capability statement showing new MessageDefinition structure"
* kind = #instance
* software.name = "EHR"
* implementation.description = "Acme hospital"
* implementation.url = "http://acem.com/fhir"
* implementation.custodian = Reference (#Org1)
* fhirVersion = #4.6.0
* format[+] = #xml
* format[+] = #json