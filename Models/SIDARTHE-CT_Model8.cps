<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.28 (Build 226) (http://www.copasi.org) at 2020-06-17T12:22:18Z -->
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
  <Model key="Model_1" name="SIDARTHE Connecticut Model 8" simulationType="time" timeUnit="d" volumeUnit="1" areaUnit="1" lengthUnit="1" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
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
  <span property="dct:title">SIDARTHE-CT_Model8.cps</span>.
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
      <Metabolite key="Metabolite_8" name="I" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:40:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="S" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:40:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="D" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:40:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="A" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
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
      <Metabolite key="Metabolite_13" name="T" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:45:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="E" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:46:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="H" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
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
      <ModelValue key="ModelValue_65" name="alpha" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="beta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="gamma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="delta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="epsilon" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="zeta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:26:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="eta" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:27:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="theta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:28:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="kappa" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:29:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="lambda" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:29:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="mu" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:29:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="nu" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:29:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="xi" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:31:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="rho" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:31:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="sigma" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:31:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="tau" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T15:32:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="DRT" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T18:54:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="IDARTHE" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:08:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="IDART" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:10:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="Recovered" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T20:39:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="Diagnosed Cumulative infected" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T20:50:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="r1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:31:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="r2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:32:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="r3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:33:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="r4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:34:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="r5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:34:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="Perceived CFR" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:36:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>/((&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=Value>*(&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=Value>))/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3],Reference=Value>)*(&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration>)+(&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=Value>)/&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3],Reference=Value>*(&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="CFR" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:45:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="R0" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T00:00:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1],Reference=Value>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2],Reference=Value>)+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3],Reference=Value>)+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4],Reference=Value>)+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=Value>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="gamma_pop" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T17:59:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="Population" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_95">
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
      <ModelValue key="ModelValue_96" name="alpha_pop" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_96">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T18:07:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="beta_pop" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T18:07:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="delta_pop" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_98">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T18:08:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="scale" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-26T22:54:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="f_epsilon" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_100">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-27T19:10:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="f_theta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-27T19:12:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="f_mu" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_102">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-27T19:24:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="f_nu" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-27T19:24:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="day8x" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_104">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-31T01:43:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_105" name="day15x" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_105">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-31T01:44:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_106" name="f_lambda" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_106">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-01T02:08:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_107" name="f_kappa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_107">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-01T02:08:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_108" name="f_sigma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_108">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-01T02:09:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_109" name="f_xi" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-01T02:09:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_110" name="f_rho" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_110">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-01T02:09:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_111" name="Tpeak" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_111">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T01:20:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_112" name="Tpeaktime" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_112">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T01:23:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_113" name="New cases" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_113">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T13:50:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],Reference=Flux>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_114" name="New diagnosed" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_114">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T13:52:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],Reference=Flux>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],Reference=Flux>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_115" name="Tnonew" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_115">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T13:53:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_116" name="Tot_reduction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_116">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T13:47:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x],Reference=InitialValue>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_117" name="ImmuneRatio" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_117">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-13T19:01:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration>/(&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration>+&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_118" name="ApplyRelaxationMay1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_118">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-14T18:52:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_119" name="HiddenRatio" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_119">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-29T14:51:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_120" name="InfectedRatio" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_120">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-30T12:05:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected],Reference=Value>/&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_121" name="f_stage4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_121">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-07T01:43:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_122" name="R(73)" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_122">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-14T02:03:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_123" name="f_beta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_123">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T13:43:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="f_gamma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_62">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-15T13:43:20Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_124" name="f_delta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_124">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T13:43:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_125" name="ImmuneRatio(73)" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_125">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-17T12:32:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_126" name="InfectedRatio(73)" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_126">
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
      <Reaction key="Reaction_16" name="contagion_I" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:39:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2950" name="k1" value="2.65086e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="contagion_D" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:40:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2947" name="k1" value="5.30171e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="contagion_A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:40:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7096" name="k1" value="1.32543e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="contagion_R" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:41:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3268" name="k1" value="1.00694e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="diagnosis_I" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:43:45Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_7095" name="k1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="symptoms_I" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:44:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3212" name="k1" value="1.3655"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="symptoms_D" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:44:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3216" name="k1" value="1.3655"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="diagnosis_A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:45:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2658" name="k1" value="0.00764935"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="critical_A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:45:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5157" name="k1" value="0.100195"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="critical_R" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
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
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5124" name="k1" value="0.100195"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:46:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2756" name="k1" value="0.0470051"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="healing_I" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:46:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2829" name="k1" value="0.112285"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="healing_D" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:46:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2821" name="k1" value="0.112285"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="healing_A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:47:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2837" name="k1" value="0.0782308"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="healing_R" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
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
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6289" name="k1" value="0.0782308"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="healing_T" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T14:47:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2761" name="k1" value="0.0782308"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_22" name="Day 15" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_22">
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time> > 15
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" targetKey="ModelValue_65">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" targetKey="ModelValue_67">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" targetKey="ModelValue_66">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" targetKey="ModelValue_68">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" targetKey="ModelValue_72">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>*50
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_11" name="Day 08" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_11">
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time> > 8
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" targetKey="ModelValue_65">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" targetKey="ModelValue_67">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" targetKey="ModelValue_66">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" targetKey="ModelValue_68">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta],Reference=Value>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_12" name="Day 11" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-30T17:24:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time> > 10
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" targetKey="ModelValue_72">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>*20
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_13" name="T peak detection" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-02T01:20:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Rate> &lt; 0
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" targetKey="ModelValue_111">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" targetKey="ModelValue_112">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time>
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed],Reference=Value> &lt; 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" targetKey="ModelValue_115">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_15" name="Day 21" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-30T17:24:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time> > 20
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" targetKey="ModelValue_72">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>*95
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_16" name="Day 32" fireAtInitialTime="0" persistentTrigger="0">
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time> > 31
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" targetKey="ModelValue_72">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>*150
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_17" name="Day 73 ReOpenStage 4" fireAtInitialTime="0" persistentTrigger="0">
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time> > 73
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" targetKey="ModelValue_65">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=Value>+(&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=Value>)*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" targetKey="ModelValue_67">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma],Reference=Value>+(&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma],Reference=Value>)*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" targetKey="ModelValue_66">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta],Reference=Value>+(&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta],Reference=Value>)*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" targetKey="ModelValue_68">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta],Reference=Value>+(&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta],Reference=Value>)*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" targetKey="ModelValue_122">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio(73)]" targetKey="ModelValue_125">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio(73)]" targetKey="ModelValue_126">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_18" name="Day 60" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-12T11:14:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time> > 59
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" targetKey="ModelValue_72">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>*256
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_19" name="event" fireAtInitialTime="0" persistentTrigger="0">
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time> > 64
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" targetKey="ModelValue_72">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>*330
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_20" name="Day 67" fireAtInitialTime="0" persistentTrigger="0">
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time> > 66
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" targetKey="ModelValue_72">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>*350
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_21" name="Day 75" fireAtInitialTime="0" persistentTrigger="0">
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
          &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time> > 74
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" targetKey="ModelValue_72">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>*315
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" targetKey="ModelValue_69">
            <Expression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon],Reference=InitialValue>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_29">
      <ModelParameterSet key="ModelParameterSet_29" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_29">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-15T02:45:38Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="0.94732117254101733" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.018946423450820347" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.47366058627050867" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.032248192002795266" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="1.0015883663380922" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="1.0015883663380922" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="0.0071504848654961482" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.095120861577774052" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.11490636126805309" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.095726487428534832" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.095726487428534832" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.095120861577774052" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.11490636126805309" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.21215215928512215" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.046847363518757526" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="1.1164947276061454" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="1.1164947276061454" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.19799783387180503" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.1908473490063089" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.25899952280387967" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="3.0000001064271937" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.3257906528334134e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="2.6515813056668269e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="5.3031626113336533e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="9.0263688318930728e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="1.0000256983581473e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.86487069083525869" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.86487069083525869" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="0.82781197253193406" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="2.2303431210161961" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="0.82781197253193406" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="0.94732090738288688" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.74800131186585761" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_beta]" value="0.034041455989308606" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_gamma]" value="0.016006316554966975" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta]" value="0.034041455989308606" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.6515813056668269e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.3031626113336533e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.3257906528334134e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="9.0263688318930728e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="1.0015883663380922" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="1.0015883663380922" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0071504848654961482" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.095726487428534832" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.095726487428534832" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046847363518757526" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.11490636126805309" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.11490636126805309" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.095120861577774052" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.095120861577774052" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.21215215928512215" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_43" name="Model7 - 5/11">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_43">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-11T20:17:14Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000000000003981" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999999995" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="4.9221474329999996e-10" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="1.2568472218527655" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.02513694443705531" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.62842361092638277" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.037705416655582961" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="0.59999999987223873" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="0.59999999987223873" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="0.0038228191289422175" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.01000000006083206" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.85893115840552359" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.084201963843088742" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.084201963843088742" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.22075541610851884" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.85893115840552359" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.1261836135522455" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.045446930290745896" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="1.0000000004926128" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="1.0000000004926128" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="1.4589311582777622" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="1.4589311582777622" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.098024783032863022" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.3049573799516076" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.1716305438429914" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="3.5000000174739272" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.7589771527036058e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="3.5179543054072117e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="7.0359086108144228e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="1.0553862916221633e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.99999999692307173" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.75878840237194067" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="1.2568468703671547" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="1.8816479362346231e-12" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.75878840003720316" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="2.7990309768551289e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="3.5179543054072117e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="7.0359086108144228e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.7589771527036058e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="1.0553862916221633e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.59999999987223873" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.59999999987223873" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0038228191289422175" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.084201963843088742" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.084201963843088742" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.045446930290745896" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.85893115840552359" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.85893115840552359" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.01000000006083206" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.22075541610851884" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.1261836135522455" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_42" name="Model7 - 5/13">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_42">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-14T12:26:12Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="5.1906035920000006e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="1.2577356304770004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.025154712609540008" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.62886781523850022" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.03773206891431001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="0.59994113737973997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="0.59994113737973997" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="0.0037151430144845799" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.85504661278130212" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.084749924708080279" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.084749924708080279" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.19332134191562012" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.85504661278130212" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.13898930761472852" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.045443449556023252" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="1.4549877501610422" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="1.4549877501610422" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.098465067722564859" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.27807126662370041" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.18443275717075178" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="3.5000000017031763" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.7602204943326625e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="3.520440988665325e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="7.04088197733065e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="1.0561322965995975e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.99999999560602193" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.74888079421848353" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="0.11077520991184649" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="1.2577352784329014" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="1.9283834675777372e-23" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.74888079092791771" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="2.79903097547629e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="3.520440988665325e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="7.04088197733065e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.7602204943326625e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="1.0561322965995975e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.59994113737973997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.59994113737973997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0037151430144845799" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.084749924708080279" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.084749924708080279" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.045443449556023252" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.85504661278130212" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.85504661278130212" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.19332134191562012" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.13898930761472852" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_41" name="Model8 - 5/15">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_41">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-15T13:29:57Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000000050420332" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999999534" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="4.1436557264709413e-08" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="1.0113965282924799" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.020227930565849598" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.50569826414623997" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.030341895848774399" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="1.4128581253654238" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="1.4128581253654238" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="0.0039497447658762095" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.15631740358204541" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.15279598398607991" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.086113386197581132" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.086113386197581132" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.15631740358204541" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.15279598398607991" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.15631740358204541" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.045580187094399233" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="1.0000000464785905" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="1.0000000464785905" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="1.5656541093515037" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="1.5656541093515037" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.24638053454550274" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.24243078977962654" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.20189759067644464" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="2.5000000187649261" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.4154651055899168e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="2.8309302111798335e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="5.6618604223596662e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="8.4927906335395002e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.9436582740663414" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.81014076721467787" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="1.0230465454922317" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="1.0230465454922317" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="1.0230465454922317" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="1.0113962712533284" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="1.6366382517221584e-10" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.76449603814058453" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="2.7990311055713049e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_beta]" value="0.01403320382092808" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_gamma]" value="0.08558336141802525" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta]" value="0.01403320382092808" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.8309302111798335e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.6618604223596662e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4154651055899168e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.4927906335395002e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="1.4128581253654238" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="1.4128581253654238" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0039497447658762095" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.086113386197581132" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.086113386197581132" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.045580187094399233" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.15279598398607991" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.15279598398607991" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.15631740358204541" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.15631740358204541" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.15631740358204541" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_1" name="Model8 - 5/17">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-15T13:29:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1.0000000000007512" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="2.4013788587527733e-14" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="1.0049424202726598" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.020098848405453198" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.50247121013632989" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.030148272608179792" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="1.2781363580683676" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="1.2781363580683676" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="0.0042461717467953287" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.15719019378432267" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.15304363891039099" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.088424079597809083" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.088424079597809083" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.15719019378432267" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.15304363891039099" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.15719019378432267" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.045715672397912674" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="1.0000000000007752" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="1.0000000000007752" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="1.4311799969787586" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="1.4311799969787586" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.24986044512892708" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.24561427338213176" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.20290586618223533" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="2.5000002040395106" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.4064324814566433e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="2.8128649629132866e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="5.625729925826574e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="8.4385948887398602e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.9243809246638035" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.81814736838768776" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="1.0270939380653352" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="1.0270939380653352" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="1.0270939380653352" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="1.0049421389869302" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="1.0196667063387637e-16" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.75627982090146828" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_beta]" value="0.079987615804590434" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_gamma]" value="0.050000680485198554" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta]" value="0.079987615804590434" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.8128649629132866e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.625729925826574e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4064324814566433e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.4385948887398602e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="1.2781363580683676" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="1.2781363580683676" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0042461717467953287" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.088424079597809083" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.088424079597809083" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.045715672397912674" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.15304363891039099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.15304363891039099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.15719019378432267" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.15719019378432267" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.15719019378432267" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_22" name="Model8 - 5/18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-18T21:11:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="4.7079283750000002e-11" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="0.9954581144658875" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.019909162289317751" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.49772905723294375" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.029863743433976624" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="1.1977775517953781" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="1.1977775517953781" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="0.0045857063924105504" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.15657725744898099" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.152854305144597" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.089490056457292813" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.089490056457292813" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.15657725744898099" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.152854305144597" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.15657725744898099" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.045796423214537148" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="1.0000000000470792" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="1.0000000000470792" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="1.3506318569399751" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="1.3506318569399751" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.25065302029868436" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.24606731390627379" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.20237368066351813" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="2.5000000010639694" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.3931590485896208e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="2.7863180971792416e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="5.5726361943584838e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="8.3589542915377249e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.91963909121352194" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.82394701118484981" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="1.0243562148992935" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="1.0243562148992935" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="1.0243562148992935" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="0.99545783585751046" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="2.1589177244248517e-13" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.75773388057413282" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_beta]" value="0.088618421549135101" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_gamma]" value="0.010354336806294436" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta]" value="0.088618421549135101" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.7863180971792416e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.5726361943584838e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.3931590485896208e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.3589542915377249e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="1.1977775517953781" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="1.1977775517953781" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0045857063924105504" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.089490056457292813" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.089490056457292813" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.045796423214537148" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.152854305144597" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.152854305144597" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.15657725744898099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.15657725744898099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.15657725744898099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_3" name="Model8 - 5/19">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_3">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-05-20T03:00:21Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="5.9219420570318321e-16" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="1.0415548415045426" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.020831096830090851" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.52077742075227129" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.031246645245136276" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="1.5" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="0.0028688264875610793" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.13752937546707555" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.12999091968372362" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.062759948977907321" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.062759948977907321" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.13752937546707555" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.12999091968372362" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.13752937546707555" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.045790148269484875" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="1.0000000000000007" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="1.0000000000000007" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="1.6299909196837237" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="1.6299909196837237" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.20315815093254397" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.20028932444498287" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.18331952373656044" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="3.0000000025310656" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.4576721320142562e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="2.9153442640285123e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="5.8306885280570244e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="8.7460327920855375e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.87962551602159766" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.73231473432667937" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="1.0579921720816614" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="1.0579921720816614" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="1.0579921720816614" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="1.0415545499701162" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="1.6989024231014863e-18" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.6441627260723245" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_beta]" value="0.001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_gamma]" value="0.79999934167040498" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.9153442640285123e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.8306885280570244e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4576721320142562e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.7460327920855375e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0028688264875610793" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.062759948977907321" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.062759948977907321" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.045790148269484875" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.12999091968372362" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.12999091968372362" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.13752937546707555" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.13752937546707555" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.13752937546707555" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_2" name="Model8 - 5/31">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_2">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T02:54:02Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="6.8919217198904574e-37" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="0.99206469125831409" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.019841293825166282" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.49603234562915705" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.029761940737749421" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="0.81830919837601379" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="0.81830919837601379" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="0.0046890038679832978" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.13946693559570997" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.14028013247973073" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.071615218803366076" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.071615218803366076" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.13946693559570997" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.14028013247973073" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.13946693559570997" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.046226626105805975" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="0.95858933085574449" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="0.95858933085574449" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.21577115826705934" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.21108215439907604" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.18569356170151594" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="3.0000000049841216" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.3884099002541716e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="2.7768198005083433e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="5.5536396010166866e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="8.3304594015250299e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="1.0003309788000172e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.7933392376211561" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.77369190160669588" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="0.99420305021355559" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="0.99420305021355559" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="0.99420305021355559" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="0.99206441357633401" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="3.2316247602404455e-39" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.61380014337431865" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_beta]" value="0.0010000402597086927" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_gamma]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta]" value="0.0010000402597086927" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.7768198005083433e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.5536396010166866e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.3884099002541716e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.3304594015250299e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.81830919837601379" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.81830919837601379" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0046890038679832978" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.071615218803366076" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.071615218803366076" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046226626105805975" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.14028013247973073" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.14028013247973073" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.13946693559570997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.13946693559570997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.13946693559570997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_23" name="Model8 - 6/01">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_23">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-02T14:54:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572663.9999998468" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.530304469e-07" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="1.0007235723142101" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.020014471446284203" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.50036178615710503" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.030021707169426301" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="0.83316583611933759" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="0.83316583611933759" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="0.0045835819693179252" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.14081755039291124" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.13979004220161403" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.072216786537444774" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.072216786537444774" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.14081755039291124" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.13979004220161403" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.14081755039291124" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.046274216096780632" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="1.000000153030447" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="1.000000153030447" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="0.97295587832095165" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="0.97295587832095165" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.21761791889967394" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.21303433693035601" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.18709176648969189" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="3.0000000012581647" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.4005281383983806e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="2.8010562767967613e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="5.602112553593523e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="8.4031688303902833e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="1.0000046039119398e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.78209635939441835" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.78209635939441835" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="1.0073503675591948" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="1.0073503675591948" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="1.0073503675591948" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="1.0007233687791059" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="7.0142759716750413e-10" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.61167471537800322" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_beta]" value="0.001049963908844572" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_gamma]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta]" value="0.001049963908844572" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.8010562767967613e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.602112553593523e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.4005281383983806e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="8.4031688303902833e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.83316583611933759" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.83316583611933759" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0045835819693179252" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.072216786537444774" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.072216786537444774" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046274216096780632" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.13979004220161403" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.13979004220161403" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.14081755039291124" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.14081755039291124" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.14081755039291124" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_24" name="Model8 - 6/06">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_24">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-06T01:33:40Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="5.6112124965942209" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572659.3887875034" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="0.90137333624470706" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.01802746672489414" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.45068666812235353" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.027041200087341212" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.03
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="0.051276526941810695" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="0.051276526941810695" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="0.00014060809367020836" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.18413306838265633" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.20459229240580878" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.0050000004913872513" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.0050000004913872513" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.18413306838265633" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.20459229240580878" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.053606947918374878" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.046534508112763072" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="5.6112124965942209" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="5.6112124965942209" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="0.25586881934761946" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="0.25586881934761946" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.1892736769677138" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.18913306887404358" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.10014145603113794" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="3.9999998873738472" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.2614859443086701e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="2.5229718886173402e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="5.0459437772346806e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="7.5689156658520217e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="9.9997640360355787e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.99999997970303867" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.32583399847277461" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="0.90000002550158842" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="0.29113156256632589" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="0.90000002550158842" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="5.0577893846780908" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.32583399185933454" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_beta]" value="0.089999999999999997" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_gamma]" value="0.010000121925005045" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta]" value="0.089999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.5229718886173402e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.0459437772346806e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.2614859443086701e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="7.5689156658520217e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.051276526941810695" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.051276526941810695" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.00014060809367020836" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.0050000004913872513" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.0050000004913872513" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046534508112763072" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.20459229240580878" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.20459229240580878" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.18413306838265633" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.18413306838265633" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.053606947918374878" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_25" name="Model8 - 6/07">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-07T20:30:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="18.811255328632338" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572646.1887446712" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="0.86586017014683336" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.017317203402936666" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.43293008507341668" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.017317203402936666" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="0.065588555409925184" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="0.065588555409925184" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="5.3748086403988491e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.10776072946449727" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.21552145892899455" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.10776072946449727" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.21552145892899455" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.053173030239312885" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.046702534169498558" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="18.811255328632338" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="18.811255328632338" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="0.28111001433891974" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="0.28111001433891974" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.10981447755090126" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.10976072946449728" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.099875564408811443" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="3.9999999949059561" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.2117847183360789e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="2.4235694366721578e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="4.8471388733443148e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="4.8471388733443148e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="5.3748085787562439e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.99999999817920615" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.3632573388450111" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="0.49343606435803877" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="0.5" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="16.287830978290707" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.36325733818359435" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_beta]" value="0.02" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_gamma]" value="0.79999990495423379" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.4235694366721578e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="4.8471388733443148e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.2117847183360789e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="4.8471388733443148e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.065588555409925184" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.065588555409925184" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="5.3748086403988491e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046702534169498558" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.21552145892899455" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.21552145892899455" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.10776072946449727" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.10776072946449727" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.053173030239312885" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_26" name="Model8 - 6/08">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_26">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-08T19:22:21Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="14.525006989540667" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572650.4749930105" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="0.88643688778315577" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.017728737755663117" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.44321844389157788" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.017728737755663117" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="0.070139405633834306" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="0.070139405633834306" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="5.3858262758296754e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.11031659159267372" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.22063318318534744" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.11031659159267372" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.22063318318534744" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.052912943628731474" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.046743688950496715" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="14.525006989540667" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="14.525006989540667" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="0.29077258881918178" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="0.29077258881918178" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.11237044985543201" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.11231659159267372" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.099656632579228188" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="3.9999999969870381" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.2405821533549265e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="2.481164306709853e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="4.9623286134197065e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="4.9623286134197065e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="5.3858246443754887e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.99999999966352882" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.36087071194264236" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="0.47964628769626977" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="0.5" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="12.875449644267601" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.36087071182121977" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_beta]" value="0.02" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_gamma]" value="0.79999999921360876" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.481164306709853e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="4.9623286134197065e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.2405821533549265e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="4.9623286134197065e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.070139405633834306" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.070139405633834306" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="5.3858262758296754e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046743688950496715" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.22063318318534744" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.22063318318534744" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.11031659159267372" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.11031659159267372" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.052912943628731474" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_27" name="Model8 - 6/09">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_27">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-10T00:12:45Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="14.863785494410321" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572650.1362145054" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="0.88422701640896961" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.017684540328179392" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.44211350820448481" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.017684540328179392" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="0.070639592038097734" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="0.070639592038097734" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="5.3189398564061476e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.1100369306334314" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.22007386126686279" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.1100369306334314" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.22007386126686279" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.0541582148610774" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.046775575624950133" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="14.863785494410321" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="14.863785494410321" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="0.29071345330496051" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="0.29071345330496051" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.11209012003199546" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.1120369306334314" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.10093379048602753" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="3.9999999946379288" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.2374894041408439e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="2.4749788082816878e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="4.9499576165633755e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="4.9499576165633755e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="5.3189394206796351e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.99999999683250962" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.36156703400571993" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="0.49218216601747944" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="0.5" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="13.142906020034044" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.36156703286045982" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_beta]" value="0.02" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_gamma]" value="0.79999999999996785" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.4749788082816878e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="4.9499576165633755e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.2374894041408439e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="4.9499576165633755e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.070639592038097734" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.070639592038097734" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="5.3189398564061476e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046775575624950133" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.22007386126686279" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.22007386126686279" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.1100369306334314" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.1100369306334314" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.0541582148610774" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_40" name="Model8 - 6/10">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-10T00:12:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="16.960705170000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572648.0392948301" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="0.87347876677076863" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.017469575335415374" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.43673938338538432" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.043673938338023958" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="0.068653253395975278" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="0.068653253395975278" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="5.2652111224979358e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.10870040618136356" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.21740081236272712" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.10870040618136356" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.21740081236272712" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.055166680726054317" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.046809362352828815" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="16.960705170000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="16.960705170000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="0.2860540657587024" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="0.2860540657587024" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.11075305829258854" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.11070040618136356" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.10197604307888314" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="3.9999999984244581" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.2224470623061058e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="2.4448941246122116e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="4.8897882492244228e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="1.2224470622917054e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="5.2652111224979358e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.99999999867547207" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.36347744503780516" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="0.50751126572618566" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="0.5" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="14.814745504280266" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.36347744455636916" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_beta]" value="0.049999999999411009" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_gamma]" value="0.7999999999219839" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta]" value="0.049999999999411009" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.4448941246122116e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="4.8897882492244228e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.2224470623061058e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="1.2224470622917054e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="0.068653253395975278" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="0.068653253395975278" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="5.2652111224979358e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046809362352828815" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.21740081236272712" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.21740081236272712" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.10870040618136356" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.10870040618136356" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.055166680726054317" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_39" name="Model8 - 6/13">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-15T02:45:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="0.94706181479940654" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.01894123629598813" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.47353090739970327" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.035974638838546812" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="1.3654997798469841" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="1.3654997798469841" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="0.0076493511509327042" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.078230823641696062" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.11228492327310645" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.10019496057960399" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.10019496057960399" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.078230823641696062" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.11228492327310645" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.23672314306690834" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.047005137233036245" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="1.4777847031200906" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="1.4777847031200906" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.18607513537223275" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.17842578422130007" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.28372828029994457" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="3.0000000840651171" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.3254276776571643e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="2.6508553553143287e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="5.3017107106286568e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="1.0069412844066492e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="0.0076493511509327042" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.93140521648013019" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.93137171256961959" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="0.69671707795906079" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="3.0259574429526754" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="0.69671707795906079" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="0.94706154971387102" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.86748447156937614" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0.8285738976537006" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_beta]" value="0.037985523517455363" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_gamma]" value="0.20000000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta]" value="0.037985523517455363" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.6508553553143287e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.3017107106286568e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.3254276776571643e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="1.0069412844066492e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="1.3654997798469841" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="1.3654997798469841" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0076493511509327042" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.10019496057960399" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.10019496057960399" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.047005137233036245" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.11228492327310645" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.11228492327310645" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.078230823641696062" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.078230823641696062" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.23672314306690834" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_28" name="Model8 - 6/16">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_28">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-15T02:45:38Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S]" value="3572664" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=InitialValue>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration>-&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha]" value="0.94732117254101733" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta]" value="0.018946423450820347" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.02
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma]" value="0.47366058627050867" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*0.5
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta]" value="0.032248192002795266" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue>*&lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta]" value="1.0015883663380922" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta]" value="1.0015883663380922" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta]" value="0.0071504848654961482" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa]" value="0.095120861577774052" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda]" value="0.11490636126805309" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu]" value="0.095726487428534832" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu]" value="0.095726487428534832" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi]" value="0.095120861577774052" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho]" value="0.11490636126805309" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma]" value="0.21215215928512215" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau]" value="0.046847363518757526" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1]" value="1.1164947276061454" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2]" value="1.1164947276061454" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3]" value="0.19799783387180503" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4]" value="0.1908473490063089" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5]" value="0.25899952280387967" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0]" value="3.0000001064271937" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop]" value="1.3257906528334134e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population]" value="3572665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop]" value="2.6515813056668269e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop]" value="5.3031626113336533e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop]" value="9.0263688318930728e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale]" value="0.78222655465241187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon]" value="1.0000256983581473e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta]" value="0.0054878294478546081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu]" value="0.059999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x]" value="0.86487069083525869" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x]" value="0.86487069083525869" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda]" value="0.22155041982369297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa]" value="0.82781197253193406" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma]" value="2.2303431210161961" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi]" value="0.82781197253193406" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho]" value="0.22155041982369297" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases]" value="0.94732090738288688" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction]" value="0.74800131186585761" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ApplyRelaxationMay1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[HiddenRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_beta]" value="0.034041455989308606" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_gamma]" value="0.016006316554966975" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta]" value="0.034041455989308606" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio(73)]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],ParameterGroup=Parameters,Parameter=k1" value="2.6515813056668269e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],ParameterGroup=Parameters,Parameter=k1" value="5.3031626113336533e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],ParameterGroup=Parameters,Parameter=k1" value="1.3257906528334134e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],ParameterGroup=Parameters,Parameter=k1" value="9.0263688318930728e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],ParameterGroup=Parameters,Parameter=k1" value="1.0015883663380922" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],ParameterGroup=Parameters,Parameter=k1" value="1.0015883663380922" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],ParameterGroup=Parameters,Parameter=k1" value="0.0071504848654961482" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],ParameterGroup=Parameters,Parameter=k1" value="0.095726487428534832" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],ParameterGroup=Parameters,Parameter=k1" value="0.095726487428534832" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],ParameterGroup=Parameters,Parameter=k1" value="0.046847363518757526" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],ParameterGroup=Parameters,Parameter=k1" value="0.11490636126805309" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],ParameterGroup=Parameters,Parameter=k1" value="0.11490636126805309" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],ParameterGroup=Parameters,Parameter=k1" value="0.095120861577774052" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],ParameterGroup=Parameters,Parameter=k1" value="0.095120861577774052" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],ParameterGroup=Parameters,Parameter=k1" value="0.21215215928512215" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
      <StateTemplateVariable objectReference="ModelValue_117"/>
      <StateTemplateVariable objectReference="ModelValue_119"/>
      <StateTemplateVariable objectReference="ModelValue_120"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
      <StateTemplateVariable objectReference="ModelValue_112"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_118"/>
      <StateTemplateVariable objectReference="ModelValue_121"/>
      <StateTemplateVariable objectReference="ModelValue_122"/>
      <StateTemplateVariable objectReference="ModelValue_123"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_124"/>
      <StateTemplateVariable objectReference="ModelValue_125"/>
      <StateTemplateVariable objectReference="ModelValue_126"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 1 0 0 0 0 0 3572664 0 1.0015883663380922 0.095120861577774052 0.095726487428534832 0.095120861577774052 0.11490636126805309 0.21215215928512215 0 1 1 0 1.1164947276061454 1.1164947276061454 0.19799783387180503 0.1908473490063089 0.25899952280387967 NaN NaN 3.0000001064271937 1.3257906528334134e-07 2.6515813056668269e-07 5.3031626113336533e-09 9.0263688318930728e-09 0.059999999999999998 0.82781197253193406 0.22155041982369297 0.94732090738288688 0 0.74800131186585761 0 0 0 1 0.94732117254101733 0.018946423450820347 0.47366058627050867 0.032248192002795266 0 1.0015883663380922 0.0071504848654961482 0.11490636126805309 0.095726487428534832 0.046847363518757526 3572665 0.78222655465241187 1.0000256983581473e-06 0.0054878294478546081 0.059999999999999998 0.86487069083525869 0.86487069083525869 0.22155041982369297 0.82781197253193406 2.2303431210161961 -1 -1 -1 0 0.29999999999999999 0 0.034041455989308606 0.016006316554966975 0.034041455989308606 0 0 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_28" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_27" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_29" target="timecourses.txt" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="1"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="415"/>
        <Parameter name="StepSize" type="float" value="0.50724637679999995"/>
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
    <Task key="Task_26" name="Scan" type="scan" scheduled="true" updateModel="false">
      <Report reference="Report_28" target="ct-Model1-sampling-TC-4-8-2020.txt" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4],Reference=InitialValue"/>
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
    <Task key="Task_25" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_24" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="1"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.6"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <Parameter name="StartValue" type="float" value="0.72416446759999997"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1e-6"/>
            <Parameter name="UpperBound" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x],Reference=InitialValue"/>
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
    <Task key="Task_23" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="true">
      <Report reference="Report_11" target="" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="50"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.5"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <Parameter name="StartValue" type="float" value="0.86487069083525869"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="UpperBound" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.86487069083525869"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.005"/>
            <Parameter name="UpperBound" type="cn" value="3"/>
            <Parameter name="StartValue" type="float" value="0.94732117254101733"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_gamma],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.016"/>
            <Parameter name="UpperBound" type="cn" value="0.9"/>
            <Parameter name="StartValue" type="float" value="0.016006316554966975"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_delta],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="0.1"/>
            <Parameter name="StartValue" type="float" value="0.034041455989308606"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="0.1"/>
            <Parameter name="StartValue" type="float" value="0.0071504848654961482"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.05"/>
            <Parameter name="UpperBound" type="cn" value="0.15"/>
            <Parameter name="StartValue" type="float" value="0.11490636126805309"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.5"/>
            <Parameter name="UpperBound" type="cn" value="1.2"/>
            <Parameter name="StartValue" type="float" value="0.82781197253193406"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <Parameter name="StartValue" type="float" value="2.2303431210161961"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.01"/>
            <Parameter name="UpperBound" type="cn" value="1.5"/>
            <Parameter name="StartValue" type="float" value="1.0015883663380922"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.002"/>
            <Parameter name="UpperBound" type="cn" value="5"/>
            <Parameter name="StartValue" type="float" value="0.095726487428534832"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.025"/>
            <Parameter name="UpperBound" type="cn" value="0.2"/>
            <Parameter name="StartValue" type="float" value="0.046847363518757526"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.0000256983581473e-06"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_stage4],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="UpperBound" type="cn" value="0.3"/>
            <Parameter name="StartValue" type="float" value="0.29999999999999999"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="3"/>
            <Parameter name="UpperBound" type="cn" value="4"/>
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
            <Parameter name="Key" type="key" value="Experiment_2"/>
            <Parameter name="File Name" type="file" value="CT-COVID19.tsv"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="102"/>
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
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
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
      <Method name="Praxis" type="Praxis">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Tolerance" type="float" value="1.0000000000000001e-09"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_28"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_20" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
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
    <Task key="Task_19" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_18" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_17" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_16" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_28"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_29" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_21" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <Report key="Report_11" name="summary PE" taskType="scan" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0],Reference=Value"/>
      </Table>
    </Report>
    <Report key="Report_26" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_27" name="TC-summary" taskType="timeCourse" separator="&#x09;" precision="10">
      <Comment>
      </Comment>
      <Header>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction],Reference=InitialValue,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration,Property=DisplayName"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
      </Footer>
    </Report>
    <Report key="Report_28" name="TC variables, fluxes, global quantities" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],Reference=Flux"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_kappa],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_lambda],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_mu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_nu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_rho],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_sigma],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_theta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_xi],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r1],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r2],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r3],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r4],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[r5],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[scale],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=Value"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=Value"/>
      </Table>
    </Report>
    <Report key="Report_29" name="TC-summary2" taskType="timeCourse" separator="&#x09;" precision="10">
      <Comment>
      </Comment>
      <Header>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction],Reference=InitialValue,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=R0"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=R73"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=ImmuneRatio"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=ImmuneRatio(73)"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=InfectedRatio"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=InfectedRatio(73)"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered],Reference=Value,Property=DisplayName"/>
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
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=f_epsilon"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=Value,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration,Property=DisplayName"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration,Property=DisplayName"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day8x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[day15x],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tot_reduction],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeak],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tpeaktime],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[ImmuneRatio(73)],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[InfectedRatio(73)],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Tnonew],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Population],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[f_epsilon],Reference=InitialValue"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma_pop],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[CFR],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[DRT],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Diagnosed Cumulative infected],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDART],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[IDARTHE],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New cases],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[New diagnosed],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Perceived CFR],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[Recovered],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R0],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[alpha],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[beta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[delta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[epsilon],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[eta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[gamma],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[kappa],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[lambda],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[mu],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[nu],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[rho],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[sigma],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[tau],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[theta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[xi],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[zeta],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Values[R(73)],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_D],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_I],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[contagion_R],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[critical_R],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[death],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[diagnosis_I],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_A],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_D],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_I],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_R],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[healing_T],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_D],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=SIDARTHE Connecticut Model 8,Vector=Reactions[symptoms_I],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="SIDARTHE.xml">
    <SBMLMap SBMLid="A" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="CFR" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="D" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="DRT" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="Diagn_cumul_infected" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="E" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="H" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="I" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="IDART" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="IDARTHE" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="Perceived_CFR" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="R" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="R0" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="Recovered" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="S" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="T" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="beta" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="contagion_A" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="contagion_D" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="contagion_I" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="contagion_R" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="critical_A" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="critical_R" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="death" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="delta" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="diagnosis_A" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="diagnosis_I" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="epsilon" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="eta" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="gamma" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="healing_A" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="healing_D" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="healing_I" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="healing_R" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="healing_T" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="kappa" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="lambda" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="mu" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="nu" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="r1" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="r2" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="r3" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="r4" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="r5" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="rho" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="sigma" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="symptoms_D" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="symptoms_I" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="tau" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="theta" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="xi" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="zeta" COPASIkey="ModelValue_70"/>
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
<dcterms:W3CDTF>2020-06-07T14:14:22Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-06-07T14:14:22Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-06-07T14:14:22Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-06-07T14:14:22Z</dcterms:W3CDTF>
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
