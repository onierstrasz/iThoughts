# Simula 50 OOP talk  
  
## Outline  
  
* Prologue — Where are the objects?  
    Link: [fineartamerica.com/featured/the-battle-nicolas-poussin.html][1]  
      
    Image: Guernica?  
  
    * Experience with TLA  
        * Opening up OFS  
* Part 1 — Call to Arms  
    * Simula 1962/1967  
        Link: [npr.org/sections/health-shots/2016/02/02/465188104/phosphorus-starts-with-pee-in-this-tale-of-scientific-serendipity][2]  
  
        * Origins of Simula — queues vs stacks  
            Link: [campus.hesge.ch/daehne/2004-2005/langages/simula.htm][3]  
  
            * Process (later object) as unifying concept  
            * Started as simulation language; became GPL  
                  
                Dahl and I started out to make a simulation language, but of course we have spent so much time with all these people working on general purpose languages, that I must admit we have to some extent fallen in love with the concept of general purpose languages.[<u>[60]</u>][4]  
  
            * Inheritance 1967  
                Link: [fineartamerica.com/featured/the-prodigal-son-receiving-his-portion-of-the-inheritance-bartolome-esteban-murillo.html][5]  
  
                * "Prefixing" — adding "layers" to classes  
                      
                    Class and Subclass Declarations Paper  
  
            * discovery that OO is a general paradigm  
                  
                "In spite of the success of Simula I as a practical tool it became increasingly clear that the activity/process concepts, if stripped from all references to simulated time, would be useful for programming and system design in general." (Dahl 2001)  
  
            * Dahl early history paper  
                Link: [olejohandahl.info/old/birth-of-oo.pdf][6]  
  
        * Imagined early history of Simula  
        * The scandinavian view  
            * Programming is Simulation  
                * Programming is modeling  
            * KN: Programming is Understanding  
    * Smalltalk 1971/1980  
        * Smalltalk -- new generation of computers need “objects all the way down”  
            * Tower of turtles  
                Link: [kk.org/thetechnium/recursive-gener/][7]  
  
            * Escher lizards  
                Link: [pinterest.com/pin/83105555593898884/][8]  
  
        * Alan Kay demoing ST to KN  
            Link: [heim.ifi.uio.no/~gisle/in_memoriam_kristen/][9]  
              
            He not only understood everything I said, but often told me what I was going to show him next.  
  
        * Mystical view  
            * Ingalls — objects talking to objects  
                  
                “Instead of a bit-grinding processor … plundering data structures, we have a universe of well-behaved objects that courteously ask each other to carry out their various desires.” — Ingalls 1981  
                Design Principles Behind Smalltalk, Byte Magazine, August 1981.  
  
            * Programming is objects talking to objects  
                * Computation is simulation  
                      
                    Ingalls quote P2 lecture 2  
  
        * Quotes  
            * Everything happens somewhere else  
    * Data abstraction  
        * Liskov 1974  
            Link: [en.m.wikipedia.org/wiki/Abstract_data_type][10]  
  
        * "A stack is not an object"  
              
            James Noble paraphrasing Alan Kay.  
  
    * Back to TLA  
        * Smalltalk Byte issue 1981  
            * Oscar: What's a Dorado?  
        * Oz experience  
