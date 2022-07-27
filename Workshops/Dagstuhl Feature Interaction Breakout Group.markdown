# Dagstuhl Feature Interaction Breakout Group 3  
  
July 8, 2014  
Oscar Nierstrasz, Stefania Gnesi, Reiner Hähnle, Mirco Tribastone, Christian Prehofer, Stefan Sobernig, Sergiy Kolesnikov, Luciano Baresi  
  
## Different perspectives  
  
* RH: from MJ's keynote — features are not just what the user sees  
* CP: distinguish solving vs finding FIs  
    * SG: design to avoid FI vs discovering FI  
        * CP: how to communicate to the user  
    * RH: two different approaches  
        * Tools  
            * Legacy code  
        * No tools  
            * Requirements  
    * SG: need to bridge the static (structural) and dynamic (behavioural) views of features  
        * Behaviour is not explicit in the features  
* Dimensions  
    * Design  
        * Understanding requirements  
    * System development  
        * Focus on code  
        * Quality control  
            * Bug finding  
            * Testing  
  
## Taxonomy  
  
* What's a feature?  
    * Still essentially two views: requirements vs implementation  
    * A requirement  
        * Independent  
        * I.e. design view  
    * A unit of functionality (17)  
        * Additive  
        * Optional  
        * Includes behaviour  
    * A characteristic of a system  
        * Or aspect  
        * Or profile  
        * Or concern  
        * I.e. Not necessarily functional  
    * Unit of variability  
        * SPL view  
* What's feature interaction?  
    * General definition  
        * Feature behaves differently in isolation than in combination  
    * Combination  
        * Independence  
            * Get nice, addition of behaviours  
            * MJ: there is no composition; just combination and resolution  
        * Dependency  
            * Feature depends on (requires) another feature  
        * Emergent behaviour  
            * Is this the right term?  
        * Conflict  
            * Logical inconsistency  
            * Property violation  
            * Unacceptable behaviour  
    * How do FIs manifest themselves?  
        * See MJ's list  
        * disruptions ...  
* How to deal with FIs?  
    * Modeling  
        * Specify desired properties  
            * safety, liveness  
            * NF properties  – performance etc  
        * Open vs closed systems  
    * Detect unknown FIs  
        * RH: analogy to "hidden channels" in security  
        * Testing  
        * Model checking  
        * Principle component analysis  
    * Identify appropriate resolutions  
        * Resolve statically or at run time?  
        * Coordination patterns  
            * priorities  
                * don't scale?  
            * sequential vs parallel  
    * SG: Techniques to use depend on where you are in the lifecycle  
  
## Tasks  
  
* What is common about FI in different domains?  
    * MT: Definition: Interference between units of functionality  
    * CP: Distinction of levels  
    * RH: Synthetic vs analytic approaches  
* What are the open issues and challenges?  
    * RH: bridging gap between two perspectives  
    * SG: feature-aware computational model  
    * LB: elicitation of FI patterns  
    * SS: map/taxonomy of systems and views  
* What are the questions we should address Thursday & Friday?  
    * MT: see above!  
    * RH: listen to senior researchers about burning research questions  
        * ON: concentric circle panel  
    * CP: discussion about where we want to be in 10 years  
    * CP: Discuss FI patterns  
  
## Challenges  
  
* LB: What would you tell a new PhD student to do?  
* MT: develop a feature-aware computational model  
    * Expresses when features interact/interfere  
        * Behaviour changes  
    * Features (of the same system) are *never* truly independent  
    * MH: would be useful for reasoning about both views of feature interaction (reqts & implementation)  
    * SG: would be something like featured transition systems?  
        Link: [projects.info.unamur.be/fts/][1]  
  
* CP: mine FI patterns from case studies  
  
[1]: https://projects.info.unamur.be/fts/  
