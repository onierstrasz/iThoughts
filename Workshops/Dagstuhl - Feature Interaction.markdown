# Dagstuhl — Feature Interactions  
  
Link: [dagstuhl.de/en/program/calendar/semhp/][1]  
  
Dagstuhl 14281 - Feature Interactions: The Next Generation  
July 7-11, 2014  
  
## Domains  
  
* Feature Interaction in Home Automation  
      
    Pamela Zave  
  
    * Hot topic  
        * Cost is lowering  
        * More devices  
    * Definition  
        * Feature is an "independent" reqt  
        * Feature Interaction occurs when two or more reqts conflicts  
        * Model  
            * Portion of Real world  
                * Sensors  
            * System to be built  
                * Actuator settings  
    * Example  
        * Components  
            * HAS  
                  
                Home automation system  
  
            * Door lock  
            * Keypad  
        * Issues  
            * Components, batteries may fail  
            * Modeling the real world is important  
                * When is the resident coming home?  
                * Is there an intruder in the house?  
                * Don't have sensors  
                    * Need modules to model/simulate real world  
                    * Virtual sensors  
                    * NB: models are not feature (reqts)  
    * Composition  
        * Parallel vs sequential  
            * Italian vs Swiss architecture  
    * Models  
        * States  
            * Don't care is an important state to avoid conflict  
            * Unlock the door  
                * After three minutes, don't care  
* Feature Interaction and Cars  
      
    Cliff Jones  
  
    * Start-Stop  
        * Automatically turn off car "when appropriate" to save fuel  
            * Need bigger battery  
                * Need better starter  
            * Don't use when cold  
            * Don't stop when AC needs current  
            * Don't stop on hill when brakes need power  
            * Restart when turning off  
                * Don't use starter motor  
        * Dangers  
            * Don't start  
                * Mechanic is working  
                    * Hood is open  
                * Driver is out  
                    * No one on seat  
    * Cruise control  
        * Many subtle reqts  
            * Accident?  
* Feature Interaction in a Federated Communications-Enabled Collaboration Platform  
      
    Mario Kolberg  
  
    * Motivation  
        * No system offers all media (email, blogging etc)  
    * ConnectSpaces  
        Link: [connectspaces.com/][2]  
  
        * Seamless integration  
        * Context awareness  
        * Composable  
        * Security  
    * Ontology  
        * Space, entity, view etc etc  
    * Various Feature interactions found  
        * Space composition  
        * Embedded communications  
        * ...  
* Feature Interactions in Software Systems  
      
    Christian Kästner & Sven Apel  
  
    * Configurable systems (SPLs)  
        * Databases  
        * Linux ...  
    * What is an interaction?  
        * Interaction bugs  
            * Arises in specific configurations  
                * Might require a combination of several options!  
                * Eg Doesn't compile  
                * Eg compiles but crashes later  
            * How to specify?  
                * Syntactic correctness  
                * Well-typedness  
                * Absence of integer vulnerabilities  
                * Absence of double-free vulnerabilities  
            * How to check?  
                * Random testing  
                    * Incomplete  
                * Sampling  
                    * Incomplete  
                * Want complete analysis  
                    * Variability aware  
                    * Define constraints  
                    * Check satisfiability  
        * Performance interactions  
            * Eg add index feature to speedup SQLite benchmark  
                * Encryption slows down benchmark  
                * Combination?  
                    * Actually worse  
            * How to specify?  
            * How to check?  
                * Sampling + heuristics  
                * Mostly pair-wise interactions  
        * Optional feature problem  
            * Extra coordination code to fix interaction  
        * Interactions in a running system  
            * A value or trace depends on multiple configuration options  
            * Variability-aware execution  
            * Experiment  
                * Wordpress with 50 plugins  
                * Compared generated home page HTML  
                * Most features are default or appear with a unique plugin  
                * Interactions with some combinations  
                    * Competition between plugins  
                * Pairwise checks would miss many interactions  
* Feature Interactions in Smartphones  
      
    Christian Prehofer  
  
    * History  
        * Call forwarding vs call waiting  
        * Fixed UI forced overloading of buttons  
        * Nokia example  
            * Basic call  
            * Lock phone  
                * Exception if call comes  
                * Ad hoc exception  
            * Call waiting  
                * Can't switch as keys still locked  
                * Soft button displayed but key is still locked  
        * Non functional FI  
            * automative egs  
    * Smartphone today  
        * Better security  
        * HL APIs  
        * Old APIs are deprecated  
        * Scheduling  
        * HW & SW evolve fast  
            * Less legacy  
  
