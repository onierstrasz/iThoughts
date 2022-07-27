# Santiago Vidal: SpIRIT  
  
2013-01-11  
  
## Smart Identification of Refactoring Opportunities  
  
## Challenges  
  
* Limited time for refactoring  
* Where to focus attention?  
* Key idea  
    * Identify Code Smells  
        * ie Lanza & Marinescu  
    * Prioritize them  
    * Propose refactorings  
        * mostly standard ones  
  
## Prioritization of code smells  
  
* Stability of Related Components (SRC)  
    * stable components have lower priority  
    * measure volatility  
        * compare changes in component to changes in system  
* Relevance of a Code Smell (RCS)  
    * How do you define these?  
    * Just a number from 1 to 5  
        * developer's choice  
* Related Quality Attributes Scenarios (RQAS)  
    * eg change scenarios  
        * How do you specify the scenarios?  
        * Just a list of impacted classes, features, packages  
    * measure which affected components with code smells impact the scenario?  
* Ranking = a * SRC * RCS + (1-a) * RQAS  
