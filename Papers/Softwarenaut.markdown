# Softwarenaut  
  
## Problems  
  
* architecture erodes over time  
* hard to understand complex systems as they evolve  
  
## Key ideas  
  
* information aggregation  
    * grouping dependencies  
* interactive visualization  
    * supports exploration  
* track dependencies  
    * model as hierarchical graph  
        * nodes represent software artifacts  
        * edges represent relationships  
            * explicit  
                * from static and dynamic analysis  
            * implicit  
                * derived from explicit  
* collaboration  
  
## Features  
  
* recover architecture  
    * multiple views  
        * architecture view  
            * system components and dependencies  
            * multiple levels of detail  
        * inspector  
            * textual details  
        * overview hierarchy  
            * tree of system components  
    * rich set of visualization and navigation tools  
        * along vertical decomposition  
        * graph exploration and navigation  
            * expand  
            * collapse  
            * remove  
            * ...  
        * filtering  
            * metrics-based  
            * type-based  
            * evolutionary  
* recover evolution  
    * multi-version analysis of software systems  
        * evolutionary inspectors  
        * evolutionary filters  
            * age-based  
                * lifetime  
                * newborn  
                * historical  
            * dynamics-based  
                * stable  
                * unstable  
            * Examples  
                * Architecture recovery  
                * Quality assessment  
* collaborate  
    * users can publish and share architectural views  
        * first-class views  
* open and extensible architecture  
    * based on FAMIX  
    * integrated with Moose  
    * extension points for tools  
        * inspectors  
        * filters  
        * modules  
            * not sure what this is  
    * what can you do with this?  
