# Verification of Software Product Lines  
  
Dagstuhl 12511 working group; Dec 18, 2012  
Participants: Ina Schaefer, Shri Krishnamurti, Kathi Fisler, Ferruccio Damiani, Oscar Nierstrasz, Christian Kästner, Susanne Graf, Shmuel Katz, Doron Peled, Andrzej Wasowski, Dilian Gurov  
  
## SPLs  
  
* feature-based  
    * compositional  
    * still need to check in a product-based way  
    * check for feature interference  
        * not necessarily a bad thing  
        * could just be a guideline  
* family-based  
    * meta-program contains everything  
        * only need to check it once  
        * checking it implicitly checks all variants  
* product-based  
    * brute force  
    * avoid this!  
        * each product must be separately verified  
  
## Questions  
  
* Goals?  
    * building SPL and checking all variants  
    * building a product and then reasoning incrementally  
* What do real SPLs look like?  
    * ifdefs  
    * component frameworks  
    * policy separation  
    * metaprogramming  
    * turning features on and off  
    * DSLs  
* What are properties we want to prove?  
    * anything specific to SPLs?  
        * Shri: mostly specific to some small number of features  
* What's the interface of a feature?  
    * Want to reason at feature level  
        * but features are inherently incomplete  
  
## Models of SPLs  
  
* Base product and extension layers that add features  
    * Base defines what it is a product line of  
    * Eg all cars have a transmission, wheels etc  
    * within a layer, features are "parallel"  
        * though the system enables only one feature at a time  
    * Extensions in OO languages can translate to mixins or traits  
        * need to abstract over what you extend  
        * But features are cross cutting, so need to extend many classes  
            * generalize to e.g. mixin layers, aspects, classboxes etc  
    * What happens if you change entities (features?) from the base system?  
        * what impact does this have on verification?  
* SK: any system that is configurable can be seen as a SPL!  
  
## Challenge  
  
* Given: Base and set of features  
    * Set of desired global product properties  
* Can we verify features to prove properties of products without brute force verification of each individual product?  
    * what is the analysis methodology?  
    * how do you write these things down?  
        * Ina: JML contracts  
        * Schmuel: No. Features are system transformers  
            * JML doesn't have mechanisms to talk about the properties you want  
            * Need assume/guarantee about system before and after transform  
            * For aspects use model checking  
    * IS: problem is to verify incomplete features  
        * most tools assume closed, not open systems/components  
        * can use stubs for missing parts  
            * keep refining stubs until you get a proof  
        * IS: Currently using KeY tool for verifying Java code wrt JML specs  
            Link: [en.wikipedia.org/wiki/KeY][1]  
  
            * want to make this scale  
            * delta-oriented programming  
                * add, remove, modify methods classes ...  
    * SG: actually verifying components is easy  
        * what is hard is to discharge the assumptions in the context of the whole system  
        * Shri: still easier than solving the general compositionality problem  
            * constrained to context of SPL  
        * KF: it also helps that you know the set of features  
    * IS: what do you do about interfering features?  
        * not necessarily a problem  
            * have guideline to avoid combining features in same application  
            * can also accept and cope with interference  
        * is it enough to analyze pairwise interference?  
            * probably not  
    * IS: It seems that aspects and model-checking might be a better approach  
        * Shri: aspects are often confused with low-level code munging  
        * SK: instead you should understand them as system transformers  
  
[1]: http://en.wikipedia.org/wiki/KeY  
