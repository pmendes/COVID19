<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2020-04-29T11:43:44Z -->
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
  <Model key="Model_1" name="SIDARTHE Hartford Model 4" simulationType="time" timeUnit="d" volumeUnit="1" areaUnit="1" lengthUnit="1" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
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
  <span property="dct:title">SIDARTHE-CT_Model4.cps</span>.
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[UCH],Reference=InitialConcentration>
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
      <Metabolite key="Metabolite_8" name="UCH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_8">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:27Z</dcterms:W3CDTF>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.01
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=InitialValue>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="xi" simulationType="assignment" addNoise="false">
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
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=Value>
        </Expression>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=InitialValue>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>/((&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=Value>*(&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=Value>))/(&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3],Reference=Value>)*(&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration>)+(&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=Value>)/&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3],Reference=Value>*(&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration>))
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>/(&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration>)
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r2],Reference=Value>)+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3],Reference=Value>)+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r2],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r4],Reference=Value>)+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r4],Reference=Value>)
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=InitialValue>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=InitialValue>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=InitialValue>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=InitialValue>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_nu],Reference=Value>
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
          0.5*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_lambda],Reference=InitialValue>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_kappa],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_kappa],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_lambda],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R],Reference=Flux>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I],Reference=Flux>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x],Reference=InitialValue>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x],Reference=InitialValue>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration>/(&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration>)
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
      <ModelValue key="ModelValue_54" name="mu_UCH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_54">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:28Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="Total_Hospitalized" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_55">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:28Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[UCH],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="ZeroDay" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_56">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:28Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_5001" name="k1" value="1.41463e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5000" name="k1" value="2.82925e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_4999" name="k1" value="2.82925e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_4998" name="k1" value="1.41463e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_4997" name="k1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_4996" name="k1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_4995" name="k1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_4994" name="k1" value="0.000204627"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_4993" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_4992" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_4991" name="k1" value="0.0519911"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_4990" name="k1" value="0.532796"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_4989" name="k1" value="0.532796"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_4988" name="k1" value="0.119884"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_4987" name="k1" value="0.119884"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_4986" name="k1" value="0.0709923"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
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
      <Reaction key="Reaction_16" name="critical_A_UCH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:28Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4985" name="k1" value="0.00113027"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="critical_R_UCH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_17">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:28Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4984" name="k1" value="0.00113027"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="death_UCH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_18">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:28Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4983" name="k1" value="0.0519911"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="healing_UCH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_19">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:29Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4982" name="k1" value="0.0709923"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time> > 15
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha]" targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta]" targetKey="ModelValue_1">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=InitialValue>*50
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time> > 8
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha]" targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta]" targetKey="ModelValue_1">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time> > 10
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=InitialValue>*20
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Rate> &lt; 0
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeak]" targetKey="ModelValue_46">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeaktime]" targetKey="ModelValue_47">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_4" name="T no new case" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T01:20:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed],Reference=Value> &lt; 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tnonew]" targetKey="ModelValue_50">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time>
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time> > 18
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=InitialValue>*95
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time> > 28
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=InitialValue>*150
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_7" name="May 21 relaxation" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_7">
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time> > 74 &amp;&amp; &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ApplyRelaxationMay1],Reference=Value> == 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha]" targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*(1-(1-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction],Reference=Value>)/2)
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta]" targetKey="ModelValue_1">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta],Reference=InitialValue>*(1-(1-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction],Reference=Value>)/2)
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
        <dcterms:W3CDTF>2020-04-26T12:53:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time> > 46
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=InitialValue>*165
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_9" name="Seeding" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_9">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:29Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time> > &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ZeroDay],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I]" targetKey="Metabolite_0">
            <Expression>
              1
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
<dcterms:W3CDTF>2020-04-29T11:40:05Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S]" value="894014" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[UCH],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[UCH]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha]" value="1.2646955744674377" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta]" value="0.25293911489348758" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma]" value="0.25293911489348758" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta]" value="0.012646955744674377" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.01
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta]" value="0.050000003218481422" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta]" value="0.050000003218481422" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta]" value="0.00020462666116619291" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa]" value="0.11988373198956741" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda]" value="0.53279631431756691" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu]" value="0.01" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi]" value="0.11988373198956741" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho]" value="0.53279631431756691" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma]" value="0.070992329163668239" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau]" value="0.051991092938186122" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDARTHE]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDART]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1]" value="0.58279631753604833" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r2]" value="0.58279631753604833" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3]" value="0.13008835865073359" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r4]" value="0.1298837319895674" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r5]" value="0.12298342210185437" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Perceived CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0]" value="2.3368737849293004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop]" value="2.8292522812113408e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population]" value="894014" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop]" value="1.4146261406056704e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop]" value="2.8292522812113408e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop]" value="1.4146261406056703e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_theta]" value="0.0054878294479999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x]" value="0.9508052678302974" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x]" value="0.53558378838207543" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New cases]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction]" value="0.50923588735818459" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu_UCH]" value="0.001130265663753336" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Total_Hospitalized]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ZeroDay]" value="1.5018112153534227" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="1.4146261406056704e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="2.8292522812113408e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="2.8292522812113408e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="1.4146261406056703e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.050000003218481422" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.050000003218481422" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.00020462666116619291" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.051991092938186122" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.53279631431756691" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.53279631431756691" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.11988373198956741" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.11988373198956741" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.070992329163668239" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.001130265663753336" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu_UCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.001130265663753336" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu_UCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.051991092938186122" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.070992329163668239" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_3" name="Model4 - 4/18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-19T03:57:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572662" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha]" value="2.743326546945859" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta]" value="0.5486653093891718" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma]" value="0.5486653093891718" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta]" value="0.027433265469458592" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.01
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta]" value="0.43503207794895232" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta]" value="0.43503207794895232" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta]" value="0.0029460063404405093" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa]" value="0.00017390466950346252" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda]" value="2.1790643591723073" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu]" value="0.070000000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu]" value="0.070000000000000007" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi]" value="0.030757135443461758" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho]" value="2.1790643591723073" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma]" value="0.20303675385424774" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau]" value="0.037379812130169492" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDARTHE]" value="3" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDART]" value="3" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1]" value="2.6140964371212596" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r2]" value="2.6140964371212596" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3]" value="0.073119911009943986" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r4]" value="0.10075713544346176" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r5]" value="0.24041656598441724" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0]" value="2.3000000000001535" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop]" value="1.5357311961495741e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop]" value="7.67865598074787e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop]" value="1.5357311961495741e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop]" value="7.6786559807478709e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x]" value="0.87470015673859525" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x]" value="0.87470015673859525" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New cases]" value="3.3194223344523683" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed]" value="0.0029460063404405093" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction]" value="0.76510036419852312" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="7.67865598074787e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="1.5357311961495741e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.5357311961495741e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="7.6786559807478709e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.43503207794895232" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.43503207794895232" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0029460063404405093" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.037379812130169492" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="2.1790643591723073" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="2.1790643591723073" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.00017390466950346252" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.030757135443461758" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.20303675385424774" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_4" name="Model4 - 4/19">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-20T00:08:33Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572662" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha]" value="1.2792199288332682" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta]" value="0.25584398576665363" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma]" value="0.25584398576665363" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta]" value="0.012792199288332681" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.01
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta]" value="0.050000000000000003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta]" value="0.00050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa]" value="0.11156536482545966" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda]" value="0.5512260713020507" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu]" value="0.011436516732556003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu]" value="0.011436516732556003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi]" value="0.11156536482545966" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho]" value="0.5512260713020507" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau]" value="0.038098276271051321" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDARTHE]" value="3" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDART]" value="3" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1]" value="0.60122607130205075" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r2]" value="0.60122607130205075" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3]" value="0.12350188155801567" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r4]" value="0.12300188155801567" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r5]" value="0.058098276271051325" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0]" value="2.3000000002309711" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop]" value="7.1611524105017858e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop]" value="3.5805762052508929e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop]" value="7.1611524105017858e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop]" value="3.580576205250893e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x]" value="0.98884069793309459" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x]" value="0.47522923111255727" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New cases]" value="1.547854814139092" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed]" value="0.00050000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction]" value="0.46992600457154904" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="3.5805762052508929e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="7.1611524105017858e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="7.1611524105017858e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="3.580576205250893e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.00050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.011436516732556003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.011436516732556003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.038098276271051321" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.5512260713020507" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.5512260713020507" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.11156536482545966" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.11156536482545966" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_5" name="Model4 - 4/21">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_5">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-21T17:27:14Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572662" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha]" value="1.3484013657798453" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta]" value="0.26968027315596904" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma]" value="0.26968027315596904" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta]" value="0.013484013657798452" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.01
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta]" value="0.050000000000000003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta]" value="0.00050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa]" value="0.21468650942623366" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda]" value="0.56202091572679036" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu]" value="0.012429353227342649" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu]" value="0.012429353227342649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi]" value="0.21468650942623366" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho]" value="0.56202091572679036" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau]" value="0.039827266613067305" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDARTHE]" value="3" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDART]" value="3" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1]" value="0.6120209157267904" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r2]" value="0.6120209157267904" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3]" value="0.22761586265357631" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r4]" value="0.22711586265357631" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r5]" value="0.059827266613067309" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0]" value="2.3000000000004435" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop]" value="7.5484343803846446e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop]" value="3.7742171901923219e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop]" value="7.5484343803846446e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop]" value="3.7742171901923223e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x]" value="0.89677752696881052" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x]" value="0.56640255655961702" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New cases]" value="1.6315642825527725" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed]" value="0.00050000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction]" value="0.5079370839403452" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="3.7742171901923219e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="7.5484343803846446e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="7.5484343803846446e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="3.7742171901923223e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.00050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.012429353227342649" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.012429353227342649" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.039827266613067305" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.56202091572679036" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.56202091572679036" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.21468650942623366" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.21468650942623366" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_6" name="Model4 - 4/22">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_6">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-22T23:40:09Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha]" value="1.2548568513139011" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta]" value="0.25097137026278021" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma]" value="0.25097137026278021" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta]" value="0.012548568513139012" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.01
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta]" value="0.050000000000000003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta]" value="0.00050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa]" value="0.18600432013580395" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda]" value="0.52291822623033513" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu]" value="0.01316364353385515" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu]" value="0.01316364353385515" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi]" value="0.18600432013580395" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho]" value="0.52291822623033513" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma]" value="0.029869483227164137" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau]" value="0.040646123360219465" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDARTHE]" value="2" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDART]" value="2" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1]" value="0.57291822623033517" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r2]" value="0.57291822623033517" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3]" value="0.19966796366965911" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r4]" value="0.19916796366965911" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r5]" value="0.070515606587383595" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0]" value="2.3000000000025347" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop]" value="7.0247663932325092e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop]" value="3.5123831966162549e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop]" value="7.0247663932325092e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop]" value="3.5123831966162548e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x]" value="0.9819002437413219" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x]" value="0.50764101191721234" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New cases]" value="1.5058273786047143" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed]" value="0.00050000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction]" value="0.49845283333460211" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="3.5123831966162549e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="7.0247663932325092e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="7.0247663932325092e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="3.5123831966162548e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.00050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.01316364353385515" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.01316364353385515" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.040646123360219465" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.52291822623033513" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.52291822623033513" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.18600432013580395" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.18600432013580395" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.029869483227164137" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_7" name="Model4 - 4/23">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-22T23:40:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572662.9999999776" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.0000000223248358" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha]" value="1.2749196164438485" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta]" value="0.25498392328876973" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma]" value="0.25498392328876973" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta]" value="0.012749196164438486" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.01
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta]" value="0.050000000000000003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta]" value="0.00032988669769598106" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa]" value="0.13032445389661634" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda]" value="0.54369845898624924" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu]" value="0.01" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi]" value="0.13032445389661634" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho]" value="0.54369845898624924" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma]" value="0.042143252507939009" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau]" value="0.041322533291558279" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDARTHE]" value="2.0000000223248358" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDART]" value="2.0000000223248358" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1]" value="0.59369845898624929" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r2]" value="0.59369845898624929" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3]" value="0.14065434059431231" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r4]" value="0.14032445389661635" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r5]" value="0.083465785799497288" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0]" value="2.3001109212783222" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop]" value="7.1370789953373672e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop]" value="3.5685394976686832e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop]" value="7.1370789953373672e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop]" value="3.5685394976686833e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x]" value="0.99999999511610915" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x]" value="0.50351441184705192" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New cases]" value="1.5299026889756004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed]" value="0.00032988670506064739" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction]" value="0.50351440938794245" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="3.5685394976686832e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="7.1370789953373672e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="7.1370789953373672e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="3.5685394976686833e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.00032988669769598106" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.041322533291558279" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.54369845898624924" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.54369845898624924" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.13032445389661634" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.13032445389661634" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.042143252507939009" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_8" name="Model4 - 4/25">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_8">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-26T12:39:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.000000106496" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572662.9999998892" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.000000004096" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha]" value="1.2752401210360573" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta]" value="0.25504802420721145" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma]" value="0.25504802420721145" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta]" value="0.012752401210360573" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.01
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta]" value="0.050000000000000003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta]" value="0.00028508239617533834" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa]" value="0.12126693098794768" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda]" value="0.54449657856504985" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu]" value="0.01" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi]" value="0.12126693098794768" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho]" value="0.54449657856504985" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma]" value="0.058804054036588331" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau]" value="0.0426067170634956" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDARTHE]" value="2.000000110592" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDART]" value="2.000000110592" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1]" value="0.59449657856504989" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r2]" value="0.59449657856504989" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3]" value="0.13155201338412301" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r4]" value="0.13126693098794767" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r5]" value="0.10141077110008392" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0]" value="2.3081524590095466" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop]" value="7.1388731999001148e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop]" value="3.569436599950058e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop]" value="7.1388731999001148e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop]" value="3.5694365999500575e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_theta]" value="0.0054878294479999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x]" value="0.99999999511610915" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x]" value="0.51040429386157771" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New cases]" value="1.5302874254310093" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed]" value="0.00028508239734303584" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction]" value="0.51040429136881882" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="3.569436599950058e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="7.1388731999001148e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="7.1388731999001148e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="3.5694365999500575e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.00028508239617533834" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.0426067170634956" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.54449657856504985" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.54449657856504985" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.12126693098794768" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.12126693098794768" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.058804054036588331" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_9" name="Model4 - 4/27">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_9">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T14:22:02Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000000000000029" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572662.9999995264" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.0000004737682811" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha]" value="1.2646955744674377" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta]" value="0.25293911489348758" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma]" value="0.25293911489348758" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta]" value="0.012646955744674377" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.01
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta]" value="0.050000003218481422" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta]" value="0.050000003218481422" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta]" value="0.00025578332644516651" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa]" value="0.11988373198956741" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda]" value="0.53279631431756691" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu]" value="0.01" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi]" value="0.11988373198956741" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho]" value="0.53279631431756691" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma]" value="0.070992329163668239" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau]" value="0.043325910781822352" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDARTHE]" value="2.0000004737682842" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDART]" value="2.0000004737682842" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1]" value="0.58279631753604833" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r2]" value="0.58279631753604833" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3]" value="0.13013951531601259" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r4]" value="0.1298837319895674" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r5]" value="0.11431823994549059" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0]" value="2.3368114907540036" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop]" value="7.0798441749642801e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop]" value="3.5399220874821393e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop]" value="7.0798441749642801e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop]" value="3.5399220874821395e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_theta]" value="0.0054878294479999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x]" value="0.99999993119296915" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x]" value="0.51059651588887456" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New cases]" value="1.5176339596138892" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed]" value="0.00025578344762719338" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction]" value="0.51059648075624431" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="3.5399220874821393e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="7.0798441749642801e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="7.0798441749642801e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="3.5399220874821395e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.050000003218481422" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.050000003218481422" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.00025578332644516651" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.043325910781822352" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.53279631431756691" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.53279631431756691" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.11988373198956741" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.11988373198956741" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.070992329163668239" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_10" name="Model4 - 4/27 Hartford">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_10">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T20:47:59Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S]" value="894014" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[UCH],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[UCH]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha]" value="1.2646955744674377" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta]" value="0.25293911489348758" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma]" value="0.25293911489348758" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta]" value="0.012646955744674377" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=InitialValue>*0.01
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta]" value="0.050000003218481422" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta]" value="0.050000003218481422" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta]" value="0.00020462666116619291" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa]" value="0.11988373198956741" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda]" value="0.53279631431756691" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu]" value="0.01" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi]" value="0.11988373198956741" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho]" value="0.53279631431756691" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma]" value="0.070992329163668239" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau]" value="0.051991092938186122" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDARTHE]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDART]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1]" value="0.58279631753604833" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r2]" value="0.58279631753604833" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3]" value="0.13008835865073359" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r4]" value="0.1298837319895674" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r5]" value="0.12298342210185437" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0]" value="2.3368737849293004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop]" value="2.8292522812113408e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population]" value="894014" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop]" value="1.4146261406056704e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop]" value="2.8292522812113408e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop]" value="1.4146261406056703e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_theta]" value="0.0054878294479999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x]" value="0.9508052678302974" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x]" value="0.53558378838207543" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New cases]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction]" value="0.50923588735818459" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu_UCH]" value="0.001130265663753336" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Total_Hospitalized]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ZeroDay]" value="1.5018112153534227" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="1.4146261406056704e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="2.8292522812113408e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="2.8292522812113408e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="1.4146261406056703e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.050000003218481422" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.050000003218481422" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.00020462666116619291" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.051991092938186122" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.53279631431756691" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.53279631431756691" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.11988373198956741" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.11988373198956741" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.070992329163668239" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.001130265663753336" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu_UCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.001130265663753336" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu_UCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.051991092938186122" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.070992329163668239" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
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
      <StateTemplateVariable objectReference="ModelValue_55"/>
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
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 0 0 0 894014 0 0.050000003218481422 0.01 0.11988373198956741 0.53279631431756691 0 0 0 0 0.58279631753604833 0.58279631753604833 0.13008835865073359 0.1298837319895674 0.12298342210185437 NaN NaN 2.3368737849293004 2.8292522812113408e-07 1.4146261406056704e-06 2.8292522812113408e-07 1.4146261406056703e-08 0.059999999999999998 0.11077520991184649 0.11077520991184649 0.11077520991184649 0.22155041982369297 0 0 0.50923588735818459 0 0 1 1.2646955744674377 0.25293911489348758 0.25293911489348758 0.012646955744674377 0 0.050000003218481422 0.00020462666116619291 0.11988373198956741 0.53279631431756691 0.01 0.070992329163668239 0.051991092938186122 894014 0.78222655465241187 0.29999999999999999 0.0054878294479999996 0.059999999999999998 0.9508052678302974 0.53558378838207543 0.22155041982369297 -1 -1 -1 0 0.001130265663753336 1.5018112153534227 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_15" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_16" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_24" target="timecourses.txt" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1"/>
        <Parameter name="StepSize" type="float" value="50"/>
        <Parameter name="Duration" type="float" value="50"/>
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
    <Task key="Task_17" name="Scan" type="scan" scheduled="true" updateModel="false">
      <Report reference="Report_23" target="" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="1"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ApplyRelaxationMay1],Reference=InitialValue"/>
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
    <Task key="Task_18" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_19" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="1"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
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
    <Task key="Task_20" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="true">
      <Report reference="Report_20" target="" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ZeroDay],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="UpperBound" type="cn" value="15"/>
            <Parameter name="StartValue" type="float" value="1.501811215"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu_UCH],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="0.01"/>
            <Parameter name="StartValue" type="float" value="0.001130265663753336"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.899999938073672"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <Parameter name="StartValue" type="float" value="0.9508052678302974"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.459536864299987"/>
            <Parameter name="UpperBound" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.53558378838207543"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.0346607286254579"/>
            <Parameter name="UpperBound" type="cn" value="0.0519910929381868"/>
            <Parameter name="StartValue" type="float" value="0.051991092938186122"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.000204626661156133"/>
            <Parameter name="UpperBound" type="cn" value="0.0003069399917342"/>
            <Parameter name="StartValue" type="float" value="0.00020462666116619291"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="2.3"/>
            <Parameter name="UpperBound" type="cn" value="5.6"/>
            <Parameter name="StartValue" type="float" value="1.184617349"/>
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
            <Parameter name="File Name" type="file" value="CT-Hartford-COVID19.tsv"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="52"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value="&#x09;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="7"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Total_Hospitalized],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[UCH],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="6">
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
    <Task key="Task_21" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_15"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_23" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_24" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_26" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_15"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_28" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_19" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0],Reference=Value"/>
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
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction],Reference=InitialValue,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[scale],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_theta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_lambda],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_kappa],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Perceived CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeak],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeaktime],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tnonew],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDARTHE],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDART],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New cases],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_epsilon],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_mu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_nu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_rho],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_sigma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_xi],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r2],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r4],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r5],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration,Property=DisplayName"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[scale],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_theta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_lambda],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_kappa],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Perceived CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeak],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeaktime],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tnonew],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDARTHE],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDART],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New cases],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_epsilon],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_mu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_nu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_rho],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_sigma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_xi],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r2],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r4],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r5],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
      </Footer>
    </Report>
    <Report key="Report_23" name="TC variables, fluxes, global quantities" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[CFR],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDARTHE],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDART],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New cases],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Perceived CFR],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tnonew],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeak],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeaktime],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_epsilon],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_kappa],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_lambda],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_mu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_nu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_rho],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_sigma],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_theta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[f_xi],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r1],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r2],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r3],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r4],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[r5],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[scale],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=Value"/>
      </Table>
    </Report>
    <Report key="Report_24" name="TC-summary2" taskType="timeCourse" separator="&#x09;" precision="10">
      <Comment>
      </Comment>
      <Header>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction],Reference=InitialValue,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Perceived CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeak],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeaktime],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=ImmuneRatio"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tnonew],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDARTHE],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDART],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New cases],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration,Property=DisplayName"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day8x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[day15x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tot_reduction],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Perceived CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeak],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tpeaktime],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[ImmuneRatio],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Tnonew],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDARTHE],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDART],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New cases],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Population],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
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
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[CFR],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[DRT],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDART],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[IDARTHE],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New cases],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[New diagnosed],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Perceived CFR],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Recovered],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Total_Hospitalized" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[Total_Hospitalized],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="UCH" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Compartments[compartment],Vector=Metabolites[UCH],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[R0],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[alpha],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[beta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[delta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[epsilon],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[eta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[gamma],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[kappa],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[lambda],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[mu],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[nu],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[rho],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[sigma],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[tau],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[theta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[xi],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Values[zeta],Reference=Value"/>
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
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_D],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_I],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[contagion_R],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[critical_R],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[death],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[diagnosis_I],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_D],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_I],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_R],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[healing_T],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_D],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 4,Vector=Reactions[symptoms_I],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Parameter estimation" type="Plot2D" active="1" taskTypes="Parameter Estimation">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Diag inf (data)" type="Curve2D">
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
        <PlotItem name="Diag inf (fit)" type="Curve2D">
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
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[3],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="E (fit)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[3],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Total T (data)" type="Curve2D">
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
        <PlotItem name="Total T (fit)" type="Curve2D">
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
        <PlotItem name="UCH (data)" type="Curve2D">
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
        <PlotItem name="UCH (fit)" type="Curve2D">
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
<dcterms:W3CDTF>2020-04-29T11:40:04Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-04-29T11:40:04Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-04-29T11:40:04Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-04-29T11:40:04Z</dcterms:W3CDTF>
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
