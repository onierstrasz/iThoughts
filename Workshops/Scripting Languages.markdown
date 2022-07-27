# Scripting Languages Dagstuhl  
  
Link: [dagstuhl.de/en/program/calendar/semhp/][1]  
  
## Talks  
  
* Semantics & Empirical Results  
    * Gregor Richards:  
        Eval begone!  
        Link: [cs.purdue.edu/homes/gkrichar/][2]  
  
        * PhD student of Jan Vitek  
        * analyze use of eval in various scripting languages  
            Link: [cs.purdue.edu/homes/gkrichar/papers/eval-ecoop-2011.pdf][3]  
  
    * Jan Vitek: The design of R  
        Link: [cs.purdue.edu/homes/jv][4]  
  
        * R : language for statistics  
            * Vectors, function, lazy and dynamic  
                * looks a bit like a crazier APL  
            * Various object systems built on top of vectors  
            * Values always copied, so no aliases  
                * but you can access variables from enclosing scope!  
            * promises are R's lazy values  
                * evaluated as soon as you breathe on them  
                * R is an eager, lazy language!  
        * Analyzes performance etc  
            * R is extremely slow and inefficient  
    * Philippa Gardner: Reasoning about JavaScript  
        Link: [doc.ic.ac.uk/~pg/][5]  
  
        * Using operational semantics to reason about modifications to the store  
        * Separation logic  
    * Ben Lerner: Language support for third-party code extensibility  
        Link: [cs.brown.edu/~blerner/][6]  
  
        * Web browser extensions inject scripts into existing code in the browser  
            * same privileges as browser code  
        * JS mechanisms to support this  
            * wrapping  
                * redefine function that does new stuff and then calls originall  
            * monkey patching  
                * grab source code  
                * patch it  
                * eval it  
            * Problems  
                * Both approaches break aliases  
                    * aliases are everywhere  
                * Monkeypatching breaks closures  
        * Need better support  
            * dynamic aspect weaving  
    * Stefan Hanenberg: Empirical studies on Static vs Dynamic Type Systems  
        Link: [dawis.wiwi.uni-due.de/team/stefan-hanenberg/][7]  
  
        * experiments with students  
            Link: [cs.washington.edu/education/courses/cse590n/10au/hanenberg-oopsla2010.pdf][8]  
  
        * Could not detect any significant difference in development time  
        * Several experiments with inconclusive results  
    * Arjun Guha: Engineering a JS semantics  
        Link: [cs.brown.edu/~arjun/][9]  
  
        * LambdaJS models core JS as Flatt Felleisen calculus  
            Link: [cs.brown.edu/research/plt/dl/jssem/v1/gsk-essence-javascript-r5.pdf][10]  
  
        * desugars JS to LambdaJS  
            * does desugar(JS-eval(e)) = LambdaJS-eval(desugar(e))?  
    * Theo D'Hondt: AmbientTalk  
        Link: [soft.vub.ac.be/amop/][11]  
  
        * influence by smalltalk, scheme ...  
        * essentially: oo + events  
            * block closures as event handlers  
            * futures  
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
        * concinnity  
    * Dave Herman: Life after main()  
        Link: [ccs.neu.edu/home/dherman/][12]  
  
        * Static features matter too!  
            * static scoping  
            * macros, operator overloading  
            * types  
        * How to statically check stuff that refers to things that haven't been defined yet?  
            * What's wrong with interfaces?  
            * "Hope" was designed to deal with to checking stuff that hasn't yet been seen ...  
        * Use modules to add new features over time ...  
