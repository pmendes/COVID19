<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.23 (Build 184) (http://www.copasi.org) at 2020-03-24 13:31:57 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="23" versionDevel="184" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="population growth" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:05:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        S*T*k
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="S" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_263" name="T" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_262" name="k" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Corona model of extinguishable epidemic with limited time incomplete lockdown" simulationType="time" timeUnit="d" volumeUnit="1" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T13:58:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      Full name was (24 March 2020): Wff1Corona_Lux_2020-03-20_1340 intermittentGwork full lockdown effect of socialdistancing Fig 6 external infection with end of adaptive control_eradication.
This version has most facilitie of a line of models.  
For instructions: h.v.westerhoff@uva.nl
Prepared by Alexey Kolodkin and Hans V. Westerhoff
    </Comment>
    <ListOfUnsupportedAnnotations>
      <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:modelVersion>4.0</celldesigner:modelVersion>
  <celldesigner:modelDisplay sizeX="1356" sizeY="412" />
  <celldesigner:listOfCompartmentAliases />
  <celldesigner:listOfComplexSpeciesAliases />
  <celldesigner:listOfSpeciesAliases>
    <celldesigner:speciesAlias id="sa1" species="s4">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="611.0157004275316" y="125.13814449062434" w="312.0" h="55.0" />
      <celldesigner:font size="30" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="312.0" height="55.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffcc99ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa2" species="s5">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="634.0157004275316" y="235.13814449062434" w="276.0" h="55.0" />
      <celldesigner:font size="30" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="276.0" height="55.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffffff66" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa3" species="s6">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="269.01570042753156" y="126.13814449062434" w="281.0" h="52.0" />
      <celldesigner:font size="30" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="281.0" height="52.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa4" species="s7">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="312.01570042753156" y="234.13814449062434" w="231.0" h="52.0" />
      <celldesigner:font size="30" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="231.0" height="52.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa5" species="s8">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1041.0157004275316" y="237.13814449062434" w="309.0" h="53.0" />
      <celldesigner:font size="30" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="309.0" height="53.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffff9900" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa6" species="s9">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1031.0157004275316" y="127.13814449062434" w="319.0" h="53.0" />
      <celldesigner:font size="30" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="319.0" height="53.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffcc99ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa7" species="s14">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1049.0157004275316" y="349.1381444906243" w="299.0" h="44.0" />
      <celldesigner:font size="30" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="299.0" height="44.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff33cc00" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa8" species="s15">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1027.0157004275316" y="25.13814449062434" w="317.0" h="49.0" />
      <celldesigner:font size="30" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="317.0" height="49.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffcc99ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa9" species="s16">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="59.015700427531556" y="132.13814449062434" w="59.0" h="45.0" />
      <celldesigner:font size="30" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="59.0" height="45.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa10" species="s22">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="27.015700427531556" y="343.1381444906243" w="492.0" h="55.0" />
      <celldesigner:font size="30" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="492.0" height="55.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffff6666" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa11" species="s13">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="607.0157004275316" y="354.1381444906243" w="322.0" h="47.0" />
      <celldesigner:font size="30" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="322.0" height="47.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffff00cc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa12" species="s18">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="598.0157004275316" y="32.13814449062434" w="338.0" h="43.0" />
      <celldesigner:font size="30" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="338.0" height="43.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffcccccc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa13" species="s25">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="29.015700427531556" y="240.13814449062434" w="230.0" h="50.0" />
      <celldesigner:font size="30" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="230.0" height="50.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffcccccc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa14" species="s29">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="70.01570042753156" y="66.13814449062434" w="244.0" h="39.0" />
      <celldesigner:font size="30" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="244.0" height="39.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff33ff33" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
  </celldesigner:listOfSpeciesAliases>
  <celldesigner:listOfGroups />
  <celldesigner:listOfProteins>
    <celldesigner:protein id="pr1" name="S" type="GENERIC" />
  </celldesigner:listOfProteins>
  <celldesigner:listOfGenes />
  <celldesigner:listOfRNAs />
  <celldesigner:listOfAntisenseRNAs />
  <celldesigner:listOfLayers />
  <celldesigner:listOfBlockDiagrams />
</celldesigner:extension>
      </UnsupportedAnnotation>
    </ListOfUnsupportedAnnotations>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="default" simulationType="fixed" dimensionality="3" addNoise="false">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="infected-nontested" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T13:59:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PHENOTYPE</celldesigner:class>
    <celldesigner:name>infected-nontested</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="infected-tested" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:00:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PHENOTYPE</celldesigner:class>
    <celldesigner:name>infected-tested</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="uninfected_non-tested" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:00:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PHENOTYPE</celldesigner:class>
    <celldesigner:name>innocent-nontested</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="uninfected-tested" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:00:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PHENOTYPE</celldesigner:class>
    <celldesigner:name>inocent-tested</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="symptoms-tested" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:01:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PHENOTYPE</celldesigner:class>
    <celldesigner:name>symptoms-tested</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="symptoms-nontested" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:01:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PHENOTYPE</celldesigner:class>
    <celldesigner:name>symptoms-nontested</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="recovered-tested" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T15:00:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PHENOTYPE</celldesigner:class>
    <celldesigner:name>recovered-tested</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="recovered-nontested" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:19:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PHENOTYPE</celldesigner:class>
    <celldesigner:name>recovered-nontested</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="S" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:01:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr1</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Corona-dead-tested" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T13:59:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PHENOTYPE</celldesigner:class>
    <celldesigner:name>Corona-dead-tested</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="Corona-dead-nontested" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T13:59:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PHENOTYPE</celldesigner:class>
    <celldesigner:name>Corona-dead-nontested</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="non-corona-dead" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:00:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PHENOTYPE</celldesigner:class>
    <celldesigner:name>innocent-dead</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="total population" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:01:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PHENOTYPE</celldesigner:class>
    <celldesigner:name>total population</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re11" />
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Expression>
          &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[infected-nontested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[infected-tested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[uninfected_non-tested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[uninfected-tested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[recovered-nontested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[recovered-tested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[symptoms-nontested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[symptoms-tested],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Corona-registered" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T22:32:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[infected-tested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[symptoms-tested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[recovered-tested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[Corona-dead-tested],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="% corona dead" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-21T16:04:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[Corona-dead-nontested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[Corona-dead-tested],Reference=Concentration>)*100/&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[total population],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="%corona recovered" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-21T19:49:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[recovered-nontested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[recovered-tested],Reference=Concentration>)*100/&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[total population],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="% non corona dead" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-22T16:14:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[non-corona-dead],Reference=Concentration>*100/&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[total population],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="corona dead / all dead (%)" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-22T16:18:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          100*&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[% corona dead],Reference=Concentration>/(&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[% corona dead],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[% non corona dead],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="epidemic extinguished" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-22T17:09:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Testing_Randome" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T15:04:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Total_Infection_coefficient" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T19:24:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[infected-nontested],Reference=Concentration>*&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Infection_from_non-tested_no-symptoms],Reference=InitialValue>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[symptoms-nontested],Reference=Concentration>*&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Infection_from_non-tested_symptoms],Reference=InitialValue>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[infected-tested],Reference=Concentration>*&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Infection_from_tested_no-symptoms],Reference=InitialValue>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[symptoms-tested],Reference=Concentration>*&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Infection_from_tested_symptoms],Reference=InitialValue>)*(1-&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[epidemic extinguished],Reference=Concentration>)/&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Social_Distance],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Normal_death rate constant" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T19:24:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          3.29e-05
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="Corona_death_rate_constant" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T19:26:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="Birth_rate" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T19:26:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Testing_for_Symptoms" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T19:50:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          500
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Corona_recover" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T20:55:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="Symptoms_appear" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T21:37:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          0.30165
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Infection_from_non-tested_no-symptoms" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T22:07:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="Infection_from_non-tested_symptoms" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T22:08:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="Infection_from_tested_no-symptoms" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T22:08:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          0.025
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Infection_from_tested_symptoms" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T22:08:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          0.025
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="Social_Distance" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T22:17:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="Government_induced_isolation_factor" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T23:37:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          10*(1+2.5*141/141*&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[symptoms-tested],Reference=Concentration>/&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[symptomatic number tolerance],Reference=InitialValue>*&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[government response factor to diagnosed infected],Reference=InitialValue>*&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[adaptive control Boolean (end)],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="Time_government_action" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T12:39:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="lockdown duration" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-21T11:26:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          7*365/7
        </InitialExpression>
        <Unit>
          d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="lockdown pause duration" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-21T11:29:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="n_lockdowns" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-21T11:39:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="n_pauses" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-21T11:39:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="intermittent time" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-21T14:50:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time>-&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[n_lockdowns],Reference=Value>*&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[lockdown duration],Reference=InitialValue>-&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[n_pauses],Reference=Value>*&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[lockdown pause duration],Reference=InitialValue>
        </Expression>
        <Unit>
          d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="time fraction lock down" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-21T21:09:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          0.5*0.7/0.5*0.65/0.7*1/0.65*0.5
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="number cutoff" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-22T14:25:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="symptomatic number tolerance" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-22T19:19:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="government response factor to diagnosed infected" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-22T20:34:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="time of foreign infection" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T16:52:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="number of foreign infections" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T16:53:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="adaptive control Boolean (end)" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T17:10:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="end of adaptive control time" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T17:12:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          1000*0
        </InitialExpression>
        <Unit>
          d
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="re1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T13:58:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s6" alias="sa3">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s4" alias="sa1">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s22" aliases="sa10" targetLineIndex="-1,4" editPoints="-0.02817442596291808,-0.011469491956719868 0.19116888845642027,-0.5502790570088124 1.0771813241170358,-0.1895933586475348">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal" />
          <celldesigner:lineDirection index="1" value="vertical" />
          <celldesigner:lineDirection index="2" value="horizontal" />
          <celldesigner:lineDirection index="3" value="vertical" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s22" alias="sa10">
        <celldesigner:linkAnchor position="W" />
      </celldesigner:linkTarget>
      <celldesigner:line width="3.0" color="ffff6699" />
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5006" name="k1" value="1.94689e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="re2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:20:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s6" alias="sa3">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s7" alias="sa4">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="k1" value="0.0008"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="re3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:20:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s7" alias="sa4">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s5" alias="sa2">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s22" aliases="sa10" targetLineIndex="-1,6" editPoints="0.025021622992395853,-0.1010096438712007 0.9672065065557284,0.1323838623539768">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical" />
          <celldesigner:lineDirection index="1" value="horizontal" />
          <celldesigner:lineDirection index="2" value="vertical" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s22" alias="sa10">
        <celldesigner:linkAnchor position="N" />
      </celldesigner:linkTarget>
      <celldesigner:line width="3.0" color="ffff6699" />
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5004" name="k1" value="1.94689e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="re4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:20:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s4" alias="sa1">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s5" alias="sa2">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5003" name="k1" value="0.0008"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="re5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:20:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s4" alias="sa1">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s9" alias="sa6">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5002" name="k1" value="0.30165"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="re6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:20:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s5" alias="sa2">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s8" alias="sa5">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5001" name="k1" value="0.30165"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="re7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:20:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s9" alias="sa6">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s8" alias="sa5">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5000" name="k1" value="500"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="re8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:21:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s8" alias="sa5">
      <celldesigner:linkAnchor position="SW" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s13" alias="sa11">
      <celldesigner:linkAnchor position="NE" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4999" name="k1" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="re9" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T13:58:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s8" alias="sa5">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s14" alias="sa7">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4998" name="k1" value="0.067"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="re10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T13:58:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s9" alias="sa6">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s15" alias="sa8">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4997" name="k1" value="0.067"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="re11" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:04:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s16" alias="sa9">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s6" alias="sa3">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="5.0" color="ff000000" />
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s29" aliases="sa14" targetLineIndex="-1,2">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s29" alias="sa14">
        <celldesigner:linkAnchor position="S" />
      </celldesigner:linkTarget>
      <celldesigner:line width="3.0" color="ffff3366" />
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4996" name="k" value="3.29e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="re12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T13:58:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s6" alias="sa3">
      <celldesigner:linkAnchor position="SW" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s25" alias="sa13">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="5.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4995" name="k1" value="3.29e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="re13" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:20:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s14" alias="sa7">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s13" alias="sa11">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4994" name="k1" value="3.29e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="re14" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:20:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s15" alias="sa8">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s18" alias="sa12">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4993" name="k1" value="3.29e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="re15" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:20:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s5" alias="sa2">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s13" alias="sa11">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4992" name="k1" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="re16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:20:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s4" alias="sa1">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s18" alias="sa12">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4991" name="k1" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="re17" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:20:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s7" alias="sa4">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s25" alias="sa13">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="k1" value="3.29e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="re18" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T14:20:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s9" alias="sa6">
      <celldesigner:linkAnchor position="NW" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s18" alias="sa12">
      <celldesigner:linkAnchor position="SE" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4989" name="k1" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="trigger government activity" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-19T23:18:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[intermittent time],Reference=Value> > &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Time_government_action],Reference=InitialValue>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_12">
            <Expression>
              &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Social_Distance],Reference=InitialValue>*&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Government_induced_isolation_factor],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="trigger repetitive increase social isolation" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-21T15:20:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[intermittent time],Reference=Value> > &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Time_government_action],Reference=InitialValue>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_17">
            <Expression>
              &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[n_lockdowns],Reference=Value>+1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="trigger relaxation social isolation" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-21T15:42:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[intermittent time],Reference=Value> > &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Time_government_action],Reference=InitialValue>-&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[lockdown duration],Reference=InitialValue>*(1-&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[time fraction lock down],Reference=InitialValue>)
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_12">
            <Expression>
              &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Social_Distance],Reference=InitialValue>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_3" name="round off infected not tested" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-22T13:55:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[infected-nontested],Reference=Concentration> &lt; 0
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_4" name="round off symptoms non tested" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-22T14:33:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[symptoms-nontested],Reference=Concentration> &lt; 0
        </TriggerExpression>
        <PriorityExpression>
          &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[symptoms-nontested],Reference=Concentration>
        </PriorityExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_5">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_5" name="end of epidemic" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-22T17:11:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[infected-nontested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[infected-tested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[symptoms-nontested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[symptoms-tested],Reference=Concentration> &lt; &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[number cutoff],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_18">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_6" name="foreign infection" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T16:53:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time> > &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[time of foreign infection],Reference=InitialValue>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[infected-nontested],Reference=Concentration>+&lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[number of foreign infections],Reference=InitialValue>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_7" name="stop adaptive control" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T17:13:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time> > &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[end of adaptive control time],Reference=InitialValue>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_26">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[infected-nontested]" value="2" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[infected-tested]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[uninfected_non-tested]" value="630000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[uninfected-tested]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[symptoms-tested]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[symptoms-nontested]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[recovered-tested]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[recovered-nontested]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[S]" value="1" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[Corona-dead-tested]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[Corona-dead-nontested]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[non-corona-dead]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[total population]" value="630003" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[Corona-registered]" value="1" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[% corona dead]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[%corona recovered]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[% non corona dead]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[corona dead / all dead (%)]" value="NaN" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[epidemic extinguished]" value="0" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Testing_Randome]" value="0.00080000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Total_Infection_coefficient]" value="1.9468861043575834e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Normal_death rate constant]" value="3.29e-05" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              3.29e-05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Corona_death_rate_constant]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Birth_rate]" value="3.29e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Testing_for_Symptoms]" value="500" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              500
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Corona_recover]" value="0.067000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Symptoms_appear]" value="0.30164999999999997" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              0.30165
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Infection_from_non-tested_no-symptoms]" value="0.50800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Infection_from_non-tested_symptoms]" value="0.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Infection_from_tested_no-symptoms]" value="0.025000000000000001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              0.025
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Infection_from_tested_symptoms]" value="0.025000000000000001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              0.025
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Social_Distance]" value="534700" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Government_induced_isolation_factor]" value="10" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Time_government_action]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[lockdown duration]" value="365" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              7*365/7
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[lockdown pause duration]" value="7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[n_lockdowns]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[n_pauses]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[intermittent time]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[time fraction lock down]" value="0.5" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              0.5*0.7/0.5*0.65/0.7*1/0.65*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[number cutoff]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[symptomatic number tolerance]" value="141" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[government response factor to diagnosed infected]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[time of foreign infection]" value="1000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[number of foreign infections]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[adaptive control Boolean (end)]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[end of adaptive control time]" value="0" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              1000*0
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re1],ParameterGroup=Parameters,Parameter=k1" value="1.9468861043575834e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Total_Infection_coefficient],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re2],ParameterGroup=Parameters,Parameter=k1" value="0.00080000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Testing_Randome],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re3],ParameterGroup=Parameters,Parameter=k1" value="1.9468861043575834e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Total_Infection_coefficient],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re4],ParameterGroup=Parameters,Parameter=k1" value="0.00080000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Testing_Randome],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re5],ParameterGroup=Parameters,Parameter=k1" value="0.30164999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Symptoms_appear],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re6],ParameterGroup=Parameters,Parameter=k1" value="0.30164999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Symptoms_appear],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re7],ParameterGroup=Parameters,Parameter=k1" value="500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Testing_for_Symptoms],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re8],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Corona_death_rate_constant],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re9],ParameterGroup=Parameters,Parameter=k1" value="0.067000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Corona_recover],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re10],ParameterGroup=Parameters,Parameter=k1" value="0.067000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Corona_recover],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re11],ParameterGroup=Parameters,Parameter=k" value="3.29e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Birth_rate],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re12],ParameterGroup=Parameters,Parameter=k1" value="3.29e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Normal_death rate constant],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re13],ParameterGroup=Parameters,Parameter=k1" value="3.29e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Normal_death rate constant],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re14],ParameterGroup=Parameters,Parameter=k1" value="3.29e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Normal_death rate constant],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re15],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Corona_death_rate_constant],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re16],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Corona_death_rate_constant],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re17],ParameterGroup=Parameters,Parameter=k1" value="3.29e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Normal_death rate constant],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Reactions[re18],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Corona_death_rate_constant],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 2 0 0 0 630000 1 0 0 0 0 0 630003 1 0 0 0 NaN 1.9468861043575834e-06 10 0 1 0 1 0.00080000000000000004 3.29e-05 0.002 3.29e-05 500 0.067000000000000004 0.30164999999999997 0.50800000000000001 0.25 0.025000000000000001 0.025000000000000001 534700 15 365 7 0 0 0.5 1 141 1 1000 50 1 0 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="192593"/>
        <Parameter name="StepSize" type="float" value="0.001895188299"/>
        <Parameter name="Duration" type="float" value="365"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_17" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_18" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_25" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_9" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_10" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Infection_coefficient" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Total_Infection_coefficient]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Total_Infection_coefficient],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="times" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Time|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Government_induced_isolation]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Government_induced_isolation_factor],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Social_Distance]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Social_Distance],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[adaptive control Boolean (end)]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[adaptive control Boolean (end)],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[intermittent time]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[intermittent time],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[n_lockdowns]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[n_lockdowns],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot all" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Government_induced_isolation]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Government_induced_isolation_factor],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[% corona dead]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[% corona dead],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[% non corona dead]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[% non corona dead],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[%corona recovered]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[%corona recovered],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Corona-dead-nontested]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[Corona-dead-nontested],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Corona-dead-tested]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[Corona-dead-tested],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Corona-registered]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[Corona-registered],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[S]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[S],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Uninfected_non-tested]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[uninfected_non-tested],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[corona dead / all dead (%)]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[corona dead / all dead (%)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[epidemic extinguished]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[epidemic extinguished],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[infected-nontested]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[infected-nontested],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[infected-tested]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[infected-tested],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[non-corona-dead]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[non-corona-dead],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[recovered-nontested]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[recovered-nontested],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[recovered-tested]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[recovered-tested],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[symptoms-nontested]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[symptoms-nontested],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[symptoms-tested]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[symptoms-tested],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[total population]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[total population],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[uninfected-tested]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[uninfected-tested],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="% dead, #infected_tested and #symptoms_not_tested versus time (days)" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[% corona dead]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[% corona dead],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[infected-tested]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[infected-tested],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[recovered-tested]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="5"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[recovered-tested],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[symptoms-nontested]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Compartments[default],Vector=Metabolites[symptoms-nontested],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Social_Distance],Reference=InitialValue" objectType="float" objectValue="534700" minValue="100000" maxValue="1e+06" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_1" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Government_induced_isolation_factor],Reference=InitialValue" objectType="float" objectValue="10" minValue="0" maxValue="25" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_2" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Infection_from_non-tested_no-symptoms],Reference=InitialValue" objectType="float" objectValue="0.508" minValue="0.4" maxValue="1.6" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_3" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Infection_from_non-tested_symptoms],Reference=InitialValue" objectType="float" objectValue="0.25" minValue="0.25" maxValue="1" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_4" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Infection_from_tested_no-symptoms],Reference=InitialValue" objectType="float" objectValue="0.025" minValue="0.0025" maxValue="0.025" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_5" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Infection_from_tested_symptoms],Reference=InitialValue" objectType="float" objectValue="0.025" minValue="0.0025" maxValue="0.025" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_6" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Corona model of extinguishable epidemic with limited time incomplete lockdown,Vector=Values[Symptoms_appear],Reference=InitialValue" objectType="float" objectValue="0.30165" minValue="0.15" maxValue="1.2066" tickNumber="1000" tickFactor="100" scaling="linear"/>
    </ListOfSliders>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="Layout">
      <Dimensions width="1356" height="412"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_3" name="SpeciesGlyph" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="611.01570042753156" y="125.13814449062434"/>
            <Dimensions width="312" height="55"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_4" name="SpeciesGlyph_1" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="634.01570042753156" y="235.13814449062434"/>
            <Dimensions width="276" height="55"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_5" name="SpeciesGlyph_2" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="269.01570042753156" y="126.13814449062434"/>
            <Dimensions width="281" height="52"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="SpeciesGlyph_3" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="312.01570042753156" y="234.13814449062434"/>
            <Dimensions width="231" height="52"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="SpeciesGlyph_4" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="1041.0157004275316" y="237.13814449062434"/>
            <Dimensions width="309" height="53"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="SpeciesGlyph_5" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="1031.0157004275316" y="127.13814449062434"/>
            <Dimensions width="319" height="53"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="SpeciesGlyph_6" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="1049.0157004275316" y="349.13814449062431"/>
            <Dimensions width="299" height="44"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="SpeciesGlyph_7" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="1027.0157004275316" y="25.138144490624342"/>
            <Dimensions width="317" height="49"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="SpeciesGlyph_8" metabolite="Metabolite_8">
          <BoundingBox>
            <Position x="59.015700427531556" y="132.13814449062434"/>
            <Dimensions width="59" height="45"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="SpeciesGlyph_9" metabolite="">
          <BoundingBox>
            <Position x="27.015700427531556" y="343.13814449062431"/>
            <Dimensions width="492" height="55"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="SpeciesGlyph_10" metabolite="Metabolite_9">
          <BoundingBox>
            <Position x="607.01570042753156" y="354.13814449062431"/>
            <Dimensions width="322" height="47"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_14" name="SpeciesGlyph_11" metabolite="Metabolite_10">
          <BoundingBox>
            <Position x="598.01570042753156" y="32.138144490624342"/>
            <Dimensions width="338" height="43"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_15" name="SpeciesGlyph_12" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="29.015700427531556" y="240.13814449062434"/>
            <Dimensions width="230" height="50"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_16" name="SpeciesGlyph_13" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="70.015700427531556" y="66.138144490624342"/>
            <Dimensions width="244" height="39"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_17" name="ReactionGlyph" reaction="Reaction_0">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="573.0159523632376" y="152.32667114583504"/>
                <End x="588.01544849182551" y="152.44961783541365"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_18" name="SpeciesReferenceGlyph" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="573.0159523632376" y="152.32667114583504"/>
                    <End x="550.01570042753156" y="152.13814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_19" name="SpeciesReferenceGlyph_1" metaboliteGlyph="Layout_3" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="588.01544849182551" y="152.44961783541365"/>
                    <End x="611.01570042753156" y="152.63814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_20" name="SpeciesReferenceGlyph_2" metaboliteGlyph="Layout_12" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="27.015700427531556" y="370.63814449062431"/>
                    <End x="9.0696646503139249" y="370.63814449062431"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="9.0696646503139249" y="370.63814449062431"/>
                    <End x="9.0696646503139249" y="27.466693351338392"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="9.0696646503139249" y="27.466693351338392"/>
                    <End x="573.05756441543667" y="27.466693351338392"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="573.05756441543667" y="27.466693351338392"/>
                    <End x="573.05756441543667" y="147.29610656053248"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_21" name="ReactionGlyph_1" reaction="Reaction_1">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="416.22063157443313" y="198.99793028098486"/>
                <End x="420.81076928062998" y="213.27835870026382"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_22" name="SpeciesReferenceGlyph_3" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="416.22063157443313" y="198.99793028098486"/>
                    <End x="409.51570042753156" y="178.13814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_23" name="SpeciesReferenceGlyph_4" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="420.81076928062998" y="213.27835870026382"/>
                    <End x="427.51570042753156" y="234.13814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_24" name="ReactionGlyph_2" reaction="Reaction_2">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="581.01852910056971" y="261.18217824537811"/>
                <End x="596.0128717544934" y="261.59411073587052"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_25" name="SpeciesReferenceGlyph_5" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="581.01852910056971" y="261.18217824537811"/>
                    <End x="543.01570042753156" y="260.13814449062431"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_26" name="SpeciesReferenceGlyph_6" metaboliteGlyph="Layout_4" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="596.0128717544934" y="261.59411073587052"/>
                    <End x="634.01570042753156" y="262.63814449062431"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_27" name="SpeciesReferenceGlyph_7" metaboliteGlyph="Layout_12" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="273.01570042753156" y="343.13814449062431"/>
                    <End x="273.01570042753156" y="310.111860803311"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="273.01570042753156" y="310.111860803311"/>
                    <End x="580.88828781929658" y="310.111860803311"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="580.88828781929658" y="310.111860803311"/>
                    <End x="580.88828781929658" y="266.07746470370682"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_28" name="ReactionGlyph_3" reaction="Reaction_3">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="768.83668233221272" y="200.16894544211655"/>
                <End x="770.19471852285039" y="215.10734353913213"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_29" name="SpeciesReferenceGlyph_8" metaboliteGlyph="Layout_3" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="768.83668233221272" y="200.16894544211655"/>
                    <End x="767.01570042753156" y="180.13814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_30" name="SpeciesReferenceGlyph_9" metaboliteGlyph="Layout_4" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="770.19471852285039" y="215.10734353913213"/>
                    <End x="772.01570042753156" y="235.13814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_31" name="ReactionGlyph_4" reaction="Reaction_4">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="969.51602190891788" y="153.06870302285941"/>
                <End x="984.51537894614523" y="153.20758595838927"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_32" name="SpeciesReferenceGlyph_10" metaboliteGlyph="Layout_3" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="969.51602190891788" y="153.06870302285941"/>
                    <End x="923.01570042753156" y="152.63814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_33" name="SpeciesReferenceGlyph_11" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="984.51537894614523" y="153.20758595838927"/>
                    <End x="1031.0157004275316" y="153.63814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_34" name="ReactionGlyph_5" reaction="Reaction_5">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="968.01591893671628" y="263.08089425023638"/>
                <End x="983.01548191834684" y="263.19539473101224"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_35" name="SpeciesReferenceGlyph_12" metaboliteGlyph="Layout_4" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="968.01591893671628" y="263.08089425023638"/>
                    <End x="910.01570042753156" y="262.63814449062431"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_36" name="SpeciesReferenceGlyph_13" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="983.01548191834684" y="263.19539473101224"/>
                    <End x="1041.0157004275316" y="263.63814449062431"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_37" name="ReactionGlyph_6" reaction="Reaction_6">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1192.3603223196703" y="201.16683406100518"/>
                <End x="1193.6710785353928" y="216.10945492024351"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_38" name="SpeciesReferenceGlyph_14" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1192.3603223196703" y="201.16683406100518"/>
                    <End x="1190.5157004275316" y="180.13814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_39" name="SpeciesReferenceGlyph_15" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1193.6710785353928" y="216.10945492024351"/>
                    <End x="1195.5157004275316" y="237.13814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_40" name="ReactionGlyph_7" reaction="Reaction_7">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="991.52752399346502" y="318.41710245294809"/>
                <End x="978.50387686159809" y="325.85918652830054"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_41" name="SpeciesReferenceGlyph_16" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="991.52752399346502" y="318.41710245294809"/>
                    <End x="1041.0157004275316" y="290.13814449062431"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_42" name="SpeciesReferenceGlyph_17" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="978.50387686159809" y="325.85918652830054"/>
                    <End x="929.01570042753156" y="354.13814449062431"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_43" name="ReactionGlyph_8" reaction="Reaction_8">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1196.6348365324322" y="312.14782122033688"/>
                <End x="1197.3965643226309" y="327.12846776091175"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_44" name="SpeciesReferenceGlyph_18" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1196.6348365324322" y="312.14782122033688"/>
                    <End x="1195.5157004275316" y="290.13814449062431"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_45" name="SpeciesReferenceGlyph_19" metaboliteGlyph="Layout_9" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1197.3965643226309" y="327.12846776091175"/>
                    <End x="1198.5157004275316" y="349.13814449062431"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_46" name="ReactionGlyph_9" reaction="Reaction_9">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1188.7201198869991" y="108.10499076097996"/>
                <End x="1187.311280968064" y="93.171298220268724"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_47" name="SpeciesReferenceGlyph_20" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1188.7201198869991" y="108.10499076097996"/>
                    <End x="1190.5157004275316" y="127.13814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_48" name="SpeciesReferenceGlyph_21" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1187.311280968064" y="93.171298220268724"/>
                    <End x="1185.5157004275316" y="74.138144490624342"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_49" name="ReactionGlyph_10" reaction="Reaction_10">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="186.01672813170009" y="153.51229966108514"/>
                <End x="201.01467272336302" y="153.26398932016355"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_50" name="SpeciesReferenceGlyph_22" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="186.01672813170009" y="153.51229966108514"/>
                    <End x="118.01570042753156" y="154.63814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_51" name="SpeciesReferenceGlyph_23" metaboliteGlyph="Layout_5" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="201.01467272336302" y="153.26398932016355"/>
                    <End x="269.01570042753156" y="152.13814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_52" name="SpeciesReferenceGlyph_24" metaboliteGlyph="Layout_16" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="192.01570042753156" y="105.13814449062434"/>
                    <End x="193.51570042753156" y="148.38814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_53" name="ReactionGlyph_11" reaction="Reaction_11">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="213.23462017571779" y="205.80556029552397"/>
                <End x="199.79678067934532" y="212.47072868572471"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_54" name="SpeciesReferenceGlyph_25" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="213.23462017571779" y="205.80556029552397"/>
                    <End x="269.01570042753156" y="178.13814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_55" name="SpeciesReferenceGlyph_26" metaboliteGlyph="Layout_15" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="199.79678067934532" y="212.47072868572471"/>
                    <End x="144.01570042753156" y="240.13814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_56" name="ReactionGlyph_12" reaction="Reaction_12">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="996.50472197577858" y="373.98248915676095"/>
                <End x="981.52667887928453" y="374.79379982448768"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_57" name="SpeciesReferenceGlyph_27" metaboliteGlyph="Layout_9" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="996.50472197577858" y="373.98248915676095"/>
                    <End x="1049.0157004275316" y="371.13814449062431"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_58" name="SpeciesReferenceGlyph_28" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="981.52667887928453" y="374.79379982448768"/>
                    <End x="929.01570042753156" y="377.63814449062431"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_59" name="ReactionGlyph_13" reaction="Reaction_13">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="989.00846540836289" y="51.308792183774614"/>
                <End x="974.02293544670022" y="51.96749679747407"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_60" name="SpeciesReferenceGlyph_29" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="989.00846540836289" y="51.308792183774614"/>
                    <End x="1027.0157004275316" y="49.638144490624342"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_61" name="SpeciesReferenceGlyph_30" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="974.02293544670022" y="51.96749679747407"/>
                    <End x="936.01570042753156" y="53.638144490624342"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_62" name="ReactionGlyph_14" reaction="Reaction_14">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="770.48353757369546" y="314.65275015200262"/>
                <End x="769.54786328136765" y="329.623538829246"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_63" name="SpeciesReferenceGlyph_31" metaboliteGlyph="Layout_4" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="770.48353757369546" y="314.65275015200262"/>
                    <End x="772.01570042753156" y="290.13814449062431"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_64" name="SpeciesReferenceGlyph_32" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="769.54786328136765" y="329.623538829246"/>
                    <End x="768.01570042753156" y="354.13814449062431"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_65" name="ReactionGlyph_15" reaction="Reaction_15">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="767.01570042753156" y="107.63814449062434"/>
                <End x="767.01570042753156" y="92.638144490624342"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_66" name="SpeciesReferenceGlyph_33" metaboliteGlyph="Layout_3" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="767.01570042753156" y="107.63814449062434"/>
                    <End x="767.01570042753156" y="125.13814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_67" name="SpeciesReferenceGlyph_34" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="767.01570042753156" y="92.638144490624342"/>
                    <End x="767.01570042753156" y="75.138144490624342"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_68" name="ReactionGlyph_16" reaction="Reaction_16">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="292.98254669788719" y="261.93372503115683"/>
                <End x="278.04885415717592" y="263.3425639500918"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_69" name="SpeciesReferenceGlyph_35" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="292.98254669788719" y="261.93372503115683"/>
                    <End x="312.01570042753156" y="260.13814449062431"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_70" name="SpeciesReferenceGlyph_36" metaboliteGlyph="Layout_15" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="278.04885415717592" y="263.3425639500918"/>
                    <End x="259.01570042753156" y="265.13814449062431"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_71" name="ReactionGlyph_17" reaction="Reaction_17">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="990.09461694567096" y="104.73923563739538"/>
                <End x="976.93678390939215" y="97.537053343853302"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_72" name="SpeciesReferenceGlyph_37" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="990.09461694567096" y="104.73923563739538"/>
                    <End x="1031.0157004275316" y="127.13814449062434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_73" name="SpeciesReferenceGlyph_38" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="976.93678390939215" y="97.537053343853302"/>
                    <End x="936.01570042753156" y="75.138144490624342"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_74" name="TextGlyph" graphicalObject="Layout_3" text="infected-nontested">
          <BoundingBox>
            <Position x="611.01570042753156" y="125.13814449062434"/>
            <Dimensions width="312" height="55"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_75" name="TextGlyph_1" graphicalObject="Layout_4" text="infected-tested">
          <BoundingBox>
            <Position x="634.01570042753156" y="235.13814449062434"/>
            <Dimensions width="276" height="55"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_76" name="TextGlyph_2" graphicalObject="Layout_5" text="innocent-nontested">
          <BoundingBox>
            <Position x="269.01570042753156" y="126.13814449062434"/>
            <Dimensions width="281" height="52"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_77" name="TextGlyph_3" graphicalObject="Layout_6" text="inocent-tested">
          <BoundingBox>
            <Position x="312.01570042753156" y="234.13814449062434"/>
            <Dimensions width="231" height="52"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_78" name="TextGlyph_4" graphicalObject="Layout_7" text="symptoms-tested">
          <BoundingBox>
            <Position x="1041.0157004275316" y="237.13814449062434"/>
            <Dimensions width="309" height="53"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_79" name="TextGlyph_5" graphicalObject="Layout_8" text="symptoms-nontested">
          <BoundingBox>
            <Position x="1031.0157004275316" y="127.13814449062434"/>
            <Dimensions width="319" height="53"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_80" name="TextGlyph_6" graphicalObject="Layout_9" text="recovered-tested">
          <BoundingBox>
            <Position x="1049.0157004275316" y="349.13814449062431"/>
            <Dimensions width="299" height="44"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_81" name="TextGlyph_7" graphicalObject="Layout_10" text="recovered-nontested">
          <BoundingBox>
            <Position x="1027.0157004275316" y="25.138144490624342"/>
            <Dimensions width="317" height="49"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_82" name="TextGlyph_8" graphicalObject="Layout_11" text="S">
          <BoundingBox>
            <Position x="59.015700427531556" y="132.13814449062434"/>
            <Dimensions width="59" height="45"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_83" name="TextGlyph_9" graphicalObject="Layout_12" text="contagious coefficient (computed)">
          <BoundingBox>
            <Position x="27.015700427531556" y="343.13814449062431"/>
            <Dimensions width="492" height="55"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_84" name="TextGlyph_10" graphicalObject="Layout_13" text="Corona-dead-tested">
          <BoundingBox>
            <Position x="607.01570042753156" y="354.13814449062431"/>
            <Dimensions width="322" height="47"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_85" name="TextGlyph_11" graphicalObject="Layout_14" text="Corona-dead-nontested">
          <BoundingBox>
            <Position x="598.01570042753156" y="32.138144490624342"/>
            <Dimensions width="338" height="43"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_86" name="TextGlyph_12" graphicalObject="Layout_15" text="innocent-dead">
          <BoundingBox>
            <Position x="29.015700427531556" y="240.13814449062434"/>
            <Dimensions width="230" height="50"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_87" name="TextGlyph_13" graphicalObject="Layout_16" text="total population">
          <BoundingBox>
            <Position x="70.015700427531556" y="66.138144490624342"/>
            <Dimensions width="244" height="39"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
      <ListOfRenderInformation>
        <RenderInformation key="LocalRenderInformation_0" backgroundColor="#FFFFFFFF">
          <ListOfColorDefinitions>
            <ColorDefinition id="black" value="#000000"/>
            <ColorDefinition id="ColorDefinition" value="#cc99ff"/>
            <ColorDefinition id="ColorDefinition_1" value="#ccffcc"/>
            <ColorDefinition id="ColorDefinition_2" value="#ffff66"/>
            <ColorDefinition id="ColorDefinition_3" value="#ff9900"/>
            <ColorDefinition id="ColorDefinition_4" value="#33cc00"/>
            <ColorDefinition id="ColorDefinition_5" value="#ff6666"/>
            <ColorDefinition id="ColorDefinition_6" value="#cccccc"/>
            <ColorDefinition id="ColorDefinition_7" value="#ff00cc"/>
            <ColorDefinition id="ColorDefinition_8" value="#33ff33"/>
          </ListOfColorDefinitions>
          <ListOfLineEndings>
            <LineEnding id="modifier_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Polygon stroke="#000000" fill="#000000">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="50%" y="100%"/>
                    <Element x="100%" y="50%"/>
                    <Element x="50%" y="0"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
            <LineEnding id="inhibitor_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="0" y="-5"/>
                <Dimensions width="3" height="10"/>
              </BoundingBox>
              <Group>
                <Rectangle stroke-width="1" fill="#000000" x="0" y="0" width="100%" height="100%"/>
              </Group>
            </LineEnding>
            <LineEnding id="activator_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Polygon>
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="0" y="100%"/>
                    <Element x="100%" y="50%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
            <LineEnding id="catalysis_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="#ffffff" cx="5" cy="5" rx="5" ry="5"/>
              </Group>
            </LineEnding>
            <LineEnding id="product_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-10" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Polygon fill="#000000">
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="0" y="100%"/>
                    <Element x="100%" y="50%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
          </ListOfLineEndings>
          <ListOfStyles>
            <Style key="LocalStyle_0" typeList="REACTIONGLYPH SPECIESREFERENCEGLYPH">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              </Group>
            </Style>
            <Style key="LocalStyle_1" roleList="modifier">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="modifier_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_2" roleList="inhibitor">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="inhibitor_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_3" roleList="activator">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="activator_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_4" keyList="Layout_20 Layout_27 Layout_52">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="catalysis_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_5">
              <Group stroke="black" stroke-width="1" stroke-dasharray="5, 5" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="catalysis_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_6" roleList="product sideproduct">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="product_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_7" roleList="sidesubstrate substrate">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              </Group>
            </Style>
            <Style key="LocalStyle_8" keyList="Layout_74">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="30" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_9" keyList="Layout_75">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="30" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_10" keyList="Layout_76">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="30" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_11" keyList="Layout_77">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="30" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_12" keyList="Layout_78">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="30" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_13" keyList="Layout_79">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="30" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_14" keyList="Layout_80">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="30" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_15" keyList="Layout_81">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="30" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_16" keyList="Layout_82">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="30" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_17" keyList="Layout_83">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="30" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_18" keyList="Layout_84">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="30" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_19" keyList="Layout_85">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="30" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_20" keyList="Layout_86">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="30" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_21" keyList="Layout_87">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="30" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_22" keyList="Layout_3">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="15%" y="0"/>
                    <Element x="85%" y="0"/>
                    <Element x="100%" y="50%"/>
                    <Element x="85%" y="100%"/>
                    <Element x="15%" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_23" keyList="Layout_6">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_1">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="15%" y="0"/>
                    <Element x="85%" y="0"/>
                    <Element x="100%" y="50%"/>
                    <Element x="85%" y="100%"/>
                    <Element x="15%" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_24" keyList="Layout_4">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_2">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="15%" y="0"/>
                    <Element x="85%" y="0"/>
                    <Element x="100%" y="50%"/>
                    <Element x="85%" y="100%"/>
                    <Element x="15%" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_25" keyList="Layout_5">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_1">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="15%" y="0"/>
                    <Element x="85%" y="0"/>
                    <Element x="100%" y="50%"/>
                    <Element x="85%" y="100%"/>
                    <Element x="15%" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_26" keyList="Layout_7">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_3">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="15%" y="0"/>
                    <Element x="85%" y="0"/>
                    <Element x="100%" y="50%"/>
                    <Element x="85%" y="100%"/>
                    <Element x="15%" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_27" keyList="Layout_8">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="15%" y="0"/>
                    <Element x="85%" y="0"/>
                    <Element x="100%" y="50%"/>
                    <Element x="85%" y="100%"/>
                    <Element x="15%" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_28" keyList="Layout_9">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_4">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="15%" y="0"/>
                    <Element x="85%" y="0"/>
                    <Element x="100%" y="50%"/>
                    <Element x="85%" y="100%"/>
                    <Element x="15%" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_29" keyList="Layout_11">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_1" x="0" y="0" width="59" height="45" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_30" keyList="Layout_12">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_5">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="15%" y="0"/>
                    <Element x="85%" y="0"/>
                    <Element x="100%" y="50%"/>
                    <Element x="85%" y="100%"/>
                    <Element x="15%" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_31" keyList="Layout_15">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_6">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="15%" y="0"/>
                    <Element x="85%" y="0"/>
                    <Element x="100%" y="50%"/>
                    <Element x="85%" y="100%"/>
                    <Element x="15%" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_32" keyList="Layout_13">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_7">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="15%" y="0"/>
                    <Element x="85%" y="0"/>
                    <Element x="100%" y="50%"/>
                    <Element x="85%" y="100%"/>
                    <Element x="15%" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_33" keyList="Layout_14">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_6">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="15%" y="0"/>
                    <Element x="85%" y="0"/>
                    <Element x="100%" y="50%"/>
                    <Element x="85%" y="100%"/>
                    <Element x="15%" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_34" keyList="Layout_10">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="15%" y="0"/>
                    <Element x="85%" y="0"/>
                    <Element x="100%" y="50%"/>
                    <Element x="85%" y="100%"/>
                    <Element x="15%" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_35" keyList="Layout_16">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_8">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="15%" y="0"/>
                    <Element x="85%" y="0"/>
                    <Element x="100%" y="50%"/>
                    <Element x="85%" y="100%"/>
                    <Element x="15%" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
          </ListOfStyles>
        </RenderInformation>
      </ListOfRenderInformation>
    </Layout>
  </ListOfLayouts>
  <SBMLReference file="Wff1Corona_Lux_2020-03-20_1340 intermittentD.xml">
    <SBMLMap SBMLid="Birth_rate" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="Corona_death_rate_constant" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="Corona_recover" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="Corona_registered" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="Government_induced_isolation" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="Infection_from_non_tesed_no_symptoms" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="Infection_from_non_tested_symptoms" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="Infection_from_tested_no_symtoms" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="Infection_from_tested_symptoms" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="Normal_death" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="Social_Distance" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="Symptoms_appear" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="Testing_Randome" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Testing_for_Symptoms" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Time_goverment_action" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="Total_Infection_coefficient" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="__corona_dead" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="default" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="intermittent_time" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="lockdown_duration" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="lockdown_pause_duration" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="n_lockdowns" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="n_pauses" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="population_growth" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="re1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="re10" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="re11" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="re12" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="re13" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="re14" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="re15" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="re16" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="re17" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="re18" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="re2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="re3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="re4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="re5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="re6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="re7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="re8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="re9" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="s13" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="s14" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="s15" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="s16" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="s18" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="s25" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="s29" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="s4" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="s5" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="s6" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="s7" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="s8" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="s9" COPASIkey="Metabolite_5"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_0" name="meter" symbol="m">
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_2" name="second" symbol="s">
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_7" name="dimensionless" symbol="1">
      <Expression>
        1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_8" name="item" symbol="#">
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_34" name="day" symbol="d">
      <Expression>
        86400*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
