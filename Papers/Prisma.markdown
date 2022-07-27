# Prisma  
  
## Selling points  
  
* Scoping towards objects  
* Don't need to know in advance where to reflect; adapt as we go  
  
## Features  
  
* Execution is reified  
    * Models execution as sequence of events  
        * Relates to Chameleon?  
* Execution scoping  
    * Metaobjects index adaptation by execution scope  
        * key point for abstract & intro!  
    * Only objects reached at runtime are adapted  
    * Scopes adaptation to objects reached from a common starting point  
    * Instrumented runs do not interfere with regular runs  
    * Multiple concurrent adaptations are possible  
* Scarring and scanning  
    * Scarring gathers information and scanning removes adaptation  
    * Can we find better names?  
  
## Case studies  
  
* Live Feature Analysis  
    * Avoids instrumenting the whole app and enables feature growing  
    * Multiple features can be exercised simultaneously without interference  
* Back-in-time debugging  
    * Avoids need for specialized vm  
    * Can scope BITD where it is needed  
    * Reduces data collected (?)  
        * Can we give meaningful performance numbers?  
  
## Implementation  
  
* Uses Bifröst metaobjects for adaptation  
  
## Why is it called Prisma?  
  