## Keynote: System Behaviours and Feature Interactions  
  
Michael Jackson  
  
* What is Behaviour?  
    * Must be considered over a lifetime  
    * Don't confuse with fragments of behaviour  
    * Don't confuse with requirements  
* What is a Feature?  
    * System behaviours  
    * What are FIs?  
        * Combinations of behaviours  
        * In the problem world, not the software  
        * If you have two girls in a playground, they will talk. If you have two boys, they will fight. Feature interaction is inherently male.  
* Cyberphysical system  
    * Zoo turnstile  
        * Computer detects coins; opens barrier  
        * Machine interacts with coin slot and barrier  
            * So do humans  
        * Requirements and behaviour  
            * Requirements  
            * System behaviour  
                * The SB is the "true product"  
                      
                    The true product of development is the system behaviour. (It's not about the software.)  
  
                    * It's not about the software  
            * System  
                * Problem world  
                    * Includes users  
                * Machine  
    * Constituent behaviours too belong to cyber-physical systems  
        * FIs are concerns in the combining task  
    * Lift system example  
        * No obvious "starting point"  
        * Practice "Loose decomposition"  
            * Consider components individually  
            * Initially ignore FI  
            * Worry about composition later  
            * Reiner Hähnle: What's the difference between a use case and a candidate behaviour  
                * Pamela: the use case is an external view  
                    * The behaviour includes what's behind the scenes  
            * "Designed domains"  
                * Local variable of a decomposed machine  
                * A problem domain for constituent behaviours  
        * Recombination  
            * Divide to conquer  
                * Is only half the story  
                * Must recombine to rule!  
            * Two parts  
                * Behaviour scheduling  
                * Behaviour rectification  
                    * Resolve conflicts  
            * Combination concerns are feature interractions  
                * Eg mutual exclusion  
                * Eg switching  
    * Concerns  
        * Human participants must be in the problem domain  
            * The system must *afford* desired system behaviour  
                * Not fixed, but use cases are enabled  
        * Must separate the machine from problem design  
            * Confusion in UML: the "Lift" object is not the real lift  
  
## Feature Interaction Survey  
  
## Student talks  
  
* Feature-oriented evolution of variable software  
    Link: [swerl.tudelft.nl/bin/view/NicolasDintzner/WebHome][3]  
      
    Nicolas Dintzner  
    TU Delft  
  
    * Tracks  
        * First class feature changes  
        * Co-evolution  
        * Impact of feature changes  
    * Linux kernel case study  
        * Extract feature changes w fmdiff  
* Feature Interactions Taxonomy and Case Studies  
    Link: [infosun.fim.uni-passau.de/spl/people-kolesnikov.php][4]  
      
    Sergiy Kolesnikov  
    U Passau  
  
    * Taxonomy  
        * External  
            * Functional  
            * Non-functional  
            * Hard  
        * Internal  
            (Static code analysis)  
  
            * Structural  
            * Operational  
            * Easy — tools exist  
    * Preliminary study  
        * Plotted frequency of FI vs interaction order  
            * How many features needed for FI  
        * Linux  
            * Mainly structural  
        * BusyBox  
            * Operational  
        * gcc  
            * Functional  
        * Apache  
            * Non-functional  
    * Idea  
        * Find NF FIs starting from structural and operational FIs  
* Structural FI between features as units of variability  
    Link: [sites.google.com/site/gillesperrouin/][5]  
      
    Gilles Perrouin  
    U Namur  
  
    * Perspectives  
        * MJ: Features are behaviours  
        * CP: Features are units of variability  
        * CK: Features are configuration options  
    * Problem: NP-complete to detect FIs for n featurs  
        * Apply machine learning approach  
            * Reduce space to evaluate  
        * …  
* Non-functional FIs  
    Link: [infosun.fim.uni-passau.de/spl/people-nsiegmund.php][6]  
      
    Norbert Siegmund  
    U Passau  
  
    * Assume NF measures of features are additive  
    * Check in practice  
        * Mismatch implies FI  
  
## Breakout groups  
  
* Tasks  
    * What is common about FI in different domains?  
    * What are the open issues and challenges?  
        * What are the questions we should address Thursday & Friday?  
* Group 1  
    * Revisited each talk  
        * Feature  
            * Definition  
                * Requirement  
                * Implementation  
            * Purpose  
                * Incremental development  
                    * Additive  
                * Independent design  
                * Product line  
                    * Variability  
            * Characteristics  
                * Automatic composition vs manual  
                * Open vs Closed  
                * Functional vs NF  
        * FI  
            * Vaguely: different behave different in isolation than together  
                * Surprising?  
                * Extra behaviour?  
            * Coordination code  
                * Potential explosion  
            * Systems theory  
                * Studying composition  
                * Structure independent properties  
                    * Vs emergent props  
        * Resolution  
            * Upfront composition  
                * Architecture  
            * Manual integration  
            * Some props support composition  
                * Others not  
    * Discussion  
        * Cliff — require/guarantee  
            * Conceptual problems?  
        * Hierarchy considered important?  
        * Can we learn from systems theory?  
        * MJ: problem-oriented decomposition vs component-oriented decomposition?  
        * Defn of FI?  
* Group 2  
    * Views on FI  
        * Specs  
            * Actually, there's always a spec!  
                * General properties  
                * System invariants  
                * Usability  
                * Test cases ...  
        * Code  
        * User  
    * Where do features come from?  
        * Open world?  
            * Requires platform support  
            * Eg Android  
    * How to resolve FIs?  
        * Strategies  
            * Priorities  
            * UI-based  
                * Not for time-critical apps  
            * Automated resolution  
                * Undo conflicting action  
                * Terminate feature  
                    * Conflict between availability and resolution  
            * Inform developer  
                * Provide patch  
        * Density of interactions  
            * Few resources => many interactions  
    * Questions  
        * Is FI resolution possible in an open world?  
        * Are there domain-specific resolution mechanisms?  
* Group 3  
* Group 4  
    * Reference model  
        * Desired system behaviour  
            * Split into features  
        * Given domain ...  
            * Add designed domains  
                * Emerge from the features/requirements?  
        * Machine  
    * Conjecture  
        * Version 1  
            * For any app domain  
                * at any level of abstraction  
            * a negative FI is  
                * an inconsistency  
                    * or a property violation  
                * concerning control of a domain  
        * Version 2  
            * Feature construct version  
            * Same, but different picture  
                * No machine, just features  
  
## Talks  
  
* What is System Science?  
      
    Gerhard Chroust  
  
    * Forms of thinking  
        * Logical  
        * Causal  
        * Holistic  
    * General Systems Theory  
        * "Systemlehre"  
        * Transdisciplinary study if abstract organisation of phenomena, independent of substance, ...  
        * Principles  
            * Thinking in models  
            * Interrelated, systemic structures  
            * Dynamic processes  
            * Steering systems  
    * What is a system?  
        * Connected components  
        * Components affected by system  
        * System has properties different from sum of parts  
        * Assembly does something  
        * Built for a special interest  
* Musings on browser extensions  
      
    Shriram Krishnamurti  
  
    * Web browser extensions  
        * Turns the browser into an OS  
        * What can go wrong?  
            * What is the protection model?  
                * The web page has restrictions  
                * Extensions do not!  
    * Interactions  
        * Private browsing mode  
            * Is a programming discipline  
            * Extensions might not respect it!  
        * Type system to check desired properties  
            * Don't forbid code  
            * Check at run time  
                * Halting at run time can be a good thing  
            * Weak type system is all you need  
* Extending an existing language to a DSL  
      
    Thomas Gschwind  
  
    * DevOps and Cloud Computing  
        * DevOps  
            * Development and Operations  
            * Language to describe application and environment  
    * DSLs  
        * External  
        * Internal  
  
[1]: http://www.dagstuhl.de/en/program/calendar/semhp/?semnr=14281  
[2]: http://www.connectspaces.com/  
[3]: http://swerl.tudelft.nl/bin/view/NicolasDintzner/WebHome  
[4]: http://www.infosun.fim.uni-passau.de/spl/people-kolesnikov.php  
[5]: https://sites.google.com/site/gillesperrouin/  
[6]: http://www.infosun.fim.uni-passau.de/spl/people-nsiegmund.php  
