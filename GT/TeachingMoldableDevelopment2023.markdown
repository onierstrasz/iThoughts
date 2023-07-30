# Teaching Moldable Development  
  
Proposal for ESUG 2023  
  
## What is MD?  
  
* Making systems explainable  
    * by making domain objects first class and explorable  
    * expose what is interesting  
* Technical aspects  
    * Moldable tools  
        * Inspector views  
    * Lepiter  
    * Examples  
* Process aspects  
    * Start from questions  
    * Start from live objects  
  
## Challenges and Obstacles  
  
* People focus on technology  
    * GT is the first thing you see  
        * Tendency of people to focus on the first cool thing they see (moldable Inspector, etc)  
    * GT is not as good as my hammer  
* Code-oriented development is the norm  
    * also for Smalltalkers  
    * Hard to learn how to program from live objects  
    * Small demo showing difference between coding from Coder and from a Playground  
  
## Community building  
  
* Social presence  
    * Discord, LinkedIn, Twitter ...  
* Talks and lectures  
* Onboarding with developers, researchers, and hobbyists  
    * Onboarding Patterns  
        * Mentoring  
        * Pairing  
  
## What works?  
  
* MD Best Practice Patterns  
      
    cf Kent Beck's book  
  
    * Learn to find stuff  
          
        Maybe a set of patterns?  
  
        * Tools  
            * MethodFinder  
            * Spotter  
            * Metaprogramming  
            * Coder  
                * References  
                * Examples map  
                * Class/method spotter  
            * Filters  
            * Senders, Implementors ...  
            * Driller  
            * Examples  
        * _Check the video script_  
            * Also create How to pages  
        * What are you looking for?  
            * Where is this implemented?  
            * How do I use this method/class?  
            * Is there a method that does this?  
    * Prototype new behavior in an Inspector playground  
        * Start from a playground  
            * In a Lepiter code snippet  
            * In an inspector playground  
            * Any other playground  
                * They are everywhere!  
        * Write a live code snippet  
            * test it  
            * extract it as a method  
    * From Test First to Example First  
        * Explore and play with the example  
            * Then extract it as a method  
            * Turn it into an example  
            * Add assertions  
            * Use it as a setup for further examples  
    * Design screenshots to tell a story  
        * Show the exploration path  
            * Code snippet -> view  
    * Start from a Lepiter page  
        * then start from a code snippet  
        * then work from inspector views  
    * Moldable views  
        * Inspector views  
        * Actions  
        * Searches  
        * Advices  
    * Replace navigation by view  
        * If you find yourself navigating, build a view  
        * example: slideshows  
            * navigating to the list of priorities  
                * Make a priorities view  
            * searching for the slide methods  
                * create a view with the methods in order  
        * Adjacent views  
            * Building views so you can explore a list next to the exploration view / analysis  
    * If you find yourself executing the same code snippet, create a button  
        * gtActions  
* Other patterns  
    * The Debugger is Your Friend  
    * The Inspector is Your Friend  
