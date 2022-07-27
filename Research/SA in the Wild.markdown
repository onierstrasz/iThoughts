# SA in the Wild  
  
## Goal  
  
* Understand SA in Industry  
* Automatically check constraints  
  
## Challenges  
  
* Many interpretations  
* Hard to map SA to implementations  
* Limited work on verifying SA in implementation  
  
## Interviews  
  
* Architectural Specifications  
    * emerging description  
    * knowledge determining developer choices  
    * rules constraining developer choices  
    * reference document  
    * "support" document  
    * consistency test spec  
* Aspects  
    * component dependenicies  
    * service interfaces  
    * coding conventions  
    * data integrity  
    * protocols / message sequences  
    * deployment configuration  
    * NF properties  
        * performance  
        * security  
        * usability  
* Enforcement  
    * guidelines  
    * frameworks  
        * public  
            * eg Jaas for security  
        * in-house  
    * code generation  
    * staff training  
* Validation  
    * reviews  
    * tools  
        * public  
            * dependencies  
                * JDepend  
                * Structure 101  
                * Sotograph  
                * Eclipse Equinox  
            * performance  
                * JMeter  
                * Selenium  
        * in-house  
            * model compliance  
    * unit / integration tests  
* Monitoring  
    * Web dashboard  
        * quality evaluation  
            * Checkstyle  
            * Findbugs  
        * tests  
            * Jenkins  
        * custom queries  
            * Odasa  
    * in-house compliance evaluation tools  
    * reviews  
  
## EXAMPLES  
  
* Banking  
    * SA = consistent data flow  
        * OSG bundles  
        * component blocks with interfaces  
        * internal framework for managing dataflow  
    * key concern: data integrity  
        * data must conform to formatting rules  
        * graphical language in framework for specifying deployment config and interfaces  
    * ensure SA  
        * framework  
        * reviews  
    * validation  
        * in-house analysis tools  
            * check interfaces  
            * check deployment config against system  
* Customs declarations  
    * pre-declaration of imported goods  
    * SA = layered  
        * dependencies  
        * just want clean structural decompositions  
    * ensure SA  
        * developer guidelines  
            * best practices for handling transactions, exceptions etc  
    * validation  
        * Structure 101  
            * graphically define structure and dependencies  
            * similar to Sotograph?  
        * Sonar web dashboard  
            * integrates w std tools  
                * Findbugs  
                * Checkstyle  
            * periodically check trends  
                * input for review process  
* Banking  
    * SA = 3-tier black box framework with adaptations  
        * want to keep local adaptations small  
        * avoid certain kinds of dependencies  
    * ensure SA  
        * guidelines  
    * validation  
        * missing technique to validate  
            * Odasa query language  
                * used for code validation  
                * reporting system  
                * does not help with constraints  
        * Moose  
            * used to check  
  
## Open  
  
* Taxonomy  
* Prioritization  
    * verifiable aspects  
* Specification  
* Verification and Monitoring  
