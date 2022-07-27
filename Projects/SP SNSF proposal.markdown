# SP SNSF proposal  
  
## Research ideas  
  
* Track developer behaviour to better offer recommendations  
    * Hypothesis: behavioural information can help to improve developer productivity  
    * How do developers fix bugs?  
    * How do they integrate code?  
    * Idea: use summarization techniques  
        * Heuristics applied to data  
        * Need to develop new heuristics  
        * Correlate productivity data and behavioural data  
* How to visualize aspects of software process?  
    * How do we visualize productivity?  
    * Visualization should reflect summarization  
    * Need visualizations that are tailored to developer tasks  
    * Do we need new visualizations?  
* Unifying heterogeneous data  
    * Key idea: organize information around tasks they support  
    * Tasks are complex and interrelated  
        * Refactoring may be motivated by program comprehension problems  
    * Empirical work to understand relations between tasks  
* Scaling Heterogeneous Analysis  
    * Hard to process information from large repositories  
    * Warnings can relate to many different issues (bugs, dependencies ...)  
    * How to relate information from many different sources? (Repos, documentation, Q&A sites)  
    * Different techniques needed to extract different kinds of information  
        * Can be hard to combine information on the fly  
    * Propose some kind of unifying tool  
        * A kind of federated database?  
        * Unifying metamodel a la Moose?  
  
## Techniques  
  
* Summarization  
    * Testing: Summarize both class under test and what the test is doing.  
        * Use templates and fill in the blanks  
        * Templates mined manually, then automated  
    * Code changes: describe what was changed  
