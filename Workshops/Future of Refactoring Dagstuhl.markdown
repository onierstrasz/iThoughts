# Future of Refactoring Dagstuhl  
  
Link: [dagstuhl.de/en/program/calendar/semhp/][1]  
  
Dagstuhl 14211 - May 18-23, 2014  
  
## Keynotes  
  
* Frank Tip Keynote  
    * Extract Interface  
        * Remove dependency on concrete classes  
        * Fowler's recipe  
            * Select subset of methods for interface  
                * Not trivial to automate  
                * Problem with binary methods that refer to own type and access private data  
                * Use type constraints to infer what can be generalized  
    * Introduce generics  
        * Update clients  
        * Convert existing class  
            * Use heuristics to prefer wildcards etc  
* Bill Opdyke Keynote  
    * Refactoring, Reuse and Reality: Revisited  
    * Why people might be reluctant to refactor their code  
        * They don't understand how to refactor  
            * Explain with examples, tutorials ...  
                * Understanding when and where to refactor  
        * Benefits are long term  
            * What's in it for me?  
            * Short term benefits for incremental change  
        * Refactoring is seen as "overhead"  
            * People are paid to add new features  
            * Show how it improves overall productivity  
                * Ira Baxter  
                    * Refactoring in the small is tactical  
                    * Refactoring in the large is strategic  
        * Risk that refactoring will break code  
            * Need to ensure behavioural equivalence  
                * Testing  
                * Tool support  
    * Real barriers are cultural, not technological  
        * Executives worry about time to market  
        * Technical staff may not understand reuse  
        * Middle managers focuses on one project  
    * A bit of history  
        * Software reuse  
            * Software Factory  
                * Idea in late 80s  
                * Inspired by car industry automation  
                * Ira: the factory metaphor was broken  
                    * Cars and factories are design together  
                * Andrew Black: we already do the factory part well  
                    * It's the design that's the hard part  
                    * This is the key insight in XP and Agile  
            * Peter Deutsch : Factored code  
            * RDD  
                * Factoring designs up front  
        * Four dimensions of change  
            * Customer requirements  
            * Competitor changes  
            * Technology/infrastructure updates  
            * Design evolution  
        * Early refactoring work  
            * ORION schema evolution in OODBs  
                * Late 80s  
            * First paper by Opdyke on refactoring 1990  
            * Early work by Eduardo Casais in Geneva  
                * Eliminating duplication ina class hierarchy  
                * Focus on syntax, not semantics  
            * Bill Griswold's work  
                * Renaming and other refactorings  
        * Software REFactory  
            * Ralph Johnson's team, early 90s  
        * Early 90s  
            * Smalltalk: we do that already  
            * C++ : that would be impossible  
        * Late 90s  
            * Java  
            * XP, Testing, Agile  
* Bill Griswold Keynote  
    * How to support meaning-preserving program transformations  
        * PDGs  
            * Program Dependence Graphs  
            * Fuzzy semantics  
                * Breakthroughs in 1988  
                    * SSA  
                        * Alpern et al, 1988  
                    * Def order dependence  
                        * Horwitz, Prins, Reps 1988  
                    * Precise pointer analysis  
                        * Larus, Hilfinger 1988  
            * Idea  
                * Convert program to PDG  
                * Transform  
                * Convert back  
            * Better idea  
                * Transform program and PDG in parallel  
        * Define numerous transformations  
            * Rename  
            * Extract function  
        * Applied to subset of Scheme  
            * Implemented in CLOS  
    * Stumbled across 1990 Refactoring paper  
        * Parnas: "We must not forget that the wheel is reinvented so often because it is a very good idea; I've learned to worry more about the soundness of ideas that were invented only once."  
    * Work with Robert Bowdidge on GUI  
        * The Star Diagram  
            Link: [vasonabranch.com/research.html][2]  
  
            * How do Star diagrams relate to PDGs?  
        * Empirical studies showed SD more effective than text for planning refactorings  
    * "I'm an engineer. Systems people don't care about uncomputability. We'll compute it anyway."  
