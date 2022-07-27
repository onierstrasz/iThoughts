# Domain globalization  
  
Breakout group - Dagstuhl DSL Globalization  
Cedric Brun, Benoit Caillaud, Julien Deantoni, Robert France, Gabor Karsai, Oscar Nierstrasz, Eugene Syriani  
  
## What is a DSL?  
  
* language  
    * restricted domain  
* intent  
    * purpose-driven  
* semantics  
    * an interpretation  
        * execution  
        * analysis  
        * description  
            * ie documentation  
  
## Questions  
  
* Technical  
    * execution  
        * heterogeneous  
    * semantics  
        * for a language  
        * between languages  
        * consistency/compatibility  
            * between models  
                * ie instances of the DSL  
            * express as constraints  
                * across languages  
                * need common M3  
    * syntax  
        * How to emphasize elements in the correspondence?  
        * consistency  
            * through views & correspondences  
* Social  
    * natural support for collaboration  
        * between stakeholders  
    * notifications / feedback  
* How can the DSL be learned by the tools?  
    * and the end user?  
  
## Case study  
  
* ATS  
    * Supervision system for Paris metro trains  
    * DSMLs  
        * Query language  
            * real time properties  
                * Safety expert  
            * No two trains running on same section  
            * No crossing green roads  
                * Otherwise highlight roads  
            * Train enter updates UI after max 1 second  
            * Required interface  
        * State Machines  
            * abstraction of system  
                * Software engineer  
            * …  
                * trainEnter / turnOn Red  
                    * …  
                * turnSwitch / update SectionState  
            * sectionState  
        * Physical GUI  
            * representation of the safe section roads  
            * dashboard coordinator  
                * GUI designer  
  
## Chapter outline  
  
* 1. Context  
    * Systems Engineering  
        * Aspects  
            * Technical  
            * Social  
    * Multiple stakeholders  
        * Different engineering concerns  
            * Safety  
            * Software  
            * Hardware  
        * Different collaborations styles  
            * Within team  
            * Between teams  
                * subcontractors  
                * different cultures  
        * Different languages  
            * Two roles  
                * Engineering  
                * Coordination  
    * Why globalize?  
        * Analysis  
            * ... against system-level requirements  
            * Check consistency  
                * Across domains/views  
            * Global simulation  
                * Eg Co-simulation  
                    * 2 interacting simulations  
                    * City simulation and vehicle simulation  
            * Check NFRs  
        * Coordinate teams  
            * Assign responsibilities  
            * Manage shared resources  
        * Openness  
            * Ease integration of new languages  
            * Need open "plugin" framework  
                * Analogy to drivers for new devices  
                * Use proxies to interface to external DSLs?  
* 2. State of Art  
    * Tool integration frameworks  
        * Software Bus  
        * .NET  
        * Eclipse  
            Link: [en.wikipedia.org/wiki/Eclipse_Modeling_Framework][1]  
  
    * Model integration frameworks  
        * UML Profiles  
            * Unification, not integration?  
            * syntactic  
        * Cy-Phy  
            Link: [cps-vo.org/group/avm/meta-overview][2]  
  
            * language that integrates certain kinds of models  
            * helps to provide integrated view across multiple languages  
            * support analysis across multiple views  
        * Coordination languages / media  
            * Linda  
                Link: [en.wikipedia.org/wiki/Linda_(coordination_language)][3]  
  
            * Esper  
                Link: [esper.codehaus.org/][4]  
  
        * HLA  
            Link: [en.wikipedia.org/wiki/High-level_architecture_(simulation)][5]  
  
            * Heterogeneous distributed simulation  
            * Output can be used to configure Software Bus  
    * DSL integration frameworks  
        * Syntactic integration  
            * AToMPM (LWB)  
                Link: [syriani.cs.ua.edu/atompm/atompm.htm][6]  
  
                * Model transformation  
                    * Construction of models conforming to multiple DSLs  
                * Multi-view modeling; concurrent access  
                * AToM3  
                    Link: [atom3.cs.mcgill.ca/][7]  
  
            * Helvetia (LWB)  
                Link: [scg.unibe.ch/research/helvetia][8]  
  
                * Host language integration by source transformation  
                    * IDE tools aware of transformations  
            * MPS (LWB)  
                Link: [jetbrains.com/mps/][9]  
  
                * Integrates dedicated syntax-directed DSL editors  
            * Spoofax (LWB)  
                Link: [strategoxt.org/Spoofax/WebHome][10]  
  
                * Term rewriting  
            * GME (LWB)  
                Link: [isis.vanderbilt.edu/Projects/gme/][11]  
  
                * Metamodel composition  
                * WebGME  
                    Link: [webgme.org/][12]  
  
            * TXL  
                Link: [txl.ca/][13]  
  
                * Syntactic transformation  
            * Dicto  
                Link: [scg.unibe.ch/research/arch-constr/Dicto][14]  
  
                * Plug-in approach for architectural constraint checkers  
                    * Fixed generic syntax  
        * Semantic integration  
            * Formula  
                Link: [research.microsoft.com/en-us/projects/formula/][15]  
  
                * Logic program specifications  
            * Modelyze  
                Link: [github.com/david-broman/modelyze][16]  
  
                * syntactic transformations  
            * GemocStudio  
                Link: [gemoc.org/studio/][17]  
  
                * Set of metalanguages for language specification and composition  
            * ModHel'X  
                Link: [wwwdi.supelec.fr/software/ModHelX/][18]  
  
                * Java API conformance  
            * Ptolemy  
                Link: [ptolemy.eecs.berkeley.edu/][19]  
  
                * "Directors" in Java code  
