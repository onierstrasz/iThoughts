# Models vs Machine Learning  
  
Como 2016 Models vs ML  
Thomas, Harald, Manuela,, Sebastian, Tommaso, Mohammad, Oscar, Haidar, Luca, Sebastiano, Carol  
  
## Why do we build models?  
  
* To simplify  
* To aggregate data in a common structure  
* Cheaper than working with the thing it represents  
  
## Sample goal  
  
* Identify Bad Code  
    * Build a model  
    * Or just analyze the data  
  
## What is the ML model?  
  
* It's just pixels  
    * Not a "real model"  
* Tables are a (flat) model  
    * ML uncovers the underlying model  
  
## Quotes  
  
* Alan Kay: the term OO is unfortunate  
    * Focuses on objects rather than behaviour  
* "All models are wrong but some are useful"  
    * A useful model allows you to perform predictions (or analyses)  
  
## What are ML models for?  
  
* Clustering, classifying and identifying  
    * Ie pattern recognition  
    * Identify features that characterize a cluster  
* Creating new instances with similar features  
    * Eg creating new synthetic textures that look like pebbles on a beach  
    * Making a fake Picasso  
* Translation  
    * Eg French to English  
  
## What are possible applications of ML to SE?  
  
* SE isn't really *big* data  
    * What are interesting data sources?  
* How do we represent the data to feed it to ML?  
    * As complex as necessary  
    * As simple as possible  
  
## Possible domains  
  
* Source code  
    * Applications?  
        * Identify bad code?  
            * Where is the buggy code?  
            * Identify historically buggy code  
            * Let ML crunch it  
    * Representation  
        * Bytes, Tokens  
        * Statements  
        * ASTs  
        * Let deep learning discover the right levels  
* Log files  
* Web sites  
    * Applications?  
        * HTML Validators  
* Interaction data  
* Issues  
* Downloads  
* Bug reports  
* Mailing lists  
* Change sets  
* IRC logs  
* Network data  
    * Applications?  
        * What are users doing?  
            * What features are they using?  
    * Representation  
        * Data streams  