* Don Roberts / John Brant Keynote: Refactoring Tools — The First 2 Decades  
  
## Meta Tools  
  
* Meta Tools I  
* Meta Tools II  
* Meta Tools III — wrapup  
    * Sharing  
        * Everyone builds their own tool  
        * Jurgen: not a problem  
    * Complexity of languages  
        * Compiler AST is not enough  
        * Ira: difficulty is semantics  
            * Any representation is not enough  
            * Jurgen: look at Peter Mosses composable semantics?  
        * Andrew: You're making the refactoring problem harder than the compiler problem"  
            * Jurgen & Ira: It is!  
    * Competitions  
        * Friedrich: in other communities, people compete on common problems  
    * Community  
        * John: need to train more programmers to refactor  
        * Need better ways to specify refactorings  
            * Idea: infer transformations from concrete examples  
                * Cf Veselin's work  
            * How to better leverage concrete syntax for specifying transformations?  
    * Scale  
        * Ira: scale scares me  
            * Systems are getting bigger and bigger  
        * Don: we need to work on big, dirty systems  
            * Don: we can scale by focusing on lightweight analyses  
  
## Lightning talks  
  
* Lightning talks 2  
    * Danny Dig — Retrofitting Parallelism through Refactoring  
        * Trend away from languages towards libraries  
        * Research: refactoring towards parallelism  
            * For thread-safety  
                * Eg make class immutable  
            * For throughput  
                * Eg parallel divide and conquer  
            * For scalability  
                * Eg concurrent collections  
        * Plugins for eclipse and NetBeans  
        * New challenge: mobillity  
            * Multi-core mobile devices  
            * Limited resources  
            * Power consumptions  
            * Etc etc  
    * Eli Tilevich — To the cloud and back  
        * Increasing mobile and cloud-based envt  
        * Existing mobile software needs to be adapted  
        * Cloud refactoring  
            * Moving services to the cloud  
            * Moving them back  
    * Felienne Hermans — Spreadsheets are Code  
        * Three arguments  
            * They are used for similar apps  
            * Formulas are Turing-complete  
            * They suffer from the same problems  
        * Thesis on spreadsheet smells  
            * Ergo, refactorings  
    * Naouel Moha — Detection and correction of anti-patterns  
        * Eg Cohesion smells  
            * Use FCA to infer more cohesive hierarchies  
            * Then apply refactoring  
        * Eg SOA smells  
    * Simon Thompson — why should I trust your refactoring tool?  
        * Testing  
            * Regression tests  
            * Random tests  
                * Old vs new  
        * Verification  
            * Eg Potentially name capturing lambda calculus  
            * Automatically verifying refactoring instances  
                * Use SMT solver to prove equivalence  
                * Failure generates a counterexample  
        * Next: proofs for real (formalizable) languages  
    * Francesco Logozzo — Proof improving refactoring  
        * Current work: CodeContracts in NET 4.0  
        * Static verification is too hard  
            * Too many frontier annotations needed  
        * Refactoring to infer/add contracts  
        * Refactoring to fix bugs  
            * Contracts that cannot be proved  
        * Extract methods with contracts  
    * Ran Ettinger — Teaching Refactoring  
        * How to think about refactoring earlier?  
            * When designing a program!  
        * Iterative program design  
            * Formalize functionally  
            * Stepwise refinement  
    * Alejandra Garrido — Refactoring web apps for usability  
        * Refactor for  
            * Navigation  
                * Eg Shorten path by presenting more information  
            * Presentation  
            * Accessibility  
                * Eg splitting page; bringing together actions  
        * Client-side refactoring  
            * Modify the DOM  
        * Detecting usability smells  
            * Analyse user logs  
    * Panel  
        * Ira: where are you going to get the tools to support your work?  
            * Everyone: We build them  
                * Sometimes on top of existing tools  
        * Bill Opdyke: what's your vision for industry adoption?  
            * Danny: need companies to provide case studies  
            * Ran: companies should realize tools are expensive to build  
            * Alejandra: companies don't value usability, so we go to the users  
                * We need more success stories to convince industry  
            * Eli: companies won't let us reveal results or collaborate on papers  
            * Simon: it helps companies when allow staff to contribute to open source projects  
            * Felienne: go to developer conferences  
                * Only way to pitch your ideas  
        * …  
