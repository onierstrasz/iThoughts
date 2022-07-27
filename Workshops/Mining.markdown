# Holistic mining  
  
Actionable mining  
  
## What is actionable mining?  
  
* CB: mining information that supports you in making decisions  
    * relevance  
    * impact  
* Should apply to a goal or task at hand  
    * focus on development tasks  
    * could open scope to management etc ...  
* Could also help to confirm that decisions are correct  
* Threat: could be hard to validate  
  
## What's our goal?  
  
* Where do we want to be in 20 years?  
* Where are we now?  
* What decisions are being taken now?  
    * Which bug should I fix first?  
        * When do I need to restructure my system?  
        * Which team should fix it?  
            * SDM: experience from industry  
            * hard to infer teams in open source systems  
    * CB: lots of work has been done on bug triage  
        * not much on design decisions  
    * CD: knowledge sharing —  who should I tell?  
    * SDM: how to best spend our refactoring budget?  
    * ES: impact of future reqts on current design  
        * how do current decisions affect future design?  
        * IS: how will my change impact performance?  
    * Non-functional requirements  
        * performance  
        * security  
    * ON: how to support code reading and focus?  
        * CB: started to work on that  
            * eg mining code reviews  
            * need as much context as possible  
                * how to mine context?  
        * ES: knowing whom to talk to  
            * experts who can explain the code  
            * who can help you with the task  
        * SW: generate ontology to help you understand code and ease design  
    * CD: understanding how your code will be used  
  
## Earlier phases of development  
  
* CB: writing specifications  
    * ON: how about mining ontologies to bootstrap domain models  
    * SW: difficulty — what is similar? what do you mine?  
* ON: mining architectural constraints to help you with new project?  
* CD: how would new features fit into current architecture  
* KK: how can new features share existing code  
* ES: how to build teams? whom to hire?  
* Documentation  
    * avoid having to write it!  
  
## Data sources ...  
  
* from IDE  
* traces  
    * how and where to instrument?  
* reviews  
* ...  
  
## Participants  
  
* Emad Shihab  
    * Defect prediction  
* Siim Karus  
    * make developers redundant  
* Ian (Weiyi) Shang  
    * mine logs  
* Serge Demeyer  
    * mining etc etc  
* Oscar Nierstrasz  
    * software evolution  
* Christoph Dorn  
    * collaboration patterns  
* Stefan Wagner  
    * quality evaluation, assurance  
* Matthias Book  
    * developer effort  
* Chris Bird  
    * tools for developers  
* Katja Kevic  
    * bugs  
