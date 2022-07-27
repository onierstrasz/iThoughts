# ASA Research Tracks  
  
Brainstorming with Mircea 2012-03-08  
Specific research activities in ASA SNF project  
  
## Agile Modeling  
  
* Quickly get in new models  
    * About getting models in  
    * Being quick  
    * Integrate multiple sources  
* Research Activities  
    * Modeling new languages  
        * Semi-automated grammar recovery  
        * Refining island grammars  
        * Exploit language similarities  
        * Exploiting proxies for structure  
            * eg indentation  
    * Integrating multiple sources  
        * Empirical study?  
            * How do multiple sources relate?  
        * Correlating model elements  
  
## Meta Tooling  
  
* Being quick to answer questions about models  
* Tool composition problem  
* Could be throwaway tools  
    * or more long term  
        * useful for monitoring  
* Research activities  
    * Empirical studies  
        * What questions do developers have?  
            * What queries?  
            * How to present?  
            * How to interact?  
        * What mechanisms would help?  
    * DSL for specifying analyses and tools  
        * How does this differ from Mondrian and Glamour?  
            * What is missing?  
        * Domain specific analyses & tools  
            * cf Domain specific profiling  
        * Tool composition framework  
            * Composition paradigms  
        * Infrastructure for collaboration  
            * sharing tools  
        * How to leverage and link multiple models?  
  
## Architectural Monitoring  
  
* Should be just "Monitoring"?  
* Builds on tools produced  
* Not just architecture, but other implicit information like features  
* Lots of previous work on recovery  
    * Not much validation on how meaningful this is  
    * Not much work on maintaining arch knowledge  
    * Need more empirical work  
        * Identify useful information  
        * Keep this information and monitor it  
    * Problems  
        * How to specify  
        * How to evaluate  
        * How to encode  
        * How to monitor  
    * Idea: "Architectural dashboard" to track SA  
    * Research activities  
        * Mine and validate architectures  
            * Empirical work  
            * What Arch knowledge is important in practice?  
            * NB: take a broad view of SA; include features and other implicit knowledge  
        * Compare Arch Recovery techniques  
            * Performance  
            * Reliability  
        * Monitor Arch evolution  
            * How to present?  
            * How to enforce/deal with violations?  
        * Ongoing: validation with real case studies  
  
## Big Software Data  
  
* Emphasis on supporting developers  
* Two areas  
    * Software ecosystems  
        * Impact analysis  
        * Who and what will be impacted by changes  
    * Data (eg LOC)  
        * Data mining usage patterns  
        * Supporting management decisions  
            * How much reuse is going on ...  
* Research activities  
    * Empirical studies  
        * Developer Information needs  
            * What questions do developers have about how their code is used?  
        * Management information needs  
            * What do managers need to know about the code base and how it is used?  
    * Infrastructure  
        * Feasibility  
            * Performance  
            * Scalability  
            * Depend on  
                * Data stuctures  
                * Parallelism  
                * Distribution  
                    * Cloud  
        * Queries as Data  
    * Applications  
        * Recommendation systems  
            * Reuse  
                * Detecting boilerplate code  
                * How much code is reused across product families  
            * Detecting patterns  
                * Boilerplate => missing abstractions  
                * Idioms  
        * Delivering news about ecosystem evolution  
        * Statistical typing  
            * cf Hermion and Senseo  
            * but in the cloud  
