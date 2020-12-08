<?xml version="1.0" encoding="US-ASCII"?>
<document
  xmlns="https://iead.ittl.gtri.org/wr24/doc/2011-09-30-2258"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <title>National Information Exchange Model Conformance Specification</title>
  <version>MACRO_DOCUMENT_VERSION</version>
  <date>MACRO_DOCUMENT_DATE</date>
  <author>NIEM Technical Architecture Committee (NTAC)</author>

  <subsection>
    <title>Abstract</title>

    m4_define([[[MACRO_ABSTRACT_TEXT]]],[[[

    <p>This document specifies general conformance guidance, principles, and rules for the National Information Exchange Model (NIEM) version 5.0.</p>

    ]]])

    MACRO_ABSTRACT_TEXT

  </subsection>

  <subsection>
    <title>Authors</title>
    <p>Jim Cabral, MTG Management
      (<link href="mailto:jec@mtgmc.com">&lt;jec@mtgmc.com&gt;</link>),
      Lead author</p>
  </subsection>

  <subsection>
    <title>Status</title>
    <p>This document is a draft of the specification for general NIEM conformance. It represents the collaborative work of the NIEM Business Architecture Committee (NBAC) and the NIEM Technical Architecture Committee (NTAC).</p>
    
    <p>This document is a product of the NIEM Management Office (NMO).</p>
    
    <p>Updates, revisions, and errata for this specification are posted to <link>https://github.com/NIEM/NIEM-Conformance-Spec</link>. Please submit comments on this specification as issues at <link>https://github.com/NIEM/NIEM-Conformance-Spec/issues</link>.</p>

  </subsection>

  <subsection id="toc">
    <title>Table of contents</title>
    <tableOfContents/>
  </subsection>

  <section>
    <title>Introduction</title>

    MACRO_ABSTRACT_TEXT

  </section>

  <section>
    <title>Purpose</title>

    <p>This is a high-level document that defines NIEM conformance including how it applies and to what it does and does not apply. The intended audience includes NIEM developers and users.</p>
    
    <p>This specification includes other NIEM specifications by reference. Non-normative information, including tools and implementation guidance are also published at <link>https://niem.github.io</link>.</p>

  </section>

  <section>
    <title>Artifacts may conform with NIEM</title>

    <p>Conformance to NIEM is defined in terms of artifacts.  NIEM defines various conformance targets as the classes of artifacts to which sets of normative rules apply.</p>

    <definition term="conformance target">

      <p>A class of artifact, such as an interface, protocol, document, platform, process, or service that is the subject of conformance clauses and normative statements. There may be several conformance targets defined within a specification, and these targets may be diverse to reflect different aspects of a specification. For example, a protocol message and a protocol engine may be different conformance targets.</p>

    </definition>

    <p>NIEM conformance targets include:</p>

    <ul>
      <li><p>Conformant instance document</p></li>
      <li><p>Conformant schema document set</p></li>
      <li><p>Conformant message specification (also known as an IEPD)</p></li>
    </ul>

    <p>Documents may use the attribute defined in the MACRO_REF_EXTERNAL(CTAS,MACRO_HREF_CTAS#section_1.3,1.3,Description of the Conformance Targets Attribute) to claim that the document conforms to one or more NIEM conformance targets.</p>

    <section>
      <title>Conformant instance document</title>

      <p>A conformant instance document is an instance of a conformant schema document set that conforms to all applicable rules in the <ref idref="NIEMNDR50"/>.</p>

    </section>

    <section>
      <title>Conformant schema document set</title>

      <p>A conformant schema document set is a collection of schema documents that conform to all applicable rules in the <ref idref="NIEMNDR50"/>.</p>

      <p>A schema document that copies, maps to, or uses the data component names of NIEM document schemas or the data components they contain without importing corresponding NIEM target namespaces does NOT conform to NIEM. Conforming to NIEM requires that a schema document reuse NIEM by importing through xs:import the target namespaces of NIEM reference schema documents or schema subset documents of NIEM reference schema documents.</p>

    </section>

    <section>
      <title>Conformant message specifications (IEPD)</title>

      <p>A conformant message specification is a package of files that conforms to the rules specified in the <ref idref="NIEMMPDSpecification40"/> or the <ref idref="NIEMMessageSpecificationRulesandConventions"/>.</p>

    </section>

  </section>

  <section>
    <title>Implementations cannot conform with NIEM</title>

    <p>NIEM conformance is NOT defined in terms of implementations, databases, systems, or tools. </p>

    <p>In describing an implementation that employs NIEM, an author should be as descriptive as is necessary to convey clear understanding of how NIEM is used and which conformance targets are supported.</p>

    <section>
      <title>NIEM-based Information Exchange</title>

      <p>An implementation that sends and receives NIEM-conformant instance documents on a transmission medium is considered a NIEM-based information exchange. An implementation may apply encryption, compression, encoding (e.g. Efficient XML Interchange (EXI) encoding <ref idref="W3-EXI"/>), or other security and/or efficiency techniques to an NIEM instance document as required; and it will still represent a NIEM information exchange. NIEM is a payload layer and, as such, a NIEM-conformant instance document may be contained within a standard envelope (such as SOAP, LEXS, etc.).</p>

    </section>

    <section>
      <title>NIEM-aware Tools and Systems</title>

      <p>A tool or system, such as a database, may have capabilities designed to support:</p>

      <ul>
        <li><p>Creation of conformant schema document sets that may include extensions to the NIEM,</p></li>
        <li><p>Development of conformant message specifications,</p></li>
        <li><p>Implementation of conformant message specifications, including the sending and receiving of conformant instance documents, or</p></li>
        <li><p>Testing artifacts for conformance with an NIEM conformance target</p></li>
      </ul>

      <p>Such tools and systems may be considered NIEM-aware or NIEM-supporting.</p>

      <p>A registry of NIEM-aware tools is available at <ref idref="NIEMToolsCatalog"/>.</p>

    </section>

  </section>

  <section>
    <title>NIEM components must preserve semantic integrity</title>

    <p>If an existing NIEM component matches the business semantics required by the message specification, then that component is used by the message specification, either directly or as the basis for derived components. That is, the message specification does not unnecessarily duplicate NIEM components.</p>

    <p>Each NIEM schema component used by the message specification, either directly or as the basis for derived components, is used in a manner consistent with the component's structural definition and business semantics. That is, the message specification preserves semantic and structural consistency.</p>

  </section>

  <section>
    <title>Producers of artifacts should ensure NIEM conformance</title>

    <section>
      <title>Reference schema document sets</title>

      <p>Reference schema document sets (i.e., NIEM releases, domain updates, and core updates) are subject to rigorous quality and conformance testing by the NIEM MO to ensure they conform to the <ref idref="NIEMNDR50"/>.</p>

    </section>

    <section>
      <title>Message specifications</title>

      <p>Message specifications, message instances, and schema document sets other than those listed above are not under the control of the NIEM MO and no formal certification process exists. Therefore, it is important for NIEM users and developers to understand and make a concerted effort to ensure message specifications they produce conform to the <ref idref="NIEMMPDSpecification40"/> or the <ref idref="NIEMMessageSpecificationRulesandConventions"/>.</p>

    </section>

  </section>

  <section id="references" isAppendix="true">
    <title>References</title>

    <reference id="CTAS" label="NIEM Conformance Targets Attribute Specification 4.0">

      <p>Attribute Specification, Version 3.0, NIEM Technical Architecture Committee (NTAC), 31 July 2014. Available from <link>http://reference.niem.gov/niem/specification/conformance-targets-attribute/3.0/</link></p>

    </reference>

    <reference id="NIEMNDR50" label="NIEM NDR 5.0">

      <p>NIEM Naming and Design Rules, Version 5.0, NIEM Technical Architecture Committee (NTAC), TBD. Available from TBD</p>

    </reference>

    <reference id="NIEMMPDSpecification40" label="NIEM MPD Specification 4.0">

      <p>NIEM Model Package Description (MPD) Specification, Version 4.0, NIEM Technical Architecture Committee (NTAC), 15 August 2014. Available from <link>http://reference.niem.gov/niem/specification/model-package-description/4.0/</link></p>

    </reference>

    <reference id="NIEMMessageSpecificationRulesandConventions" label="NIEM Message Specification Rules and Conventions">

      <p>NIEM Message Specification Rules and Conventions, Version 1.0, NIEM Technical Architecture Committee (NTAC), TBD. Available from TBD</p>

    </reference>

    <reference id="NIEMToolsCatalog" label="NIEM Tools Catalog">

      <p>NIEM Tools Catalog, NIEM Management Office (MO). Available from <link>https://www.niem.gov/tools-catalog</link></p>

    </reference>

    <reference id="W3-EXI" label="Efficient XML Interchange (EXI)">

      <p>Efficient XML Interchange (EXI) Format 1.0 (Second Edition), W3C. Available from <link>https://www.w3.org/TR/exi/</link></p>

    </reference>

  </section>

  <section id="index-of-defns"><title>Index of definitions</title>
    <indexOfDefinitions/>
  </section>
  <!-- No rules defined
  <section id="index-of-rules"><title>Index of rules</title>
    <indexOfRules/>
  </section>
  -->
</document>
m4_dnl Local Variables:
m4_dnl mode: sgml
m4_dnl indent-tabs-mode: nil
m4_dnl fill-column: 100
m4_dnl End:
