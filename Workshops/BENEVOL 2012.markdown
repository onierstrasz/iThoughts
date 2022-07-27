# BENEVOL 2012  
  
## Spreadsheet evolution  
  
* Felienne Hermans  
* 50% business decisions based on spreadsheet data  
* extract data flow diagrams from spreadsheets  
  
## Applying Biological Evolution to Software Ecosystems: A Case study with Gnome  
  
* *Maelick Claes*, Tom Mens, Philippe Grosjean, Alexander Serebrenik  
* Evolution in software ecosystems much faster than in biological systems  
* draws analogies between gene transfer in biological systems and knowledge transfer in  software  
  
## Software Evolution – A Product-Line Perspective  
  
* Sandro Schulze, Ina Schaefer  
* Focus on use of annotations (cpp) to encode variability  
    * how does variability evolve?  
    * are co-changes consistent?  
    * evolutionary patterns or smells?  
* Spaces of variability  
    * configuration space  
        * feature modeling,  
            Kconfig, CDL  
  
    * compilation space  
        * Kbuild, makefile  
    * implementation space  
        * cpp, coloredIDE  
  
## Measuring Ecosystem Health: Creating “Stock Tickers” for Open Source Ecosystems  
  
* Slinger Jansen  
* help developers pick the healthier ecosystem  
* health  
    * longevity and propensity for growth  
        * Den Hertigh model  
    * robustness  
    * productivity  
    * niche creation  
* monitor commits to many projects  
    * not just one project  
  
## Making Refactoring Safe in the Presence of Meta-Data  
  
* Carlos Noguera  
* Approach: find dependencies, refactor, check dependencies  
* Using query language to specify additional constraints on refactorings  
  
## Evaluating Software Quality Practices in Europe: Preliminary Results  
  
* Javier Perez, Alexander Serebrenik, Tom Mens, Jorge Pinna Puissant  
* Survey Oct-Nov 2012  
    * 46 questions  
    * 171 useful responses  
* business processes  
    * 40-80% use  
    * more in big companies  
  
## Evaluating change impact on component based design using feature models  
  
* Nicolas Dintzner, Martin Pinzger  
* Can we design our system today so that future external components can easily be integrated?  
* Idea: use feature models to express changes  
    * Based on various configurations, infer possible feature interactions  
  
## Migrating Legacy Secured Systems to Model-Driven Adaptive Secured Systems  
  
* Phu H. Nguyen, Jacques Klein, Gregory Nain, and Yves Le Traon  
  
## A Framework to Support Development and Evolution of Adaptive Data-intensive Systems  
  
* Marco Mori and Anthony Cleve  
* uses mapping between context and feature models  
* reason about feasible configurations  
  
## Taming Obliviousness in Aspects using Data-flow Analysis and Design by Contract  
  
* Tim Molderez, Dirk Janssens  
* . @TimMolderez : aspects are like ghosts. Code is unaware that it may be advised by a pointcut. #benevol2012  
* perform advise impact analysis to detect possible conflicts  
    * find all advise eg assignments, that may affect base code  
    * runs continuously in background  
        * must be incremental!  
* advise should respect Liskov substitution principle  
    * respect same contracts  
  
## The Social (R)evolution  
  
* Peggy Storey keynote  
* Move from tools as a "space" to a "place" for collaboration  
    * github  
    * sourceforge  
* social media  
    * Tim Reilly: "Architecture of participation"  
    * social tagging  
        * TagSEA  
            * using social bookmarks to create "waypoints" through software  
                * save them  
                * share them  
            * eclipse tool  
            * jazz integration  
    * blogging  
        * why do people blog?  
            * determining reqts  
            * domain concepts and fnl reqts  
            * documenting APIs  
    * Q&A websites  
        * StackOverflow  
            * median answer time is 11 minutes  
        * Reputation  
            * Coderwall  
            * Masterbranch  
    * Social coding  
        * github  
    * wikis  
        * Ward Cunningham created wikis to support coding  
* What do they bring  
    * "Understanding Media"  
        * Marshall McLuhan  
        * Medium  
            * Enhances  
                * what does it amplify?  
            * Reverses  
                * how does it "flip" when pushed to the limits  
            * Obsolesces  
                * what does it make obsolete?  
            * Retrieves  
                * what does it make relevant again?  
    * Move towards the "Social Progammer"  
        * Software Ecosystems  
            * Based on "communities of practice"  
* Software Evolution  
    * Lehman's Law's  
    * Fred Brooks  
        * no silver bullet  
        * essential vs accidental complexity  
            * HL languages address accidental complexity  
