# RDF  
  
Link: [en.wikipedia.org/wiki/Resource_Description_Framework][1]  
  
At SoTeSoLa 2012  
  
## subject, predicate, object triples  
  
## turtle syntax  
  
* @prefix s  
    * eg: @prefix s http://scg.unibe.ch/staff  
        * defines s as shared prefix  
    * allows sharing of URI prefixes  
* why is it called turtle syntax?  
  
## are RDF databases just labeled directed graphs?  
  
* where nodes have URIs  
  
## reification  
  
* make a tuple into an entity  
    * related to three nodes  
        * subject  
        * object  
        * predicate  
    * other connections for more metadata  
        * created by etc  
  
## searching  
  
* swoogle  
    Link: [en.wikipedia.org/wiki/Swoogle][2]  
  
* lov  
    * linked open vocabularies  
* SPARQL  
    Link: [en.wikipedia.org/wiki/SPARQL][3]  
  
    * SEQUEL like query language  
* is there no equivalent of relational algebra for rdf?  
    * Ralf: you can use any technology, like LINQ  
  
## Examples  
  
* authors and co-authors at SoTeSoLa  
    * extract participants list from web site  
    * extract co-authors from DBLP  
    * Can we transform RDF graphs?  
        * eg graph of papers and authors to coauthor graph  
* 101companies  
    * want to navigate from names of PLs to their wikipedia page  
    * query dbpedia  
        Link: [dbpedia.org/About][4]  
  
## OWL  
  
Link: [en.wikipedia.org/wiki/Web_Ontology_Language][5]  
  
* Ontology Web Language  
* OWL data is encoded in RDF  
  
[1]: http://en.wikipedia.org/wiki/Resource_Description_Framework  
[2]: http://en.wikipedia.org/wiki/Swoogle  
[3]: http://en.wikipedia.org/wiki/SPARQL  
[4]: http://dbpedia.org/About  
[5]: http://en.wikipedia.org/wiki/Web_Ontology_Language  
