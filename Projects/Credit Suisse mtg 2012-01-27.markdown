# Credit Suisse mtg 2012-01-27  
  
## Participants  
  
* Sander Tichelaar  
    Ogun Bilge  
    Raoul Becke  
    Oscar, Mircea, Fabrizio  
  
    * Raoul  
        * developing global components  
        * lead architect  
            * in Sander's team  
        * used sotograph in past  
            * now using odasa from Oege de Moor  
            * some tools for QA in nightly builds  
        * own build and deploy process  
    * Ogun  
        * FrontEnd Intl  
        * Extending components for UK market  
        * Deploy in CH  
        * Self-employed (external)  
  
## NDA  
  
* How to publish?  
    * standard pocedure  
  
## Background  
  
* FrontEnd  
    * Internal customer relationship mgt tool  
    * bunch of apps (80)  
    * portal  
    * Domain: managing customer profiles  
        * customer profile ....  
        * income and spending  
        * risk profile  
    * Extremely high availability is critical  
        * 99.98% last year  
* Core components  
    * local and global extensions  
    * MCP  
        * multi channel platform  
* Portal  
    * Portlet applications  
    * Example  
        * Extension adds a column to portlet view  
    * Extensions typically extend both business and presentation layers  
  
## Code  
  
* layers  
    * top layer portal  
    * presentation and business layers  
    * SOA at bottom layer  
* extensions  
    * XML configurations  
* domain  
    * domain = deployment unit  
        * installation  
        * would have different "domains" for different countries, say UK and CH  
    * maps to app server domain  
    * bunch of related apps  
    * CS has own infrastructure to manage EARs  
        * ear = enterprise archive  
* configurations  
    * XML components  
    * map to web page and business app  
    * life cycle about 2 years  
        * follows java release cycle?  
        * config files and build system updated to work with newer versions of technology  
        * meta model very stable  
    * static - exclusively build and deploy  
        * separate runtime config files exist for startup  
* AGL  
    * Aggregated Library  
        * ie a jar  
    * Implement components at business or presentation layer  
* business layer  
    * two sub layers  
        * commands = business logic  
        * mappers to data layer  
* Currently about 20 core components  
    * 1.5 to 2 MLOC  
    * Extensions depend on locations  
    * typically each core component has dozens of extensions  
    * only few global extensions exist (new concept)  
* "Dependency injection" is merging of extensions into core component  
  
## Problems  
  
* Local extensions are copied wnd adapted without being cleaned up  
    * Leads to large extensions  
    * Should move common stuff to core  
    * core component is standalone  
        * no dependencies  
        * should stay uncoupled  
        * global extension enables interaction and orchestration of components  
* …  
* Need way to detect duplication and opportunity for refactoring  
* Need an overview of components and extensions  
  
## Case Study  
  
UK deployment  
  
* 6 components  
    * broken into functional components  
* UK extensions  
