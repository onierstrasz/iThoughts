# Agile Modeling  
  
## Grammar scavenging  
  
* Scavenge grammars from various sources  
* Still takes weeks of effort  
  
## Parsing by example  
  
* Infer grammar from example to model mappings  
    * Generates both (island) parser and importer  
    * Ask for new examples when parser fails  
* Generates fragile results with LALR tech  
    * Use GLL island parsers instead  
  
## Grammar mutation/evolution  
  
* Generate random grammars, mutate them, and select for "fitness" to parse sample code  
    * Too low-level; slow and expensive to generate even simple grammars  
    * Exploit language similarities; start with "reusable" parser fragments  
        * Combine with other techniques: structure recognition, keyword recognition ...  
    * Vadim: could be used to generate dialect grammars  
  
## Bypass grammars  
  
* Automatic structure recognition  
    * Use indentation as a proxy for structure  
    * Use an island grammar that recognizes matching parentheses etc to infer structure  
          
        Idea proposed by Patrick Viry  
  
* Automatic keyword recognition  
    * Exploit language similarities and various heuristics to automatically identify keywords  
        * possible heuristics  
            * identifiers occur in parameter/assignment positions; keywords don't  
            * many keywords are declaration modifiers  
            * keywords occur in many contexts; identifiers tend to be restricted  
* Harvesting trees  
    * Hijack ASTs from IDE plugins (eg Eclipse)  
    * Hard to automatically recognize AST nodes in plugin source or run-time heap  
        * Rascal group has some success here ...  
    * Vadim: tools like TXL can spit out XML which you could then process more easily  
  
## TU Delft visit  
  
* Gel — work by Will Cook at a DSL conference  
      
    Eelco  
  
* Look at Eelco's work on error recovery  with island grammars  
* SIG has (commercial) library of language importers/parsers  
    * down to level of call graph  
* EV: Need a benchmark!  
    * sample programs and what you expect to extract  
  
## Vadim discussion  
  
* Vadim has 569 scavenged grammars online!  
    * grammarzoo  
        Link: [slps.github.io/zoo/][1]  
  
    * can be used for comparison  
    * study on micropatterns  
        * see grammarware web site  
            Link: [grammarware.net/][2]  
  
    * NB: Peter Mosses work on generic semantic components  
        * PLanCompS  
            Link: [plancomps.org/][3]  
  
    * See also AtlanMod meta model zoo  
        Link: [emn.fr/z-info/atlanmod/][4]  
  
    * heuristics to recover grammars  
        * See paper at last LDTA: "Notation-parametric grammar recovery"  
            Link: [dl.acm.org/citation.cfm][5]  
  
* Conjuctive grammars  
    * aleksander okhotin  
    * Boolean grammars  
        * useful for specifying negation for eg islands  
    * multiple ways of specifying same grammar  
    * sometimes use one, or both, or in sequence  
    * Iterative parsing  
          
        paper draft exists, not published yet  
  
        * coarse parse  
        * refined parsing only where you need it  
* tolerant grammars  
    * spectrum of source code analysis techniques  
        * Deriving Tolerant Grammars from a Base-line Grammar  
            Link: [dl.acm.org/citation.cfm][6]  
  
    * Tolerance spectrum in grammarware  
          
        working draft by vadim  
  
        * further refinement of lämmel paper  
        * also includes error recovery  
        * Could be useful for agile modeling  
            * given time available, choose your technique  
* Grammar Programming  
    Link: [cs.queensu.ca/~stl/papers/SCAM02_GP.pdf][7]  
  
    * and Semi-Parsing  
    * work by Jim Cordy  
    * Agile Parsing in TXL  
        Link: [dl.acm.org/citation.cfm][8]  
  
        * used for language cocktails  
* Pending Evolution of Grammars  
    Link: [grammarware.net/text/2013/pending.pdf][9]  
  
    * Reusable library of grammar fragments  
    * Try to add features  
        * see which fragments succeed  
  
[1]: http://slps.github.io/zoo/  
[2]: http://grammarware.net/  
[3]: http://www.plancomps.org/  
[4]: http://www.emn.fr/z-info/atlanmod/  
[5]: http://dl.acm.org/citation.cfm?id=2427057  
[6]: http://dl.acm.org/citation.cfm?id=943597  
[7]: http://cs.queensu.ca/~stl/papers/SCAM02_GP.pdf  
[8]: http://dl.acm.org/citation.cfm?id=944278  
[9]: http://grammarware.net/text/2013/pending.pdf  
