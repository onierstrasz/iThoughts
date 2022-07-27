# Prisma  
  
## Story  
  
* Software analysis requires adaptation  
    * often static  
        * requires too much adaptation  
    * dynamic approaches exist  
        * traditional approach: activation conditions  
        * can't dynamically adapt  
            * modifying scope  
                * extend scope at run time  
            * dynamic change of conditions  
                * start adaptation at any time, not just main  
                    * eg feature analysis starts with a user trigger  
                * back in time debugger  
                    * reduce objects adapted or expand ...  
                    * cf polymorphic bytecode instrumentation  
        * can't control scope  
            * to object  
                * do any existing approaches do this well?  
            * to thread  
            *  fixed class scope, globally visible  
            * scope growing  
                * dynamically adapting objects during a run  
                * can dynamically turn off and on installation and enabling in a call graph  
                * emphasize more the whole scoping story  
        * can't compose  
            * multiple adaptations  
                * should not interfere  
                * bifröst meta-objects index adaptations by scope  
        * can't retain adaptation  
            * can't incrementally grow analysis  
            * live adaptation  
                * cf adaptive program analysis  
                    * cf PBI paper  
                    * example JFluid  
                    * "live adaptive program analyis"?  
                * keep adaptation alive  
                * useful for profiling to select some deep subtrees  
                    * one dynamic run will adapt certain objects  
                    * keep the adaptation for later runs  
                * what do you gain? is it a performance question? or is it the gathered data that you want to keep and extend?  
  
## Approach  
  
* Adapt as you go  
    * Each adaptation triggers further ones  
    * Only adapt what you need  
    * Only adapt what you reach  
    * Can change activation criteria as you go  
* Metaobjects adapt object behaviour  
    * Uses Bifröst metaobjects for adaptation  
* Scope execution  
    * Metaobjects index adaptation by execution scope  
        * key point for abstract & intro!  
    * Only objects reached at runtime are adapted  
    * Scopes adaptation to objects reached from a common starting point  
    * Instrumented runs do not interfere with regular runs  
    * Multiple concurrent adaptations are possible  
* Reify execution  
    * Model execution as sequence of events  
        * Relates to Chameleon?  
* Distinguish criteria for installation and deinstallation  
    * Can delay deinstallation  
        * Can "reuse" adaptations  
        * Can continue analysis in modified context  
    * Formerly scarring and scanning  
  
## Scenarios  
  
* coverage  
* Back-in-time debugging  
    * Avoids need for specialized vm  
    * Can scope BITD where it is needed  
    * Reduces data collected (?)  
        * Can we give meaningful performance numbers?  
* Live Feature Analysis  
    * Avoids instrumenting the whole app and enables feature growing  
    * Multiple features can be exercised simultaneously without interference  
  
## Abstract  
  
* Problem  
    * Need to adapt in advance  
    * Need to adapt too much  
* Why is it important?  
    * cost?  
    * effort?  
    * too static  
* One startling sentence  
    * reflect as you go  
* how?  
    * reify execution as sequence of events  
    * start from some initial point  
    * each adaptation triggers further ones  
    * only adapt what is reached  
