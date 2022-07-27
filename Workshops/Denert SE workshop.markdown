# Denert SE Workshop 2012  
  
Denert SE workshop, TUM, Feb 6-7, 2012  
Wo steht, wohin geht Software-Engineering  
in Wissenschaft & Wirtschaft, in Theorie & Praxis  
  
## Day 1  
  
* Denert: Opening  
    * Introductions  
* Ludewig: What research results end up in practice?  
    * What has been transferred in the past  
        * examples  
            * HL PLs  
            * ADTs  
            * Tools like RCS  
            * Multics  
        * Industrial labs, individuals and companies have been successful  
        * Problem: Most success through individuals  
            * SE curricula oriented towards professors interests, not actual needs  
            * Asking industry what is needed does not work!  
    * Software project management has moved to business admin domain (BWL)  
        * SE sits between CS and BWL  
    * Why doesn't research transfer work better  
        * Most research results too academic  
            * Oriented to PhD, not practice  
        * Useful results are not fully developed  
        * Industry lacks means to track research results  
            * In chemistry, practitioners read research results, not in SE  
    * Thesis  
        * New SE ideas should include adoption strategy  
        * Small results should be accepted as building blocks; cool new ideas should be monitored  
        * SW project mgt should be recognized as a proper subfield of SE  
        * We need a qualification process/checklist for SW Engineers  
    * Discussion  
        * Reiss: In Engineering, standards are key. In SE there are too many ways to do things.  
        * Pohl: We are a long way in SE from being a real engineering science  
            * Lacking validation of best practices.  
* 5 Impulse statements  
    * Tichy: Natural Language as the Universal Programming Language  
        * State of art is transformatio of models and specifications towards a concrete system.  
        * Understanding of natural language has make great progress: Watson, Jibbigo, Google translate, Siri ...  
        * Why not try to automatically translate NL to formal specs?  
        * Scripting Alice envt with NL scripts  
        * Would enable programming for the masses  
    * Reiss: SE is still more an Art than Engineering  
        * Too many degrees of freedom.  
            * How to organize data, program etc  
        * There should be more standard patterns and best practices  
            * ON: It is a mistake to compare SE with other Eng disciplines  
                * In other domains, best practice is largely driven by physical constraints. They don't exist in SW.  
        * Too many ways to visualize software  
    * Siedersleben: SE – Wild West or Science?  
        * Unlike other disciplines (Math, Medicine etc), SE has open competition of methods  
            * ON: not true; in all domains there is competition of methods and experimentation  
    * Prust: SE is not the problem, but the application of SE inwards (towards team) and outwards (to customer)  
        * Pohl: perhaps SE should be domain-specific  
    * Schlögel: SW product Mgt — an orphan of CS research  
        * Pohl: more an issue of business admin. Problem is SEngineers don't know it  
* Reussner: from Reqts Eng via SA to Quality — are the methods mature?  
    * On the State of Art of systematic realization of requirements in Software Architectures  
    * 1. Functional Reqts  
        * OO + Use Cases ...  
        * Challenges  
            * too much focus on customer reqts  
                * ignores other aspects like deployment  
            * design decisions not documented  
            * focus on forward engineering  
    * 2. NF Reqts, embedded systems  
        * statecharts  
        * real time reqts systematically dealt with  
        * challenges  
            * scalability  
            * other NF reqts less systematically realized  
    * 3. NF Reqts, performance, evolution ...  
        * arch. doc extracted by reverse eng  
        * challenges  
            * scalability  
            * virtual run time, virtual resources, run time adaptation  
    * Challenges  
        * How to automate transformation of reqts to design concepts?  
        * How to support traceability with the help of tools?  
        * Trade-off between quality and cost  
        * Systematic consideration of reqts in all phases of SW life cycle  
    * The Future  
        * Architecture-driven RE  
    * Discussion  
        * Glinz: Nice to see explicit link between Reqts and SA  
        * Broy: it's critical to document important decisions  
            * sometimes architectural reqts are fixed without documenting the reasons behind them  
