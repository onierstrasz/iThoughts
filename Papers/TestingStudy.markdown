# TestingStudy  
  
## What is the problem?  
  
* High quality tests help to build high quality software  
    * But we observe low test coverage and low effectiveness of tests.  
        * NB: coverage != effectiveness  
        * Why? Testing starts too late => low testability  
    * Conclusion: more focus on testability  
        * Start testing early  
        * Commitment from management  
            * Dedication from team  
        * Better tools (or awareness of tools)  
            * Mutation testing  
            * Traceability testing <-> code  
            * Testing for non source code files  
* State of practice lags behind state of art  
    * Did academics fail to express the significance of their results?  
    * Fail to sell their results?  
* Research questions  
    * What motivates developers to write test cases?  
    * What is the quality of tests in practice?  
        * Coverage?  
        * Effectiveness?  
    * What components are tested?  
        * Why / why not?  
    * When do developers write tests?  
        * What do they test?  
        * Is TDD used in practice?  
        * Do developers write new tests when they discover new bugs?  
  
## What does literature say?  
  
* Half of developers do not test  
    * Overestimate testing time  
* Often bugs are fixed without changing tests  
* Management must commit to testing  
* TDD encourages fine-grained, steady progress  
* What are measures of quality?  
    * Measures of quality  
        * Coverage  
            * By lines  
            * By branches  
            * Etc  
            * What about configuration or resource files?  
        * Mutation testing  
        * Test granularity  
            * Not just unit tests  
            * Also integration tests  
            * Other kinds of tests  
    * Mutation testing shows low test quality  
        * Many tests cannot detect (kill) mutants  
            * Best kill rate 100%  
            * Worst 66%  
        * Automated tools failed to create mutants  
            * List of existing tools and limitations  
        * There is a need for measuring the quality of tests  
            * If by mutation testing, then better tools are needed  
    * What to test?  
        * Complex components  
            * Components involved in many tasks  
        * Components likely to change  
        * New technologies  
            * Or missing experience  
  
## Case study  
  
* Large web app  
    * Low test coverage  
    * Deliberate effort to increase coverage to 40-80%  
    * Only 8% of bugs covered by unit tests  
    * During one period, pressure to implement new features led to drop in testing  
        * Followed by a deliberate effort to add tests  
        * Quality then improved  
  
## Observations  
  
* Missing tests  
    * Most bugs detected by manual testing  
        * Not existing tests  
        * Test coverage low  
            * Developers gave up writing tests when effort seemed too high  
            * Most tested components have few bugs (5 or fewer)  
                * Some exceptions: new fingerprint API  
            * Writing tests early promotes testability (TDD?)  
        * Test effectiveness low  
            * Many tests could not kill mutants  
    * Needs commitment  
        * From management  
            * How to convince management?  
            * Need clear, visible company policy  
        * From developers  
            * Need documented workflow  
* Bug evolution  
    * Total number of open bugs mostly remained constant  
        * Increased after a "cleanup" action  
    * Most bugs fixed without changing tests  
        * Developers do not know if a similar bug has been reported or fixed before  
            * No hints whether it is worthwhile to write a test  
    * Only 8 pairs of recurring bugs  
        * Many false positives of "related" bugs  
            * Due to refactorings touching multiple bug locations  
            * Also reformatting  
            * Conclusion: bug fixes to same or related code may not be related bugs  
    * Meta observations  
        * Some irregularities in the project history were due to organizational issues or policies  
            * Must be considered when analyzing repos  
            * Staff fluctuation  
            * Focus on new features vs bugs  
            * Focus on testing  
            * Focus on back-end  
            * Fewer bugs reported when there is less development activity  
    * Commented tests  
        * Why?  
        * Tool needed to temporarily disable them?  
        * Is this a thing?  
            * Studies needed  
    * Need guidelines and tools on when and what to test?  
        * When should you start writing tests?  
        * Given limited budget, what parts should be tested?  
            * How can we know in advance what parts will be bug prone?  
            * Cite bug prediction research  
        * Isn’t this already well-documented in the literature?  
        * Need better tools to assess test quality  
            * Mutation testing out of the box?  
            * Not just SonarQbe  
        * Need better tools to inform developers of code history?  
            * Have bugs been reported or fixed here before?  
                * Possible student project?  
* Testability  
    * Hard to add tests  
        * Due to "low testability"  
            * Reasons:  
                * A component has too many responsibilities  
                * Hard to test components in isolation  
                    * A component has many dependencies  
                    * The .Net framework makes it hard to mock certain objects  
                * "Good behaviour" is not well-defined  
                    * Eg usability issues, graphical design  
                    * Is manual testing common, or are newer frameworks used in practice?  
            * See Table of characteristics of software that is testable or not  
            * Possible refactorings are discussed  
            * Manual testing is the usual workaround  
    * Some parts of code more susceptible to bugs (why?)  
        * Developers quizzed about top 15 buggy components  
        * Play central role in many tasks  
        * Using new platform features  
            * Android fingerprint API  
    * Over half of the bug fixes impacted multiple files  
        * Why?  
    * Some bugs are not in source code but in configuration files  
        * How common in general?  
        * Impacts test coverage  
    * Need to start testing early, mainly to ensure testability  
        * Not necessarily because of usual TDD reasons  
        * "Testability-driven design"  
        * How do we measure “testability”?  
            * Just because a component is well-tested (or not) is not necessarily a sign of its testability  
  
## Conclusions  
  
* Testability first  
