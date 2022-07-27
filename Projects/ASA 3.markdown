# ASA 3  
  
## Speculative Software Data Analysis (PR)  
  
* The IDE automatically analyses software data and visualizes it for you depending on your current task.  
* Challenges  
    * Large amounts of data  
    * Anticipating developer needs  
        * turning needs into queries  
        * detecting relevant outliers and trends  
    * Integrating support into the IDE  
        * visualization  
        * enabling feedback  
* SoA  
* Prior work  
    * LM Visualization Ontology  
    * Moose  
    * Moldable Inspector  
* Research activities  
    * Review  
        * Developer questions  
        * Literature and tools  
    * Study with developers  
        * Observe both professional and student developers  
        * Identify relevant questions  
        * Most important/common questions?  
    * Detecting relevant questions from context  
        * What is a context?  
        * Detect context  
        * Correlate questions  
    * Analyzing software data  
        * Detecting outliers and trends  
        * Detecting semantic links  
            * between structured and unstructured data  
            * eg textual descriptions of issues and questions vs structured code  
        * Mapping developer questions to queries  
    * Presentation  
        * Relevant visualizations  
        * Feedback  
            * Ranking quality and relevance  
  
## Executable Domain Models (NP)  
  
* Develop domain models as executable artifacts to elaborate requirements. Use for testing and documentation. Integrate into core of application to keep domain model, code and documentation in sync.  
* Challenges  
    * How to express domain models in code  
    * How to develop and organize examples  
    * How to embed the model  
        * Leverage for testing  
        * Link to running system  
    * How to express requirements  
* SoA  
    * MDE  
        * Compile models to code  
        * Wrong direction  
        * Limited applicability  
    * DSLs  
* Prior work  
    * Model-centric debugging  
    * Agile modeling  
    * Helvetia  
    * Moldable Tools  
* Research activities  
    * Review  
        * Review literature  
        * Experiment with state of art tools (MDE, Naked objects)  
        * Identify case studies  
            * Together with feenk  
    * Example-driven domain modeling  
        * How to build a domain model by developing executable examples  
        * Start just with code in HLL (Smalltalk)  
        * Explore visual DSLs  
    * Embedding domain models  
        * Testing domain models  
        * Explore event-based architecture to ensure independence of domain model and system (cf MVC, Onion model)  
    * Evolution of domain models  
        * How to co-evolve domain models and system as requirements change  
  
## Domain-Specific Software Quality (PG)  
  
* Provide effective means to specify and monitor domain-specific quality concerns, and offer corrective actions.  
* Challenges  
    * Identifying DS quality concerns  
    * Mining quality smells and repairs  
    * Specifying quality smells and repairs  
    * user control  
        * lowering false positives  
    * actionable notifications  
        * quick fixes and refactorings  
    * How to warn developers at the right time?  
* SoA  
* Prior work  
    * Security Smells  
    * Quality Assistant  
    * Null detection  
    * Bug prediction  
    * Architectural conformance  
* Research activities  
    * Ongoing: Android security smells  
        * Mining smells from literature  
        * Implementing smell detectors  
    * …  
  
## API Migration (ML)  
  
* Automatically migrate/adapt applications whenever an API changes  
* Challenges  
    * How to specify API transformations as changes are made?  
    * How to ensure behavioural compatibility/safety?  
    * How to automate API migration?  
* SoA  
* Prior work  
    * Kowalski  
    * JExample API migration  
        Link: [scg.unibe.ch/archive/papers/Haen08bAPImigration.pdf][1]  
  
* Research activities  
    * Kowalski, Nullable methods  
    * Case studies  
        * Crypto, Mondrian  
        * Why do breaking changes occur?  
        * How can migrations be specified?  
        * What can be automated?  
    * Lightweight semantic change model  
        * Capture minimal semantic aspects  
        * Grouping, sequencing, co-change ...  
        * What can be fully automated?  
        * Evaluation with case studies  
    * Extensions  
        * How to support cases that cannot be fully automated  
        * Offering advice  
        * Assessing speculative changes  
        * Generating test cases  
        * Evaluation  
    * Thesis completion  
  
## Other topics  
  
* ??? (MH)  
* Moldable Visual Languages (SP)  
* Security Analysis (CC)  
  
[1]: http://scg.unibe.ch/archive/papers/Haen08bAPImigration.pdf  
