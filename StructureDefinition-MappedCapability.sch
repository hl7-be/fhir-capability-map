<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CapabilityStatement
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:CapabilityStatement</sch:title>
    <sch:rule context="f:CapabilityStatement">
      <sch:assert test="count(f:software) &gt;= 1">software: minimum cardinality of 'software' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CapabilityStatement/f:implementation</sch:title>
    <sch:rule context="f:CapabilityStatement/f:implementation">
      <sch:assert test="count(f:custodian) &gt;= 1">custodian: minimum cardinality of 'custodian' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
