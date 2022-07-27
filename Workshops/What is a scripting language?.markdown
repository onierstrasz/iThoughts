# What is a scripting language?  
  
## Oscar's notes  
  
* Paradigm  
    * A script instructs a group of actors what roles to play in a theatre piece  
        * applications = components + scripts + glue  
            * actor = software component  
            * script = configuration  
            * glue = adaptation to required interface/contract  
        * distinguish scripting from scripting languages  
* Intent  
    * High-level description of configuration  
        * Easy to specify  
        * Easy to understand  
        * Easy to change  
        * Easy to reason about  
* Related concepts  
    * Architectural Description Languages  
        * focus on architectural constraints and properties  
    * Configuration Languages  
        * Mostly about build configuration  
            * Essentially static  
    * Coordination Languages  
        * Focus on distribution and concurrency  
* Desired features  
    * Operator overloading  
        * Scripting language as an "algebra" of operators over component types  
    * Scoping  
    * Syntactic sugaring  
    * Reasoning  
    * Other stuff (where to fit?)  
        * DSLs  
        * Dependency injection  
        * Extension mechanisms ...  
* Examples  
    * Bourne shell  
        * scripts C programs (and scripts)  
        * composition: sequencing, pipes, signals  
    * Javascript  
        * scripts web bowsers  
        * composition: events, methods ..  
* Tenets  
    * A scripting language must script something  
    * Any programming language can be used for scripting  
    * scripting ~= programming  
    * scripting language ~= dynamically-typed language  
* Straw men  
    * Scripting language = DSL  
    * Scripting language = interpreted, dynamic language  
        * STL is a beautiful SL  
        * Floreal: so a SL is used for assembling  
    * Scripting language = broken implementation  
  
## Theo scripting languages top 5  
  
* scripting languages: top five  
    * REPL  
        * interactive, dynamic  
        * implies multi-threading  
    * expressive, not cryptic  
        * like a DSL, close to domain, not implementation  
    * boxed process/service  
        * coordinate external black box components  
        * related to auto-boxing: turn external things into manipulable components  
    * self contained  
        * can express everything in itself  
            * can build debuggers etc  
            * AmbientTalk is not self-contained since it depends on Java  
    * paradigm/type agnostic  
        * Should be able to use any paradigm  
        * Python forces you to be OO  
  
## Dagstuhl round table  
  
* Laurie: in industry scripting languages are usually derided  
* Theo: talk about parallel between java JS C++ ...  
* Laurie: lessons on language design  
    * Ralf: what is easily optimizable ...  
    * How to prevent cockups  
    * Ralf: "I'll write this blog, but first I need some more cheese"  
* Theo: what is a SL  
    * Laurie: scripting L is a glue language  
    * Ralf: not just coordinating apps but also embedding language  
    * Oscar: important distinction between scripting L and meta SL for defining new SLs  
        * Ralf: Prolog is also nice for that  
    * Theo: Scripting languages are an initial stage in the definition of a GPL  
        * Laurie: Paul Hudak 1996 "Every DSL eventually ends up looking like a badly designed GPL"  
    * Stefan H: It's a L with low entrance barrier  
        * Ralf: If a L has a good REPL model, then it is a SL  
        * Floreal: A SL is a L my sister can use  
    * William: A SL is a language in which you can write a useful 1 liner  
        * Oscar: so APL is a SL!  
    * Eric T: a SL allows you to script  
        * scripting is coordination or orchestration  
        * a closed world L would not be a SL  
    * Theo: example of Nest programmable thermostat  
    * Shri: SL = f*cked-up L  
* How is JS a scripting language  
    * Oscar: scripts components and services of a web browser  
    * L: but it is really used as GPL  
    * O: a good SL has the flavour of a DSL  
* What are the most important desiderata of SLs?  
    * Theo: REPL  
    * Floreal: don't want to compile  
        * REPL is fine  
        * don't want to think too much, but try it out  
    * Stefan: eval — no distinction between string and program  
        * was astounded when he could not evaluate a string in VB  
    * Laurie: want common tasks to be as terse as possible  
        * should be a DSL  
            * minimal syntactic overhead  
            * NB: not every DSL is a SL!  
        * distinction between SLs for scripting and for programming  
            * Bourne shell vs JS  
            * don't expect to write programs in sh  
            * can't write lively kernel in sh  
    * Eric: easy installation  
        * should feel natural  
        * easy interfacing to existing components  
        * should support exploratory programming  
            * run stuff and see what happens  
            * not like haskell where you need to figure out all the types  
    * Ralf: not Haskell or Prolog or Java or C++  
  
## Plenary  
  
* Shri: if you are embedded, hard to have a REPL  
    * William: hard to get a context when embedded  
    * Michael: When you are the inside, you cannot orchestrate  
* Shri: key distinction is whether you are scripting many things or one thing  
    * Michael: not useful concept if every L can be a SL  
* Sam: people don't want to learn a whole PL to do useful stuff  
    * Jan: Java is not SL since you need to understand the whole PL when you get type errors  
    * Phil: usability is the key issues — have there been any studies?  
        * "SL is a language a novice can use"  
        * Can we turn this interesting statement into research?  
        * Michael: there are nice Ls that novices can quickly use — what are the features that support this?  
