<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2020-04-29T11:45:29Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="27" versionDevel="217" copasiSourcesModified="0">
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
  </ListOfFunctions>
  <Model key="Model_0" name="SIDARTHE Connecticut Model 5" simulationType="time" timeUnit="d" volumeUnit="1" areaUnit="1" lengthUnit="1" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Giordano, G., Blanchini, F., Bruno, R. et al. Modelling the COVID-19 epidemic and implementation of population-wide interventions in Italy. Nat Med (2020).</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1038/s41591-020-0883-7"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:21:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>pmendes@uchc.edu</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Mendes</vCard:Family>
            <vCard:Given>Pedro</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>University of Connecticut</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml"><h1>SIDARTHE model of Connecticut COVID-19 epidemic</h1>
<p>This model is an implementation of the model described in a the paper by <a href="https://doi.org/10.1038/s41591-020-0883-7">Giordano et al. doi:10.1038/s41591-020-0883-7</a> calibrated with Connecticut data. </p>

<p>Events/Interventions:</p>
<ul>
 <li>Day 0 - March 8, first day with diagnosed > 0.</li>
 <li>Day 1- March 9, tests at an average 17.1 per day</li>
 <li>Day 8 - March 16, policy of max 50 people gatherings, closed gyms and theaters; restaurants and bars takeout only. This reduces the infection parameters</li>
 <li>Day 10 - March 18, tests  increase so does parameter theta</li>
 <li>Day 15 - March 23, shelter-in-place policy declared. Infection parameters reduce again.</li> 
 <li>Day 19 - March 27, tests  increase so does parameter theta</li> 
 <li>Day 29 - April 6, tests  increase so does parameter theta</li> 
 <li>Day 74 - May 21, simulate relaxation of infection parameters by 50%</li>
</ul>

<p xmlns:dct="http://purl.org/dc/terms/">
  <a rel="license" href="http://creativecommons.org/publicdomain/zero/1.0/">
    CC0 license
  </a>
  <br />
  To the extent possible under law,
  <a rel="dct:publisher" href="http://www.comp-sys-bio.org">
    <span property="dct:title">Pedro Mendes</span></a>
  has waived all copyright and related or neighboring rights to
  <span property="dct:title">SIDARTHE-CT_Model5.cps</span>.
