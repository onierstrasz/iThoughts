# Modular (Reusable) Language Specs  
  
SLEBoK survey : "Modularity and Reuse in Specifications of Software Languages"  
Peter Mosses, Markus Völter, Benoit Combemale, Mathieu Acher, Sebastian Erdweg, Oscar Nierstrasz  
2017-08-23  
  
## Meta  
  
* Kinds of modularity  
    * Focus on Reuse  
        * Don't modify the original  
            * Design for reuse vs opportunistic reuse  
        * There should be a reuse interface  
            * Clear client / provider contract  
        * May include hooks for tailoring  
            * Parameterization  
            * Extension points  
            * Overriding  
    * Other goals  
        * Complexity management  
            * Lexer vs parser  
                * Not for reuse per se  
                * Useful for architecture, pipelining phases  
                * Ease of notation  
        * Modularity to aid analysis  
            * Syntax analysis  
            * Static semantics  
            * Dynamic semantics  
    * Which artifacts are modular?  
        * Definitions?  
        * Generated components?  
* Scope  
    * Not language reference manuals  
    * Formal, not informal specs  
        * Must have a meta-language  
        * Main purposes  
            * Communicate language intentions  
                * Need not be executable  
            * Spec for generating tools  
        * Could be a reference implementation  
    * Consider also modeling languages  
        * Syntax and semantics of models  
        * Not just "programs"  
    * Especially consider language evolution  
        * Extension of older version of a language  
* Goals  
    * Identify best practices in enabling modularity and reuse in language definitions  
    * Be strict about our criteria for reuse  
        * Be lax about what is a language spec  
* Structure  
    * Introduction to modularity & reuse in language specification  
    * Reuse scenarios  
        * Language extension  
            * Language refinement  
            * Defining an "extended subset"  
        * Language evolution  
        * Language development  
            * Reuse across languages  
            * Family of similar languages  
                * Can share analyses  
            * Reuse bits across paradigms  
    * Taxonomy/hierarchy of approaches  
    * Overview of frameworks  
    * Examples  
  
## Examples  
  
* Spoofax  
      
    SE  
  
    * Use SDF for grammars  
        * Import grammar fragments  
        * Used for Java  
            * Java 5 reuses most of Java 4 specs  
            * Can also add or override non-terminals  
            * Add new alternatives  
            * Is there a semantic definition of Java?  
                * A reference implementation?  
    * Stratego  
        * Completely open  
        * Can add new rules  
* MPS  
      
    MV  
  
    * MBDDR  
        * DSLs share parts  
    * KernelF  
* XCapella  
      
    BC -- GEMOC  
  
    * Systems Engineering Language  
        * For simulation  
    * Syntactic extension  
    * Semantic variation points  
        * What is fired in a statechart?  
* Ott  
    * CAMLite  
* FunCons  
      
    PM  
  
    * CAMLite  
* Modular visitor / Object algebras  
    * design pattern  
* FeatherWeight Java  
    * Used to prove that adding generics wouldn't break Java type system  
    * Counterexample: accommodating overloading does change the type system  
