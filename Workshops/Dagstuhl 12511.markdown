# Dagstuhl — Compositional Design and Analysis  
  
Link: [dagstuhl.de/de/programm/kalender/semhp/][1]  
  
Notes for Dagstuhl 12511  
Divide and Conquer: the Quest for Compositional Design and Analysis  
Dec 2012  
  
## Monday  
  
* Tutorial on compositional verification  
      
    Arnd Poetzsch-Heffter  
  
    * proving correctness of whole based on properties of parts  
    * Principles and Dimensions  
        * Composing liveness properties is more difficult than composing safety properties  
        * Dimensions  
            * what is a component?  
                * concurrent / sequential  
                * (a)synchronous  
                * real-time  
                * static / dynamic creation  
            * what are the forms of compositions?  
                * sequential / parallel  
                * flat / hierarchical  
                * static / dynamic  
                * implicit / explicit (w operators)  
            * properties  
                * structural  
                * safety, liveness  
                * security  
                * timing  
            * verification techniques  
                * decompositional / compositional  
                    * Important practical differences  
                * assume-guarantee  
                * simulation  
    * Model checking and modular verification  
        * Components are finite Moore machines  
            * cf Kripke structures  
            * fairness assumption  
            * finite sets of inputs and outputs of propositional variables  
        * compose models instead of using formulas as assumprions  
            * tight relation between simulation and logic/satisfaction  
    * Compositional verification of sequential programs w procedures  
        * Components: abstract to control flow graphs  
            * represent as Kripke structures  
            * Composition is disjoint union  
            * Modal logic to reason about who calls whom (or not)  
            * verify by model checking  
        * As above, construct maximal models from formulas  
            * then apply model checking on composition of models and constructed models  
    * Modular reasoning for OO programs  
        * components: sequential OO classes & modules  
            * properties: pre & post-conditions, invariants, frame properties  
        * SMT solver detects mismatches between requirements and used modules/classes  
            * based on Hoare logic and weakest precondition  
    * Compositional reasoning for concurrent processes  
        * processes communicate synchronously over explicit channels  
            * Misra & Chandry, 1981  
            * static, hierarchical  
            * (finite) trace-based reasoning  
* Tutorial on compositionality  
      
    Arend Rensink  
    Compositionality, huh?  
  
    * Ingredients  
        * components, operators, parameters  
        * compositionally means that you can abstract from the parts and the composition and maintain equality  
            * so you can remain in the abstract domain  
    * Case 1  
        * bisimulation minimisation  
            * FSP example of lift and shaft composition  
            * composing LTSs yields product of states in worst case  
            * abstraction is weak bisimilarity  
            * minimize to equivalent LTS  
                * show in LTSA  
    * Case 2  
        * ND Choice over LTSs  
            * not compositional wrt weak bisimilarity  
            * tau.a ~ a but tau.a + b !~ a + b  
            * need rooted bisimilarity  
    * Intermezzo  
        * Congruence and compositionality are interchangeable concepts  
    * Case 3  
        * Action refinement  
            * atomic actions can be refined to more complex systems  
            * breaks abstraction function (more interleavings possible)  
    * Case 4  
        * Renaming in FSP  
            * breaks flattening of semantics into 1 LTS  
            * A = a -> a -> A  
                B = b -> b -> B  
                P1 = A||B  
                P3 = P1 {c/a} {c/b}  
  
    * Intermezzo  
        * Compositionality => Induction  
            * Prove: the sum of the first n odd numbers is a perfect square  
            * can't prove by induction wo strengthening the claim  
            * abstraction function is mapping to natural numbers  
        * So, compositionality is a generalized form of induction  
    * Case 5  
        * Model-based testing  
            * eg LTS models System Under Test  
            * derive test cases from model, not SUT  
            * Question: does conformance of components in LTS imply conformance of components in SUT?  
                * Do you still need to test the composition?  
    * Case 6  
        * Software Composition  
            * Put two student programs into eclipse and they won't compile  
                * naming conflicts  
            * Does composition of libraries work?  
                * version conflicts!  
                * "DLL hell"  
            * Resolve with namespaces  
                * Shri: these are bogus problems if you are willing to replicate the universe  
    * Case 7  
        * Error handling  
            * use an open universe of labels in LTS  
                * store useful information in the labels  
                * eg that errors occur  
    * Case 8  
        * Subclassing  
            * Java collections example where subclassing breaks  
                * Using LinkedList or HashMap as superclass changes semantics  
                * Type interface is not enough  
                * need richer abstraction  
    * Conclusion  
        * Compositionality requires:  
            * composition operator  
            * abstraction to properties of interest  
            * lifting to abstract level  
                * may involve weakening  
                    or augmenting the abstraction  
  
        * related to:  
            * (pre-)congruence  
            * induction  
            * disjoint union  
        * This framework does not fit all forms of compositionality ...  
  
