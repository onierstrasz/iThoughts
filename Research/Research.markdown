# Research  
  
Overview of research ideas and projects for Bachelors and Masters students.  
  
## Programming Languages  
  
* Model-centric programming  
    * Programming = modeling  
    * Models are graphs  
        * Need to edit and interpret graphs  
        * examples: state machines, petri nets  
        * Nodes may have special representations  
            * UI widgets  
    * Hook in code fragments where needed  
    * Related systems  
        * Visual Programming  
            * eToys etc  
                Link: [scg.unibe.ch/teaching/pl][1]  
                  
                See the VisProg lecture in the PL course.  
  
    * Applications?  
* COP  
    * context as core mechanism  
        * package system w context, dependency injection and versioning  
        * express: oop, prototypes, cop, subjects, aop, modules, namespaces, extensions, dynamic updates, reflection, instrumentation, scoped reflection, security (sandboxes)  
        * handle state by storing it in the context  
    * related  
        * Newspeak  
        * Piccola  
        * Classboxes  
        * Changeboxes  
    * "Smallbox" or "Scope"  
    * cf Erwann's Theseus  
    * Avoiding design patterns with COP  
* Model checking  
    * Add annotations to Java to enable model checking  
  
## Software Analysis  
  
* Agile Modeling  
    * recognizing structure  
        * exploit indentation  
    * recognizing embedded languages  
* Visualization  
    * How do different vis. techniques map to common questions?  
    * taxonomy  
        * guidelines for selecting ...  
* Bugs  
    * taxonomy of bugs  
        * can help to find them?  
    * bugs come from broken assumptions  
        * mismatch of model and reality  
* Test Smells  
    * analyze current practice  
        * size  
        * JUnit version or other  
        * coverage  
        * mocks  
    * develop taxonomy  
    * detect smells  
  
## Development Tools  
  
* IDEs  
    * How to navigate from running code to source?  
    * Highlight the current slice  
    * Move IDEs to the web for collaboration  
  
## Semantics  
  
* Graph models  
  
[1]: http://scg.unibe.ch/teaching/pl  
