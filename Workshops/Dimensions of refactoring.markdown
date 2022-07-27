# Dimensions of refactoring  
  
Refactoring of notes by Jurgen Vinju, Emerson Murphy  
With Oscar Nierstrasz and Friedrich Steimann  
  
## User  
  
* Experience of Person Refactoring: Novices vs Experts  
    * Amount of Education  
* User risk tolerance  
* User expectation of behavior preservation (strong vs weak)  
    * Overly strong conditions  
    * Too weak conditions  
* Cognitive load of refactoring (impact/scope)  
  
## Technical  
  
* Different Languages  
    * Paradigms  
    * Different Users  
    * Application Domains  
    * Interpreters vs. Compilers  
    * Models  
* Single language (homogeneous) vs. Cross language + Artifacts (heterogeneous)  
* Impact/Scope (Level 1 [rename local], Level 2 [extract method], Level 3 [pull up], Level N [whole program], Level N+1 [whole ecosystem])  
  
## Transformations  
  
* Behavior Preserved by Transformation  
    * Given a set of transformations to code, what is behavior preserved?  
    * Semantics of change: structural, change idiom (introduce parallelism), semantics, domains (web refactoring).  
    * Behavioural equivalence  
        * Preserving  
            * Well-formed  
            * Observable behavior  
                * Scope?  
                    * Classes  
                    * Methods  
                    * System  
            * Full semantics  
            * Sliding scale  
                * Cf Friedrich  
        * Non behaviour-preserving  
* Locality  
    * Analysis  
        * Global  
        * Local  
        * Techniques  
            * Does it compile?  
            * Open world vs. closed world?  
            * Tests?  
            * Proofs  
            * Asserts (test or proof)  
            * I trust another person who did this refactoring/used this tool (Peer, Verified, Popular, Transparent)  
    * Change  
        * Global  
        * Local  
* Manual to Fully Automated  
    * Interface  
        * Offline  
            * Batch  
        * Online  
            * Interactive  
  
## Impact  
  
* Costs  
    * Time to make change  
    * Time to verify change is what I want  
    * bugs  
    * losing design familiarity  
    * breaking integration  
* Benefits  
    * How much immediate maintenance is eased  
    * How much later maintenance will be eased  
    * Amount of Improvement  
  
## Probability  
  
## Risks  
  
## Workflow  
  
* Stages of refactoring (analogous to Pan&DeMillo&Spafford:97’s debugging cycle)  
    * Finding thing to refactor  
    * Determining whether refactoring is possible  
    * Performing program modification  
    * Evaluating whether it worked the way user expected (e.g., testing)  
* Phases of refactoring  
    * During Design/Prototyping  
    * During Maintenance  
    * During Testing  
    * During Code Review  
    * During Migration/Integration  
* Motivation  
    * Preventive  
        * To improve code quality  
        * To reduce technical debt  
    * Reactive  
        * To understand  
        * To enable change (immediate, Floss Refactoring + refactoring campaign, Root Canal)  
* And Maybe:  
  
## Consequences  
  
## Perceived Risks  
  
