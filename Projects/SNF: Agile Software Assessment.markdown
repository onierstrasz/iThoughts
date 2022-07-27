# SNF: Agile Software Assessment  
  
## Topics  
  
* Problems  
    * Hard to track software evolution  
        * Information gets disconnected  
        * Dependencies break over time  
            * Can't rebuild old versions  
    * Development disconnected from analysis  
        * Generally: development and SE do not play well together!  
        * lack of support for context  
        * PL focus on computation, not software process  
        * IDE disconnected from run time and process  
    * Hard to build new analysis tools  
        * Want to tailor tools to analysis questions  
        * What kinds of analyses would help developers?  
            * Grounded theory study needed?  
    * Missing tools for specification  
        * eg Arch constraints  
    * Lacking empirical justification  
        * What kinds of tools are actually needed?  
        * Grounded study?  
            * What are common obstacles in development?  
        * Controlled experiments with existing tools?  
            * Which visualizations help for which tasks?  
* Context  
    * Cross cutting theme  
    * Ecosystem  
        * Reverse engineering a system by studying its clients  
        * Organizational standards  
            * coding standards etc  
    * Developers  
        * Who built it over time  
    * Versions  
        * As in ActiveContext  
            * Dynamic updates  
    * Build  
        * Dependencies  
        * Versions  
    * Runtime context  
        * For behavioural adaptation  
        * Scoped reflection  
            * Mirrors  
* Architecture  
    * Thesis: continuous monitoring of architectural evolution will improve system stability and robustness  
    * If A is lost, recover it  
        * Try not to lose it  
    * Opportunity for empirical work  
        * Many tools  
            * How well do these tools work?  
            * Need a benchmark  
        * Collect architectures to validate tools  
    * Need way to specify and check A constraints  
    * Much has been done; what is the new angle?  
        * real industrial case studies  
            * cf Jens Knodel  
                * live compliance checking  
    * Architecture is lost  
        * Architecture is not explicit in the code  
        * Architecture is well understood only by some developers  
        * Hard to extract from artifacts  
    * Expressing architecture  
        * Embedded ADL?  
        * Or linking to external A descriptions  
    * Expressing features  
    * Linking code and models  
        * Linking code to other artifacts  
        * Linking to ecosystem  
            * Maintain runtime and historical information  
            * Eg keep track of runtime types of variables  
                * Statistical typing  
                * Also useful for static languages  
            * Eg link to version histories, bug history etc  
        * Context  
            * Maintaining versions  
            * Maintaining dependencies  
        * Programming language support  
            * context  
            * modeling  
* Assessment Tools  
    * Thesis: a meta-tooling environment focussing on common development tasks will improve developer productivity  
    * Previous work  
        * Mondrian  
        * Glamour  
        * Domain Specific Profiling  
        * Themes  
            * Visualization  
            * Navigation  
            * Metrics  
            * Debugging  
            * Exploration  
    * Monitoring the ecosystem  
        * Continuous supervision  
            * Automatic recognition of coding patterns  
            * Detection of hot spots  
    * Linking analysis to the IDE  
    * Empirical studies ...  
        * establish needs  
        * basic mechanisms  
    * Meta tooling environment  
        * Enable rapid construction of assessment tools  
        * Validate ... how?  
    * Problem detection  
        * Tons of previous work  
            * Code smells  
                * Anti patterns  
            * Coupling and cohesion  
                * recent empirical work showing cohesion not so important?  
            * Fault prediction  
                * Based on complexity etc  
            * Metrics based detection strategies  
            * Non conformance with statistical patterns  
                * Robillard  
        * Missing empirical work on validating design heurisics  
            * Eg Law of Demeter  
            * Impact of duplicated code (Godfrey)  
* Agile Modeling  
    * Thesis:  
    * Challenges  
        * Dealing with new, unknown languages  
        * Dealing with multiple languages  
        * Dealing with other data sources  
    * Model import  
        * Parsing by example etc  
            * see TUD talk  
* Big Software Data  
    * Thesis:  
    * Software Ecosystems  
        * Lowest level data crunching for big software ecosystems  
    * How to analyze  
        * Detecting patterns  
        * Focus more on techniques than concepts  
    * Feeding back from data analysis to PL design  
        * Which features are used ...  
    * How to feed this to the other tracks  