* 3. Open Challenges  
    * Integration of multiple DSLs  
        * How do we integrate languages?  
            * Do we compose at level M2 or M3?  
                * ie do we compose models or languages?  
            * What are suitable "composition operators"?  
            * What does it mean for languages to be composable ? and how do you check that ?  
                * Are there some languages that are so specific that they cannot be composed ?  
        * Can we view languages as components? If so, what are their interfaces?  
            * Events can be fine for some purpose but not for all so is there a finite list of let's say suitable things ?  
            * If a language is a component, what is its interface?  
                * Kienzle Interfaces  
                    Link: [link.springer.com/chapter/10.1007/978-3-642-41533-3_37][20]  
  
                    * usage  
                    * customization  
                        * eg inheritances/subclassing  
                    * variation  
                        * eg feature models  
                * Language specifies a set of models  
                    * ie each sentence specifies a model  
                    * ie language <=> meta-model  
                    * a language interface is a characterization of a subset of the models suitable for integration  
                        * eg functions, values, statements, objects ...  
                    * Is there a difference between a language interface and a model interface?  
                        * language = models (semantics) + syntax + tools  
            * Is it possible to generate/extract a well-founded interface of a model?  
        * What are the semantics of a composed model?  
            * What kind of meta-languages can describe the individual DSL semantics ?  
                * For simulation it could be easier to encode SOS  
                * is there difference between causal (eg assignment) or acausal (eg constraints)?  
                * For verification it becomes difficult to capture any efficient theory.  
            * Identify classes of DSLs whose composition can be automated  
                * eg Architectural DSLs?  
                * eg behavioural DSLs (timed automata, markov chains etc etc)  
                * Composition of acausal models (BCa)  
            * How can we support compositional reasoning across DSLs?  
            * Is there a "unique"/"unified" semantics for my system ? so that I can denote the semantics of each DSLs in ?  
                * How can we avoid constructing a complex unified semantics?  
                * How do we check compatibility and consistency?  
                    * Do we need a common semantic domain to check "compatibility" (even just based on artifact interfaces)?  
                        * GK: they are using formula as a common base semantics for the interfaces and their compatibility. It seems it is a need ? what is the more abstract but suitable language for that ?  
                        * BC: traces can be used as a common base semantics  
                    * What is the difference between compatibility and consistency?  
                        * Components are compatible if there exists an environment in which they can work together.  
                            * a precondition?  
                        * For Group 1!  
                        * Models are consistent if there exists a common implementation.  
                            * a postcondition?  
                            * A model is an instance of a DSL, ie a sentence  
                            * A model is a specification? ie a requirement?  
        * How can we exploit legacy tools in an integrated system?  
    * Overall consistency along lifecycle of DSL instances (CB)  
        * What kind of coordination is mandatory between the models?  
            * What is the relevant information on which it is based ?  
                * Different during development and run time  
                * How should this information be provided to "an impacted" user?  
            * Syntax  
                * concrete?  
                * abstract?  
            * Semantics  
    * Multi-view modeling shared by multiple stakeholders (CB/ES)  
        * How to support multiple viewpoints in a distributed setting?  
        * Two stakeholders want to manipulate same model, but from different viewpoints  
        * Links at the language level can be used to express some adaptations in the representations of the models  
        * How to support traceability across DSLs and steps of the design process?  
    * Large scale model management (ES)  
        * What is a suitable data model for persistent storage?  
            * ie relational, OO, nosql ...  
  
[1]: http://en.wikipedia.org/wiki/Eclipse_Modeling_Framework  
[2]: http://cps-vo.org/group/avm/meta-overview  
[3]: http://en.wikipedia.org/wiki/Linda_(coordination_language)  
[4]: http://esper.codehaus.org/  
[5]: http://en.wikipedia.org/wiki/High-level_architecture_(simulation)  
[6]: http://syriani.cs.ua.edu/atompm/atompm.htm  
[7]: http://atom3.cs.mcgill.ca/  
[8]: http://scg.unibe.ch/research/helvetia  
[9]: http://www.jetbrains.com/mps/  
[10]: http://strategoxt.org/Spoofax/WebHome  
[11]: http://www.isis.vanderbilt.edu/Projects/gme/  
[12]: http://webgme.org/  
[13]: http://www.txl.ca/  
[14]: http://scg.unibe.ch/research/arch-constr/Dicto  
[15]: http://research.microsoft.com/en-us/projects/formula/  
[16]: https://github.com/david-broman/modelyze  
[17]: http://gemoc.org/studio/  
[18]: http://wwwdi.supelec.fr/software/ModHelX/  
[19]: http://ptolemy.eecs.berkeley.edu/  
[20]: http://link.springer.com/chapter/10.1007/978-3-642-41533-3_37  