## Tuesday  
  
* Computational Reasoning about OO Software Evolution  
    * Einar Johnsen  
        Link: [folk.uio.no/einarj/][2]  
          
        U Oslo  
  
    * focus on behavioral reasoning  
        * methods have contracts  
        * call sites also have pre and posts  
        * due to polymorphism don't know which method is invoked  
    * Easy to develop & maintain = hard to verify  
        * and vv  
        * Closed world verification  
            * complete proof system, no incremental development  
                * need to reverify after any change  
            * if a subclass changes the pre and post of methods, that changes the contract with clients  
                * invalidates old proofs  
        * Open world  
            * no complete proof system, incremental development  
            * simple implication between pre and post of super and subclass methods  
        * Behavioral subtyping  
            * super props hold in subclass  
        * Modular  
            * easier veriication, harder development & maintenance  
        * Incemental  
            * old proofs still hold  
        * Lazy behavioral Subtyping  
            * single, multiple inheitance  
    * Key idea: instead of making global proofs, keep track of proof context  
        * track what has been proved and what needs to be proved  
        * adaptations to class hierarchy change the proof context  
            * adding, modifying a class etc  
            * also common refactorings  
        * Kristen Nygaard: All irrelevant aspects of OO can be shown with restaurant examples  
    * Trait-based reasoning  
        * Damiani, Dovland, Johnsen, Schaefer, 2011  
            Link: [heim.ifi.uio.no/~einarj/Papers/damiani11ftfjp.pdf][3]  
  
* Composition in your Web Bowser  
    * Shriram Krishnamurti  
        Link: [cs.brown.edu/~sk/][4]  
  
    * Feature interaction examples  
        * Javascript mashups may conflict  
            * Example new web site with ads coming from another server  
            * Windows Security model  
        * Web browsers contain many extension points  
            * Firefox plugins etc  
            * keep bowser smaller  
                * can alpha test new features  
            * extension points can conflict  
        * Overlays  
            * adding UI overlays to documents  
                * Sounds CSS-like  
            * overlays can conflict  
        * Modes  
            * privacy or "incognito" mode  
                * firefox and chrome  
                * Browser gives you sandboxed environment where nothing gets saved  
                * What does my FB page look like to other people?  
            * modes may interfere!  
                * certain modes may cancel private browsing mode  
        * Blog: www.jswebtools.org  
            Link: [jswebtools.org][5]  
  
* How decomposition enhances security  
    * Kathi Fisler  
        Link: [web.cs.wpi.edu/~kfisler/][6]  
  
    * Example: conference management  
        * rules and constraints  
            * reviewer may not see other reviews before own review is submitted  
        * how to program?  
            * not if-then-else code!  
            * separate straight-line code from policies  
    * Policies  
        * does a policy satisfy a certain property?  
            * where do the properties come from?  
            * often tangled in encoding of rules  
        * Instead, just think in terms of policies and their relations?  
            * help w policy evolution ...  
            * eg refine policy to allow reading review only if not conflicted  
            * decompose policies into number of declarative assertions  
                * eg assigned(paper,reviewer), conflicted(paper,reviewer)  
* Knowledge-based Synthesis of Control for Distributed Systems  
    * Doron Peled  
        Link: [u.cs.biu.ac.il/~doronp/][7]  
  
    * given spec in LTL, how to construct a program that satisfies it?  
        Link: [en.wikipedia.org/wiki/Linear_temporal_logic][8]  
  
        * or sequential programs 2EXPTIME  
        * for concurrent programs undecidable  
        * make decidable by allowing synchronizing actions as needed  
            * reverts to sequential problem  
    * uses Petri nets with priority  
* A Variability-Aware Module System  
    * Christian Kästner  
        Link: [cs.cmu.edu/~ckaestne/][9]  
  
    * Tyranny of the dominant decomposition  
        Link: [dl.acm.org/citation.cfm][10]  
  
        * leads to inevitable scattering of some concerns  
    * Want modular type checking with variability  
        * OOPSLA 2012 paper  
            Link: [cs.cmu.edu/~ckaestne/pdf/oopsla12.pdf][11]  
  
    * Application to C and BusyBox  
        * Linux product line  
* Functional verification of distributed  concurrent systems  
    * Wolfgang Ahrendt  
        Link: [cse.chalmers.se/~ahrendt/][12]  
  
    * asynchronous communication  
        * Hoare logic  
    * Creol language  
        Link: [heim.ifi.uio.no/~creol/][13]  
  
        * "CREOL: A formal framework for reflective component modeling"  