* Siedersleben: SA of business ISs  
    * What do students (in Stuttgart) learn about SA  
        * Strangely no mention of constraints or properties  
        * Lots of talk about components, but not done in practice  
            * Does not seem right  
    * SA themes in post 2009 literature  
        * patterns, etc  
    * What is better now?  
        * Unit tests  
            * Now we test!  
            * Next best thing to formal specs  
        * Thanks to unit tests, OO design is better  
        * Standard SA for IS  
            * stateless web server  
                * state in DB  
            * classical layered model still works  
                * No. It's a 3-tier or 4-tier model  
        * Reuse of of standard products  
    * What is still poor?  
        * Component-based development  
        * Planning and realization of NF properties  
        * Error handling  
        * Parallelism and locks  
        * SOA  
        * Analysis of broken systems  
    * What's cool?  
        * Massize data processing with Hadoop, Zookeeper etc  
        * NoSQL DBs, eg SOLR  
        * Design for diagnosibility  
            * support for dynamic analysis  
        * SW Controlling  
            * continuous static and dynamic analysis  
        * Incremental deployment  
            * incrementally push pojos into more complex environments  
    * Theses  
        * SA is well established in some companies  
            * though reduced to use of standard products  
        * No success without tools  
            * unt tests etc  
        * SA is developed in separate "continents" (JEE, .NET, SAP ...)  
* 3 Impulse statements  
    * Stolle: The "functional architecture" of automobile SW is the same as the SA  
        * Is this SA a requirement or the solution?  
        * Good example of a domain where physical constraints influence the SA  
    * Dumslaff: we lack methods to deal with products with different life cycles  
    * Glinz: How much requirements engineering?  
        * Problems with ambiguous and vague reqts  
        * Hard to verify  
        * Reqts are a means, not an end  
            * must deliver value!  
            * effort should be inversely propl to risk  
        * When we buy a car, we do not have to specify that the car will be delivered with wheels and tires  
            * We have a common understanding!  
        * Reducing risk  
            * Vincenti: normal vs radical design  
            * Short feedback cycles  
            * Fricker: handshaking  
        * Discussion  
            * Broy: Key point is that writing the spec is not the hard part, but deciding what to specify!  
* Pizka: SE Tools — shortcomings in tool support?  
    * State of Art in SE Tools  
    * Tools have a huge impact on product  
        * Example of standard COBOL practice in 80s  
        * Example of missing generics in Pascal  
    * Software systems reflect the times in which they were developed  
    * RUP  
        * Tools exist for all SW life cycle activities  
    * Good tools exist or data modeling  
        * Not for design  
        * Key tools are Word and PowerPoint!  
    * No good tools for project mgt  
        * MS project  
        * Excel or Word (!)  
    * Problems with visual programming  
        * You can't grep!  
        * Navigation more difficult  
        * No inheritance, no polymorphism ...  
        * Error-ridden and weak code generation  
    * Challenges  
        * Design, project mgt, legacy ...  
        * Need analytic models at meta-level  
  
## Day 2  
  
* Matthes: warmup  
    * Summary of Day 1  
    * Academics were not too academic  
    * Methods  
        * Call for more standard patterns  
        * Radical vs standard solutions  
    * Required knowledge  
        * CS  
        * Business admin  
        * Change mgt  
        * ....  
    * Languages and tools made big progress  
    * What must happen now?  
        * More empirical studies  
        * More system monitoring  
        * More context for best practice  
        * Better understanding of innovation process  
* 3 impulse statements  
    * ON: Agile Software Assessment  
    * Saake: SE for ubiquitous intelligence  
        * ubiquitous intelligence is out there  
            * smart embedded systems are everywhere  
        * Reqts  
            * Functionality is simple  
                * Personalization and customization are complex  
            * Low maintenance cost  
            * Cheap to develop  
            * Networked  
            * Security!  
        * Database view  
            * Should have standard solution  
            * Position  
                * Feature-oriented  
                * Classical SE methods inadequate  
        * SE reqts  
            * Functionality is not the hard part  
            * Reuse of components to support configration  
            * Feature variability  
            * Maintenance free or self maintenance  
            * Cheap: Easy devt methods for non experts  
            * Co-design HW & SW  
        * What is the impact on SE training?  
        * Discussion  
            * Pohl: need SW technicians, not computer scientists  
    * Pohl: Challenges for SE  
        * Convergence of IoX  
        * Internet of Services -> Content -> Things -> NoF (network of the future)  
        * Consequences  
            * No one will be interested in SE in future  
                * Instead evolution and adaptation  
            * Leads to service life cycle  
                * cf Ghezzi keynote  
