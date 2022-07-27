# Meta-tools breakout session (Dagstuhl 14211 Future of Refactoring)  
  
## Meta tools 1 (Demos)  
  
* Ran Ettinger — program sliding [sic]  
    * Extract slice  
        * Highlight some code  
        * Name a variable of interest  
        * Separates out slice of code referring to the variable  
            * May duplicate some code  
        * Then can extract it  
    * Replace variable by query  
        * Extracts the slice that generates the variable  
    * Uses WALA slicer  
        Link: [wala.sourceforge.net/wiki/index.php/UserGuide:Slicer][1]  
  
    * Hard part  
        * Not what to extract, but what to leave behind/what to delete.  
        * Ira: look at partial redundancy analysis  
              
            At Dagstuhl 14211- Future of Refactoring  
  
* Jurgen Vinju — extracting models from source code with Rascal  
    * Refactoring needs different kinds of semantic models  
    * Rascal  
        Link: [rascal-mpl.org/][2]  
  
        * Many sorted algebra  
            * Grammars  
        * Containers  
            * For in-memory databases  
        * Basic types  
            * Locations (URIs)  
                * Link back to source code  
        * Immutable  
        * Querying  
            * Pattern matching  
                * Deep matching  
            * Projection  
        * We studied the manuals of all meta languages in the world and cherry-picked the features we wanted.  
        * Rascal doesn't save you from thinking; it saves you from typing.  
    * Demo  
        * Extracting flow graphs from Java  
        * Target Tonella & Potrich's Object Flow language  
        * Don't parse the code; just hook into the IDE or compiler to extract the model.  
* Jongwook Kim — R-Cube relativistic refactoring engine  
    * Map all numbers to unique ids  
    * Maintain a database representing the program structures  
    * Refactorings update the relations in the db  
    * Then generate (pretty print) the structures to code  
* Gustavo Soares — automated testing of refactorings  
    * Weak preconditions may produce broken refactorings  
        * Too strong conditions prohibit valid refactorings  
        * Tedious to manually write tests  
    * JDolly  
        * Generates test programs  
            * Use an Alloy spec to describe preconditions for refactorings  
                * Ie instead of generating lots of random code that won't trigger the refactoring  
            * Then generate test case to satisfy precondition  
        * Identify potentially impacted methods  
            * Static impact analysis  
        * Generate random inputs for original and transformed methods  
            * Use Randu test generator  
            * Apply time limit  
        * Check if results identical  
    * Discussion  
        * The methodology may break refactorings!  
            * Refactoring requires whole program analysis  
            * Adding random tests after the fact may invalidate assumptions of the refactoring!  
        * Where are the conditions documented?  
            * There is no standard for specifying them  
  
## Meta tools 2  
  
* Peter Sommerlad: C++ Refactoring in CDT  
    * Starting ~2005, first new refactorings since Opdyke  
    * Recently, lots of language upgrade refactorings  
        * Eg upgrade raw pointers to smart pointers  
    * CodAn code analysis framework  
        * Semantic analysis using AST  
    * Infrastructure for testing refactorings  
    * Lessons learned  
        * Automate refactoring tests  
        * Go for 80/20 in individual refactorings  
            * It's hard to be 100% correct!  
        * If in doubt, ask the user  
            * Don't just suppress the refactoring  
        * Hot keys are better than complex UIs  
        * Preview is important  
        * Provide in-line structured editor  
            * Only use wizards when there is a real need  
* Friedrich Steimann: Can CBR help me with my RT problems?  
    * P { Q } R  
        * Magic?  
        * Well-formed?  
        * Behavior-preserving?  
    * Want to generate the right constraints  
        * Then use a standard solver  
* Andrew Black: IDEs as Ecosystems  
    * Traits worked because Nathaniel write the green browser  
        * Did useful on-the-fly analysis  
            * Computed requirements  
        * New Pharo  
            * Needs a new implementation  
            * Can't just reuse the analyses  
    * So, IDEs are ecosystems  
        * IDE architects  
        * Tool builders  
        * ...  
    * But there are no shared representations  
        * Scott Meyers 1991  
        * "Obvious" solutions don't work  
    * The problem is that implicit information needed is expensive to compute  
        * Why isn't cached, lazy computation enough?  
        * We need an extensible representation  
            * A pattern language for extensible program representation  
                Link: [web.cecs.pdx.edu/~black/publications/ModelExtensions.pdf][3]  
  
## Brainstorming tips (Danny Dig)  
  
* Fill in the matrix  
    * Problems  
    * Solved solutions  
    * Emerging solutions  
    * Openissues  
  
[1]: http://wala.sourceforge.net/wiki/index.php/UserGuide:Slicer  
[2]: http://www.rascal-mpl.org/  
[3]: http://web.cecs.pdx.edu/~black/publications/ModelExtensions.pdf  