</p>
</body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T14:40:01Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="I" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:40:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="S" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:40:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="D" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:40:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="A" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:41:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="R" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:41:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="T" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:45:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="E" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:46:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="H" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:46:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="alpha" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="beta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.2
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="gamma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.1
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="delta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.05
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="epsilon" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="zeta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="eta" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:27:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="theta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:28:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="kappa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:29:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="lambda" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:29:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="mu" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:29:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="nu" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:29:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="xi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:31:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="rho" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:31:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="sigma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:31:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="tau" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:32:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="DRT" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T18:54:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="IDARTHE" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:08:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="IDART" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:10:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="Recovered" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T20:39:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="Diagnosed Cumulative infected" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T20:50:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[DRT],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Recovered],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="r1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:31:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="r2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:32:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="r3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:33:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="r4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:34:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="r5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:34:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="Perceived CFR" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:36:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>/((&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r3],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=Value>*(&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=Value>))/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r3],Reference=Value>)*(&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration>)+(&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=Value>)/&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r3],Reference=Value>*(&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="CFR" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:45:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="R0" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T00:00:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r2],Reference=Value>)+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r3],Reference=Value>)+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r2],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r4],Reference=Value>)+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r3],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r4],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="gamma_pop" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T17:59:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="Population" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T18:00:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          #
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="alpha_pop" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T18:07:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="beta_pop" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T18:07:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="delta_pop" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T18:08:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="scale" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T22:54:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="f_epsilon" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-27T19:10:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="f_theta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-27T19:12:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="f_mu" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-27T19:24:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_nu],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="f_nu" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-27T19:24:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="day8x" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-31T01:43:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="day15x" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-31T01:44:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="f_lambda" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-01T02:08:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="f_kappa" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-01T02:08:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.5*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_lambda],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="f_sigma" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-01T02:09:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_kappa],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="f_xi" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-01T02:09:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_kappa],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="f_rho" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-01T02:09:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_lambda],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="Tpeak" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T01:20:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="Tpeaktime" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T01:23:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="New cases" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T13:50:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R],Reference=Flux>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="New diagnosed" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T13:52:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I],Reference=Flux>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="Tnonew" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T13:53:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="Tot_reduction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T13:47:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x],Reference=InitialValue>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="ImmuneRatio" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-13T19:01:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="ApplyRelaxationMay1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-14T18:52:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="contagion_I" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:39:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2901" name="k1" value="2.79903e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="contagion_D" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:40:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2902" name="k1" value="5.59806e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="contagion_A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:40:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2938" name="k1" value="2.79903e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="contagion_R" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:41:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2941" name="k1" value="1.39952e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="diagnosis_I" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:43:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2940" name="k1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="symptoms_I" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:44:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2928" name="k1" value="0.0392226"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="symptoms_D" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:44:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2939" name="k1" value="0.0392226"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="diagnosis_A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:45:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2933" name="k1" value="0.00091306"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="critical_A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:45:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2932" name="k1" value="0.03"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="critical_R" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:45:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2960" name="k1" value="0.03"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:46:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2967" name="k1" value="0.042672"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="healing_I" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:46:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2966" name="k1" value="0.0704078"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="healing_D" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:46:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2985" name="k1" value="0.0704078"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="healing_A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:47:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2991" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="healing_R" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:47:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2992" name="k1" value="0.0704078"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="healing_T" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:47:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2990" name="k1" value="0.120143"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="Day 15" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T18:33:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Shelter-in-place order, no gatherings more than 5 people
        </Comment>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time> > 15
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha]" targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma]" targetKey="ModelValue_2">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta]" targetKey="ModelValue_1">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta]" targetKey="ModelValue_3">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=InitialValue>*50
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="Day 08" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T17:37:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          >50 people gatherings banned; restaurants + bars in take-out, sports events banned
        </Comment>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time> > 8
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha]" targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma]" targetKey="ModelValue_2">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta]" targetKey="ModelValue_1">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta]" targetKey="ModelValue_3">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="Day 11" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-30T17:24:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time> > 10
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=InitialValue>*20
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_3" name="T peak detection" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T01:20:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Rate> &lt; 0
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeak]" targetKey="ModelValue_46">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeaktime]" targetKey="ModelValue_47">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_4" name="T no new case" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T01:20:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New diagnosed],Reference=Value> &lt; 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tnonew]" targetKey="ModelValue_50">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_5" name="Day 19" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-30T17:24:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time> > 18
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=InitialValue>*95
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_6" name="Day 29" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-30T17:24:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time> > 28
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=InitialValue>*150
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_7" name="May 1 relaxation" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T18:33:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Shelter-in-place order, no gatherings more than 5 people
        </Comment>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time> > 74 &amp;&amp; &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ApplyRelaxationMay1],Reference=Value> == 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha]" targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*(1-(1-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction],Reference=Value>)/2)
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma]" targetKey="ModelValue_2">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma],Reference=InitialValue>*(1-(1-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction],Reference=Value>)/2)
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta]" targetKey="ModelValue_1">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta],Reference=InitialValue>*(1-(1-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction],Reference=Value>)/2)
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta]" targetKey="ModelValue_3">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta],Reference=InitialValue>*(1-(1-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction],Reference=Value>)/2)
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_8" name="Day 47" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-26T12:54:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time> > 46
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=InitialValue>*165
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-29T11:45:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.1579987330469443" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.842001054" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A]" value="2.1282783080802769e-07" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha]" value="0.99999999999658651" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta]" value="0.19999999999931731" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma]" value="0.099999999999658654" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta]" value="0.049999999999829327" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta]" value="0.03922258014402568" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta]" value="0.03922258014402568" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta]" value="0.00091305955250338227" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa]" value="0.010000000012075327" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda]" value="0.0704078204633687" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu]" value="0.030000000000005706" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu]" value="0.030000000000005706" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi]" value="0.070407820331509552" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho]" value="0.0704078204633687" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma]" value="0.12014312560575742" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau]" value="0.042672000436220929" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDARTHE]" value="1.1579989458747753" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDART]" value="1.1579989458747753" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1]" value="0.10963040060739437" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r2]" value="0.10963040060739437" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r3]" value="0.040913059564584416" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r4]" value="0.10040782033151525" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r5]" value="0.16281512604197834" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Perceived CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0]" value="10.000000005427745" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop]" value="2.7990309754667356e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop]" value="2.7990309754667355e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop]" value="5.5980619509334713e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop]" value="1.3995154877333678e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x]" value="0.47347745645153183" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x]" value="0.25000000000000139" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New cases]" value="1.1579983789865427" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New diagnosed]" value="1.9432448395784332e-10" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction]" value="0.11836936411288361" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.7990309754667355e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.5980619509334713e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="2.7990309754667356e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="1.3995154877333678e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.03922258014402568" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.03922258014402568" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.00091305955250338227" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.030000000000005706" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.030000000000005706" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.042672000436220929" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.0704078204633687" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.0704078204633687" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.010000000012075327" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.070407820331509552" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.12014312560575742" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_22" name="Model5 - 4/21">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_22">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-22T03:20:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A]" value="2.2710491535199303e-10" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha]" value="0.94328863932564821" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta]" value="0.18865772786512966" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma]" value="0.09432886393256483" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta]" value="0.047164431966282415" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta]" value="0.0072414521576865017" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta]" value="0.0072414521576865017" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta]" value="0.00063490001422277658" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda]" value="0.091103382179247794" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu]" value="0.01632439890557362" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu]" value="0.01632439890557362" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi]" value="0.091103382179247794" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho]" value="0.091103382179247794" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma]" value="0.048111291788608519" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau]" value="0.03998017723708211" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDARTHE]" value="1.000000000227105" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDART]" value="1.000000000227105" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1]" value="0.098344834336934292" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r2]" value="0.098344834336934292" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r3]" value="0.017059298919796396" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r4]" value="0.10742778108482141" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r5]" value="0.088091469025690622" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0]" value="10.000000036129427" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop]" value="2.6402941202873717e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop]" value="2.6402941202873713e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop]" value="5.2805882405747435e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop]" value="1.3201470601436859e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New cases]" value="0.94328837531765863" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New diagnosed]" value="1.4418891398704286e-13" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction]" value="0.090000000000000011" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.6402941202873713e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.2805882405747435e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="2.6402941202873717e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="1.3201470601436859e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.0072414521576865017" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.0072414521576865017" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.00063490001422277658" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.01632439890557362" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.01632439890557362" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.03998017723708211" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.091103382179247794" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.091103382179247794" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.091103382179247794" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.048111291788608519" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_21" name="Model5 - 4/22">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-22T03:20:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000000000018032" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999999925" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A]" value="7.6464097332111719e-09" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha]" value="0.69531379588830622" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta]" value="0.13906275917766125" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma]" value="0.069531379588830627" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta]" value="0.034765689794415314" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta]" value="0.0500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta]" value="0.0500000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta]" value="0.0014841750650827091" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa]" value="0.010000000000031792" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda]" value="0.023093166802733305" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu]" value="0.050000000000025448" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu]" value="0.050000000000025448" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho]" value="0.023093166802733305" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma]" value="0.18927301919835171" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau]" value="0.040129002273764744" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDARTHE]" value="1.000000007648213" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDART]" value="1.000000007648213" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1]" value="0.073093166802733409" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r2]" value="0.073093166802733409" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r3]" value="0.061484175065139951" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r4]" value="0.08000000000002544" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r5]" value="0.22940202147211647" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0]" value="10.293471524801761" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop]" value="1.9462048523673681e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop]" value="1.9462048523673678e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop]" value="3.8924097047347361e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop]" value="9.7310242618368403e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x]" value="0.13315074968178742" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New cases]" value="0.69531360180073865" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New diagnosed]" value="1.1348610663437752e-11" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction]" value="0.13315074968178742" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="1.9462048523673678e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="3.8924097047347361e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.9462048523673681e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="9.7310242618368403e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.0500000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.0500000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0014841750650827091" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000025448" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000025448" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.040129002273764744" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.023093166802733305" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.023093166802733305" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.010000000000031792" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.18927301919835171" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_20" name="Model5 - 4/22b">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-22T03:20:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.000000000018382" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.5107432267085818e-15" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha]" value="0.73755091463658595" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta]" value="0.14751018292731718" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma]" value="0.073755091463658592" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta]" value="0.036877545731829296" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta]" value="0.050000000014693465" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta]" value="0.050000000014693465" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta]" value="0.0014386995788430777" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa]" value="0.010000000005162017" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda]" value="0.029811395387703683" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu]" value="0.050000000000551062" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu]" value="0.050000000000551062" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho]" value="0.029811395387703683" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma]" value="0.19116177794585892" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau]" value="0.03998036243963226" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDARTHE]" value="1.0000000000183835" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDART]" value="1.0000000000183835" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1]" value="0.079811395402397151" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r2]" value="0.079811395402397151" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r3]" value="0.06143869958455616" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r4]" value="0.080000000000551061" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r5]" value="0.23114214038549119" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0]" value="10.000000002013387" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop]" value="2.0644278560586732e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop]" value="2.0644278560586732e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop]" value="4.1288557121173464e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop]" value="1.0322139280293366e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x]" value="0.89638650033460687" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x]" value="0.15059507544605119" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New cases]" value="0.73755070820735813" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New diagnosed]" value="2.1735056440056689e-18" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction]" value="0.13499139264671192" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.0644278560586732e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="4.1288557121173464e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="2.0644278560586732e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="1.0322139280293366e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.050000000014693465" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.050000000014693465" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0014386995788430777" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000551062" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000551062" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.03998036243963226" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.029811395387703683" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.029811395387703683" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.010000000005162017" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.19116177794585892" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_19" name="Model5 - 4/23">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-24T03:51:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000000006801599" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999999912" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A]" value="8.5940230849999992e-09" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha]" value="0.70059618466325324" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta]" value="0.14011923693265066" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma]" value="0.07005961846632533" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta]" value="0.035029809233162665" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta]" value="0.050000000063963025" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta]" value="0.050000000063963025" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta]" value="0.0013539088980391485" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa]" value="0.010000000000004063" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda]" value="0.025785050770753066" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu]" value="0.050000000000492796" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu]" value="0.050000000000492796" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho]" value="0.025785050770753066" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma]" value="0.1982886423739337" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau]" value="0.040751589611573616" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDARTHE]" value="1.000000009274183" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDART]" value="1.000000009274183" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1]" value="0.075785050834716094" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r2]" value="0.075785050834716094" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r3]" value="0.061353908898536008" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r4]" value="0.080000000000492788" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r5]" value="0.23904023198550733" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0]" value="10.004268299274015" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop]" value="1.9609904221729529e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop]" value="1.9609904221729527e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop]" value="3.9219808443459059e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop]" value="9.8049521108647646e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x]" value="0.99999999911584836" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x]" value="0.13358131796438308" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New cases]" value="0.70059598964282044" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New diagnosed]" value="1.1635524324735352e-11" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction]" value="0.13358131784627694" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="1.9609904221729527e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="3.9219808443459059e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.9609904221729529e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="9.8049521108647646e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.050000000063963025" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.050000000063963025" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0013539088980391485" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000492796" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000492796" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.040751589611573616" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.025785050770753066" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.025785050770753066" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.010000000000004063" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.1982886423739337" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_18" name="Model5 - 4/25">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_18">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-26T12:39:58Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000000000020353" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999999986" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.3610352849986489e-09" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha]" value="0.70604369808549305" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta]" value="0.14120873961709862" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma]" value="0.070604369808549311" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta]" value="0.035302184904274655" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta]" value="0.050000000051545188" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta]" value="0.050000000051545188" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta]" value="0.0011330259588414756" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa]" value="0.010000000000479332" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda]" value="0.025147447548331613" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu]" value="0.050000000000138101" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu]" value="0.050000000000138101" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho]" value="0.025147447548331613" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma]" value="0.21542670729316268" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau]" value="0.041874690574095708" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDARTHE]" value="1.0000000013630705" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDART]" value="1.0000000013630705" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1]" value="0.075147447599876793" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r2]" value="0.075147447599876793" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r3]" value="0.061133025959458909" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r4]" value="0.0800000000001381" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r5]" value="0.25730139786725836" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0]" value="10.169329135358387" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop]" value="1.976238180981125e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop]" value="1.9762381809811249e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop]" value="3.95247636196225e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop]" value="9.881190904905625e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x]" value="0.99999999973243392" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x]" value="0.12489157688599713" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New cases]" value="0.70604350055920673" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New diagnosed]" value="1.5420883088026751e-12" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction]" value="0.12489157685258037" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="1.9762381809811249e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="3.95247636196225e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.976238180981125e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="9.881190904905625e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.050000000051545188" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.050000000051545188" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0011330259588414756" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000138101" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000138101" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.041874690574095708" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.025147447548331613" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.025147447548331613" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.010000000000479332" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.21542670729316268" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_17" name="Model5 - 4/27">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_17">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-26T12:39:58Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000000000630047" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999999884" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.1644271059473553e-08" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha]" value="0.71169674078118117" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta]" value="0.14233934815623625" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma]" value="0.071169674078118125" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta]" value="0.035584837039059063" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta]" value="0.05000000005841073" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta]" value="0.05000000005841073" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta]" value="0.00096579760827757188" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa]" value="0.010000000002316116" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda]" value="0.024591637054766264" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu]" value="0.050000000002586642" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu]" value="0.050000000002586642" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho]" value="0.024591637054766264" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma]" value="0.23011664211943073" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau]" value="0.042410797152036488" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDARTHE]" value="1.0000000117072758" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDART]" value="1.0000000117072758" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1]" value="0.074591637113176998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r2]" value="0.074591637113176998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r3]" value="0.060965797613180328" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r4]" value="0.080000000002586641" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r5]" value="0.27252743927146722" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0]" value="10.328471423367297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop]" value="1.9920612225920461e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop]" value="1.9920612225920459e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop]" value="3.9841224451840922e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop]" value="9.9603061129602306e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x]" value="0.99999999985254628" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x]" value="0.11561655836065357" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New cases]" value="0.71169654244861558" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New diagnosed]" value="1.1246009139375306e-11" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction]" value="0.11561655834360549" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="1.9920612225920459e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="3.9841224451840922e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.9920612225920461e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="9.9603061129602306e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.05000000005841073" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.05000000005841073" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.00096579760827757188" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.050000000002586642" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.050000000002586642" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.042410797152036488" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.024591637054766264" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.024591637054766264" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.010000000002316116" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.23011664211943073" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
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
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 1.1579987330469443 0 0 0 2.1282783080802769e-07 0 3572663.842001054 0 0.03922258014402568 0.030000000000005706 0.0704078204633687 0 1.1579989458747753 1.1579989458747753 0 0.10963040060739437 0.10963040060739437 0.040913059564584416 0.10040782033151525 0.16281512604197834 NaN NaN 10.000000005427745 2.7990309754667356e-08 2.7990309754667355e-07 5.5980619509334713e-08 1.3995154877333678e-08 0.059999999999999998 0.11077520991184649 0.11077520991184649 0.11077520991184649 0.22155041982369297 1.1579983789865427 1.9432448395784332e-10 0.11836936411288361 0 1 0.99999999999658651 0.19999999999931731 0.099999999999658654 0.049999999999829327 0 0.03922258014402568 0.00091305955250338227 0.010000000012075327 0.0704078204633687 0.030000000000005706 0.070407820331509552 0.12014312560575742 0.042672000436220929 3572665 0.78222655465241187 0.29999999999999999 0.0054878294478546081 0.059999999999999998 0.47347745645153183 0.25000000000000139 0.22155041982369297 -1 -1 -1 0 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_0" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="9.9999999999999994e-12"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_24" target="timecourses.txt" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="1"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="412"/>
        <Parameter name="StepSize" type="float" value="0.51094890510000002"/>
        <Parameter name="Duration" type="float" value="210"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value="0 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90 92 94 96 98 100 102 104 106 108 110 112 114 116 118 120 122 124 126 128 130 132 134 136 138 140 142 144 146 148 150 152 154 156 158 160 162 164 166 168 170 172 174 176 178 180 182 184 186 188 190 192 194 196 198 200 800"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-08"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Scan" type="scan" scheduled="true" updateModel="false">
      <Report reference="Report_23" target="ct-Model1-sampling-TC-4-8-2020.txt" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="1"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ApplyRelaxationMay1],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value=""/>
            <Parameter name="Use Values" type="bool" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="1"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_10" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="1"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.6"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <Parameter name="StartValue" type="float" value="0.72416446759999997"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1e-6"/>
            <Parameter name="UpperBound" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.21627369042058708"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Hooke &amp; Jeeves" type="HookeJeeves">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Tolerance" type="float" value="1.0000000000000001e-05"/>
        <Parameter name="Rho" type="float" value="0.20000000000000001"/>
      </Method>
    </Task>
    <Task key="Task_8" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="true">
      <Report reference="Report_20" target="" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <Parameter name="StartValue" type="float" value="2.1282783080000001e-07"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <Parameter name="StartValue" type="float" value="1.1579987330469443"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.005"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <Parameter name="StartValue" type="float" value="0.99999999999658651"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="0.05"/>
            <Parameter name="StartValue" type="float" value="0.00091305955250338227"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <Parameter name="StartValue" type="float" value="0.0704078204633687"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.01"/>
            <Parameter name="UpperBound" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.010000000012075327"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.03"/>
            <Parameter name="UpperBound" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.070407820331509552"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.4"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <Parameter name="StartValue" type="float" value="0.47347745645153183"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.25"/>
            <Parameter name="UpperBound" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.25000000000000139"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.03"/>
            <Parameter name="UpperBound" type="cn" value="0.5"/>
            <Parameter name="StartValue" type="float" value="0.03922258014402568"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.03"/>
            <Parameter name="UpperBound" type="cn" value="0.5"/>
            <Parameter name="StartValue" type="float" value="0.030000000000005706"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.03"/>
            <Parameter name="UpperBound" type="cn" value="0.5"/>
            <Parameter name="StartValue" type="float" value="0.12014312560575742"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="0.114942528735632"/>
            <Parameter name="StartValue" type="float" value="0.042672000436220929"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="10"/>
            <Parameter name="UpperBound" type="cn" value="15"/>
            <Parameter name="StartValue" type="float" value="3.3213046550000001"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="Experiment">
            <Parameter name="Key" type="key" value="Experiment_0"/>
            <Parameter name="File Name" type="file" value="CT-COVID19.tsv"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="52"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value="&#x09;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="8"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Particle Swarm" type="ParticleSwarm">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="20000"/>
        <Parameter name="Swarm Size" type="unsignedInteger" value="50"/>
        <Parameter name="Std. Deviation" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Iterations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_0"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_5" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_4" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="2"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="43"/>
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
    <Task key="Task_3" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_2" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_1" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_0"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_13" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
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
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_1" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <Report key="Report_20" name="summary PE" taskType="scan" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0],Reference=Value"/>
      </Table>
    </Report>
    <Report key="Report_21" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_22" name="TC-summary" taskType="timeCourse" separator="&#x09;" precision="10">
      <Comment>
      </Comment>
      <Header>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction],Reference=InitialValue,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[scale],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_theta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_lambda],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_kappa],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Perceived CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeak],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeaktime],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tnonew],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[DRT],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Diagnosed Cumulative infected],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDARTHE],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDART],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New cases],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New diagnosed],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Recovered],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_epsilon],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_mu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_nu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_rho],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_sigma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_xi],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r2],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r3],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r4],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r5],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration,Property=DisplayName"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[scale],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_theta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_lambda],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_kappa],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Perceived CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeak],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeaktime],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tnonew],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[DRT],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDARTHE],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDART],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New cases],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New diagnosed],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Recovered],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_epsilon],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_mu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_nu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_rho],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_sigma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_xi],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r2],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r3],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r4],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r5],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
      </Footer>
    </Report>
    <Report key="Report_23" name="TC variables, fluxes, global quantities" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[CFR],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[DRT],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDARTHE],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDART],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New cases],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New diagnosed],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Perceived CFR],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Recovered],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tnonew],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeak],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeaktime],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_epsilon],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_kappa],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_lambda],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_mu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_nu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_rho],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_sigma],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_theta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[f_xi],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r1],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r2],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r3],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r4],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[r5],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[scale],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=Value"/>
      </Table>
    </Report>
    <Report key="Report_24" name="TC-summary2" taskType="timeCourse" separator="&#x09;" precision="10">
      <Comment>
      </Comment>
      <Header>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction],Reference=InitialValue,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Perceived CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeak],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeaktime],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=ImmuneRatio"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tnonew],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[DRT],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Diagnosed Cumulative infected],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDARTHE],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDART],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New cases],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New diagnosed],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Recovered],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration,Property=DisplayName"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day8x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[day15x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tot_reduction],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Perceived CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeak],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tpeaktime],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[ImmuneRatio],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Tnonew],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[DRT],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDARTHE],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDART],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New cases],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New diagnosed],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Population],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Recovered],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Time course" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="A" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="CFR" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[CFR],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="D" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="DRT" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[DRT],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Diagn cumul infected" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="E" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="H" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="I" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="IDART" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDART],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="IDARTHE" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[IDARTHE],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="New cases" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New cases],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="New diagnosed" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[New diagnosed],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Perceived CFR" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Perceived CFR],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="R" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="R0" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Recovered" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[Recovered],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="S" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="T" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Progress of Fit" type="Plot2D" active="1" taskTypes="Parameter Estimation">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="1"/>
      <ListOfPlotItems>
        <PlotItem name="sum of squares" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="parameters" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="R0" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[R0],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="alpha" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[alpha],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="beta" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[beta],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="delta" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[delta],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="epsilon" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[epsilon],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="eta" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[eta],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="gamma" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[gamma],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="kappa" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[kappa],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="lambda" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[lambda],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="mu" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[mu],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="nu" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[nu],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="rho" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[rho],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="sigma" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[sigma],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="tau" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[tau],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="theta" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[theta],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="xi" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[xi],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="zeta" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Values[zeta],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Parameter Estimation Result" type="Plot2D" active="1" taskTypes="Parameter Estimation">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Acc Inf (data)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Acc Inf (model)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="E (data)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="E (model)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="T (data)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="T (model)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fluxes" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="contagion_A" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_A],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="contagion_D" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_D],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="contagion_I" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_I],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="contagion_R" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[contagion_R],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="critical_A" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_A],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="critical_R" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[critical_R],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="death" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[death],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="diagnosis_A" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_A],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="diagnosis_I" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[diagnosis_I],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="healing_A" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_A],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="healing_D" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_D],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="healing_I" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_I],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="healing_R" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_R],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="healing_T" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[healing_T],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="symptoms_D" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_D],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="symptoms_I" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 5,Vector=Reactions[symptoms_I],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="SIDARTHE.xml">
    <SBMLMap SBMLid="A" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="CFR" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="D" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="DRT" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="Diagn_cumul_infected" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="E" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="H" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="I" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="IDART" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="IDARTHE" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="Perceived_CFR" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="R" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="R0" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="Recovered" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="S" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="T" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="beta" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="contagion_A" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="contagion_D" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="contagion_I" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="contagion_R" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="critical_A" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="critical_R" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="death" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="delta" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="diagnosis_A" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="diagnosis_I" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="epsilon" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="eta" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="gamma" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="healing_A" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="healing_D" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="healing_I" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="healing_R" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="healing_T" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="kappa" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="lambda" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="mu" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="nu" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="r1" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="r2" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="r3" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="r4" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="r5" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="rho" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="sigma" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="symptoms_D" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="symptoms_I" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="tau" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="theta" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="xi" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="zeta" COPASIkey="ModelValue_5"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T14:21:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T14:21:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T14:21:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_69" name="day" symbol="d">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_68">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T14:21:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        86400*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
