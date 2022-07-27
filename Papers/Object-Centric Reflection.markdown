# Object-Centric Reflection  
  
For OOPSLA 2012  
  
## Key ideas (OLD)  
  
* Reflection approaches push you away from runtime  
    * why is this a problem?  
    * Hard to understand run time behaviour from source code (IDEs are source centric)  
    * Debugging focuses on runtime, but you can only set breakpoints in source code, not objects  
* Meta-level architecture needs  
    * Partial reflection  
    * Selective reification  
    * Unanticipated changes  
    * Runtime integration  
    * Meta-level composition  
    * Scoped reflection  
* Object-oriented paradox  
    * OO languages and tools focus on classes, not objects  
  
## Reflection survey  
  
* Applications  
    * Software analysis  
        * debugging  
        * profiling  
        * instrumentation  
        * logging  
    * Configuration  
        * Dependency injection  
        * AOP  
    * Dynamic adaptation  
        * UI generation  
* Dimensions  
    * Introspection / Intercession  
    * Structural / Behavioral  
    * Partial reflection  
        * Selective reflection  
        * Object-specific  
        * Scoped reflection  
    * Meta-level composition  
    * Dynamic adaptation  
        * Unanticipated reflection  
    * Which of these pose particular challenges?  
        * performance  
* Techniques  
    * Towers of interpreters  
    * MOPs  
    * Meta-objects (Maes)  
    * AOP  
    * MDE  
    * Partial reflection  
  
## Approach  
  
* Challenge: unifying framework  
* Explicit meta-objects  
    * Bifröst implementation  
    * performance  
    * how does this subsume other techniques?  
  
## Validation  
  
* Talents  
    * structural reflection  
* Chameleon  
    * introspection  
    * behavioral reflection  
* Metaspy  
    * meta-level composition  
* Object-centric debugging  
    * partial reflection  
* Prisma  
    * dynamic adaptation  
