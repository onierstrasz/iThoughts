# Student Projects  
  
MSc, Bachelors and SC seminar projects  
  
## Duck Typing  
  
* Definition  
    *  A method is duck-typed if it has the same signature as another method, neither of which overrides a similarly typed method of a common parent.  
    * Example: #value: is understood in Pharo Smalltalk by both blocks and symbols.  
* Research Questions  
    * RQ Is it possible to accurately detect duck typing by static analysis? (What is the accuracy of naive approaches? How common are false positives?)  
    * RQ How is duck typing used idiomatically? (Are there common use cases?)  
    * RQ How frequently is duck typing implemented by code clones?  
    * RQ How often can duck typing be subsumed by established language mechanisms? (Eg aspects, mixins/traits, extension methods?)  
* Related work  
    * http://en.wikipedia.org/wiki/Duck_typing  
    * http://stackoverflow.com/questions/4205130/what-is-duck-typing  
    * Including both static and dynamic typing in the same programming language  
    * Nested Refinements: A Logic for Duck Typing  
* Which Languages:  
    * C++ [using templates] — Refactoring Towards Seams in C++  
    * JavaScript — JS: The Definitive Guide  
    * Ruby — Programming Ruby  
  
## git practices  
  
* - interview developers for idiomatic git usage  
* - mine repositories to validate usage patterns  
* - develop high-level interface to git to support these patterns  
  
## Structure parsing  
  
* Parse source code with island parser using parens () {} [] only  
    * Use bounded seas  
* Research Questions  
    * Do structure signatures correlate highly with specific PL constructs?  
        * Signature = paren path in AST  
    * How can accuracy be improved?  
        * Tokenization of strings and comments  
        * Other classes of "parens"  
  
## Mining developer needs from StackOverflow  
  
## Implementing traits with Aspects  
  
* Related work  
    * John Reppy typed traits  
    * Emerson & Phil ... extracting traits for refactoring  
    * Look at Scala!  
    * Friedrich Steimann -- Implicit Invocation of Traits  
  
## Trait Collaborations  
  
* Using traits to express roles?  
    * Friedrich Steimann -- trait collaborations  
        * Possible research collaboration?  
* Related work  
    * Review SH ObjectTeams  
    * Jan Hannemann, Gregor Kiczales: Design pattern implementation in Java and aspectJ. OOPSLA 2002: 161-173  
  
## Inferring transformations from examples  
  
* Veselin Raychev (infers eclipse refactoring sequence)  
* Don Batory (abstracts from identifiers, relativistic refactoring)  
  
## Prototype data model  
  
* - idea is to have a bottom-up way to define schema-less databases  
    * - objects have properties, which can be other objects (JS like)  
    * - Excel-like interface for entering, navigating, querying  
    * - automatically join to extend virtual tables  
* Related work  
    * Look at RDF (Resource Description Framework) triples as a way to express models, metamodels and conformance relations. ...  
    * - cf NoSQL; mongo-db  
    * - cf triplestores  
    * - cf metagraphs (see separate notes)  
    * - cf metamodel inference  
    * - cf view update  
  
## Visualization  
  
* How do different visualization techniques map to common questions? what are guidelines for selecting a kind of visualization?  
  
## COP PL  
  
* * Name: "Smallbox" or "Scope"  
* - Context as the core mechanism.  
    * - a better package system with context, dependency injection and versioning  
    *  - Should express: oop, prototypes, cop, subjects, aop, modules, namespaces, dynamic updates, reflection, instrumentation, scoped reflection, ...  
* - Look at Newspeak, Piccola, Classboxes, Changeboxes, module systems ...  
* COP use cases  
    * - extensions (monkey patching)  
    * - scoped reflection  
    * - localization  
    * - design patterns (?) -- Visitor ...  
        * - Factory method (cf Chin, Millstein, ECOOP 08)  
    * - distributed contexts?  
    * - binding unit tests to mock objects (sandboxing)  
    * - the expression problem?  
* COP ideas  
    * - Handle state by storing it in the context  
    * - Contexts are like Classboxes, but at runtime  
        * - when an object enters a context, it is decorated with extensions  
        * - may be methods or state  
        * - could also be sub-method  
        * - extensions are uninstalled when the object leaves the context  
    * - Can an object be in multiple contexts at the same time?  
    * - Context could depend on collaboration -- context comes into play when communicating ...  
    * - Check out Kim Mens Ambience language  
    * - "Software development today is a bit like a cooking school where we only learn how to write recipes, but we never actually cook or taste the food."  
  
## Executable modeling language  
  
* - composable concurrent state machines with input and output ports  
* - graphical rep  
* - map to concurrent execution  
* Model centric  
    * - synergy between language and model  
    * - modeling language, conforms to explicit meta-model  
    * - multiple languages; multiple views of models  
    * - Models are graphs => need generic graph definition language!  
* Visual Modeling Languages  
    * - Naked Objects  
    * - ProGraph  
    * - ThingLab  
    * - AGG  
    * - PointDragon (pointdragon.com)  
    * - SubText  