*  Typical worst-case analysis of real-time systems  
    * Sophie Quinton  
        Link: [ida.ing.tu-bs.de/home/mitarbeiter/quinton/][14]  
  
    * Interested in systems, not programs  
        * Tasks run on CPUs connected by buses  
            * Want to reason about timing and priority of tasks  
            * multiple tasks can run on a cpu  
    * Busy window analysis  
        * max time interval a resource may be busy  
        * tied to a given priority (or higher)  
        * can't overlap  
    * Typical worst-case analysis  
        * Identify typical bounds and how often the system may leave these bounds  
        * contrast with probabilistic approach  
* Compositionality for complex event processing and aspects  
    * Shmuel Katz  
        Link: [cs.technion.ac.il/~katz/][15]  
  
    * Claims  
        * Apects can be specified and verified independent of applications  
            * Aspect specifications  
                * aspects are state extensions  
                * use assume-guarantee = DbC  
                * doesn't fit well ...  
                    * aspects are not methods  
                * An aspect is a system transformer  
                    * assumption: system before  
                        * P holds in base system  
                            * what's true at joinpoints  
                            * global things  
                    * guarantee: system after  
                        * R holds in woven system  
            * model check aspect wrt generic model presenting systems that satisfy the assumption  
                * use a tableau  
                    Link: [en.wikipedia.org/wiki/Method_of_analytic_tableaux][16]  
  
                    * LTL model checking  
                    * create a state machine (tableau) that represents the formula (assumption)  
                * weave aspect into tableau  
                    * prove the guarantee  
        * Interference can be analyzed for a library of aspects  
            * assumption of second aspect B might not be satisfied after weaving in first aspect A  
                * order might make a difference  
                * parallel weaving might not help  
            * example  
                * A encrypts messages w a password  
                * B adds allows possibility to remember password  
                * C backs up data over the network  
            * need to show incrementally that assumptions and guarantees match up ...  
        * Similar ideas can be used for complex event processing  
            * lots of commercial tools  
                * no semantics  
            * extend AspectJ with event detectors  
                * integrate response aspects that react by changing the stream of events  
                * event detectors are easy to analyze  
                * don't change the underlying system!  
            * Goldilocks properties  
                * not too hot; not too cold  
                * detect exactly the right sequences  
* Compositional synthesis of distributed systems  
    * Bernd Finkbeiner  
        Link: [react.uni-saarland.de/people/finkbeiner.html][17]  
  
    * Problem  
        * Given: a graph representing architecture  
        * Want implementations satisfying the black boxes in the graph  
  
## Wednesday  
  
* Modularity and Compositionality in embedded system design  
    * Stavros Tripakis  
        Link: [www-verimag.imag.fr/~tripakis/][18]  
  
    * Dedicated languages and tools for embedded systems  
        * many tools  
            * Modelica/Dymola  
            * LabVIEW  
            * SCADE  
            * Simulink  
        * These will become systems programming languages of tomorrow  
    * Compositionality and modularity are cross-cutting concerns  
* Three cases of composition and a question  
    * Ferruccio Damiani  
        Link: [di.unito.it/~damiani/][19]  
  
    * Polymorphic bytecode  
        * what is compositional compilation and why is it hard to achieve in Java?  
            * Cardelli, POPL 97  
                Link: [lucacardelli.name/Papers/SRC-144.pdf][20]  
  
    * Evolving APIs  
        * Will client code still work with new API?  
  
## Workshops  
  
* Verification of SPLs  
* Defining a general abstract notion of component  
      
    Participants  
    Simon Bliudze,  
    Arend Rensink,  
    Oscar Nierstrasz  
  
    * How do we compare CB frameworks?  
        * Components are composed with some glue ...  
        * eg compare BIP composition to CCS  
    * Looking at coalgebras  
        * generic state machines  
        * can model parallel composition over coalgebras  
  
## Thursday  
  
* VeriFast: A Powerful, Sound, Predictable, Fast Verifier for C and Java  
    Link: [cs.kuleuven.be/~bartj/verifast/][21]  
  
    * Bart Jacobs  
        Link: [cs.kuleuven.be/~bartj][22]  
  
    * Use separation logic  
        * better performance than other approaches  
    * applications  
        * linux device driver  
        * concurrent memory assignment  
        * each verification took a couple of months  
    * separately checks each function  
        * symbolically step through program  
        * check assertions with SMT solver  
    * "Verifast is very stupid about if statements"  
        * separately verifies each branch  
        * can blow up exponentially  
    * need contracts for everything  
        * eg malloc  
        * verification keeps track of heap state  
        * checks for memory leaks  
        * also check for permission to access heap chunks  
    * stack example  
        * the contracts essentially reimplement the stack in a lisp-like notation  
* Abstract Symbolic Execution  
    * Reiner Haehnle  
        Link: [se.tu-darmstadt.de/se/group-members/reiner-haehnle][23]  
  
    * use delta-oriented programming to implement SPLs  
        * can't verify product by product  
    * annotate classes w DbC  
        * transfer behavioral subtyping to DOP  
        * specification delta adapt contracts  
    * use symbolic execution with abstract method calls  
        * can modify contracts after symbolic execution  
