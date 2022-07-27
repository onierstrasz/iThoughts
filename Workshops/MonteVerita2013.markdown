# Monte Verita 2013  
  
http://www.ifi.uzh.ch/seal/events/ASDS-2013.html  
  
## Laurie Williams  
  
* Where Should I Look? Using Metrics to Prioritize Verification Efforts  
* Using Machine Learning to identify actionable bug alerts  
    * Sarah Smith Heckman  
    * Static Analysis tools  
        * can generate lots of false positives  
        * need to sift through results  
    * triage  
        * actionable alerts  
            * faults  
            * code conventions  
        * unactionable alerts  
            * don't want to fix  
            * not a problem  
            * to hard to fix  
    * try to automatically predict actionable alerts  
        * artifact attributes  
        * machine learning  
    * study many metrics  
        * see which ones give good predictions  
* Finding Security Vulnerabilities  
    * Use metrics to predict fault locations  
    * Only 1-2% files contain vulnerabiliies  
    * "Big problems are attached to little problems"  
* Developer Activity Metrics  
    * Andrew Meneely  
    * Unfocused contribution: many people working on many files  
    * vulnerable files appeared where teams overlapped  
* Complexity Metrics  
    * Yonghee Shin  
* Traditional metrics  
    * Yonghee Shin  
    * "Needle in haystack"  
        * Paper w Tom Zimmermann  
    * looking for small percentage of faults and vulnerability  
* Summary  
    * watch for many people accessing the same code  
        * Cause or effect?  
        * hummingbirds that change many files  
        * watch for people from other teams changing files  
    * complex code is less secure  
  
## Audris Mockus  
  
* Quantifying and Conveying Risk in Software Development  
* Avaya: software for call centers  
    * evolution of globally distributed development  
  
## "Lightening talks"  
  
* Emad Shihab  
    * Proactive Detection of Risky Software Changes  
    * Catch bugs before they enter code  
    * Provide help to integrators as they merge in changes  
* Serge Demeyer  
    * An N-gram Analysis on the complete corpus of MSR papers  
    * paper submitted to MSR  
* Prem Devanbu  
    * The Naturalness of Software  
    * English, Tamil, German are rich languages  
        * but most speech is simple, boring, repetitive  
        * enables speech recognizers etc  
    * Ditto for programming languages  
        * can use statistical models for automatic translation ...  
        * Code is predictable  
        * Exploit to suggest next token to developer in IDE  
* Ingo Scholtes  
    * Categorizing Bugs with Social Networks: A Case Study on Four Open Source Software Communities  
* Abram Hindle  
    * Green Mining: What Can We Tell Developers?  
* Rob DeLine  
    * The Stat! environment for data science  
  
## PhD Chit Chats  
  
* Jan Kurs  
    * Inferring grammars from code  
* Martin Brandtner  
      
    UZH, H Gall  
  
    * Fostering SW Quality Assessment  
* Eric Bouwers  
    * Software Architecture assessment  
    * Lightweight Sanity Check for Implemented Architectures  
  
## Martin Robillard  
  
