# Graph models  
  
## general graph drawing tool  
  
* enable analyses  
* different styles (profiles?) for displaying graphs  
    * petri nets, UML diagrams etc  
  
## meta-description  
  
* meta-graphs meta-describe other graphs  
    * cf magritte  
* graph semantics  
    * structure  
        * schema or meta model  
            * also a graph  
    * behavior  
        * graph transformations  
            * graph grammars?  
            * separate static and dynamic aspets  
                * eg petri nets and markings  
  
## representation  
  
* RDF and 3-tuples?  
    Link: [en.wikipedia.org/wiki/Resource_Description_Framework][1]  
  
    * subject - attribute - object  
    * directed graphs  
    * unique node names?  
  
## applications  
  
* architecture diagrams  
    * component diagrams in embedded systems  
        * forbid cyclic dependencies  
* state machines  
    * Petri nets  
        * execution  
        * analysis  
    * statecharts  
    * FSP  
    * Markov chains  
        Link: [en.wikipedia.org/wiki/Markov_chain][2]  
  
* UML class diagrams  
    * refinement  
    * refactoring  
  
## Language  
  
* DSLs  
    * for defining graphs  
        * FSAs  
        * Petri nets  
        * ...  
* Abstraction  
    * need way of raising abstraction level  
        * an association (edge) with properties becomes a subject (node)  
        * express higher level graphs using the HL abstractions  
* define semantics in formal (non-visual) language  
  
## Related  
  
* AGG  
    * triple graph grammars  
* eToys  
* program transformation  
* coalgebras?  
    * as generic state machine models?  
  
[1]: http://en.wikipedia.org/wiki/Resource_Description_Framework  
[2]: http://en.wikipedia.org/wiki/Markov_chain  
