# What I learned from Rascal  
  
## First encounters with Rascal  
  
* Tutor  
    * Strange way to start  
    * Examples are nice  
        * More!  
        * Interesting ones are incomplete  
    * Missing a real tutorial  
    * Running Rascal  
        * Missing a friendly guide  
        * Hand-holding needed  
* Language manual  
    * Very useful!  
    * "Work in progress"  
        * Missing examples  
        * Missing explanations  
        * Missing links  
        * Search is hit and miss  
* Programming  
    * Awesome stuff  
        * Compact, functional style  
            * Do all Rascal programs reduce to one-liners?  
        * Location links  
        * Tests  
        * Profiling  
        * Quick feedback via StackOverflow  
    * Culture shock  
        * Missing OOP  
            * Data types and relevant functions not always packaged together  
            * M3 model not "naturally navigable"  
    * Obstacles  
        * syntax errors  
            * often point the wrong way  
  
## M3  
  
* Polymorphism detection  
    * most queries are one-liners  
    * needed to view many relations as maps/functions  
        * getSource()  
    * simple heuristics only  
        * types with > 1 implementation  
        * no heuristics below method level  
            * need AST  
        * no dynamic comparison  
            * need to instrument code  
* M3 to MSE  
    * translate M3 models to FAMIX via MSE  
        * similar information; different formats  
        * spit out MSE  
    * experiences  
        * need to reverse engineer FAMIX MSR  
            * use VerveineJ as baseline  
            * Moose Meta Browser provided documentation  
            * some guesswork but mostly easy  
        * need index of all FAMIX entities  
            * some guesswork  
            * mostly locations  
                * primitives have only TypeSymbols  
            * needed placeholders for unknown class, unknown package  
                * some fields are missing type information  
        * bugs in M3  
            * missing bits of information uncovered  
                * anonymous classes not declared  
        * debugging generated MSE  
            * Moose throws you into the debugger  
                * assumes implementation knowledge  
            * wrote shell script to check for dangling references  
                * better: generate MSE model in rascal to check before exporting code  
    * optimization  
        * memoization and converting relations to maps  
        * 60x speedup for translation of Rascal M3 model to FAMIX  
* syntax analysis  
    * island parser to identify structure  
        * got stuck with parse errors and ambiguity  
    * simple island parser to recognize as identifiers  
        * programs as a flat sequences of words and other stuff  
        * again got stuck  
            * too hard to debug errors  
            * not enough context information to understand where parsing failed  
  
## Syntax  
  