* Recommending API Documentation  
* APIs are hard to use  
    * only 13 of 20 developers could solve a simple api task in 40 minutes (avg 27")  
* Java SE doc is 2.5M words!  
    * = 5x War and Peace  
* Lots of documentation is redundant or not useful  
    * Tries to infer what is important  
* Try establish links between documents  
    * Two techniques  
    * Recodoc  
        * Dagenais  
        * Barthélémy Dagenais, Martin P. Robillard: Recovering traceability links between an API and its learning resources. ICSE 2012: 47-57  
            Link: [tinyurl.com/ckcwn8s][1]  
  
        * Recodoc automatically infers links between code documents with 96% recall and precision: http://t.co/6AsPP9MCVF @mp_robillard at #asds2013  
    * ACE linker  
        * Rigby  
        * ICSE 2013  
            Link: [tinyurl.com/cwxudmq][2]  
  
        * use island grammars to find code elements in context of informal documentation  
  
## Ahmed Hassan  
  
* Mobile Apps: Research Challenges  
    * improve the app  
        * crash mining  
        * review mining  
    * expand market  
        * user perception in different markets  
        * compare versions of multi platform apps  
        * how much to test on multiple devices?  
            * the top market devices are not the ones reviews come from!  
    * raise rank  
        * need to be in top 2%  
        * 33% of all apps have 5 stars; 33% have just 1 rater!  
        * global ratings are very resilient  
            * if your app sucks, better make a new one  
    * monetize app  
        * up to 28 libraries for ads  
            * not guaranteed to get an ad  
            * so talk to multiple ad libraries!  
            * sometimes up to 90% code is to talk to the ad library  
        * 14% of releases just update the ad code!  
            * many ad libraries leak memory  
            * video ads make more money  
        * 30% apps are using dead app libraries!  
  
## Workshop topics  
  
* Fundamental challenges in mobile  
    * Mei  
    * Balint  
* Mining unstructured Data/NLP + code etc  
    * Abram  
    * Eranos  
* Holistic mining  
    Actionable mining  
  
    * Christoph  
    * Emad  
    * Pioda  
* Platforms & Tools for Mining  
    * Diomidis  
    * walking  
* Personalization & Presentation aspects  
    * Annie  
    * walking  
* Big data mining++  
    * Mircea  
    * JIT recommenders & usability for Dev  
    * walking  
* Productivity ++  
    * Reid  
    * walking  
* Low interest  
    * Corr. and cause  
    * Social support and SV requests  
    * SE in the JS world  
    * NOPL vs NOML  
  
## Holistic mining  
  
Actionable mining  
  
## Emerson Murphy-Hill  
  
* Helping Developers find Useful Tools  
* Some useful tools  
    * Coverity  
        * Found 500 bugs in linux kernel  
    * Brad Myers refactoring tool  
        * simultaneous renaming  
    * Whyline tool  
* People aren't using useful tools  
    * they don't use refactoring tools  
        * most refactoring is manual  
        * Open Resource plugin  
            * navigation shortcuts  
            * timesaver  
    * why not?  
        * power  
        * usability  
            * bad error messages  
        * awareness  
            * you know you need it  
                * search  
            * you don't know you need it  
                * refactoring  
                * navigation  
                    * Open Type Hierarchy  
                * static analysis  
                    * Find Bugs  
* How do people find innovative tools?  
    * Don't require awareness before use  
        * code completion in eclipse  
            * wait, and stuff pops up  
            * as opposed to command line auto complete  
                * requires shortcut  
        * spell checker  
            * environment underlines misspelled words for you  
        * challenge: how to redesign tools this way?  
            * refactoring  
                * BeneFactor  
                    * highlight code  
                    * cut it  
                    * enter call to new method  
                    * tool suggests to extract method  
            * Lesson: identify first part of tool activity  
                * detect it  
                * offer support  
    * Tool recommendation  
        * Observe what you are doing  
        * suggest tools that might help  
        * examples  
            * Spyglass  
            * Collaborative filtering  
    * Connect people together  
        * four reasons people sit together  
            * relevance  
            * real problem  
            * self discovery  
            * context association  
                * associate tool with context of real problem  
        * pair programming  
            * personal, contextual, efficient  
            * doesn't work well in remote situations  
                * can't see how to trigger actions  
        * screencasts  
            * good for remote and async  
            * not personal  
                * less relevant  
            * hard to make  
            * How to help developers discover tools from peers?  
                * Keep screencasts of their work  
                * Keep track of tools used  
                * Server makes recommendations  
                    * what's popular  
                    * based on context, what's relevant  
                    * tools used by people I know ...  
  
## Lightning talks 2  
  
* Yuriy Brun  
    Link: [people.cs.umass.edu/~brun/][3]  
  
    * Reducing notification delays: What will happen if I change my code?  
    * Help developers make decisions based on data  
        * Can we predict the future to help make decisions?  
        * Eclipse Quick Fix Scout  
            * tries all the quick fixes and reports results  
            * prioritize by best results  
            * OOPSLA 2012  
                Link: [tinyurl.com/d8qp9g6][4]  
  
            * quick-fix-scout.googlecode.com  
                Link: [quick-fix-scout.googlecode.com][5]  
  
        * Crystal  
            * Track possible changes to be pushed/pulled  
            * Shows what could be merged  
            * Tracks when valid merges could break the build  
                * also detects performance problems  
            * Crystal: a proactive conflict detector FSE 11  
                Link: [tinyurl.com/cowuwfm][6]  
  
            * crystalvc.googlecode.com  
                Link: [crystalvc.googlecode.com][7]  
  
        * Solstice Eclipse Plug-in framework  
            * bitbucket.org/kivancmuslu/solstice  
                Link: [bitbucket.org/kivancmuslu/solstice][8]  
  
* Bram Adams  
    * So, you are saying that our software productivity is screwed by ... the release engineer?  
    * systems are growing  
        * more releases  
        * more frequent releases  
    * empirical study  
        * smaller testing scope  
        * smaller testing team  
        * change in test priorities  
    * how to focus testing?  
        * need a dedicated release IDE  
* Gail Murphy  
    * What is productivity anyway?  
        * more = better  
            * early manufacturing  
        * less waste = better  
            * Ford  
            * just in time  
            * lean manufacturing  
        * value = better  
            * Software  
            * lean startup  
            * local validated learning  
                * even if nobody liked the feature you developed, maybe you learned something valuable  
            * We could build tools to help developers focus on where to produce value  
* Mei Nagappan  
    * Towards Improving Statistical Modelling of Software Engineering Data: Think Locally, Act Globally!  
        * < 10% of files in eclipse have bugs  
        * < 1% have security problems  
    * how to build better software models?  
        * local models fit better than global models  
        * avoid overfitting!  
        * use different clustering algorithms  
* Hongyu Zhang  
    * Effective Management of Bugs  
    * 3 approaches  
        * Duplicate bug detection  
            * CIKM 2012  
                Link: [dl.acm.org/citation.cfm][9]  
  
            * BugSim tool  
                * learning algorithm to rank duplicate bug reports  
        * Bug localization  
            * ICSE 2012  
        * Bug-fixing time prediction  
            * ICSE 2013  
* Daniel German  
    * How is distributed version control software being used?  
        * git  
        * mercurial  
    * The Promises and Perils of Mining Git  
        Link: [macbeth.cs.ucdavis.edu/gitminingpaper.pdf][10]  
  
    * Continuous mining  
        * every three hours check 5000 repos around the world  
            * what is new?  
            * what has been deleted?  
  
## Lightning talks 3  
  
* Diomidis Spinelli  
    * sgsh: Scatter-gather operations on large data sets and streams  
    * using unix tools to mine data  
    * sgsh  
        * process  
            * streams  
            * bug data sets  
            * using  
                * existing unix tools  
        * adds special sh mechanisms  
            * scatter block  
            * store  
            * stream  
        * copy outputs to multiple streams  
            * store in variables  
            * gather results together  
* Liliana Pasquale  
    * An Asset-Centric Approach for Engineering Adaptive Security  
* Christoph Dorn  
    * Towards Collaboration-centric Pattern-based Software Development Support  
    * collaboration patterns  
        * how software engineers collaborate on tasks  
        * master-worker pattern  
        * publish-subscribe applied to people  
* Dustin Wüest, Martin Glinz  
    * Liberating Software Engineers from the tyranny of a strict modeling language  
    * Want to bridge free-form sketching and semi-formal modeling tools  
    * Also want co-evolution of models and metamodels  
    * FlexiSketch tool  
        Link: [tinyurl.com/bueyz7m][11]  
  
        * Three activities  
            * Modeling  
                * freeform sketching  
            * Metamodeling  
                * add annotations  
                * automatically infer metamodels from models  
            * Sketch recognition  
    * See also Andre van der Hoek  
        * Calico tool  
        * no metamodel built  
* Andrian Marcus  
    * Improving Developer Productivity via Summarization  
    * Help developers read less code  
    * Problem  
        * You can't trust comments!  
    * summarization  
        * short  
        * informative  
        * geared to specific users  
        * specific tasks  
    * Challenge  
        * how to automatically summarize code?  
    * Asked people to summarize programs  
        * consistent length  
            * 8 words for lasses  
            * 18 or packages  
        * prefer nouns  
        * 50% terms from code  
        * class and method names are not the winners  
        * disagreement between perceived and actual importance of code elements  
            * eg assumed comments, but not really used  
    * Idea  
        * look at emails  
            * extract text that describes code  
        * what works?  
            * LSI is worse than random  
            * Lead word + VSM is the best  
* Matthias Book  
    * Augmenting Collaboration of Heterogeneous Teams in an Interaction Room  
    * Use rooms with whiteboards  
        * Informal sketches for interaction, process, migration etc  
        * annotate with magnets and icons  
        * focus on parts that bring most value  
  
[1]: http://tinyurl.com/ckcwn8s  
[2]: http://tinyurl.com/cwxudmq  
[3]: http://people.cs.umass.edu/~brun/  
[4]: http://tinyurl.com/d8qp9g6  
[5]: http://quick-fix-scout.googlecode.com  
[6]: http://tinyurl.com/cowuwfm  
[7]: http://crystalvc.googlecode.com  
[8]: http://bitbucket.org/kivancmuslu/solstice  
[9]: http://dl.acm.org/citation.cfm?doid=2396761.2396869  
[10]: http://macbeth.cs.ucdavis.edu/gitminingpaper.pdf  
[11]: http://tinyurl.com/bueyz7m  
