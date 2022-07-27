# Refactoring industry panel: How the Sausage is Made  
  
Link: [dagstuhl.de/en/program/calendar/semhp/][1]  
  
Don Roberts, Ira Baxter, Bill Opdyke, John Brant, Louis Wasserman, Robert Bowdidge  
  
## Introductions + one surprising fact  
  
* Ira: big changes to software  
    * Java is not the only language out there  
* Don: migrating large systems  
    * Programmers don't want behaviour preservation  
* John: migrate crap from one language to another  
    * Nobody refactors  
* Bill: managing legacy systems  
    * Business appreciates PhDs  
* Louis: large-scale refactoring  
    * If a human says its correct, I don't care about proofs  
* Robert: large-scale API migrations  
    * XCode project manager wanted refactoring mainly as marketing plus  
  
## Friedrich: given that behavior preservation is not an issue, what is the future of refactoring?  
  
* Robert: there is always a risk of breaking things  
* John: sometimes I really want BP  
    * That's why I test  
* Don: getting things wrong is a feature  
* Ira: test, don't prove  
    * It works well enough  
    * Do you trust the proofs?  
* Bill: BP, yes and no  
    * Backward compatibility is often an issue  
        * Louis: how do you check?  
        * Mostly testing  
    * Want to leverage new opportunities  
* Robert: How many holes in RB?  
    * Don: not many  
        * Smalltalk is easier than Java  
* Bill: programmers trust their own skills more than a tool  
  
## Simon: what research project would you spend 2 million $ of NSF money on?  
  
* Don: start from scratch on a new IDE  
* John: Framework updates  
    * How to migrate between versions  
* Ira: analysis tools  
    * Nobody does refactoring just for fun  
    * You need to understand code before you refactor  
* Robert: infrastructure for analysis and program manipulation  
* Bill: migration to new technologies  
    * Cloud, multicore etc  
    * Existing code needs to be adapted  
  
## Emerson: what can I tell my students about balancing tradeoffs in refactoring  
  
* Don: if I can do it in a few minutes, go ahead  
    * Balance long-term cost of refactoring over cost of maintenance  
* John: code smells alone are not enough  
    * Risk of breaking something is too high  
    * Robert: need a maintenance argument first  
* Ira: lots of code is cloned  
    * Take a closer look  
    * The presence of clones indicate there is a concept worth cloning  
    * Look at the parameters  
        * If they differ, there's a bug  
  
## Oscar: as a research, where should I look for a good industry partner?  
  
* Ira: companies don't see the value of research  
* Don: they think their source code is their secret sauce  
    * Ralph says companies should give away their code to bankrupt their competition  
* Bill: there are different kinds of companies  
    * Some see software as an enabler  
    * Look in non-traditional places  
        * Eg Smaller tech companies  
        * Robert: probably not; they're rushing  
        * Ira: you have to make the benefit explicit  
  
## Peter: do we need more interactive tools or offline transformation tools?  
  
* John: interaction is limited  
    * Refactoring options are clumsy in eclipse  
    * Robert: that's not the same as "interactive"  
* Ira: programmers don't do mass changes  
    * Teams do  
    * The needs are different  
* Don: need to distinguish kinds of refactorings  
    * Level 1: renaming  
        * Joe programmer  
    * Level 2: extract method  
        * Agile developer  
    * Level 3: API migration  
  
## Mohsen: what kind of research do you expect academics to do that industry can't  
  
* Ira: need descriptions of PLs so we can use them to produce reliable refactorings  
    * Don: a formalism to describe all (real) PLs would be great  
        * Toy formalisms are not useful  
* Robert: aim for what you could do in IDEs if (when) machines are ten x faster  
    * What if we had Siri for programmers?  
* Bill: long-term, speculative, disruptive research  
  
## Danny: what are the barriers to adopting our results?  
  
* John: academic tools often don't scale up  
* Louis: the tools should integrate into our environment  
* Robert: the results should apply to actually perceived problems  
  
## Chris: what empirical evidence for our tools would you like?  
  
* Bill: studies should be of convincing scale and relevance with real programmers  
    * Ira: I'll scream if I see another study with 5 students!  
* Robert: tools on the web enable data gathering  
    * Collaborate with web-based companies  
* Ira: if you can demonstrate that 6% of the engineering budget will be saved, people will sit up and notice  
  
## Don: What should we be teaching?  
  
* Program transformations  
* Robert: don't refactor manually  
    * Think in terms of scale  
* Don: students should learn that programs are syntax trees  
    * Not just text  
    * Then you think differently about transformation  
    * Ira: I think of them as circuit diagrams  
* Bill: students should have good coding and anlysis skills  
    * They need an incremental mind set  
    * Then refactoring comes naturally  
* John: students need to learn how to read a program  
  
[1]: http://www.dagstuhl.de/en/program/calendar/semhp/?semnr=14211  