* Part 2 — The Golden Age  
    * Proliferation of OO languages (1980s)  
        * C++ 1979/1983  
            * C with classes  
                * Just like Simula is "Algol with classes"  
            * OOP Is data abstraction + inheritance  
                  
                Decide which classes you want; provide a full set of operations for each class; make commonality explicit by using inheritance.  
                What is ‘‘Object-Oriented Programming''? (1991 revised version)  
  
        * Objective C 1981/1982  
            Link: [james-iry.blogspot.it/2009/05/brief-incomplete-and-mostly-wrong.html][11]  
              
            1986 - Brad Cox and Tom Love create Objective-C, announcing "this language has all the memory safety of C combined with all the blazing speed of Smalltalk." Modern historians suspect the two were dyslexic.  
              
            [james-iry.blogspot.it/2009/05/brief-incomplete-and-mostly-wrong.html][12]  
  
        * Eiffel 1985  
            * DbC  
            * OOSC is based on the objects manipulated rather than the functions performed  
                  
                OOSC 2nd edition, ch 5.4  
                See also defn 2 ch 6.5  
  
        * Object-based concurrency  
    * Ralph Johnson — Three views of OOP  
          
        "I explain three views of OO programming. The Scandinavian view is that an OO system is one whose creators realise that programming is modelling. The mystical view is that an OO system is one that is built out of objects that communicate by sending messages to each other, and computation is the messages flying from object to object. The software engineering view is that an OO system is one that supports data abstraction, polymorphism by late-binding of function calls, and inheritance."  
  
        * Scandinavian view: programming is modeling  
        * Mystical view: programming is objects talking to objects  
        * Software Engineering view: programming is data abstraction + ...  
            * Wegner and Zdonik 1988  
                Link: [scg.unibe.ch/scgbib][13]  
  
                * Wegner 1987: OOP = Objects + classes + inheritance  
                      
                    **Dimensions of object-based language design**  
  
                * Incremental reuse  
                * Principle of substitutability  
                * Wegner and Cardelli 1985  
                    Link: [scg.unibe.ch/scgbib][14]  
  
    * Early OO hype  
        * Reuse by inheritance  
            * Early obsession with reuse  
            * Programming is reuse  
        * Same models for analysis, design and implementation  
            * “It's objects all the way down” applies to the process (Coad? Mellor?)  
            * Compare to model-driven approaches today!  
        * OO methods  
            * Resilient ideas  
                * DbC  
                * RDD  
                    * Single Responsibility Principle  
                    * Delegate responsibility  
                * Use cases  
            * Early methods  
                * Shlaer-Mellor  
                    * Derive design from analysis  
                    * AKA MDD?  
                    * Modeling is programming  
                * Booch  
                * Coad-Yourdon  
            * Ed Berard  
                Link: [ipipan.gda.pl/~marek/objects/TOA/OOMethod/mcr.html][15]  
  
            * Principles  
                * Separate interface from implementation  
                    * Encapsulation, Abstraction and Information Hiding  
                    * Program to an Interface, not an Implementation  
                    * The open-closed principle  
                * Agile practices  
                    * Refactoring  
                        * Code smells  
                    * Testing  
                * Law of Demeter  
    * OO design diagrams  
        * Over 100 different diagrams by ca. 1992  
        * "Bubbles and arrows don't crash"  
            * Why not use the OOPL as the modeling language?  
            * Programming is modeling  
        * UML  
* Part 3 — Rebellion  
    * Objects are not enough  
        * “Objects are too slow” (1980s dogma)  
        * Components  
            * Component-based development (what's a component? we don't know what they are but we know we need them)  
            * Programming is plugging together components  
                * Programming is scripting  
        * Frameworks  
            * OO Frameworks  
            * Component frameworks  
            * Programming is specializing a framework  
        * Design patterns  
        * XP  
        * DSLs  
        * MDD  
    * Type wars (?)  
        * Growth of type systems  
        * Increased popularity of dynamically typed systems  
        * What does this mean?  
            * Different type systems for different needs  
            * Type systems too complicated  
            * But people want "security"  
    * Odds  
        * The discovery that Applets are a bad idea  
        * The discovery that JS is useful  
* Epilogue —Peace  
  
[1]: https://fineartamerica.com/featured/the-battle-nicolas-poussin.html  
[2]: http://www.npr.org/sections/health-shots/2016/02/02/465188104/phosphorus-starts-with-pee-in-this-tale-of-scientific-serendipity  
[3]: http://campus.hesge.ch/daehne/2004-2005/langages/simula.htm  
[4]: http://campus.hesge.ch/daehne/2004-2005/langages/Simula.htm#note60  
[5]: https://fineartamerica.com/featured/the-prodigal-son-receiving-his-portion-of-the-inheritance-bartolome-esteban-murillo.html  
[6]: http://www.olejohandahl.info/old/birth-of-oo.pdf  
[7]: http://kk.org/thetechnium/recursive-gener/  
[8]: https://www.pinterest.com/pin/83105555593898884/  
[9]: http://heim.ifi.uio.no/~gisle/in_memoriam_kristen/  
[10]: https://en.m.wikipedia.org/wiki/Abstract_data_type  
[11]: http://james-iry.blogspot.it/2009/05/brief-incomplete-and-mostly-wrong.html  
[12]: http://james-iry.blogspot.it/2009/05/brief-incomplete-and-mostly-wrong.html  
[13]: http://scg.unibe.ch/scgbib?query=Wegn88a&display=abstract  
[14]: http://scg.unibe.ch/scgbib?query=Card85c&display=abstract  
[15]: http://www.ipipan.gda.pl/~marek/objects/TOA/OOMethod/mcr.html  
