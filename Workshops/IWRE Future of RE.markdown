# IWRE: Future of RE Session  
  
IWRE 2012  
Afternoon Brainstorming/Discussion on  
the Future of Reverse Engineering  
  
## Models  
  
* Easier to query models than code  
    * Not just code models  
    * Round-trip  
        * How to relect model changes back to code?  
* RD: Many different kinds of models needed  
    * Complicates the story  
* PD: Missing key model information in code  
    * Missing link to domain concepts  
* ON: File based view forces need for RE since we lose links  
    * Need IDE to maintain all links  
    * RD: Links are not enough  
* Misra: Most domains lack standard domain models (like banking)  
    * It used to be that business drives business  
        * Now IT drives busines  
    * ON: Little incentive to build common models  
        * Considered as core assets  
        * Needs a push to develop standards  
    * Works well in semiconductor domain  
        * PD: Obliged to share since you cannot develop on your own  
  
## Techniques  
  
* Most focus on code  
    * Others take other artifacts into account  
        * Reqts  
        * Design docs  
        * ...  
    * How to exploit other information sources?  
* Need way to link code and other artifacts  
    * Related to why we need to do RE  
* RD: Better yet, we should have executable models  
    * Could be a good strategy for forcing artifacts to stay in sync  
    * Require consistency checks for evolution  
    * Need links between models, tests and code ... ?  
        * Could imagine cool prototype of extreme modeling environment ...  
        * cf CinCom Exploratory Modeling?  
  
## Application areas  
  
* New application domains for RE?  
    * Special challenges in migrating eg legacy app to cloud  
