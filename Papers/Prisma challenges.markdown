# Prisma challenges  
  
## challenges  
  
* dynamic adaptive adaptation  
    * Should be: ???  
    * Need to modify scope at run time?  
    * Need to change adaptation and condition at run time?  
    * LFA case study: changing adaptation condition to add another package (seems lame).  
* dynamic scope unbound by dynamic extent  
    * Should be: Control of dynamic scope?  
    * Adaptations may need to last longer than dynamic extent ...  
    * Case study: Retaining adaptations to grow features  
* preventing scoped adaptations interference  
    * should be: composinging adaptations  
    * Feature detection + profiling  
    * Multiple features ...  
  
## old challenges  
  
* which parts to adapt?  
    * cannot decide statically  
    * decide dynamically  
    * how to specify which parts are adapted  
        * traditional approach: activation conditions  
    * prisma: dynamic scoping  
* modifying scope  
    * extend scope at run time  
* multiple runs  
    * keep information for future analyses  
* multiple adaptations  
    * should not interfere  
    * bifröst meta-objects index adaptations by scope  
* class-oriented adaptations  
    * prisma: object-specific  
  
## scenarios  
  
* feature analysis  
    * "Implicit Dynamic Scope Life Expectancy"  
        * reusing adaptations  
            * unconvincing  
        * reusing information  
            * this is more convincing  
    * "Fixed Scopes"  
        * confusing description; obscure as a challenge  
* car security pack  
    * "Dynamic Conditions Complexity"  
        * lame example; unclear as a challenge  
