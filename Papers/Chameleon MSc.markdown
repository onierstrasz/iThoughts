# Chameleon MSc  
  
## Problems  
  
* Domain-Polluted Instrumentation  
    * instrumentation bound to domain  
    * not reusable  
* Language-biased Events  
    * event-based reflection tied to language constructs  
        * opposite to problem of domain pollution!  
* Static Instrumentation Scoping  
    * no dynamic mechanisms to instrument new objects on the fly  
  
## Key idea  
  
* Explicit meta-events  
    * general-purpose  
    * not specific to domain or language constructs  
    * arbitrary level  
    * linked to execution of AST nodes  
* Fully decouple instrumentation from tools  
