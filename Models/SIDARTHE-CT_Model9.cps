<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.28 (Build 226) (http://www.copasi.org) at 2020-06-15T12:51:28Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="28" versionDevel="226" copasiSourcesModified="0">
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
  <Model key="Model_0" name="SIDARTHE Connecticut Model 9" simulationType="time" timeUnit="d" volumeUnit="1" areaUnit="1" lengthUnit="1" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
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
<p>In this model we assume that only the R (critical) pool are hospitalized; this leads to a different interpretation of some parameters. This model does not contain an exposed compartment (E in SEIR), which can make the interpretation of some parameters less comparable to other models.</p>
<p>Events/Interventions:</p>
<ul>
 <li>Day 0 - March 8, first day with diagnosed > 0.</li>
 <li>Day 1- March 9, tests at an average 17.1 per day</li>
 <li>Day 8 - March 16, policy of max 50 people gatherings, closed gyms and theaters; restaurants and bars takeout only. This reduces the infection parameters</li>
 <li>Day 10 - March 18, tests  increase so does parameter theta</li>
 <li>Day 15 - March 23, shelter-in-place policy declared. Infection parameters reduce again.</li> 
 <li>Day 19 - March 27, tests  increase so does parameter theta</li> 
 <li>Day 32 - April 9, tests  increase so does parameter theta</li> 
 <li>Day 60 - May 7, tests  increase so does parameter theta</li> 
 <li>Day 65 - May 12, tests  increase so does parameter theta</li> 
 <li>Day 73 - May 20, simulate relaxation of infection parameters by 50%</li>
 <li>Day 75 - May 22, tests decrease so does parameter theta; now testing some asymptomatic, epsilon > 0</li> 
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
  <span property="dct:title">SIDARTHE-CT_Model9.cps</span>.
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
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
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
      <ModelValue key="ModelValue_8" name="kappa" simulationType="assignment" addNoise="false">
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
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa],Reference=Value>
        </Expression>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="sigma" simulationType="assignment" addNoise="false">
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
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma],Reference=InitialValue>
        </Expression>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>/((&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=Value>*(&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=Value>))/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3],Reference=Value>)*(&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration>)+(&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=Value>)/&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3],Reference=Value>*(&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration>))
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration>)
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2],Reference=Value>)+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3],Reference=Value>)+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4],Reference=Value>)+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4],Reference=Value>)
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu],Reference=Value>
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
      <ModelValue key="ModelValue_42" name="f_kappa" simulationType="fixed" addNoise="false">
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
      </ModelValue>
      <ModelValue key="ModelValue_43" name="f_sigma" simulationType="fixed" addNoise="false">
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],Reference=Flux>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],Reference=Flux>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x],Reference=InitialValue>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x],Reference=InitialValue>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration>)
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
      <ModelValue key="ModelValue_54" name="HiddenRatio" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T14:51:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="InfectedRatio" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-30T12:05:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="f_stage4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-07T01:43:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="R(73)" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-14T02:03:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="f_beta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T13:43:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="f_gamma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_59">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-15T13:43:20Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="f_delta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_60">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-15T13:43:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="ImmuneRatio(73)" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-17T12:32:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="InfectedRatio(73)" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-17T12:33:02Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_5019" name="k1" value="2.89567e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5018" name="k1" value="5.79134e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5022" name="k1" value="1.44784e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5020" name="k1" value="8.68701e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5023" name="k1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5024" name="k1" value="0.01441"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5028" name="k1" value="0.01441"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5030" name="k1" value="2.53971e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5031" name="k1" value="0.00100081"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5025" name="k1" value="0.00100081"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5027" name="k1" value="0.0471869"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5026" name="k1" value="0.0664769"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5029" name="k1" value="0.0664769"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5032" name="k1" value="0.0664769"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5033" name="k1" value="0.0664769"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          <Constant key="Parameter_5067" name="k1" value="0.0557681"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]">
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time> > 15
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" targetKey="ModelValue_2">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>*50
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time> > 8
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" targetKey="ModelValue_2">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x],Reference=Value>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time> > 10
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>*20
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Rate> &lt; 0
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" targetKey="ModelValue_46">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" targetKey="ModelValue_47">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed],Reference=Value> &lt; 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" targetKey="ModelValue_50">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_5" name="Day 21" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-30T17:24:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time> > 20
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>*95
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_6" name="Day 32" fireAtInitialTime="0" persistentTrigger="0">
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time> > 31
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>*150
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_7" name="Day 73 ReOpenStage 4" fireAtInitialTime="0" persistentTrigger="0">
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time> > 73
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=Value>+(&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=Value>)*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" targetKey="ModelValue_2">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma],Reference=Value>+(&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma],Reference=Value>)*&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" targetKey="ModelValue_57">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" targetKey="ModelValue_61">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" targetKey="ModelValue_62">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_8" name="Day 60" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-12T11:14:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time> > 59
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>*256
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_9" name="Day 67" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-12T11:14:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time> > 66
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" targetKey="ModelValue_7">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>*350
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_10" name="Day 75" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-12T11:14:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time> > 74
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" targetKey="ModelValue_4">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon],Reference=InitialValue>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-15T12:02:59Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999998407" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.5928576091280386e-07" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0346365507295143" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.020692731014590286" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.51731827536475716" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.031039096521885429" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.014551939904496592" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.014551939904496592" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="2.5159130513979989e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.066477631006351928" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.066477631006351928" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.066477631006351928" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.066477631006351928" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.056471154899469606" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.04724367719790034" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000001592857608" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000001592857608" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.081029570910848517" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.081029570910848517" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.067502790136865914" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.067477631006351929" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.10371483209736995" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="14.144961136443856" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4479898769259283e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.8959797538518565e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.7919595077037127e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.6879392615555703e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="2.5159129998721177e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999998357937459" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.37322742716366192" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.84947604246116704" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0346363435329049" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="4.0074912478238448e-12" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.37322742103503415" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.0001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.0054047843123728751" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.8959797538518565e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.7919595077037127e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4479898769259283e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.6879392615555703e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.014551939904496592" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.014551939904496592" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="2.5159130513979989e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.04724367719790034" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.066477631006351928" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.066477631006351928" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.066477631006351928" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.066477631006351928" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.056471154899469606" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_3" name="Model7 - 5/11">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_3">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-11T20:17:14Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000000000003981" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999999995" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="4.9221474329999996e-10" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.2568472218527655" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.02513694443705531" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.62842361092638277" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.037705416655582961" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.59999999987223873" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.59999999987223873" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="0.0038228191289422175" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.01000000006083206" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.85893115840552359" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.084201963843088742" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.084201963843088742" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.22075541610851884" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.85893115840552359" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.1261836135522455" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.045446930290745896" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000000004926128" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000000004926128" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="1.4589311582777622" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="1.4589311582777622" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.098024783032863022" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.3049573799516076" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.1716305438429914" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="3.5000000174739272" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.7589771527036058e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="3.5179543054072117e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="7.0359086108144228e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="1.0553862916221633e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999999692307173" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.75878840237194067" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.2568468703671547" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="1.8816479362346231e-12" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.75878840003720316" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="2.7990309768551289e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="3.5179543054072117e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="7.0359086108144228e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.7589771527036058e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="1.0553862916221633e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.59999999987223873" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.59999999987223873" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0038228191289422175" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.084201963843088742" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.084201963843088742" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.045446930290745896" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.85893115840552359" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.85893115840552359" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.01000000006083206" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.22075541610851884" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.1261836135522455" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_4" name="Model7 - 5/13">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-14T12:26:12Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="5.1906035920000006e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.2577356304770004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.025154712609540008" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.62886781523850022" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.03773206891431001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.59994113737973997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.59994113737973997" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="0.0037151430144845799" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.85504661278130212" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.084749924708080279" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.084749924708080279" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.19332134191562012" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.85504661278130212" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.13898930761472852" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.045443449556023252" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="1.4549877501610422" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="1.4549877501610422" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.098465067722564859" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.27807126662370041" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.18443275717075178" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="3.5000000017031763" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.7602204943326625e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="3.520440988665325e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="7.04088197733065e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="1.0561322965995975e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999999560602193" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.74888079421848353" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.2577352784329014" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="1.9283834675777372e-23" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.74888079092791771" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="2.79903097547629e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="3.520440988665325e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="7.04088197733065e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.7602204943326625e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="1.0561322965995975e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.59994113737973997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.59994113737973997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0037151430144845799" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.084749924708080279" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.084749924708080279" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.045443449556023252" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.85504661278130212" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.85504661278130212" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.19332134191562012" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.13898930761472852" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_5" name="Model8 - 5/15">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_5">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-15T13:29:57Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000000050420332" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999999534" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="4.1436557264709413e-08" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0113965282924799" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.020227930565849598" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.50569826414623997" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.030341895848774399" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="1.4128581253654238" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="1.4128581253654238" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="0.0039497447658762095" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.15631740358204541" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.15279598398607991" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.086113386197581132" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.086113386197581132" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.15631740358204541" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.15279598398607991" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.15631740358204541" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.045580187094399233" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000000464785905" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000000464785905" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="1.5656541093515037" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="1.5656541093515037" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.24638053454550274" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.24243078977962654" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.20189759067644464" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="2.5000000187649261" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4154651055899168e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.8309302111798335e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.6618604223596662e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.4927906335395002e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.9436582740663414" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.81014076721467787" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="1.0230465454922317" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="1.0230465454922317" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="1.0230465454922317" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0113962712533284" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="1.6366382517221584e-10" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.76449603814058453" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="2.7990311055713049e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.01403320382092808" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.08558336141802525" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.01403320382092808" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.8309302111798335e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.6618604223596662e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4154651055899168e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.4927906335395002e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="1.4128581253654238" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="1.4128581253654238" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0039497447658762095" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.086113386197581132" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.086113386197581132" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.045580187094399233" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.15279598398607991" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.15279598398607991" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.15631740358204541" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.15631740358204541" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.15631740358204541" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_6" name="Model8 - 5/17">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T13:29:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000000000007512" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="2.4013788587527733e-14" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0049424202726598" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.020098848405453198" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.50247121013632989" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.030148272608179792" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="1.2781363580683676" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="1.2781363580683676" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="0.0042461717467953287" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.15719019378432267" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.15304363891039099" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.088424079597809083" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.088424079597809083" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.15719019378432267" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.15304363891039099" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.15719019378432267" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.045715672397912674" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000000000007752" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000000000007752" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="1.4311799969787586" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="1.4311799969787586" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.24986044512892708" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.24561427338213176" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.20290586618223533" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="2.5000002040395106" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4064324814566433e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.8128649629132866e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.625729925826574e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.4385948887398602e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.9243809246638035" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.81814736838768776" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="1.0270939380653352" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="1.0270939380653352" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="1.0270939380653352" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0049421389869302" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="1.0196667063387637e-16" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.75627982090146828" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.079987615804590434" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.050000680485198554" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.079987615804590434" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.8128649629132866e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.625729925826574e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4064324814566433e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.4385948887398602e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="1.2781363580683676" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="1.2781363580683676" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0042461717467953287" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.088424079597809083" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.088424079597809083" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.045715672397912674" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.15304363891039099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.15304363891039099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.15719019378432267" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.15719019378432267" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.15719019378432267" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_7" name="Model8 - 5/18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-18T21:11:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="4.7079283750000002e-11" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="0.9954581144658875" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.019909162289317751" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.49772905723294375" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.029863743433976624" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="1.1977775517953781" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="1.1977775517953781" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="0.0045857063924105504" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.15657725744898099" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.152854305144597" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.089490056457292813" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.089490056457292813" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.15657725744898099" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.152854305144597" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.15657725744898099" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.045796423214537148" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000000000470792" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000000000470792" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="1.3506318569399751" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="1.3506318569399751" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.25065302029868436" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.24606731390627379" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.20237368066351813" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="2.5000000010639694" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.3931590485896208e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.7863180971792416e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.5726361943584838e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.3589542915377249e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.91963909121352194" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.82394701118484981" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="1.0243562148992935" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="1.0243562148992935" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="1.0243562148992935" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="0.99545783585751046" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="2.1589177244248517e-13" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.75773388057413282" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.088618421549135101" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.010354336806294436" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.088618421549135101" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.7863180971792416e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.5726361943584838e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.3931590485896208e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.3589542915377249e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="1.1977775517953781" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="1.1977775517953781" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0045857063924105504" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.089490056457292813" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.089490056457292813" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.045796423214537148" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.152854305144597" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.152854305144597" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.15657725744898099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.15657725744898099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.15657725744898099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_8" name="Model8 - 5/19">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_8">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-20T03:00:21Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="5.9219420570318321e-16" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0415548415045426" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.020831096830090851" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.52077742075227129" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.031246645245136276" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="1.5" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="0.0028688264875610793" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.13752937546707555" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.12999091968372362" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.062759948977907321" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.062759948977907321" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.13752937546707555" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.12999091968372362" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.13752937546707555" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.045790148269484875" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000000000000007" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000000000000007" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="1.6299909196837237" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="1.6299909196837237" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.20315815093254397" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.20028932444498287" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.18331952373656044" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="3.0000000025310656" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4576721320142562e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.9153442640285123e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.8306885280570244e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.7460327920855375e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.87962551602159766" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.73231473432667937" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="1.0579921720816614" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="1.0579921720816614" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="1.0579921720816614" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0415545499701162" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="1.6989024231014863e-18" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.6441627260723245" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.79999934167040498" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.9153442640285123e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.8306885280570244e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4576721320142562e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.7460327920855375e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0028688264875610793" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.062759948977907321" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.062759948977907321" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.045790148269484875" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.12999091968372362" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.12999091968372362" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.13752937546707555" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.13752937546707555" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.13752937546707555" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_9" name="Model9 - 5/21">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_9">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-22T03:37:59Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999999227" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="7.748119191262634e-08" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="0.97828861206521534" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.019565772241304309" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.48914430603260767" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.029348658361956458" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.01" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="0.00015777708458798744" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.12241196328918663" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.12241196328918663" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.01" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.12241196328918663" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.12241196328918663" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.12241196328918663" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.045501403201783822" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000000774811919" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000000774811919" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.13241196328918664" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.13241196328918664" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.13256974037377461" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.13241196328918664" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.16791336649097044" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="7.6668931993267551" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.3691300640631228e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.7382601281262456e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.4765202562524921e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.2147803843787361e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999998983128291" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.21917580045131974" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="0.9782883761386546" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="1.2224756570376535e-11" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.21917579822258304" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.00010181569426471001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.015281698305614228" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.00010181569426471001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.7382601281262456e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.4765202562524921e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.3691300640631228e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.2147803843787361e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.00015777708458798744" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.045501403201783822" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.12241196328918663" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.12241196328918663" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.12241196328918663" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.12241196328918663" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.12241196328918663" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_10" name="Model9 - 5/23">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_10">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-22T03:37:59Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="10" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572654.9999756892" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="2.4310900610000001e-05" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="0.91298161772959641" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.01825963235459193" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.4564908088647982" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.027389448531887892" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.014067159083545583" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.014067159083545583" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="5.7176971025373616e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.054730730539065679" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.15862085912950954" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.0020738817706549258" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.0020738817706549258" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.054730730539065679" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.15862085912950954" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.054730730539065679" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.046439790404895251" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="10.00002431090061" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="10.00002431090061" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.17268801821305513" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.17268801821305513" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.056861789280745978" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.056804612309720608" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.10117052094396092" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="5.940890871102332" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.2777319140327969e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.5554638280655937e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.1109276561311879e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="7.6663914841967803e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999897355914413" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.38198434480590215" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.34504119344341433" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.34504119344341433" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.34504119344341433" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="9.1298017202671797" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="1.3900236597787078e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.38198395272156432" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.0001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.5554638280655937e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.1109276561311879e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.2777319140327969e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="7.6663914841967803e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.014067159083545583" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.014067159083545583" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="5.7176971025373616e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.0020738817706549258" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.0020738817706549258" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046439790404895251" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.15862085912950954" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.15862085912950954" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.054730730539065679" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.054730730539065679" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.054730730539065679" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_11" name="Model9 - 5/26">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_11">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-26T15:29:02Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999999609" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="3.9186402827728001e-08" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0635705111228586" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.021271410222457172" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.5317852555614293" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.031907115333685759" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.022015939429332616" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.022015939429332616" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="2.7859101343018442e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.053071872832333875" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.13329188868006139" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.0010544599499623117" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.0010544599499623117" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.053071872832333875" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.13329188868006139" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.053071872832333875" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.046591434054093633" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000000391864028" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000000391864028" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.155307828109394" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.155307828109394" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.054154191883639208" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.054126332782296185" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.099663306886427508" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="8.2402162637951886" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4884834026180158e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.9769668052360316e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.953933610472063e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.930900415708094e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999999604143675" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.34266214815831036" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.39816280913928326" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.39816280913928326" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.39816280913928326" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0635702342649118" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="1.0916979676460187e-12" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.34266214680186058" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.00016905784162968507" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.78873991589452019" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.00016905784162968507" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.9769668052360316e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.953933610472063e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4884834026180158e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.930900415708094e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.022015939429332616" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.022015939429332616" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="2.7859101343018442e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.0010544599499623117" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.0010544599499623117" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046591434054093633" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.13329188868006139" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.13329188868006139" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.053071872832333875" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.053071872832333875" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.053071872832333875" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_12" name="Model9 - 5/27">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_12">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-28T02:36:53Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.000000143360015" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999998002" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="5.6176372020859158e-08" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0762388173820188" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.021524776347640377" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.53811940869100938" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.032287164521460562" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.030305565848566883" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.030305565848566883" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="2.6298193032848045e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.05331245408565588" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.16221827886731621" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.05331245408565588" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.16221827886731621" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.05331245408565588" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.04662988116657623" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.000000199536387" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.000000199536387" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.1925238447158831" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.1925238447158831" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.054338752278688729" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.054312454085655881" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.099942335252232117" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="7.149062953319663" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.5062128934311203e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="3.0124257868622406e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="6.0248515737244821e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="9.0372773605867224e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="2.6298190298029516e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.9999999960414313" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.34293544785675895" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.32864640444904442" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.32864640444904442" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.32864640444904442" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0762387006585374" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="1.4773370752896382e-12" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.34293544649922542" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.00016905784162968507" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.78873991589452019" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.00016905784162968507" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="3.0124257868622406e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="6.0248515737244821e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.5062128934311203e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="9.0372773605867224e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.030305565848566883" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.030305565848566883" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="2.6298193032848045e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.04662988116657623" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.16221827886731621" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.16221827886731621" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.05331245408565588" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.05331245408565588" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.05331245408565588" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_13" name="Model9 - 5/28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_13">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-28T20:31:58Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999999832" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.6895368979999999e-08" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0784355578209077" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.021568711156418154" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.53921777891045386" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.032353066734627234" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.030787852033487616" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.030787852033487616" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="2.6370795029761524e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.053032080284882245" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.1655552942457594" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.001000010649598897" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.001000010649598897" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.053032080284882245" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.1655552942457594" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.053032080284882245" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.046667651922283247" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000000168953689" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000000168953689" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.19634314627924701" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.19634314627924701" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.054058461729510905" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.054032090934481143" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.099699732207165492" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="7.0567506099189989" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.5092872656978861e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="3.0185745313957722e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="6.0371490627915442e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="9.0557235941873172e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="2.6370794921746737e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999998630939002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.34565156656592405" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.32032850732129714" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.32032850732129714" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.32032850732129714" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0784352650737301" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="4.45544312323771e-13" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.34565156183374324" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.0001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.79796617577006168" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="3.0185745313957722e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="6.0371490627915442e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.5092872656978861e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="9.0557235941873172e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.030787852033487616" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.030787852033487616" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="2.6370795029761524e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.001000010649598897" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.001000010649598897" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046667651922283247" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.1655552942457594" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.1655552942457594" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.053032080284882245" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.053032080284882245" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.053032080284882245" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_14" name="Model9 - 5/31">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_14">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-31T21:20:59Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999994198" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="5.8023557477742224e-07" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0664442161627214" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.02132888432325443" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.53322210808136072" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.031993326484881644" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.024653377945968773" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.024653377945968773" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="2.6327950746695043e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.053118051307623926" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.13800403431583619" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.053118051307623926" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.13800403431583619" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.053118051307623926" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.046820346087348613" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000005802355747" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000005802355747" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.16265741226180497" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.16265741226180497" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.054144379258370623" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.054118051307623927" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.099938397394972539" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="8.0490738934408608" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4925051973284948e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.9850103946569897e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.9700207893139794e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.95503118397097e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="2.6327948589910652e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999998854475269" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.33647807531473922" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.38490216297632207" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.38490216297632207" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.38490216297632207" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0664442270558585" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="1.527641363422026e-11" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.33647807146029968" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.00010000000000033544" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.79999999985687065" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.00010000000000033544" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.9850103946569897e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.9700207893139794e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4925051973284948e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.95503118397097e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.024653377945968773" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.024653377945968773" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="2.6327950746695043e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046820346087348613" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.13800403431583619" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.13800403431583619" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.053118051307623926" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.053118051307623926" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.053118051307623926" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_15" name="Model9 - 6/01">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_15">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T20:06:21Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9997626124" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0.00023738747636940796" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0523677981834403" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.021047355963668805" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.52618389909172014" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.031571033945503209" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.017375914174407793" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.017375914174407793" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="2.6342716412029106e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.053812576361848823" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.10238563523015347" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.0010087966756876774" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.0010087966756876774" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.053812576361848823" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.10238563523015347" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.053812576361848823" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.046879439739198871" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0002373874763695" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0002373874763695" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.11976154940456127" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.11976154940456127" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.054847715753948527" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.054821373037536501" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.10069201610104769" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="10.17913665627187" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4728050323546153e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.9456100647092306e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.8912201294184604e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.8368301941276914e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="2.6342716304129339e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999999072131385" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.36673461714746003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.52558717090423002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.52558717090423002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.52558717090423002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0524924129854494" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="6.253430969766575e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.36673461374464461" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.0001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.9456100647092306e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.8912201294184604e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4728050323546153e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.8368301941276914e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.017375914174407793" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.017375914174407793" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="2.6342716412029106e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.0010087966756876774" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.0010087966756876774" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046879439739198871" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.10238563523015347" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.10238563523015347" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.053812576361848823" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.053812576361848823" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.053812576361848823" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_16" name="Model9 - 6/02">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-02T23:39:48Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0502390501507228" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.021004781003014457" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.52511952507536142" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.031507171504521682" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.016909788117955269" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.016909788117955269" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="2.6067160023839262e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.054421300486560457" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.097935225465734563" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.0010061165632341315" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.0010061165632341315" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.054421300486560457" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.097935225465734563" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.054421300486560457" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.046915315496758779" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.11484501358368983" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.11484501358368983" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.055453484209818431" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.055427417049794592" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.10133661598331924" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="10.539174578930437" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.469825816513335e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.9396516330266701e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.8793032660533406e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.8189548990800097e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="2.6067160023839262e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999995197926161" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.36987033966143262" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.55568668196512505" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.55568668196512505" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.55568668196512505" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0502387561855595" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.36987032189998581" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.00010000142909129607" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.79999992781719997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.00010000142909129607" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.9396516330266701e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.8793032660533406e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.469825816513335e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.8189548990800097e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.016909788117955269" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.016909788117955269" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="2.6067160023839262e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.0010061165632341315" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.0010061165632341315" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046915315496758779" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.097935225465734563" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.097935225465734563" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.054421300486560457" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.054421300486560457" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.054421300486560457" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_17" name="Model9 - 6/03">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_17">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-02T23:39:48Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999998561" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.4380595778784e-07" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0484308432397969" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.020968616864795939" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.52421542161989843" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.031452925297193901" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.016536730284187423" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.016536730284187423" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="2.5911239839774597e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.055019214976714081" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.094496475210014572" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.0010075866853569793" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.0010075866853569793" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.055019214976714081" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.094496475210014572" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.055019214976714081" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.046948210260077484" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000001438059578" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000001438059578" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.11103320549420199" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.11103320549420199" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.056052712901910835" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.056026801662071059" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.10196742523679156" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="10.835404725203402" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4672952029364591e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.9345904058729182e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.8691808117458365e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.8037712176187523e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="2.5911213306651866e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999999760852054" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.37205950984234359" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.58223563211681828" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.58223563211681828" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.58223563211681828" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0484306251659938" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="3.7261906626292234e-12" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.37205950895257089" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.00010000000004435244" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.79999999941807198" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.00010000000004435244" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.9345904058729182e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.8691808117458365e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4672952029364591e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.8037712176187523e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.016536730284187423" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.016536730284187423" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="2.5911239839774597e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.0010075866853569793" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.0010075866853569793" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046948210260077484" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.094496475210014572" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.094496475210014572" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.055019214976714081" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.055019214976714081" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.055019214976714081" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_18" name="Model9 - 6/04">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_18">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-05T00:23:01Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999999516" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="4.8541674098845775e-08" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0438501678724672" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.020877003357449346" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.5219250839362336" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.031315505036174016" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.010974555777956274" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.010974555777956274" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="3.6261087659925404e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.057272637735945972" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.086834533945274101" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.0014186920816815385" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.0014186920816815385" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.057272637735945972" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.086834533945274101" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.057272637735945972" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.04698101783929088" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.000000048541674" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.000000048541674" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.09780908972323038" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.09780908972323038" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.058727590905287438" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.058691329817627508" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.10425365557523686" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="11.669540020159113" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4608844768155806e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.9217689536311612e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.8435379072623224e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.7653068608934827e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="3.6261087511513001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.9999999999999204" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.38029781004021868" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.65956060490911395" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.65956060490911395" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.65956060490911395" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0438499010306679" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="1.760173899657777e-12" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.38029781004018842" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.0001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.79999999999999971" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.9217689536311612e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.8435379072623224e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4608844768155806e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.7653068608934827e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.010974555777956274" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.010974555777956274" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="3.6261087659925404e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.0014186920816815385" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.0014186920816815385" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.04698101783929088" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.086834533945274101" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.086834533945274101" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.057272637735945972" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.057272637735945972" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.057272637735945972" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_19" name="Model9 - 6/05">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_19">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-05T21:06:11Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000005120000202" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999994878" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.041638732236543" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.020832774644730861" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.52081936611827151" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.031249161967096289" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.010056508915260869" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.010056508915260869" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="3.8602235432716441e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.058506843089201191" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.08329810021940387" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.0015247480693513986" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.0015247480693513986" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.058506843089201191" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.08329810021940387" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.058506843089201191" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.047015710004605679" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000005120000202" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000005120000202" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.093354609134664743" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.093354609134664743" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.060070193393985304" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.06003159115855259" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.10552255309380687" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="12.091891823025412" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4577895383929685e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.915579076785937e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.8311581535718744e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.7467372303578108e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="3.8602235284009412e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.9999998380183488" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.38007904857033825" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.70237908109664571" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.70237908109664571" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.70237908109664571" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0416389739973886" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.38007898700450637" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.00010000000001195664" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.79999999999792137" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.00010000000001195664" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.915579076785937e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.8311581535718744e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4577895383929685e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.7467372303578108e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.010056508915260869" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.010056508915260869" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="3.8602235432716441e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.0015247480693513986" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.0015247480693513986" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.047015710004605679" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.08329810021940387" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.08329810021940387" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.058506843089201191" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.058506843089201191" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.058506843089201191" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_20" name="Model9 - 6/06">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_20">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-05T21:06:11Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999999963" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="3.6885728275859191e-09" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.040963200056191" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.02081926400112382" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.52048160002809551" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.03122889600168573" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.010001575932308736" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.010001575932308736" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="3.862343996630674e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.059071803123382678" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.082207338243907246" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.0015357358754182922" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.0015357358754182922" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.059071803123382678" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.082207338243907246" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.059071803123382678" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.047047106614280951" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000000036885728" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000000036885728" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.092208914176215989" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.092208914176215989" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.060646162438767276" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.060607538998800968" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.10611890973766364" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="12.220105768379764" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4568441206441003e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.9136882412882007e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.8273764825764015e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.7410647238646018e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="3.862343996630674e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999992660545034" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.37653401369273065" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.71857092548256485" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.71857092548256485" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.71857092548256485" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0409629106071996" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="1.4246537116761505e-13" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.3765339860571863" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.00024984013795086181" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.79999973702848304" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.00024984013795086181" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.9136882412882007e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.8273764825764015e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4568441206441003e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.7410647238646018e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.010001575932308736" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.010001575932308736" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="3.862343996630674e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.0015357358754182922" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.0015357358754182922" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.047047106614280951" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.082207338243907246" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.082207338243907246" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.059071803123382678" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.059071803123382678" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.059071803123382678" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_21" name="Model9 - 6/07">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_21">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-07T23:06:03Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0407256466551218" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.020814512933102436" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.5203628233275609" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.031221769399653654" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.0099358767320774522" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.0099358767320774522" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="3.878666106289887e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.05947534156728139" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.081507316094329429" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.0015490412193699705" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.0015490412193699705" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.05947534156728139" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.081507316094329429" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.05947534156728139" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.047074340583989356" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.09144319282640688" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.09144319282640688" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.061063169447714262" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.061024382786651357" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.10654968215127075" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="12.307089612112559" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4565116609801392e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.9130233219602784e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.826046643920557e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.7390699658808351e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="3.8786660268548052e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999984822511967" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.37281457038201649" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.72969328910854869" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.72969328910854869" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.72969328910854869" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0407253553527895" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.37281451379812969" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.00010692048290583381" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.79999997111060561" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.00010692048290583381" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.9130233219602784e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.826046643920557e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4565116609801392e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.7390699658808351e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.0099358767320774522" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.0099358767320774522" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="3.878666106289887e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.0015490412193699705" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.0015490412193699705" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.047074340583989356" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.081507316094329429" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.081507316094329429" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.05947534156728139" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.05947534156728139" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.05947534156728139" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_22" name="Model9 - 6/08">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_22">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-09T01:45:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0403939933062316" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.020807879866124632" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.52019699665311581" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.031211819799186948" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.0099127120259453055" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.0099127120259453055" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="3.8700864084385382e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.059743012451510022" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.080829725445383846" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.001550934357825762" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.001550934357825762" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.059743012451510022" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.080829725445383846" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.059743012451510022" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.047099308816816073" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.090742437471329151" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.090742437471329151" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.061332647673420171" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.061293946809335781" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.1068423212683261" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="12.391914376321429" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.456047506981807e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.9120950139636141e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.8241900279272288e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.7362850418908427e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="3.8700863291791683e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999998573775783" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.37206607738055963" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.73912180354834944" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.73912180354834944" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.73912180354834944" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0403937020967302" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.37206607207406311" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.00010116969347701537" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.79999999981432257" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.00010116969347701537" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.9120950139636141e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.8241900279272288e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.456047506981807e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.7362850418908427e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.0099127120259453055" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.0099127120259453055" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="3.8700864084385382e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.001550934357825762" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.001550934357825762" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.047099308816816073" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.080829725445383846" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.080829725445383846" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.059743012451510022" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.059743012451510022" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.059743012451510022" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_23" name="Model9 - 6/09">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_23">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-09T22:54:29Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999993243" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="6.7571260170077992e-07" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0404246803042152" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.020808493606084305" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.5202123401521076" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.031212740409126454" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.0099549693315937431" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.0099549693315937431" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="3.8622944796191359e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.05999929630338259" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.080674916652305931" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.0015527045562339738" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.0015527045562339738" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.05999929630338259" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.080674916652305931" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.05999929630338259" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.047122691798466156" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000006757126016" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000006757126016" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.090629885983899677" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.090629885983899677" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.061590623804412756" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.061552000859616561" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.10712198810184875" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="12.407721834730916" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4560904539107574e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.9121809078215148e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.8243618156430302e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.7365427234645437e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="3.8622944796191359e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999986656419393" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.3678670571398503" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.74371686756081246" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.74371686756081246" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.74371686756081246" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0404247405998632" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="2.6098010513580061e-11" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.36786700805321298" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.0001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.79999998818667717" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.9121809078215148e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.8243618156430302e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4560904539107574e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.7365427234645437e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.0099549693315937431" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.0099549693315937431" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="3.8622944796191359e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.0015527045562339738" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.0015527045562339738" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.047122691798466156" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.080674916652305931" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.080674916652305931" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.05999929630338259" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.05999929630338259" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.05999929630338259" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_24" name="Model9 - 6/10">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_24">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-10T23:26:38Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000001024" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999998976" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0345803990202787" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.020691607980405573" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.51729019951013933" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.031037411970608358" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.0094945337977164774" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.0094945337977164774" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="3.7984686022501089e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.0629790088576727" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.07220886777528164" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.0015750839785991864" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.0015750839785991864" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.0629790088576727" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.07220886777528164" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.0629790088576727" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.047148396848768717" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000001024" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000001024" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.081703401572998116" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.081703401572998116" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.064592077522294386" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.064554092836271892" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.11012740570644142" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="13.593322975424522" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4479112917391901e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.8958225834783801e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.7916451669567601e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.6874677504351397e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="3.7984686022501089e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999990097738756" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.37501984433163105" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="0.8721783182318712" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.8721783182318712" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="0.8721783182318712" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0345802153789938" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.37501980719618633" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.0001027508855402461" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.7999743163877393" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.0001027508855402461" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.8958225834783801e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.7916451669567601e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4479112917391901e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.6874677504351397e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.0094945337977164774" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.0094945337977164774" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="3.7984686022501089e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.0015750839785991864" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.0015750839785991864" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.047148396848768717" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.07220886777528164" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.07220886777528164" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.0629790088576727" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.0629790088576727" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.0629790088576727" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_25" name="Model9 - 6/11">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_25">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-11T23:35:31Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999999944" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="5.6161015553341442e-09" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0345261936004395" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.02069052387200879" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.51726309680021976" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.031035785808013184" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.014409984573897951" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.014409984573897951" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="2.539713117509494e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.066476872054813535" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.066476872054813535" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.0010008051348571801" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.0010008051348571801" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.066476872054813535" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.066476872054813535" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.055768136779346736" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.047186851467168285" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000000056161016" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000000056161016" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.080886856628711479" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.080886856628711479" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.067503074320845805" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.067477677189670709" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.10295498824651503" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="14.154952729713878" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4478354304146059e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.8956708608292117e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.7913417216584233e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.6870125824876345e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="2.539713117509494e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999993195278292" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.37899322648332989" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.83891036168734134" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0345259069383532" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="1.4263286789347597e-13" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.37899320069389553" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.0001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.3645986787065818" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.8956708608292117e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.7913417216584233e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4478354304146059e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.6870125824876345e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.014409984573897951" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.014409984573897951" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="2.539713117509494e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.0010008051348571801" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.0010008051348571801" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.047186851467168285" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.066476872054813535" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.066476872054813535" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.066476872054813535" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.066476872054813535" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.055768136779346736" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_1" name="Model9 - 6/13">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-15T12:02:59Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999998407" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.5928576091280386e-07" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha]" value="1.0346365507295143" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta]" value="0.020692731014590286" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma]" value="0.51731827536475716" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta]" value="0.031039096521885429" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta]" value="0.014551939904496592" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta]" value="0.014551939904496592" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta]" value="2.5159130513979989e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa]" value="0.066477631006351928" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda]" value="0.066477631006351928" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu]" value="0.001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi]" value="0.066477631006351928" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho]" value="0.066477631006351928" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma]" value="0.056471154899469606" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau]" value="0.04724367719790034" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE]" value="1.0000001592857608" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART]" value="1.0000001592857608" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1]" value="0.081029570910848517" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2]" value="0.081029570910848517" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3]" value="0.067502790136865914" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4]" value="0.067477631006351929" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5]" value="0.10371483209736995" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0]" value="14.144961136443856" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop]" value="1.4479898769259283e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop]" value="2.8959797538518565e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop]" value="5.7919595077037127e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop]" value="8.6879392615555703e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon]" value="2.5159129998721177e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x]" value="0.99999998357937459" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x]" value="0.37322742716366192" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma]" value="0.84947604246116704" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases]" value="1.0346363435329049" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed]" value="4.0074912478238448e-12" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction]" value="0.37322742103503415" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_beta]" value="0.0001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma]" value="0.0054047843123728751" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.8959797538518565e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.7919595077037127e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4479898769259283e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.6879392615555703e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.014551939904496592" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.014551939904496592" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="2.5159130513979989e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.04724367719790034" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.066477631006351928" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.066477631006351928" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.066477631006351928" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.066477631006351928" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.056471154899469606" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=InitialValue>
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
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
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
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 1 0 0 0 1.5928576091280386e-07 0 3572663.9999998407 0 0.014551939904496592 0.066477631006351928 0.001 0.066477631006351928 0.066477631006351928 0.056471154899469606 0 1.0000001592857608 1.0000001592857608 0 0.081029570910848517 0.081029570910848517 0.067502790136865914 0.067477631006351929 0.10371483209736995 NaN NaN 14.144961136443856 1.4479898769259283e-07 2.8959797538518565e-07 5.7919595077037127e-09 8.6879392615555703e-09 0.059999999999999998 1 0.22155041982369297 1.0346363435329049 4.0074912478238448e-12 0.37322742103503415 0 0 0 1 1.0346365507295143 0.020692731014590286 0.51731827536475716 0.031039096521885429 0 0.014551939904496592 2.5159130513979989e-05 0.066477631006351928 0.001 0.04724367719790034 3572665 0.78222655465241187 2.5159129998721177e-05 0.0054878294478546081 0.059999999999999998 0.99999998357937459 0.37322742716366192 0.22155041982369297 1 0.84947604246116704 -1 -1 -1 0 0.10000000000000001 0 0.0001 0.0054047843123728751 0.0001 0 0 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_25" target="timecourses.txt" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="1"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1288"/>
        <Parameter name="StepSize" type="float" value="0.16304347829999999"/>
        <Parameter name="Duration" type="float" value="210"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value="0 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90 92 94 96 98 100 102 104 106 108 110 112 114 116 118 120 122 124 126 128 130 132 134 136 138 140 142 144 146 148 150 152 154 156 158 160 162 164 166 168 170 172 174 176 178 180 182 184 186 188 190 192 194 196 198 200 400 800"/>
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
      <Report reference="Report_24" target="" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="0"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value="0 0.5 0.6 0.7 0.8 0.9 1"/>
            <Parameter name="Use Values" type="bool" value="1"/>
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
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="1"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.6"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <Parameter name="StartValue" type="float" value="0.72416446759999997"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1e-6"/>
            <Parameter name="UpperBound" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x],Reference=InitialValue"/>
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
      <Report reference="Report_0" target="" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <Parameter name="StartValue" type="float" value="1.592857609e-07"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.5"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <Parameter name="StartValue" type="float" value="0.99999998357937459"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="UpperBound" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.37322742716366192"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.005"/>
            <Parameter name="UpperBound" type="cn" value="3"/>
            <Parameter name="StartValue" type="float" value="1.0346365507295143"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.005"/>
            <Parameter name="UpperBound" type="cn" value="0.8"/>
            <Parameter name="StartValue" type="float" value="0.0054047843123728751"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_delta],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_gamma],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0001"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="0.1"/>
            <Parameter name="StartValue" type="float" value="2.5159130513979989e-05"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.01"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <Parameter name="StartValue" type="float" value="0.066477631006351928"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.84947604246116704"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="5"/>
            <Parameter name="StartValue" type="float" value="0.014551939904496592"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="5"/>
            <Parameter name="StartValue" type="float" value="0.001"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.025"/>
            <Parameter name="UpperBound" type="cn" value="0.2"/>
            <Parameter name="StartValue" type="float" value="0.04724367719790034"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2.5159129998721177e-05"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_stage4],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <Parameter name="StartValue" type="float" value="0.10000000000000001"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="Experiment">
            <Parameter name="Key" type="key" value="Experiment_0"/>
            <Parameter name="File Name" type="file" value="CT-COVID19.tsv"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="99"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value="&#x09;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="13"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="12">
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
      <Method name="Hooke &amp; Jeeves" type="HookeJeeves">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50000"/>
        <Parameter name="Tolerance" type="float" value="1.0000000000000001e-09"/>
        <Parameter name="Rho" type="float" value="0.20000000000000001"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_14" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_9" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_7" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_1" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <Report key="Report_0" name="summary PE" taskType="scan" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0],Reference=Value"/>
      </Table>
    </Report>
    <Report key="Report_22" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_23" name="TC-summary" taskType="timeCourse" separator="&#x09;" precision="10">
      <Comment>
      </Comment>
      <Header>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction],Reference=InitialValue,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration,Property=DisplayName"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
      </Footer>
    </Report>
    <Report key="Report_24" name="TC variables, fluxes, global quantities" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_kappa],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_lambda],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_mu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_nu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_rho],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_sigma],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_theta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_xi],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r1],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r2],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r3],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r4],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[r5],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[scale],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=Value"/>
      </Table>
    </Report>
    <Report key="Report_25" name="TC-summary2" taskType="timeCourse" separator="&#x09;" precision="10">
      <Comment>
      </Comment>
      <Header>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction],Reference=InitialValue,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=R0"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=R73"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=ImmuneRatio"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=ImmuneRatio(73)"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=InfectedRatio"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=InfectedRatio(73)"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=alpha0"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=beta0"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=delta0"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=gamma0"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=theta0"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=f_epsilon"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration,Property=DisplayName"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day8x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[day15x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tot_reduction],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeak],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tpeaktime],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[ImmuneRatio(73)],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[InfectedRatio(73)],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Tnonew],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Population],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[f_epsilon],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[CFR],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[DRT],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDART],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[IDARTHE],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New cases],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[New diagnosed],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Perceived CFR],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[Recovered],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
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
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R0],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[alpha],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[beta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[delta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[epsilon],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[eta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[gamma],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[kappa],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[lambda],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[mu],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[nu],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[rho],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[sigma],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[tau],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[theta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[xi],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[zeta],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="R(73)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Values[R(73)],Reference=Value"/>
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
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_D],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_I],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[contagion_R],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[critical_R],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[death],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[diagnosis_I],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_D],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_I],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_R],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[healing_T],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_D],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 9,Vector=Reactions[symptoms_I],Reference=Flux"/>
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
<dcterms:W3CDTF>2020-06-15T12:02:54Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-06-15T12:02:54Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-06-15T12:02:54Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-06-15T12:02:54Z</dcterms:W3CDTF>
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