* Meta-Programming & Security  
    * Jeff Foster: RubyX — Symbolic execution for Rails  
        Link: [cs.umd.edu/~jfoster/papers/rubyx.pdf][13]  
  
        * Ruby = Smalltalk + Perl  
        * symbolic execution is similar to model checking  
            * can use it to identify counter examples that lead to failures  
        * Add assertions to Rails apps and use RailsX to find errors  
        * CSRF  
            Link: [en.wikipedia.org/wiki/Cross-site_request_forgery][14]  
  
    * Sam Tobin-Hochstadt: Languages as Libraries  
        Link: [ccs.neu.edu/home/samth/][15]  
  
        * Implementing the next 700 scripting languages  
            * "Racket ships more than 40 documented languages"  
        * Expose compiler tool-chain to implement new languages  
        * Need intermediate language to support many languages  
            * Expose this IL to the programmer to support extensions  
                Link: [cs.brown.edu/research/plt/dl/adsafety/v1/][16]  
  
    * Cormac Flanagan: Virtual Values for Language Extension  
        Link: [users.soe.ucsc.edu/~cormac/papers/oopsla11.pdf][17]  
  
        * Python and Ruby have nice ways to extend languages via operator overloading  
            * JavaScript (like Java) does not  
        * Virtualize operations to support extension  
            * proxies and handlers wrap objects  
        * Security: want to extend, but also restrict behaviour  
            * need "nonproxies" to detect and protect against untrusted proxies  
    * Ankur Taly: Sandboxing untrusted JavaScript  
        Link: [www-cs-students.stanford.edu/~ataly/][18]  
  
        * Sandbox exposes only API and avoids leaking critical resources to untrusted code  
        * Problem: JS allows you to overwrite API methods, so you can grab critical references  
    * Joe Politz: ADsafety — type-based verification of JS sandboxing  
        Link: [cs.brown.edu/research/plt/dl/adsafety/v1/][19]  
  
        * type system to ensure safety of JS programs  
        * uses annotations of functions within JS code  
