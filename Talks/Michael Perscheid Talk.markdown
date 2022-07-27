# Michael Perscheid Talk  
  
Test-driven Fault Navigation for Debugging Reproducible Failures  
2012-08-23  
  
## Intro  
  
* Motivations  
    * various examples  
        * what is special or common?  
    * cost of bugs  
    * difference in debugging productivity up to 3x  
    * common practice is trial and error!  
* What is debugging?  
    * need to identify reproducible failures  
    * can apply scientific method  
    * what is available?  
        * standard debuggers  
            * most debuggers only let you go forward  
            * hard to test hypotheses  
        * anomalies  
        * expert knowledge  
        * omniscient debuggers  
        * automatic debugging  
    * RQ: how to support scientific method in debugging  
* exploiting test cases  
    * give reproducible errors  
    * analysing execution can uncover hidden knowledge  
  
## Thesis: "Test-Driven Fault Navigation"  
  
* four steps  
    * Structure Navigation: where to start debugging?  
        * breadth first  
        * compare test coverage of passing and failing tests to narrow focus  
            * reminds me of JExample  
            * also possible at statement level  
    * Team Navigation: who understands best the causes of failures?  
        * rank team members to identify experts  
            * how are they ranked?  
                * look at suspicious methods written by which developers  
    * Behaviour Navigation: explore what happened before failure?  
        * lightweight BIT debugger  
            * in what way is it lightweight?  
                * uses step-wise analysis over multiple runs  
                * initially collect just methods calls  
                * then choose which state you want  
                    * causes tests to be rerun  
                * collect less data initially  
        * classify paths to focus on suspicious ones  
            * how does classification work?  
                * suspiciousness increases for methods along paths to failures  
                    * adapted Ochiai metric  
    * State Navigation: which entities are infected?  
        * look for contract violations  
            * contract = class invariant?  
                * also pre and posts  
  
## Path Tools Framework  
  
* PathMap  
    * treemap view of test runs  
* PathFinder  
    * BIT debugger  
* PathBrowser  
    * links source code and test cases  
* Incremental Dynamic Analysis  
    * coverage analysis  
        * on demand statement coverage  
    * step-wise run-time analysis  
    * inductive analysis  
        * "harvester" collects type information at run time  
        * can be used to define contracts  
  
## DEMO  
  
* Case: type error in Seaside write header  
* PathMap shows treemap of packages, classes and methods  
    * colours covered methods  
* PathFinder  
    * shows which tests have better focus for a given anomaly  
* Inductive Analysis  
    * reruns tests covering different value ranges or types  
    * "weaves in contracts"?  
        * where do they come from?  
            * collect information about types and value ranges  
  
## Case studies  
  
* Ekalana project by Philippe Marschall  
    * 6 bugs: easy, medium, hard  
    * 6 developers debugged with and w/o new tools  
        * were the developers interchangeable?  
            * similar background  
        * did the developers alternate standard and new tools?  
            * yes  
* 4Conference  
    * tested accuracy of recommended experts  
* AweSOM VM  
    * compared harvested object properties from unit andacceptance tests  
        * 97% recall and 94% precision!  
        * generated contracts  
            * analyzed 10 failures  
