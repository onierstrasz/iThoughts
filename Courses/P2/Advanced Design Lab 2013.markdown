# Advanced Design Lab 2013  
  
2013-05-10  
With Andrei Chis  
  
## First discussion round  
  
* figure out which objects are needed  
  
## Start with three objects  
  
* local, national, international  
* messages  
    * duration  
    * price  
    * start time  
* all objects respond to all messages  
  
## Add a customer  
  
* has a list of calls  
* a visitor to compute the prices  
  
## add a new kind of interregional call  
  
* propose to have a single call class  
* can have different "types"  
* understands  
    * duration  
    * start time  
    * destination  
* need a calculator  
    * priceFor aCall  
    * priceForCalls aCallList  
* add a price decoder  
    * avoid big switch statement  
  
## Second discussion round  
  
* play through invoice printing scenario  
* figure out how to get rid of big switch statements  
  
## How to compute invoice?  
  
* invoice object  
    * print aCallList  
* database to look up prices?  
    * not flexible  
    * won't handle more complex discounts  
* introduce objects to model classification strategies  
    * can add new strategies dynamically  
  
## Lessons  
  
* Model important concepts as objects  
* Why have an object rather than a method (to calculate prices)  
    * You can replace an object  
* Don't prematurely classify objects into hierarchies  
    * Favour composition and delegation over inheritance  
    * Can be modeled as properties of objects  
    * eg a classified call  
* Keep responsibilities distinct  
    * calls shouldn't know how to classify themselves  
* Avoid "big switch" statements  
    * use objects to model choices  
    * eg pricing schemes  
