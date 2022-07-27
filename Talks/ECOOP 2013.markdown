# Searching for Objects  
  
AITO Dahl Nygaard Prize talk  
ECOOP 2013  
  
"I Object, or How I Learned to Stop Worrying and Love OOP"  
  
Object-oriented programming was conceived over 50 years ago, and has consistently proved its value in the construction of complex software systems since the 1980s. Nevertheless, the sentiment that "objects are not enough" is often repeated, and object-oriented programming is commonly bashed by respected computer scientists. We claim that OOP is commonly misunderstood. We describe a personal quest for objects during a period of over 30 years, and argue that we still need to embrace objects if we are to realize the benefits of OOP.  
  
## Problems tackled  
  
* Office objects  
    * How to design and build OO systems?  
        * Where are the objects?  
            * TLA experience  
            * Objects are there for the picking  
    * Objects  
        * 1979 — TLA  
            * missing objects in the code!  
            * programming by example  
                * inspired by QBE  
            * TLA  
                * Where are the objects?  
            * TLA, OIS  
                * Oz  
    * Discovering Smalltalk  
        * What's a Dorado?  
    * Oz  
        * Agents  
        * Rules  
    * Felt need for a general purpose OOPL  
* Active Objects  
    * How to meld objects and concurrency?  
    * Active Objects  
        * 1983 — Oz  
        * 1987 — KNOs  
        * 1985 — Hybrid  
            * Concurrency  
                * Unifying objects and processes  
            * Distribution  
            * Persistence  
            * Transactions  
        * 1991 — Semantics  
            * Object Calculus  
            * Semantic interference  
                * Feature interference  
        * 1993 — Regular Types for Active Objects  
            * Regular Types  
                * Understanding plug compatibility  
        * Next 700 Concurrent OOPLs  
        * 1998 Piccola  
    * Patterns  
* Objects and Components  
    * How to achieve component reuse?  
    * Components  
        * 1990 — Components  
        * Component-Oriented Software Development  
            * "Objects are not enough"  
        * ITHACA  
            * Vista  
            * Components  
            * Frameworks  
        * Scripts  
            * temporal scripts  
            * visual scripting  
            * Styles  
            * DSLs  
            * Components, Scripts and Glue  
                * Piccola  
                    * RQ: what is a pure composition language?  
                * Understanding composition  
                    * Scripting  
                    * DSLs  
            * Helvetia  
        * PECOS  
            * embedded components  
    * Every OO program is a DSL  
        * Programming is modeling  
        * OOP is not enough?  
            * doesn't guarantee composition  
            * need frameworks  
                * white box  
                * black box  
        * components  
            * scripts and glue  
            * DSLs  
        * metamodel = API = language  
            * model = script  
* OO Legacy  
    * How to comprehend legacy software?  
    * FAMOOS  
        * Models  
        * Moose  
            * Story of Moose  
                * agile assessment  
        * Metrics  
        * Visualization  
            * CodeCrawler  
            * Mondrian  
        * Architecture  
            * FCA  
        * Reengineering Patterns  
            * Models  
    * Everything is an object  
        * classes exist only in our minds  
        * source code is class-oriented  
        * tension between objects and classes  
    * Lightweight analyses  
        * contrast heavy weight semantic approaches  
* Object Evolution  
    * How to evolve complex software?  
    * Problems  
        * No real mechanisms to support evolution in most PLs  
        * objects vs classes  
            * Tension between objects and classes  
                * class view obscures run time view  
                * Live objects  
        * objects vs components  
            * Components can be run time or compile time  
        * architecture  
        * types  
            * Pluggable types  
        * IDEs focus on source code, not objects  
    * Smalltalk  
        * Rediscovering Smalltalk  
            * Squeak and Pharo  
                * everything is an object  
            * Pharo  
        * Classboxes  
        * Traits  
            * Talents  
        * Bifrost  
            * Chameleon  
        * Helvetia  
            * PetitParser  
        * Object Flow  
    * Context is a missing abstraction  
        * support for change  
        * Context  
            * COP  
                * Context as a missing abstraction  
* Epilogue  
    * Embrace objects!  
        * Simple principles  
            * Everything is an object  
        * Scripts are complementary to objects  
        * Context is complementary to objects  
  
## Lessons  
  
* Interesting ideas  
    (Positive and negative)  
  
    * examples  
        * Programming by Example  
            * QBE  
        * Squeak by Example  
        * JExample  
  
## Extended Abstract  
  
* Titles  
    * I Object  
    * Objects considered harmful  
    * My Search for Objects  
    * Objects are not enough  
    * Objects are all around you  
    * The Truth about Objects  
* OOP misunderstood  
* Objects are not enough  
* Objects considered harmful considered harmful  
    Link: [harmful.cat-v.org/software/OO_programming/][1]  
  
* CMU - Robert Harper  
    * Object-oriented programming is ... both anti-modular and anti-parallel by its very nature ...  
        Link: [existentialtype.wordpress.com/2011/03/15/teaching-fp-to-freshmen/][2]  
  
* Many criticisms of OOP are missing the point  
* Many debates are non-debates  
    * statically typed vs dynamic  
        * no such thing as an untyped language  
* Ground Truths  
    * OOP is for modeling  
        * A well-designed OO program is a model  
        * It's also a DSL  
    * Everything is an Object  
    * Design principles  
        * RDD  
        * DbC  
  
## Movies  
  
* Desperately seeking objects  
* Objects are all around you  
* The Good, the Bad, and the Ugly  
* How I Learned to Stop Worrying and Love Objects  
  
## Past:  
  
Artifacts of interest  
  
* History  
    * 1972 — APL  
        * compact, expressive  
            * algebraic composition of operators  
            * one liners  
        * write only language  
* Objects  
    * Ten Things I Hate About OOP  
        * OOP is misunderstood  
            * CMU criticism of OOP  
  
[1]: http://harmful.cat-v.org/software/OO_programming/  
[2]: http://existentialtype.wordpress.com/2011/03/15/teaching-fp-to-freshmen/?__sf=1303634503  