* Tichy: Empirical studies and experiments in SE  
    * Controlled, randomized experiment  
        * vary the independent variables  
        * observe the dependent variables  
        * control the "Störvariablen"  
    * Good example  
        * "Evaluating Pair Programming wrt System Complexity and Programmer Expertise" – IEEE TSE 2007  
            Link: [simula.no/research/se/publications/Arisholm.2006.2][1]  
  
        * cost : 250 K Eurosz  
        * Pair programming is not faster, small increase in quality, big cost  
        * Big quality gain for beginners only!  
    * Problems  
        * expensive  
        * hard to get prof developers  
        * many negative results  
        * only worthwhile for established tools and methods  
    * Another example  
        * Mining Metrics to Predict Component Failures  
            Link: [research.microsoft.com/apps/pubs/default.aspx][2]  
  
        * Do metrics correlate with failures?  
        * Yes, but no single metric is reliable  
* 4 impulse statements  
    * Reussner: Views vs Refinement  
        * Code is just one view of a system  
    * Pizka: 3 statements  
        * History of Devt Processes  
        * 1. CS Training  
            * should be integrated & vertical instead of horizontal  
            * technical skills  
            * communication  
            * psychology  
            * economy, law ...  
        * 2. Need better understanding of SW Economy  
            * do we know costs of SW?  
            * costs of individual parts  
            * can we measure variance?  
            * difference between MIPS and service units?  
                * budget sometimes all goes to MIPS!  
        * 3. Need better understanding of CS history  
            * Cf CACM 2005-08 Why the SW Industry needs a good Ghostbuster  
                Link: [dl.acm.org/citation.cfm][3]  
  
    * Bokowski: Programming needs to become sexy again!  
        * Dijkstra: to program is to understand  
        * Need good developers  
        * Wishes  
            * Rehab programming as core skill  
            * Programming is fun, not a chore  
            * "How to be a programmer"  
                Link: [samizdat.mines.edu/howto/HowToBeAProgrammer.html][4]  
  
        * Discussion  
            * Reussner: dangerous to put too much emphasis on coding  
            * Broy: other skills are also important  
    * Ludewig: How can we make rapid progress in SE?  
        * In Physics, Biology, Medicine, etc constant progress is made  
            * Not so for SE — new results are not recognized  
        * Why?  
            * We don't trust published results  
            * Not enough open discussion  
            * Results too closely tied to specific context  
            * Brooks no silver bullet still holds  
* 3 SE Challenges  
    * Post-its — to group and discuss at end  
    * Understanding legacy code  
    * Making architecture explicit in PL  
    * Bringing models closer to code  
        * NOT generate code from models  
        * Keeping artifacts connected  
        * Taking context into account  
* Broy: Categorizing Challenges  
    * Requirements  
        * How much RE?  
        * 40% RE  
        * ...  
    * Architecture  
        * Making SA more concrete  
        * Making SA explicit  
        * ...  
    * Programming  
        * Making everyone a programmer  
        * Automatic parallelization  
    * Verification & Testing  
        * Correctness, completeness ...  
    * Evolution  
        * Reverse Eng over many years  
        * Making it easier to understand legacy  
        * Adaptation to changing reqts  
    * Methodology  
        * Scalability  
        * Convergence of modeling languages  
        * ...  
    * Security  
    * Process  
        * Offshoring and outsourcing  
        * Normal vs radical design  
    * Management  
        * productivity  
        * understanding SW economy  
        * measuring good SE  
        * empirical studies  
    * SW product families  
        * support NF Reqts  
        * Variability  
        * More products, fewer projects, via adaptability  
    * Transfer  
        * how to improve in both directions  
    * Standards  
    * Education  
        * Simpler SE for everyone!  
        * Broader education  
        * SE Qualification  
    * Interdisciplinary appln domains  
  
[1]: http://simula.no/research/se/publications/Arisholm.2006.2  
[2]: http://research.microsoft.com/apps/pubs/default.aspx?id=70232  
[3]: http://dl.acm.org/citation.cfm?id=1076217  
[4]: http://samizdat.mines.edu/howto/HowToBeAProgrammer.html  