* Compositional Verification of Actors  
    * Marjan Sirjani  
        Link: [ru.is/faculty/marjan/][24]  
  
    * Rebeca  
        Link: [rebeca-lang.org/][25]  
  
        * Reactive Object Language  
* Glue Synthesis in BIP  
    * Simon Bliudze  
        Link: [people.epfl.ch/simon.bliudze][26]  
  
    * BIP  
        Link: [risd.epfl.ch/bip][27]  
  
        * Behavior, Interaction, Priority  
        * Coordination medium for C/C++  
        * Code generation from HL specs  
    * Basics  
        * three layers  
            * Components  
                * with ports  
            * Coordination  
                * connect components  
            * Data transfer  
        * Behaviour  
            * define components  
            * LTS?  
        * Interaction, priority  
            * define coordination  
            * compose automata  
                * priorities restrict interactions  
                * sufficient, eg to express mutual exclusion  
    * BIP engine  
        * atoms run till they reach a stable state  
        * notify engine of enabled transitions  
        * engine picks transition and notifies components  
  
## Friday  
  
* Risk management meets model checking  
    * Marielle Stoelinga  
        Link: [wwwhome.cs.utwente.nl/~marielle/][28]  
  
    * RAMS  
        * Reliability, availability, maintenance, safety  
        * for safe dikes, nuclear power plants etc  
        * need models and analysis methods  
            * analytical models  
            * stochastic model checking  
    * fault tree analysis  
        Link: [en.wikipedia.org/wiki/Fault_tree_analysis][29]  
  
        * how do failures propagate in a component system?  
        * can estimate reliability and availability  
        * compose interactive markov chains ...  
* Compositional behavioral modeling & verification with real time games  
    * Andrzej Wasowski  
        Link: [itu.dk/~wasowski/][30]  
  
* The road to feature modularity  
    * Christian Kästner  
        Link: [cs.cmu.edu/~ckaestne/][31]  
  
    * different views on what is modularity  
        * separation of concerns  
        * information hiding  
* Conclusions  
    * Product line workshop  
        * Competing approaches  
            * product-based  
                * brute force analysis  
            * family-based  
                * metaprogram contains all variants  
            * feature-based  
                * model and reason about features and their composition  
                * in practice combination of feature- and family-based  
    * Benchmark workshop  
        * large interest in benchmarks  
        * no consensus  
            * hard to define common problem  
    * Discussion  
  
[1]: http://www.dagstuhl.de/de/programm/kalender/semhp/?semnr=12511  
[2]: http://folk.uio.no/einarj/  
[3]: http://heim.ifi.uio.no/~einarj/Papers/damiani11ftfjp.pdf  
[4]: http://www.cs.brown.edu/~sk/  
[5]: http://www.jswebtools.org  
[6]: http://web.cs.wpi.edu/~kfisler/  
[7]: http://u.cs.biu.ac.il/~doronp/  
[8]: http://en.wikipedia.org/wiki/Linear_temporal_logic  
[9]: http://www.cs.cmu.edu/~ckaestne/  
[10]: http://dl.acm.org/citation.cfm?id=302457  
[11]: http://www.cs.cmu.edu/~ckaestne/pdf/oopsla12.pdf  
[12]: http://www.cse.chalmers.se/~ahrendt/  
[13]: http://heim.ifi.uio.no/~creol/  
[14]: http://www.ida.ing.tu-bs.de/home/mitarbeiter/quinton/  
[15]: http://www.cs.technion.ac.il/~katz/  
[16]: http://en.wikipedia.org/wiki/Method_of_analytic_tableaux  
[17]: http://www.react.uni-saarland.de/people/finkbeiner.html  
[18]: http://www-verimag.imag.fr/~tripakis/  
[19]: http://www.di.unito.it/~damiani/  
[20]: http://lucacardelli.name/Papers/SRC-144.pdf  
[21]: http://www.cs.kuleuven.be/~bartj/verifast/  
[22]: http://www.cs.kuleuven.be/~bartj  
[23]: http://www.se.tu-darmstadt.de/se/group-members/reiner-haehnle  
[24]: http://www.ru.is/faculty/marjan/  
[25]: http://www.rebeca-lang.org/  
[26]: http://people.epfl.ch/simon.bliudze  
[27]: http://risd.epfl.ch/bip  
[28]: http://wwwhome.cs.utwente.nl/~marielle/  
[29]: http://en.wikipedia.org/wiki/Fault_tree_analysis  
[30]: http://www.itu.dk/~wasowski/  
[31]: http://www.cs.cmu.edu/~ckaestne/  