* Types and Contracts  
    * Francesco Nardelli: Integrating typed and untyped code  
        Link: [moscova.inria.fr/~zappa/][20]  
  
        * "like types" are used to statically check local code, and variables that flow in are dynamically checked  
            Link: [moscova.inria.fr/~zappa/projects/liketypes/][21]  
  
        * why are checks performed at each method call instead of at binding time?  
    * Kathy Gray: Using contracts to connect different languages  
        Link: [cl.cam.ac.uk/~keg29/publications.html][22]  
  
        * "Border errors are always the fault of the dynamic program"  
    * Phil Wadler: Blame for all  
        Link: [homepages.inf.ed.ac.uk/wadler/topics/blame.html#blame-for-all][23]  
  
        * "The polymorphic lambda calculus was not invented. It was discovered."  
        * The blame calculus adds type casts to the polymorphic lambda calculus  
        * The type cast expresses who to blame (eg which environment) if something goes wrong  
        * Phil: "It took us four years to get the notation right. The day we did, our brains stopped hurting."  
    * Cormac Flanagan: Temporal Higher-Order Contracts  
        * Express constraints on traces over communicating modules  
            Link: [users.soe.ucsc.edu/~cormac/papers/icfp11.pdf][24]  
  
        * Contract monitors blame whoever sent the most recent message when things go wrong.  
    * Robby Findler: A Racket Contract Example  
        * Robby: "If we get a contract violation, who gets blamed?" Audience: "The contract!" "The lawyer who wrote the contract!"  
    * Michael Hicks: Diamondback Ruby and RubyDust  
        Link: [cs.umd.edu/projects/PL/druby/][25]  
  
        * Type inference using dynamic information  
        * "Ruby programmers tend not to define their own parametric types, but just use the built-in ones."  
    * Ravi Chugh: Nested Refinements: A Logic for Duck Typing  
        Link: [cseweb.ucsd.edu/~rchugh/research/index.html#popl12-nested][26]  
  
    * Manuel Hermenegildo: The Ciao assertions model  
        Link: [ciaohome.org/][27]  
  
        * Ciao has a layered architecture that supports language extensions  
        * Prolog is just a library  
        * Abstract machine is implemented in Ciao  
        * Types are not special. They are just properties.  
    * Jeremy Siek: Gradual Typing Roundup  
        Link: [ecee.colorado.edu/~siek/gradualtyping.html][28]  
  
        * Gradual typing allows you to safely mix statically and dynamically typed code  
    * Sam T.-Hochstadt: Occurrence Typing  
        * Occurrence typing is the elimination principle for union types  
    * Atsushi Igarashi: (Towards) Gradual Typing for Java  
        Link: [sato.kuis.kyoto-u.ac.jp/~igarashi/papers/gradual.html][29]  
  
    * Arjun Guha: Combining Types and Flow Analysis  
        * Combine a simple, textbook type-checker with textbook dataflow analysis to statically check scripting languages.  
* Implementation, Modularity & Concurrency  
    * Laurie Tratt: Experiences of implementing a VM with RPython  
        * How much do I need to implement to convince you my language is good?  
        * Traditional routes  
            * interpretation  
                * slow  
            * compilation  
                * hard to implement  
                * slow tool chain  
            * VM  
                * use an existing one?  
                * Usually targeted to a specific language  
                    * hard to map your cool language  
        * Converge needs backtracking — can't use existing VM  
            * implemented own one — it was terrible  
            * second VM took 18 MM  
                * slow  
        * New approach: use RPython & PyPy VM  
            * Gives you a custom JIT for your language for free!  
            * New Converge VM took under 3 MM; 5.5 KLOC  
    * Carl Bolz: Meta-Tracing in the PyPy project  
        * Start with a simple interpreter loop  
            * Add a tracer to make parts of the program efficient  
        * A meta-tracer sits between the interpreter and the CPU  
            * Observes the interpreter, not the program  
        * The difference between meta-tracing and partial evaluation is that meta-tracing works.  
    * Manuel Serrano: HipHop — Synchronous Reactive HOP  
        Link: [hop.inria.fr/][30]  
  
        * Multi-tier PL for web apps  
            * single HOP program specifies client & server sides and interaction  
        * HipHop is an extension for reactive programming  
            Link: [plastic.host.adobe.com/plastic2.pdf][31]  
  
            * lets you turn HOP functions into components that can be composed in parallel  
            * Brings Esterel-like reactive style to HOP  
    * Yoshiki Ohshima: Writing a usable system in new languages  
        * STEPS project for building new languages in meta- languages  
    * Laemmel: 101companies: a call to arms  
        * Too many language technologies!  
        * Too complex!  
        * How do we cope?  
            * Analogies, examples, abstractions  
    * William Cook: Batches  
        Link: [cs.utexas.edu/~wcook/projects/batches/index.htm][32]  
  
        * move sets of commands to be run on a remote server  
    * Matthew Flatt: Languages in Racket demo/tutorial  
        * How to design Racket languages with macros  
            Link: [docs.racket-lang.org/guide/languages.html][33]  
  
        * Use macros to define forms for the target model  
  
## Breakout sessions  
  
* Tuesday  
    * Michael Hicks: empirical studies  
        * Present: Michael H, Stefan H, Atsushi I, Nate N, William C, Ravi C, Oscar N, Phil W, Floreal M, Hidehiko M, Ben L  
        * Phil: how to exploit the scale of the web?  
            * tell us something about Programming Languages  
                * Nate: Matthias Hauswirth is doing that  
            * Nate: does indentation matter?  
        * Phil: need to simplify question to avoid cooked results  
            * example: "nested vs flat conditionals" simpler question than "static vs dynamic"  
        * FM: many people using PLs are not programmers  
            * in empirical study need to take care of study population  
        * Phil: examples of good studies  
            * Ravi: Microsoft tracking eye movement in Word usage showed it was too complex  
            * Stefan: compare understandability of languages  
            * Stefan: where should one exit a loop? showed need for explicit exit statement and condition  
            * Stefan: Basili work on whether people can follow a process you give them  
                Link: [dx.doi.org/10.1145/1852786.1852805][34]  
  
                * eg test-first. answer: no they don't  
            * ON: Hindle's work on indentation and complexity  
                Link: [dx.doi.org/10.1016/j.scico.2009.02.005][35]  
  
        * Michael: What did Stefan learn from his studies? What is stable?  
            * Stefan: There is no answer independent of the programming task!  
                * Some tasks were good for static, others for dynamic. No idea why.  
            * Was not aware of effort required to carry out a study  
        * Michael: could we exploit crowdsourcing for programming tasks?  
        * Michael: how to assess eg maintainability of static vs dynamically typed languages  
            * inherently hard to study that  
        * Stefan: interesting to see just which language features are used  
            * cf ECOOP paper last year on how generics are used  
        * Ben: mine bugzilla to check what kinds of bugs arise in language translation from java to javascript  
        * Phil: a good psych experiment should have a surprising result  
            * example of Bliss study showing Bliss code was faster than assembly, except for code written by experts  
        * Michael: any studies on whether OO is good?  
            * Shri: Tichy study on defect rates correlating with inheritance depth  
            * Oscar: hard to assess since "good" in OO means long-term maintainability  
            * Michael: why not use crowdsourcing? build systems and modify them.  
            * Shri: often quality is not related to the paradigm but to tools, eg error messages.  
                * did a study tracking how students react to error messages  
                * could track which error messages are effective  
                * want to use empirical data to improve error messages!  
            * Ben: anecdote on improving ML type error messages  
                * give hints what to change  
                * measured how long it took to fix errors  
                * many bugs were confusion between comma and semicolon!  
                * Question: what syntax features affect user errors?  
                * Stefan: study was done on impact of keywords in PLs on errors  
            * Phil: need to be careful in crowdsourcing due to self selection effects  
                * Is Haskell better? No, Haskell attracts smarter programmers!  
    * Dave Herman: Eval  
    * Mark Miller: a theory of how programmers program in a language they don't understand  
* Thursday  
    * Wlliam Cook tutorial on partial evaluation  
        * motivation  
            * pow(x,y) = if x=0 then 1 else y * pow(x-1,y)  
            * pow(3,z) = ... = z*z*z  
        * start by defining a interpreter  
            * rules like eval[[x]]p = p(x)  
        * for partial evaluation, relax rule that all vars must be found in envt  
            * peval[[x]]p = p(x) else x  
            * peval[[a+b]]p = if n = c1 and m = c2 then c1 + c2 else peval[[n+m]]  
                where n= peval[[a]] ...  
  
            * similar trick if peval[[if a b c]]  
                * if a evaluates to true or false, can specialize to appropriate branch  
        * partial evaluation might not terminate, even if original program will!  
            * bad(n,m) = if n<m then 1 else bad(n+1,m)  
                * peval[[bad(0,z)]]p does not terminate  
            * if envt passed to peval is complete, then peval = eval  
            * if envt is empty, then peval just evaluates constant expressions  
        * trick is to handle function calls  
            * peval[[f(e_i)]]p = peval[[f_p'(a_d)]]  
                * where f_p' (x_d) = peval[[e_i]]p' and p' = [x_s -> a_s]  
                * created specialized functions that bind all the values and have arguments for the novalues  
            * eg pow(3,z) = pow_3(z) = z*pow_2(z) = z*z*pow_1(z) = z*z*z  
        * sometimes you have to write a program in the right way to partially evaluate it  
            * suppose you look up a command in a table  
            * cmd_lookup(input).run() is dynamic and can't be specialized  
            * for(k,v in list) if (k=input) then v.run()  
                will be unrolled and can be partially evaluated!  
  
            * note that run() has moved inside the lookup  
            * known as "the trick"  
    * Theo and Mark: scripting for mobile devices  
        * Mark uses "vats" to put boundaries around objects in the same distributed environment  
            * single thread-of-control and no blocking within a vat  
                * unlike Erlang, which has blocking  
            * a.foo(b) vs a!foo(b)  
                * can write ! anywhere you can write .  
                * a.foo(b)  
                    * a must be local  
                    * nothing happens in between call and return  
                    * invariants broken if callee calls back! (reentrancy broken)  
                * a!foo(b)  
                    * just queues the request  
                        * a may be local or remote  
                    * returns a "promise" (future)  
                    * evaluation always starts with an empty stack  
                        * no invariant problems!  
                    * opposite pros and cons  
            * Can only use ! on remote objects since vats are connected asynchronously  
                * can apply ! to a promise since it is just queued!  
                * when the promise is fulfilled, then the message is sent  
        * Monotonic <something> is robust against aliasing  
    * other breakouts  
        * Joe: Objects and scripting languages (and typing)  
            * Arjun Guha: Semantics  
        * Ralf: 101companies  
        * William: partial evaluation  
    * Principles of Scripting Languages conference  
  
## Wild and crazy ideas  
  
* Jens Lincke: Webwerkstatt  
    Link: [hpi.uni-potsdam.de/hirschfeld/projects/webwerkstatt/index.html][36]  
  
    * a lively kernel wiki  
* Eric Tanter: Beyond Blame — Transcending Duality  
    * Don't try to assign blame to one particular party, but report all involved parties.  
* Phil Wadler: Two wrong turns  
    * Don't leak the implementation — why is it hard to add blame calculus to JS?  
        * object identity  
            * doesn't work with wrapping  
            * exposes too much information to the programmer  
        * field access  
            * direct access is bad: you can't wrap it  
        * array access  
        * Moral Alan Kay and John Reynolds were right  
            * Kay: let's have pure OO PLs where you can only send messages  
            * Reynaolds: Always obey the type abstraction  
    * "I object to objects"  
        * Put no methods in objects  
        * Parametricity does not work since Object supports equality  
        * Instead of Object, have Top with nothing in it  
        * Moral: Kay and Reynolds were wrong  
* Laurie Tratt: Macros  
    * A brief history: Template Haskell first got it right in 2002  
    * The less syntax in your language, the more useful macros are.  
    * Programs with macros are harder to understand.  
* William Cook: The benefits of programming  
    * I wold like to recommend that everyone here be a programmer, and write programs  
    * Get real users  
    * Write a game app  
    * "good enough" is the enemy of the great  
        * Michael Hicks: but real users are about "good enough"  
    * It's easier to write papers about preventing bad things than enabling good things.  
        * Gregor: Anyone who has designed and implemented a new programming language clearly didn't need one.  
* Matthias Felleisen  
    * I have published at POPL every year for the past 20 years and have disliked it for 18 years.  
        * Industrial conferences laugh at academic results  
        * POPL produces beautiful results that are useless.  
    * What do I want? How do we help people who are building real but broken languages to do it right?  
        * Proposal: new conference on "Principles of Scripting Languages"  
* Mark Miller  
    * It's tragedy that OO Databases did not make it.  
    * File systems are broken. We need something better.  
* Jan Vitek: Science Done Bad  
    * Various anecdotes about difficulties of performing credible reproduction studies.  
    * Please enable repetitions studies!  
        * Archive the data sets!  
        * Disclose experimental details!  
    * Reward reproduction studies!  
        * Join the Unisi Evaluate Collaboratory  
            Link: [evaluate.inf.usi.ch/][37]  
  
[1]: http://www.dagstuhl.de/en/program/calendar/semhp/?semnr=12011  
[2]: http://www.cs.purdue.edu/homes/gkrichar/  
[3]: http://www.cs.purdue.edu/homes/gkrichar/papers/eval-ecoop-2011.pdf  
[4]: http://www.cs.purdue.edu/homes/jv  
[5]: http://www.doc.ic.ac.uk/~pg/  
[6]: http://www.cs.brown.edu/~blerner/  
[7]: http://www.dawis.wiwi.uni-due.de/team/stefan-hanenberg/  
[8]: http://www.cs.washington.edu/education/courses/cse590n/10au/hanenberg-oopsla2010.pdf  
[9]: http://www.cs.brown.edu/~arjun/  
[10]: http://www.cs.brown.edu/research/plt/dl/jssem/v1/gsk-essence-javascript-r5.pdf  
[11]: http://soft.vub.ac.be/amop/  
[12]: http://www.ccs.neu.edu/home/dherman/  
[13]: http://www.cs.umd.edu/~jfoster/papers/rubyx.pdf  
[14]: http://en.wikipedia.org/wiki/Cross-site_request_forgery  
[15]: http://www.ccs.neu.edu/home/samth/  
[16]: http://www.cs.brown.edu/research/plt/dl/adsafety/v1/  
[17]: http://users.soe.ucsc.edu/~cormac/papers/oopsla11.pdf  
[18]: http://www-cs-students.stanford.edu/~ataly/  
[19]: http://www.cs.brown.edu/research/plt/dl/adsafety/v1/  
[20]: http://moscova.inria.fr/~zappa/  
[21]: http://moscova.inria.fr/~zappa/projects/liketypes/  
[22]: http://www.cl.cam.ac.uk/~keg29/publications.html  
[23]: http://homepages.inf.ed.ac.uk/wadler/topics/blame.html#blame-for-all  
[24]: http://users.soe.ucsc.edu/~cormac/papers/icfp11.pdf  
[25]: http://www.cs.umd.edu/projects/PL/druby/  
[26]: http://cseweb.ucsd.edu/~rchugh/research/index.html#popl12-nested  
[27]: http://ciaohome.org/  
[28]: http://ecee.colorado.edu/~siek/gradualtyping.html  
[29]: http://www.sato.kuis.kyoto-u.ac.jp/~igarashi/papers/gradual.html  
[30]: http://hop.inria.fr/  
[31]: http://plastic.host.adobe.com/plastic2.pdf  
[32]: http://www.cs.utexas.edu/~wcook/projects/batches/index.htm  
[33]: http://docs.racket-lang.org/guide/languages.html  
[34]: http://dx.doi.org/10.1145/1852786.1852805  
[35]: http://dx.doi.org/10.1016/j.scico.2009.02.005  
[36]: http://www.hpi.uni-potsdam.de/hirschfeld/projects/webwerkstatt/index.html  
[37]: http://evaluate.inf.usi.ch/  
