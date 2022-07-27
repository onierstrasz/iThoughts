# Perscheid PhD  
  
Test-driven Fault Navigation for Debugging Reproducible Failures  
Michael Perscheid, HPI  
Dec 22, 2012  
  
## 1. Introduction  
  
* support scientific method in debugging  
* approach  
    * debugging into examples  
        * focus on failing test cases?  
        * what is the key idea?  
    * test-driven fault navigation  
        * structure navigation  
        * team navigation  
        * behavior navigation  
        * state navigation  
    * incremental dynamic analysis  
        * split analysis over multiple runs  
    * Path Tools framework  
        * PathMap  
            * extended test runner  
            * supports test-driven fault navigation  
        * PathFinder  
            * back-in-time debugger  
        * PathBrowser  
            * connects tests to source code under test?  
* evaluation  
    * user studies  
    * demonstrate greater efficiency  
* Missing a thesis statement?  
  
## 2. Finding Causes of Reproducible Failures  
  
* Motivating error  
    * typing mistake in header of Seaside application  
* "traffic" method  
    * Zeller: Why Programs Fail  
    * track  
        * in bug tracker  
    * reproduce  
        * in IDE  
    * automate  
        * as test case  
    * find  
        * possible infection origins  
        * “An infection is an incorrect program state or misleading behavior.”  
    * focus  
        * on the most likely ones  
    * isolate  
        * the infection chain  
        * ie. defect -> infection -> fault  
    * correct  
        * in source code  
        * pass test  
* "even though the scientific method is known as a valuable procedure for localizing failure causes, contemporary debugging approaches provide no or only partial support for it." p 20  
    * existing debuggers are "not well-suited for the systematic following of infection chains backwards to their root causes."  
* how to apply the scientific method  
    * suspicious methods  
        * covered by failing tests  
        * still yields too much code to inspect  
    * expertise  
        * nice if you have them  
    * back in time debuggers  
        * don't help you in following the infection chain  
        * what about Object Flow Analysis?!  
    * automatic debugging  
        * doesn't scale  
  
## 3. Debugging into Examples  
  
* Premise: test cases own a hidden and valuable source of information that is able to enhance debugging of reproducible failures  
* Insight: test cases always follow the exact same execution path  
    * perform multiple runs  
    * collect data needed for analysis  
* passing tests contain hidden knowledge  
    * eg type information  
    * so, compare knowledge of passing and failing tests  
* test-driven fault navigation  
    * reproduce failure  
        * encode as test  
    * structure navigation  
        * compare failing and passing tests  
        * PathMap tool  
            * spectrum-based fault localization  
            * scalable tree map visualization and low overhead analysis framework  
    * team navigation  
        * developer ranking metric  
        * identify most expert developer  
    * behavior navigation  
        * PathFinder tool  
            * back-in-time (BIT) debugger  
        * trace back execution and state to root cause  
    * state navigation  
        * identify corrupted state  
        * create generalized contracts from passing tests  
* reduce high cost of dynamic analysis  
    * gather information over over multiple test runs  
    * guided by developer  
* limitations  
    * heisenbugs  
    * concurrency and distribution  
    * non-determinism  
  
## 4. Test-driven Fault Navigation  
  
* Structure Navigation  
    * Localizing Suspicious System Parts  
    * Tree map  
        * packages, classes, methods ...  
        * display method coverage  
        * spectrum-based fault localization  
            * highlight suspicious methods occurring more frequently in failing tests  
    * rerun tests to incrementally gather more information if needed  
* Team Navigation  
    * Recommending Experienced Developers  
    * Use metrics to identify developers who have worked most on the suspicious methods  
* Behavior Navigation  
    * Debugging Erroneous Test Cases Backwards  
    * incrementally collect data over multiple test runs  
    * provide explorable call tree  
* State Navigation  
    * Identifying Corrupted State in Infection Chains  
    * infer generalized contracts and invariants  
        * track values of arguments, instance variables and return values  
            * infer most specific type allowed  
            * yields dynamic pre, post conditions and invariants  
        * Also look for misspelled words!  
        * enable dynamic contracts for all suspect methods  
            * detect violated contracts  
        * Why not exploit object flow?  
            Link: [scg.unibe.ch/bib/Fier09a][1]  
  
## 5. Incremental Dynamic Analysis  
  
* Use method wrappers to dynamically instrument code  
    * 5.3.1 how do you know what to wrap? do you wrap all application code, or do you wrap on the fly?  
* use simulation wrappers to instrument at statement level  
    * interprets bytecode  
* initially just build call tree  
    * refine to collect information about receivers and arguments  
    * creates deep copies of objects  
        * how "deep" are the copies?  
    * also "harvest" types and value ranges  
  
## 6. The Path Tools Framework  
  
* PathProject  
    * define the analysis scope  
    * why is this a separate tool?  
* PathMap  
    * extended test runner  
        * adds TreeMap coverage visualization  
        * flaps enable analysis modes  
    * developer ranking metric  
* PathFinder  
    * BIT debugger  
* PathBrowser  
    * test-based source editor  
* Kind of repetitive. Much of this has been said already.  
    * either fold the new stuff into chapter 4, or expand and move to an appendix  
* Path Analysis Framework  
    * classes for projects, entry points, tracers, and wrappers.  
  
## 7. Studies and Experiments  
  
* User studies with 6 small to medium sized apps  
    * how were the failures selected?  
    * were failures representative of those in real systems?  
* students are given 3 problems to solve with standard tools, and 3 with Path tools  
    * Do the studies show which of the new practices and tools helps the most?  
    * only 6 students  
* study to assess accuracy of identifying experts  
    * insert faults  
    * compute likely experts of suspicious methods  
        * ie assuming faulty method is not known  
        * compare with most active author of faulty method  
    * contrast with two other approaches  
        * always select most active developer  
        * select most active developers of covered methods  
    * anomaly-based developer ranking is consistently better  
        * 60% accuracy vs 38% and 19%  
* study to assess state anomaly detection  
    * based on harvested contracts  
    * harvest object state from both unit tests and acceptance tests  
        * yields seven categories  
            * yes/no accept/unit  
            * if both, then 4x: =,<,>,~  
    * compare recall and precision of harvested states from unit tests vs acceptance tests  
        * These interpretations of recall and precision assume that the acceptance tests are of high quality. Is this justified?  
        * Are you assessing the harvesting method or the quality of the unit tests?  
        * This is only a single case study. Is there more evidence from other case studies?  
        * No discussion of threats to validity?  
    * insert defects and check inferred contract violations  
        * case study shows contract violations evenly distributed along infection chains  
* performance tests  
    * acceptable slowdown for both initial analysis and refinements in all case studies  
  
## 8. Related Work  
  
* It seems strange not to fold this into chapter 2.  
  
## 9. Conclusions  
  
* describes several new and ongoing projects  
  
[1]: http://scg.unibe.ch/bib/Fier09a  