* Lightning talks 1  
    * Don Batory — Scripting Refactorings  
        * Refactorings specified in Java code  
        * Eclipse plugin for many design patterns  
            * But generates lots of errors  
            * Eclipse refactorings buggy  
    * Friedrich Steimann — Refactorings without names  
        * Ad hoc refactorings  
            * Enter the changes you want in the IDE  
            * Tool figures out additional changes to restore meaning  
    * Ira Baxter  
        * Refactoring: what is it?  
        * Never done by itself  
            * Intertwined with development process  
        * DMS infrastructure to support all this  
    * Jurgen Vinju — Complexity of Maintenance  
        * Need to support both analysis and transformation  
            * Integrate into one language (Rascal)  
            * Better than DMS ;-)  
    * Peter Sommerlad — Refactoring in Eclipse from IFS  
        * Refactorings for C++, Ruby, Python, Groovy ...  
    * Rohit Gheyi — Automated testing of Refactoring engines  
    * Tom Mens —Domain-specific Model Refactoring  
* Lightning talks 3  
    * Shinpei — Refactoring Refactoring History  
        * Commits in practice tangle concerns  
            * Eg refactoring + bug fix  
        * Refactor the history to separate the concerns  
    * Mohsen — Automated decomposition of build targets  
        * Problem: Google has lots of source code  
            * Yields big dependency graphs  
            * Long build times  
            * Finding best package decomposition is NP-hard  
                * Greedy algorithm works well though  
        * Adding type qualifiers is a refactoring  
            * Combine two approaches  
                * Compositional refactoring  
                * Speculative analysis  
    * Emerson — Awareness of refactoring tools  
        * Eclipse developers don't use refactoring tools  
            * Why not?  
                * Usability? No  
                * Trust? Not really  
                * Awareness? Mostly!  
        * Detect partial refactoring  
            * BeneFactor  
            * Witchdoctor  
            * Synthesis  
        * Detect complete but wrong refactoring  
            * GhostFactor  
        * Refactoring without names  
            * Names not always intuitive  
            * Use gestures instead  
    * Jan— How can we do better than search & replace?  
        * Context: web app frameworks  
            * Your code plugs into a complex ecosystem  
            * How do you tell the dialog where to store your data  
                * Buried in HTML  
        * Problem: replace the image API  
            * Refactoring tool takes care of Java code  
            * But what about the non-Java files?  
                * Eg HTML bindings  
    * Veselin — Refactoring with Synthesis  
        * Example: extract method with holes  
            * Requires sequence of refactorings  
            * Can be tricky  
        * Idea: users shows what he wants  
            * Tool infers the refactoring sequence  
                * Why should it be a refactoring sequence?  
                    Why not an ad hoc transformation?  
  
                    * Use Don's Relativistic refactoring  
            * How to search for the right sequence?  
                * Idea: start from initial fragment  
                * Use A* search  
                    * High likelihood of success  
    * Andrew — Teaching refactoring  
        * Context: Grace teaching language  
            * If it isn't tested, it doesn't work  
        * Programming as Mountain Climbing  
            * Come back down the mountain to clean up  
        * Programming is about mastering complexity  
            * So is refactoring  
            * Can teach with small programs too  
        * Code smells have funny names  
            * So do refactorings  
    * Javier — Can we mine and reapply refactoring strategies?  
        * Can we mine them?  
        * Can we automate them?  
    * Kim — Usage contracts  
        * Difference to reuse contracts?  
        * Wants tool and language to encode and check  
            * UContracts language & tool  
                Link: [soft.vub.ac.be/soft/proposal/ucontracts-java][3]  
  
    * Volker — Extract + Move = Bug  
        * How to ensure that extracted methods preserve behaviour?  
            * Idea: add assertions to formalize assumptions  
        * Experiment  
            * Focus on Extract and Move Method  
            * Automatically refactor candidates  
            * Run test cases  
            * Look for breaking tests  
  
