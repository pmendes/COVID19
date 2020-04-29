<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2020-04-28T21:21:25Z -->
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
  <Model key="Model_0" name="SIDARTHE Hartford Model 3" simulationType="time" timeUnit="d" volumeUnit="1" areaUnit="1" lengthUnit="1" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
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
  <span property="dct:title">SIDARTHE-CT_Model3.cps</span>.
</p>
</body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_1">
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
      <Metabolite key="Metabolite_16" name="I" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:40:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="S" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:40:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[UCH],Reference=InitialConcentration>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="D" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:40:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="A" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:41:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="R" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:41:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="T" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:45:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="E" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:46:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="H" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:46:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="UCH" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_8">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:25Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_110" name="alpha" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_110">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_109" name="beta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_108" name="gamma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_108">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_107" name="delta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_107">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_106" name="epsilon" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_106">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_105" name="zeta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_105">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="eta" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_104">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:27:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="theta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:28:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="kappa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_102">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:29:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="lambda" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:29:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="mu" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_100">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:29:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="nu" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:29:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="xi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_98">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:31:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="rho" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:31:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="sigma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_96">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:31:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="tau" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:32:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="DRT" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T18:54:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="IDARTHE" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:08:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="IDART" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:10:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="Recovered" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T20:39:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="Diagnosed Cumulative infected" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T20:50:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="r1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:31:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="r2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:32:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="r3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:33:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="r4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:34:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="r5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:34:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="Perceived CFR" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:36:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>/((&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=Value>*(&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=Value>))/(&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3],Reference=Value>)*(&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration>)+(&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=Value>)/&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3],Reference=Value>*(&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="CFR" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:45:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>/(&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="R0" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T00:00:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2],Reference=Value>)+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3],Reference=Value>)+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4],Reference=Value>)+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="gamma_pop" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T17:59:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="Population" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_80">
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
      <ModelValue key="ModelValue_79" name="alpha_pop" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T18:07:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="beta_pop" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T18:07:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="delta_pop" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T18:08:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="scale" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T22:54:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="f_epsilon" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-27T19:10:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="f_theta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-27T19:12:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="f_mu" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-27T19:24:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="f_nu" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-27T19:24:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="day8x" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-31T01:43:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="day15x" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-31T01:44:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="f_lambda" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-01T02:08:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="f_kappa" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-01T02:08:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.5*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="f_sigma" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-01T02:09:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="f_xi" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-01T02:09:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="f_rho" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-01T02:09:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="Tpeak" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T01:20:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="Tpeaktime" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T01:23:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="New cases" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T13:50:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],Reference=Flux>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="New diagnosed" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T13:52:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],Reference=Flux>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="Tnonew" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T13:53:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="Tot_reduction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T13:47:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x],Reference=InitialValue>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="ImmuneRatio" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-13T19:01:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration>/(&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="ApplyRelaxationMay1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-14T18:52:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="mu_UCH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_56">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:25Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-04-28T19:32:25Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[UCH],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="ZeroDay" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_54">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:25Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_35" name="contagion_I" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:39:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7273" name="k1" value="2.82397e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="contagion_D" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:40:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7277" name="k1" value="5.64794e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="contagion_A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:40:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7280" name="k1" value="2.82397e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="contagion_R" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:41:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7274" name="k1" value="1.41198e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="diagnosis_I" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:43:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7278" name="k1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="symptoms_I" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:44:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7275" name="k1" value="0.211111"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="symptoms_D" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:44:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7279" name="k1" value="0.211111"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="diagnosis_A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:45:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4429" name="k1" value="0.0302512"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="critical_A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:45:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7330" name="k1" value="0.201217"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="critical_R" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:45:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4751" name="k1" value="0.201217"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:46:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4324" name="k1" value="0.0522249"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="healing_I" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:46:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7299" name="k1" value="1.84364"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="healing_D" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:46:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7314" name="k1" value="1.84364"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="healing_A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:47:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6918" name="k1" value="1.84364"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="healing_R" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:47:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6867" name="k1" value="0.36594"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="healing_T" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:47:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4240" name="k1" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="critical_A_UCH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_19">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:25Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7309" name="k1" value="0.0238602"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="critical_R_UCH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_18">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:25Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2779" name="k1" value="0.0238602"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="death_UCH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_17">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:26Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6894" name="k1" value="0.0522249"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="healing_UCH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:26Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6878" name="k1" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_18" name="Day 15" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_18">
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time> > 15
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" targetKey="ModelValue_110">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" targetKey="ModelValue_108">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" targetKey="ModelValue_109">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" targetKey="ModelValue_107">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" targetKey="ModelValue_103">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>*50
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_17" name="Day 08" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_17">
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time> > 8
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" targetKey="ModelValue_110">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" targetKey="ModelValue_108">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" targetKey="ModelValue_109">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" targetKey="ModelValue_107">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_16" name="Day 11" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-30T17:24:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time> > 10
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" targetKey="ModelValue_103">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>*20
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_15" name="T peak detection" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T01:20:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Rate> &lt; 0
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" targetKey="ModelValue_64">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" targetKey="ModelValue_63">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_14" name="T no new case" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T01:20:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed],Reference=Value> &lt; 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" targetKey="ModelValue_60">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_13" name="Day 19" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-30T17:24:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time> > 18
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" targetKey="ModelValue_103">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>*95
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_12" name="Day 29" fireAtInitialTime="0" persistentTrigger="0">
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time> > 28
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" targetKey="ModelValue_103">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>*150
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_11" name="May 1 relaxation" fireAtInitialTime="0" persistentTrigger="0">
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
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time> > 74 &amp;&amp; &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ApplyRelaxationMay1],Reference=Value> == 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" targetKey="ModelValue_110">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*(1-(1-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction],Reference=Value>)/2)
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" targetKey="ModelValue_108">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma],Reference=InitialValue>*(1-(1-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction],Reference=Value>)/2)
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" targetKey="ModelValue_109">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta],Reference=InitialValue>*(1-(1-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction],Reference=Value>)/2)
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" targetKey="ModelValue_107">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta],Reference=InitialValue>*(1-(1-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction],Reference=Value>)/2)
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_10" name="Day 47" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-26T12:52:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time> > 46
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" targetKey="ModelValue_103">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>*165
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
<dcterms:W3CDTF>2020-04-28T19:32:26Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time> > &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ZeroDay],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" targetKey="Metabolite_16">
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
<dcterms:W3CDTF>2020-04-28T21:17:19Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="894014" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[UCH],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[UCH]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="2.5246681233841226" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.50493362467682457" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.25246681233841228" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.12623340616920614" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.21111074995866533" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.21111074995866533" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.030251157089850718" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="1.8436391388622739" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="1.8436391388622739" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.20121746758778447" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.20121746758778447" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.36593958913329017" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="1.8436391388622739" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.12499999999982438" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.052224892074973897" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="2.0547498888209392" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="2.0547498888209392" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="2.0751077635399091" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.56715705672107464" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.17722489207479827" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="1.2415320203921536" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="2.8239693375988774e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="894014" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="2.8239693375988773e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="5.6479386751977548e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="1.4119846687994387e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.84647803746212447" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.84647803746212447" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu_UCH]" value="0.023860229638650941" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Total_Hospitalized]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ZeroDay]" value="3.1523440370603772" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.8239693375988773e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.6479386751977548e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="2.8239693375988774e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="1.4119846687994387e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.21111074995866533" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.21111074995866533" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.030251157089850718" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.20121746758778447" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.20121746758778447" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.052224892074973897" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="1.8436391388622739" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="1.8436391388622739" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="1.8436391388622739" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.36593958913329017" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.12499999999982438" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.023860229638650941" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu_UCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.023860229638650941" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu_UCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.052224892074973897" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.12499999999982438" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_29" name="Model3 - 4/10">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_29">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-11T14:12:59Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="63.928053092170835" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572598.0561648649" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="2.0157820428713085" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="0.62348069662829841" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.60927335080289302" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.0064842422148731716" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.0060255511498161825" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.012625219896763582" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.012625219896763582" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.00042630720435361677" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="0.0010449623285421657" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="0.063200513623301813" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.0082437219218950055" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.0082437219218950055" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.06304561520000615" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="0.063200513623301813" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.061577041593043877" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.032185700109889796" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="66.94383513504215" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="66.94383513504215" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="0.0758257335200654" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="0.0758257335200654" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="0.0097149914547907876" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.07128933712190115" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.093762741702933666" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="8.3342970692225595" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="1.8149594811920993e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="1.7451417824741431e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="1.7053749814295295e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="1.6865704312652271e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="0.89999478913050812" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.15925106075975967" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="39.876256239376268" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0.00085934240728269002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.14332512484728965" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="1.7451417824741431e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="1.7053749814295295e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.8149594811920993e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="1.6865704312652271e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.012625219896763582" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.0082437219218950055" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.00042630720435361677" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.0082437219218950055" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.0082437219218950055" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.032185700109889796" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.063200513623301813" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.063200513623301813" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.0010449623285421657" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.06304561520000615" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.061577041593043877" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_28" name="Model3 - 4/11">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_28">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-12T00:45:37Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000000000000002" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572662" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.0000000000000002" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="0.99068428487184268" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.19813685697436856" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.099068428487184279" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.04953421424359214" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.19607843137254921" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.19607843137254921" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.0099999999999997782" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="0.326943138291512" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="0.32694313847401563" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.15151515151515221" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.15151515151515221" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.32588011530344235" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="0.32694313847401563" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.12499999999999978" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.030867442370008671" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="3.0000000000000004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="3.0000000000000004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="0.52302156984656478" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="0.52302156984656478" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="0.488458289806664" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.47739526681859457" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.15586744237000844" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="1.9709878367412437" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="2.7729560002738649e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="2.7729560002738648e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="5.5459120005477298e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="1.3864780001369324e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="0.99999999999999978" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.59965310095891589" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="1.1392859709327994" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0.0099999999999997799" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.59965310095891577" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.7729560002738648e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.5459120005477298e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="2.7729560002738649e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="1.3864780001369324e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.19607843137254921" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.15151515151515221" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0099999999999997782" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.15151515151515221" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.15151515151515221" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.030867442370008671" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.32694313847401563" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.32694313847401563" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.326943138291512" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.32588011530344235" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.12499999999999978" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_27" name="Model3 - 4/13">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_27">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-14T00:25:47Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0014175635309939" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572661.9967305427" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.0018518935272553" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="3.9247524117242998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.78495048234485998" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.39247524117242999" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.19623762058621499" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.19607843137254921" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.19607843137254921" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.0099999999999997782" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="0.12286023013523435" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="3.4003008963406565" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.15151515151515221" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.15151515151515221" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.3479907562868364" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="3.4003008963406565" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.12499999999999978" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.032311438336582447" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="3.0032694570582494" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="3.0032694570582494" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="3.5963793277132057" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="3.5963793277132057" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="0.28437538165038634" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.49950590780198861" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.15731143833658223" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="1.1673059874500553" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="1.0985503571491589e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="1.0985503571491589e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="2.1971007142983179e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="5.4927517857457946e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="0.99999999999999978" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.93874327254212764" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="4.5197518823117049" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0.010018518935272331" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.93874327254212742" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="1.0985503571491589e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="2.1971007142983179e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.0985503571491589e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="5.4927517857457946e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.19607843137254921" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.15151515151515221" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0099999999999997782" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.15151515151515221" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.15151515151515221" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.032311438336582447" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="3.4003008963406565" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="3.4003008963406565" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.12286023013523435" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.3479907562868364" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.12499999999999978" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_26" name="model3 - 4/14">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_26">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-14T00:25:47Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572662" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="3.0936435441244137" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.61872870882488273" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.30936435441244137" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.15468217720622068" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.19607843137254899" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.19607843137254899" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.03343687362141326" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="2.4260095446613192" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="2.4260095446613192" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.19499649242003383" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.19499649242003383" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.34636706403087986" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="2.4260095446613192" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.033306191437466409" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="3" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="3" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="2.6220879760338685" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="2.6220879760338685" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="2.6544429107027665" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.54136355645091372" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.15830619143746641" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="1.1888241070512511" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="8.6592041070864843e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="8.6592041070864848e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="1.7318408214172969e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="4.3296020535432421e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.88684000794542794" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="3.5576870883176586" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0.03343687362141326" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.88684000794542794" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="8.6592041070864848e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="1.7318408214172969e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="8.6592041070864843e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="4.3296020535432421e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.19607843137254899" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.19499649242003383" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.03343687362141326" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.19499649242003383" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.19499649242003383" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.033306191437466409" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="2.4260095446613192" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="2.4260095446613192" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="2.4260095446613192" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.34636706403087986" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_25" name="model3 - 4/15">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_25">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-15T21:12:17Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0106558421262199" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572661.9893376478" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.0000065100335764" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="2.838359678109311" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.56767193562186224" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.28383596781093112" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.14191798390546556" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.19607846827794267" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.19607846827794267" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.0228038915200106" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="2.1592935507797506" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="2.1592936572328147" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.15151515162455872" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.15151515162455872" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.24992204623304229" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="2.1592936572328147" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.12499900848469012" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.035099672362677005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="3.0106623521597964" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="3.0106623521597964" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="2.3553721255107574" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="2.3553721255107574" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="2.33361259392432" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.40143719785760101" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.16009868084736711" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="1.2154707680704269" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="7.9446566585708748e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="7.9446566585708738e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="1.588931331714175e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="3.9723283292854374e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="0.99999988178183286" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.86809850230318464" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="3.2943578140977752" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0.022804039974110069" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.86809839967817082" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="7.9446566585708738e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="1.588931331714175e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="7.9446566585708748e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="3.9723283292854374e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.19607846827794267" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.15151515162455872" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0228038915200106" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.15151515162455872" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.15151515162455872" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.035099672362677005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="2.1592936572328147" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="2.1592936572328147" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="2.1592935507797506" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.24992204623304229" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.12499900848469012" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_24" name="model3 - 4/16">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-16T21:59:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000000000000002" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572662" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.0000000000000002" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="3.023762860171435" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.60475257203428701" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.3023762860171435" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.15118814300857175" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.19662722168451524" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.19662722168451524" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.039171576533396923" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="2.358569664573686" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="2.3585696646026704" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.15151515151515221" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.15151515151515221" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.2271182931667631" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="2.3585696646026704" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.12499999999999978" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.037009197744520946" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="3.0000000000000004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="3.0000000000000004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="2.5551968862871854" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="2.5551968862871854" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="2.5492563926222349" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.37863344468191529" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.16200919774452072" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="1.1929773193812878" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="8.4636059081146292e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="8.463605908114629e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="1.6927211816229258e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="4.2318029540573146e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="0.99999998434121118" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.87925398685424283" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="3.4773243692531128" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0.03917157653339693" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.87925397308619035" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="8.463605908114629e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="1.6927211816229258e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="8.4636059081146292e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="4.2318029540573146e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.19662722168451524" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.15151515151515221" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.039171576533396923" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.15151515151515221" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.15151515151515221" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.037009197744520946" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="2.3585696646026704" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="2.3585696646026704" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="2.358569664573686" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.2271182931667631" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.12499999999999978" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_23" name="model3 - 4/17">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_23">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-18T16:03:17Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000001024000105" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572661.9999997951" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.0000001024" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="3.1885742590347292" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.63771485180694587" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.31885742590347294" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.15942871295173647" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.21989961072439684" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.21989961072439684" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.047592581447934781" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="2.5137393895755729" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="2.5137393895755729" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.15151515151515199" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.15151515151515199" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.22296364097327862" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="2.5137393895755729" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.0380584696844498" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="3.0000002048000107" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="3.0000002048000107" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="2.7336390002999695" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="2.7336390002999695" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="2.7128471225386597" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.37447879248843063" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.16305846968444981" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="1.1764767743898441" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="8.9249181186445678e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="8.924918118644567e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="1.7849836237289136e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="4.4624590593222839e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="0.99999996584319395" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.88681962287054228" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="3.6668576779537139" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0.047592586321415123" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.8868195925796164" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="8.924918118644567e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="1.7849836237289136e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="8.9249181186445678e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="4.4624590593222839e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.21989961072439684" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.15151515151515199" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.047592581447934781" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.15151515151515199" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.15151515151515199" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.0380584696844498" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="2.5137393895755729" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="2.5137393895755729" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="2.5137393895755729" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.22296364097327862" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_22" name="model3 - 4/18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_22">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-18T16:03:17Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="2.9528601618643062" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.59057203237286127" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.29528601618643063" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.14764300809321532" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.19607843137254899" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.19607843137254899" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.041072242343031459" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="2.2795530925764331" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="2.2795530925764331" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.15151515151515199" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.15151515151515199" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.22837568510071218" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="2.2795530925764331" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.038479382817439345" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="2" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="2" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="2.4756315239489819" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="2.4756315239489819" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="2.4721404864346166" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.3798908366158642" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.16347938281743934" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="1.2027423670830355" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="8.2651470593081247e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="8.2651470593081247e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="1.6530294118616249e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="4.1325735296540624e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.87182484901179713" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="3.2481443597183834" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0.041072242343031459" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.87182484901179713" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="8.2651470593081247e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="1.6530294118616249e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="8.2651470593081247e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="4.1325735296540624e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.19607843137254899" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.19607843137254899" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.041072242343031459" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.15151515151515199" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.15151515151515199" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.038479382817439345" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="2.2795530925764331" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="2.2795530925764331" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="2.2795530925764331" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.22837568510071218" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_21" name="Model3 - 4/19">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_21">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-20T00:16:47Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="3.1673298617527226" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.63346597235054458" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.31673298617527229" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.15836649308763615" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.23845246212154095" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.23845246212154095" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.041643783580772038" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="2.4660876334254533" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="2.4660876334254533" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.15484403928233151" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.15484403928233151" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.23637937583656185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="2.4660876334254533" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.038489338011979658" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="2" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="2" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="2.7045400955469945" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="2.7045400955469945" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="2.6625754562885571" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.39122341511889336" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.16348933801197965" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="1.1821622606007183" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="8.8654543925969065e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="8.8654543925969065e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="1.7730908785193813e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="4.4327271962984532e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="0.99999996336447594" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.88125741443037209" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="3.4840608975280283" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0.041643783580772038" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.8812573821450449" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="8.8654543925969065e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="1.7730908785193813e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="8.8654543925969065e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="4.4327271962984532e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.23845246212154095" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.23845246212154095" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.041643783580772038" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.15484403928233151" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.15484403928233151" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.038489338011979658" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="2.4660876334254533" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="2.4660876334254533" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="2.4660876334254533" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.23637937583656185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_20" name="Model3 - 4/21">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-21T17:27:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="2.7913846522708452" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.55827693045416904" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.27913846522708452" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.13956923261354226" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.19607843137254899" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.19607843137254899" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.044218322678260154" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="2.1198868951265091" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="2.1198868951265091" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.15951389671315763" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.15951389671315763" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.2490738220827127" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="2.1198868951265091" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.040197880908873641" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="2" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="2" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="2.3159653264990583" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="2.3159653264990583" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="2.323619114517927" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.4085877187958703" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.16519788090887363" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="1.2160002104974152" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="7.8131721061752085e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="7.813172106175209e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="1.5626344212350417e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="3.9065860530876042e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.86211102470977163" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="3.0705213986000666" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0.044218322678260154" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.86211102470977163" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="7.813172106175209e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="1.5626344212350417e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="7.8131721061752085e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="3.9065860530876042e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.19607843137254899" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.19607843137254899" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.044218322678260154" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.15951389671315763" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.15951389671315763" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.040197880908873641" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="2.1198868951265091" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="2.1198868951265091" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="2.1198868951265091" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.2490738220827127" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_19" name="Model3 - 4/22">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-23T02:59:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000010240004196" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572662.999998976" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="2.5511384648176838" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.51022769296353676" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.25511384648176838" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.12755692324088419" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.19607843137254899" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.19607843137254899" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.029767958116083845" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="1.8699859598069233" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="1.8699859598069233" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.15196935025916011" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.15196935025916011" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.24879729459199196" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="1.8699859598069233" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.040952115684915788" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="2.0000010240004196" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="2.0000010240004196" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="2.0660643911794723" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="2.0660643911794723" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="2.0517232681821671" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.4007666448511521" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.1659521156849158" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="1.2470204611898283" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="7.1407155857537273e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="7.1407155857537267e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="1.4281431171507455e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="3.5703577928768636e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="0.99999999665564054" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.84291879373313738" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="2.8062533527066149" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0.029767958116083845" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.84291879091411392" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="7.1407155857537267e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="1.4281431171507455e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="7.1407155857537273e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="3.5703577928768636e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.19607843137254899" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.19607843137254899" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.029767958116083845" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.15196935025916011" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.15196935025916011" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.040952115684915788" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="1.8699859598069233" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="1.8699859598069233" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="1.8699859598069233" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.24879729459199196" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_18" name="Model3 - 4/23">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_18">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-23T02:59:32Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572662.9999998934" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.0000001064960109" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="2.5475883169501072" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.50951766339002147" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.25475883169501073" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.12737941584750537" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.19636098994291223" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.19636098994291223" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.036076699631194982" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="1.8716975274562213" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="1.8716975274562213" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.16498630966870756" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.16498630966870756" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.27461818754219225" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="1.8716975274562213" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.041602062706714175" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="2.0000001064960111" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="2.0000001064960111" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="2.0680585173991335" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="2.0680585173991335" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="2.0727605367561237" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.43960449721089978" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.16660206270671418" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="1.2440232891341643" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="7.1307786119048585e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="7.130778611904859e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="1.4261557223809717e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="3.5653893059524293e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="0.99999999669999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.84460586719880792" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="2.8023456070045238" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0.036076703473219576" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.84460586441160856" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="7.130778611904859e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="1.4261557223809717e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="7.1307786119048585e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="3.5653893059524293e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.19636098994291223" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.19636098994291223" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.036076699631194982" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.16498630966870756" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.16498630966870756" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.041602062706714175" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="1.8716975274562213" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="1.8716975274562213" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="1.8716975274562213" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.27461818754219225" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_17" name="Model3 - 4/25">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_17">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-26T12:39:26Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000000204799999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572662.9999974193" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.00000256" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="2.5363371280587081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.50726742561174165" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.25363371280587083" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.12681685640293541" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.20527336547231523" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.20527336547231523" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.03710189675806147" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="1.8577301718274857" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="1.8577301718274857" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.18485270607563919" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.18485270607563919" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.32489113262157515" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="1.8577301718274857" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.04285234611674326" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="2.0000025804799999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="2.0000025804799999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="2.0630035372998008" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="2.0630035372998008" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="2.0796847746611862" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.5097438386972144" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.16785234611674327" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="1.2420157515561079" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="7.0992861856868989e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="7.0992861856868979e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="1.4198572371373798e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="3.5496430928434495e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="0.99999999669999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.84651724406049422" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="2.789969980265699" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0.037101991738917171" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.84651724126698724" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="7.0992861856868979e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="1.4198572371373798e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="7.0992861856868989e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="3.5496430928434495e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.20527336547231523" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.20527336547231523" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.03710189675806147" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.18485270607563919" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.18485270607563919" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.04285234611674326" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="1.8577301718274857" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="1.8577301718274857" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="1.8577301718274857" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.32489113262157515" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_0" name="Model3 - 4/27">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-26T12:39:26Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000000000304734" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.0000000000375229" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="2.5246681233841226" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.50493362467682457" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.25246681233841228" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.12623340616920614" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.21111074995866533" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.21111074995866533" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.037813946362313181" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="1.8436391388622739" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="1.8436391388622739" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.20121746758778447" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.20121746758778447" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.36593958913329017" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="1.8436391388622739" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.12499999999982438" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.043520743395811579" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="2.0000000000679963" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="2.0000000000679963" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="2.0547498888209392" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="2.0547498888209392" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="2.0826705528123717" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.56715705672107464" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.16852074339563594" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="1.2415684574523242" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="7.0666242801497564e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="7.0666242801497556e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="1.4133248560299513e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="3.5333121400748782e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="0.99999997999374546" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.84709790473853197" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="2.7771333811516015" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0.037813946363732066" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.84709788779127571" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="7.0666242801497556e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="1.4133248560299513e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="7.0666242801497564e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="3.5333121400748782e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.21111074995866533" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.21111074995866533" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.037813946362313181" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.20121746758778447" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.20121746758778447" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.043520743395811579" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="1.8436391388622739" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="1.8436391388622739" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="1.8436391388622739" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.36593958913329017" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.12499999999982438" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_7" name="Model3 - 4/27 Hartford">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_7">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-28T19:32:56Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S]" value="894014" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[UCH],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[UCH]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha]" value="2.5246681233841226" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta]" value="0.50493362467682457" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma]" value="0.25246681233841228" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.1
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta]" value="0.12623340616920614" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=InitialValue>*0.05
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta]" value="0.21111074995866533" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta]" value="0.21111074995866533" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta]" value="0.030251157089850718" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa]" value="1.8436391388622739" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda]" value="1.8436391388622739" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu]" value="0.20121746758778447" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu]" value="0.20121746758778447" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi]" value="0.36593958913329017" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho]" value="1.8436391388622739" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma]" value="0.12499999999982438" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau]" value="0.052224892074973897" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1]" value="2.0547498888209392" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2]" value="2.0547498888209392" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3]" value="2.0751077635399091" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4]" value="0.56715705672107464" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5]" value="0.17722489207479827" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0]" value="1.2415320203921536" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop]" value="2.8239693375988774e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population]" value="894014" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop]" value="2.8239693375988773e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop]" value="5.6479386751977548e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop]" value="1.4119846687994387e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x]" value="0.84647803746212447" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction]" value="0.84647803746212447" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu_UCH]" value="0.023860229638650941" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Total_Hospitalized]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ZeroDay]" value="3.1523440370603772" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.8239693375988773e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.6479386751977548e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="2.8239693375988774e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="1.4119846687994387e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.21111074995866533" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.21111074995866533" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.030251157089850718" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.20121746758778447" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.20121746758778447" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.052224892074973897" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="1.8436391388622739" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="1.8436391388622739" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="1.8436391388622739" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.36593958913329017" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.12499999999982438" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.023860229638650941" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu_UCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.023860229638650941" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu_UCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.052224892074973897" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_UCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_UCH],ParameterGroup=Parameters,Parameter=k1" value="0.12499999999982438" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 0 0 0 894014 0 0.21111074995866533 0.20121746758778447 1.8436391388622739 0 0 0 0 2.0547498888209392 2.0547498888209392 2.0751077635399091 0.56715705672107464 0.17722489207479827 NaN NaN 1.2415320203921536 2.8239693375988774e-07 2.8239693375988773e-06 5.6479386751977548e-07 1.4119846687994387e-07 0.059999999999999998 0.11077520991184649 0.11077520991184649 0.11077520991184649 0.22155041982369297 0 0 0.84647803746212447 0 0 1 2.5246681233841226 0.50493362467682457 0.25246681233841228 0.12623340616920614 0 0.21111074995866533 0.030251157089850718 1.8436391388622739 1.8436391388622739 0.20121746758778447 0.36593958913329017 0.12499999999982438 0.052224892074973897 894014 0.78222655465241187 0.29999999999999999 0.0054878294478546081 0.059999999999999998 1 0.84647803746212447 0.22155041982369297 -1 -1 -1 0 0.023860229638650941 3.1523440370603772 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_29" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_1" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="timecourses.txt" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
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
    <Task key="Task_2" name="Scan" type="scan" scheduled="true" updateModel="false">
      <Report reference="Report_8" target="ct-Model1-sampling-TC-4-8-2020.txt" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="1"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ApplyRelaxationMay1],Reference=InitialValue"/>
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
    <Task key="Task_3" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_28" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_4" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_27" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_5" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="true">
      <Report reference="Report_5" target="" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ZeroDay],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="UpperBound" type="cn" value="15"/>
            <Parameter name="StartValue" type="float" value="3.1523440370000002"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu_UCH],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="0.201217467587784"/>
            <Parameter name="StartValue" type="float" value="0.023860229638650941"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.899999981994371"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.762388114264679"/>
            <Parameter name="UpperBound" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.84647803746212447"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.0348165947166493"/>
            <Parameter name="UpperBound" type="cn" value="0.0522248920749739"/>
            <Parameter name="StartValue" type="float" value="0.052224892074973897"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.0302511570898505"/>
            <Parameter name="UpperBound" type="cn" value="0.0453767356347758"/>
            <Parameter name="StartValue" type="float" value="0.030251157089850718"/>
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
            <Parameter name="Key" type="key" value="Experiment_2"/>
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
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Total_Hospitalized],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[UCH],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
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
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_25" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_8" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_9" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
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
    <Task key="Task_10" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_11" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_12" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_0" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_29" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_28" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_27" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_26" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_25" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_0" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_1" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="summary PE" taskType="scan" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0],Reference=Value"/>
      </Table>
    </Report>
    <Report key="Report_6" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_7" name="TC-summary" taskType="timeCourse" separator="&#x09;" precision="10">
      <Comment>
      </Comment>
      <Header>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction],Reference=InitialValue,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration,Property=DisplayName"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="TC variables, fluxes, global quantities" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_epsilon],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_kappa],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_lambda],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_mu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_nu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_rho],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_sigma],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_theta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[f_xi],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r1],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r2],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r3],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r4],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[r5],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[scale],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=Value"/>
      </Table>
    </Report>
    <Report key="Report_9" name="TC-summary2" taskType="timeCourse" separator="&#x09;" precision="10">
      <Comment>
      </Comment>
      <Header>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction],Reference=InitialValue,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=ImmuneRatio"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration,Property=DisplayName"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day8x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[day15x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tot_reduction],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeak],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tpeaktime],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[ImmuneRatio],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Tnonew],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Population],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[CFR],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[DRT],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDART],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[IDARTHE],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New cases],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[New diagnosed],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Perceived CFR],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Recovered],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[Total_Hospitalized],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Compartments[compartment],Vector=Metabolites[UCH],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[R0],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[alpha],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[beta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[delta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[epsilon],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[eta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[gamma],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[kappa],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[lambda],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[mu],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[nu],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[rho],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[sigma],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[tau],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[theta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[xi],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Values[zeta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_D],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_I],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[contagion_R],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[critical_R],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[death],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[diagnosis_I],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_D],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_I],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_R],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[healing_T],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_D],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Hartford Model 3,Vector=Reactions[symptoms_I],Reference=Flux"/>
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
    <SBMLMap SBMLid="A" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="CFR" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="D" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="DRT" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="Diagn_cumul_infected" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="E" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="H" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="I" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="IDART" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="IDARTHE" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="Perceived_CFR" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="R" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="R0" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="Recovered" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="S" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="T" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="beta" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="contagion_A" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="contagion_D" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="contagion_I" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="contagion_R" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="critical_A" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="critical_R" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="death" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="delta" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="diagnosis_A" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="diagnosis_I" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="epsilon" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="eta" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="gamma" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="healing_A" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="healing_D" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="healing_I" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="healing_R" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="healing_T" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="kappa" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="lambda" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="mu" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="nu" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="r1" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="r2" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="r3" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="r4" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="r5" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="rho" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="sigma" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="symptoms_D" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="symptoms_I" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="tau" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="theta" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="xi" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="zeta" COPASIkey="ModelValue_105"/>
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
<dcterms:W3CDTF>2020-04-26T12:39:25Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-04-26T12:39:25Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-04-26T12:39:25Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-04-26T12:39:25Z</dcterms:W3CDTF>
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
