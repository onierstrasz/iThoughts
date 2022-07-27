# SLEBoK Taxonomy  
  
## Artefact representations (abstract syntax)  
  
* Input-Level  
    * Sequence (e.g., strings)  
    * Trees  
    * Graphs  
    * Images (e.g., UML diagram recognition)  
* Intermediate/Internal  
    * Strings (concatenation models)  
    * Lexical models (lexemes, tokens, templates)  
    * Trees and forests  
    * Graphs (ASGs, PDGs)  
    * Terms  
    * Objects  
    * Relations (mappings, dictionaries, tables)  
* Output-Level  
    * Sequence (e.g., serialised strings, robot movements, sounds)  
    * Trees  
    * Graphs  
    * Pictures and diagrams (including interactive ones)  
  
## Notations (concrete syntax)  
  
* Text  
    * Structured (has a grammar)  
    * Unstructured (prose)  
    * Semi-structured (well-defined fragments)  
* Tables (including spreadsheets)  
* Diagrams (graphs with assumed underlying semantics)  
* Symbolic (mathematical and chemical formulae)  
* Forms and GUIs (as chosen I/O to a language processor, not general GUIs)  
  
## Language-based computations (inputs or outputs language instances)  
  
* Intent (adapted from Model transformation intents figure)  
    * Execution, interpretation, simulation  
    * Analysis[a]  
        * Recognising structure (e.g., scanning, parsing)  
        * Binding uses of names to definitions of artefacts (name resolution, type resolution, method resolution)  
        * Fact extraction, re[dis]covery, data collection  
        * Well-formedness conformance, type checking, MDE-validation  
        * Querying  
    * Synthesis[b][c]  
        * Source code generation, compilation  
        * Decompilation  
        * Visualisation, rendering  
        * Unparsing, serialisation  
        * Formatting, layout (improving visual quality)  
        * Projection  
        * Refinement, formalisation  
    * Transformation  
        * Composition, merging, matching, synchronisation  
        * Refactoring  
        * Documentation  
        * Optimisation (improving quality)  
        * Translation and migration  
        * Normalisation, desugaring, etc  
    * Verification (model checking, constraint solving)  
    * Synchronisation  
        * Co-evolution  
        * Communication over a network  
    * Clean-up  
        * Dead code elimination  
        * Garbage collection  
* Quality of the computation  
    * Speed / performance (of the computation)  
    * Speed / performance (of the result)  
    * Maintainability of the result  
    * Fidelity (introduction of noisy artefacts or unintentional  loss of detail like the source code comments)  
    * Accuracy (precision, recall)  
    * Correctness (wrt an external specification)  
        * Completeness  
        * Soundness  
        * Semantics preservation / functional equivalence  
    * Well-definedness  
        * (Un)ambiguity  
        * (non)-determinism  
* Bidirectional transformations (bindings, synchronisations)  
  
## Language formalisms/definitions  
  
* Structure definitions (to define Syntax)  
    * Enumerations (explicit lists of countries, postcodes, etc)  
    * Regular expressions  
    * Many-sorted signatures  
    * Parsing specifications (including PEGs, island grammars, etc)  
    * Context-free grammars  
    * Ontologies  
    * Metamodels  
    * Schemas  
    * Graph Grammars  
    * Transducers  
    * Disambiguation[d][e]  
    * Lindenmayer systems[f]  
* Static Semantics (context-dependent syntax, restricts the structures even more without running the program)  
    * Typing judgement rules  
    * Typing inference rules  
    * Attribute grammars  
    * Abstract interpretation  
    * OCL  
* Dynamic Semantics  
    * Equational Logic  
    * Operational Semantics  
    * Denotational Semantics  
  
## Tools for using languages  
  
* Editors  
* Debuggers  
* Analyzers  
* Platforms (like Runtime Environments)  
  
## Tools for developing languages  
  
* Metatools  
    * Language Workbenches  
* Parser/Scanner Generators  
* Attribute Grammars  
* Rewriting systems (term or graph rewriting)  
  
## Engineering of language development  
  
* Versions  
* Tests  
* modularity  
  
## Language Design  
  
* Usability of languages  
* Stakeholder integration  
  
## Algorithms (a collection of relevant algorithms and algorithm families used in the domain, categorized by the intent dimension)  
  
* Transitive closure  
* Query planning  
* Parsing ((G)LR, (G)LL, Earley, etc., RE automata)  
* Concept analysis  
* Descriptive statistics  
  
## Language constructs and categories, example languages  
  
## Collaboration Modes  
  
* [a]do not take this categorisation to seriously because "analysis" is overloaded and we find it hard to gauge its significance  
    [b]I propose to distinguish between derivation/generation vs. synthesis. The latter is qualitatively more complex.  
    [c]+1  
    [d]might also fit with static semantics, depending on what  
    [e]on what?  
    [f]even though L-systems appear in proceedings of LDTA (and SLE?) their intent is not language description  