## Special sessions  
  
* Project session  
    * Novel domains (Chair: Bill Opdyke)  
        * Areas/Issues  
            * Education  
                * Introduce refactoring to children  
                    * Scratch?  
                * Don't need to get it right first time  
            * Mobility  
                * New opportunities  
                    * Variability  
                    * Constraints  
                    * ...  
            * Cloud computing  
                * How to distribute  
            * Big data  
            * Globalization  
                * Internationalization  
        * Existing solutions  
            * Responsive design  
            * Self adaptation and healing  
            * Software product lines  
            * Refactoring for accessibility  
        * Work in progress  
            * Recording and replaying web macros  
            * Refactoring to improve user responsiveness  
            * Annotation refactoring  
    * Meta Tools (Chair: Max Schaefer)  
        * See above (Meta Tools III)  
    * User Experience (Chair: Bill Griswold)  
        * Or: "How come nobody uses our tools?"  
        * Issues  
            * Learnability  
            * Awareness  
            * Consequences  
            * New languages  
            * Understanding latent structure  
            * Programmers don't think in terms of tramsformations  
        * Existing solutions  
            * User studies  
            * Speculative execution  
            * R support in native reps  
            * R without names  
            * Real time analysis and pattern recognitions  
            * Batch R scripts  
            * Version control  
                * Van der Hoek early warning  
            * Visualization  
                * Star diagrams  
        * Emerging Solutions  
            * Refactoring competitions  
            * R enabled versions control  
            * Structure aware generic tools  
            * Flow R  
                * Ala jungleoids  
        * Open issues & barriers  
            * Education  
            * Programmers don't think in terms of tramsformations  
                * Lack of abstract thinking  
            * Unifying R w other transformations  
            * Visualization not adopted in past  
* Industry panel: How the Sausage is Made  
* How to teach Refactoring  
    * Friedrich  
        * Don't teach R in isolation  
    * Jurgen  
        * Teach students to read code, not just write it  
        * 101 companies  
        * Crista Lopes' book  
    * Ira  
        * Focus on design space  
        * Don  
            * Ask students to produce alternative designs  
    * Peter  
        * Focus on simplicity  
        * Refactoring workbook  
        * Teach them De Morgan's Law  
    * Oscar  
        * Focus on iteration  
        * Start with simple design  
        * Add new requirements  
            * Forces consideration of design space  
            * R arises naturally  
    * Jurgen  
        * Design is a process, not an endpoint  
* Research survey  
* Wrap up  
    * What went well  
        * Games  
            * Group sneeze  
        * Schedule  
            * Demos  
            * Lightning talks  
            * Keynotes  
                * Synthesis / reflection of past  
            * Industry panel  
            * Afternoon off  
            * Late night movies  
        * Process  
            * Flexible schedule  
            * Duck quack to signal time up  
            * Mind maps  
            * Circles  
                * Good for discussion  
        * Great conference center  
            * Assigned seats  
    * Need to improve  
        * More demos  
        * Lightning talks  
            * Groups of 3 with Q&A  
            * Should be shorter  
            * Focus on open issues, not just what I did  
            * More just on first day  
            * Structure  
                * 3" what I do  
                * 2" what's wrong with it  
    * Unresolved  
        * Parallel sessions  
            * Conflict bad  
            * Small groups good  
        * Shorter keynotes?  
            * More Q&A  
  
[1]: http://www.dagstuhl.de/en/program/calendar/semhp/?semnr=14211  
[2]: http://www.vasonabranch.com/research.html  
[3]: http://soft.vub.ac.be/soft/proposal/ucontracts-java  
