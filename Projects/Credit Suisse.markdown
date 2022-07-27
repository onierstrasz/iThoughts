# CS projects  
  
## what they need  
  
* an overview of the system  
    * want to use basic metrics  
* test coverage  
    * number of test classes  
* detect dead code  
* based on the meeting in zurich  
* quality metrics and threshholds  
    * documentation size  
* historical analysis  
    * age of components  
        * last time modified  
    * quality over time  
    * number of changes over a year to a component  
* architecture  
    * validate based on configuration files  
* detect dependencies between JAP framework and application code  
  
## CS proposals  
  
* 1 Code Metrics  
    * comparison to OSS  
        * seems irrelevent  
    * CS wants to check their own code quality  
    * Which metrics can help to assess code quality?  
        * refactor if threshold surpassed  
    * check adherence to code guidelines  
        * cf rule sets  
        * anti patterns  
* 2 Code Repo Evolution Mining  
    * recover code metrics over time  
        * what is the goal?  
* 3 Arch Analysis  
    * assess current component arch wrt reuse and other goals  
  
## What we would like to do  
  
* Predicting bugs  
    * based on source metrics  
    * process metrics  
* Architectural analysis  
    * What are the components?  
        * JAR?  
        * Set of objects?  
        * Package?  
    * What is the real goal?  
