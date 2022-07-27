# Parsing by Example  
  
## Motivation  
  
* Moose  
    * lots of analyses  
    * but bottleneck to parse code and build model  
* Problem  
    * Hard to build a full parser for a real language  
    * Hard to adapt existing parsers  
  
## Observations  
  
* Lots of example code exists  
    * Incrementally build a parser  using the examples  
* Don't need a precise parser  
    * Focus on coarse structure  
        * Island grammars  
* PLs are pretty similar  
    * Lots of common patterns  
  
## Ideas  
  
* Scavenge parsers from documentation etc  
    * Verhoef & Laemmel  
* IDEs already parse code for many languages  
    * Scavenge the ASTs  
* User-driven parser generation  
    * Generate parsers from patterns  
    * Use failures to drive parser refinements  
* Genetic approach  
    * Introduce genetic modiications to evolve better grammar  
