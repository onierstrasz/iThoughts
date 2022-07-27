# Advanced Design Lab 2014  
  
P2 Advanced Design Lab, 2014-04-11  
  
## Initial reqts  
  
* TelCo Invoices  
    * Local Calls  
        * Peak: $1/m  
        * Off-peak: $0.50/m  
    * National Calls  
        * $1.50/m  
    * International  
        * $2/m  
* Objects  
    * Calls  
        * aLocalCall  
            * startTime  
            * duration  
            * price  
            * toString  
                * For printing  
        * aNationalCall  
        * anInternationalCall  
    * aUser  
    * anInvoice  
        * print  
    * aTelcoInvoiceSystem  
        * addUser  
  
## First extension  
  
* Add peak hours for international calls  
    * Also different peak hours on weekends  
* Objects  
    * aCall  
        * Inheritance is not needed  
        * startTime  
        * duration  
        * toString  
        * origin  
        * destination  
    * aUser  
    * anInvoice  
        * print  
    * aTelcoInvoiceSystem  
        * addUser  
    * aPriceCalculator  
        * Prices may change, so make them objects  
        * computePrice  
        * priceDatabase  
  
## Second extension  
  
* Interregional calls have special prices  
    * Regions change  
    * Prices and their calculation change  
* Objects  
    * New design should localize change  
    * aCall  
        * startTime  
        * duration  
        * toString  
        * origin  
        * destination  
    * aUser  
    * anInvoice  
        * print  
    * aTelcoInvoiceSystem  
        * addUser  
    * aPriceCalculator  
        * computePrice  
        * priceDB  
    * aCallClassifier  
        * regionDB  
    * Strategies  
        * Strategies for computing prices may change, so reify them  
        * aLocalStrategy  
        * aRegionalStrategy  
  
## Third extension  
  
* Special discounts  
    * Special numbers  
    * May depend on regions, users, holidays etc  
    * Need to remember how price is computed!  
* Objects  
    * aCall  
        * startTime  
        * duration  
        * toString  
        * origin  
        * destination  
        * accept(aVisitor)  
    * aClassifiedCall  
        * Remember price once it is computed  
        * getPrice  
        * accept(aVisitor)  
    * aPriceVisitor  
        * visit(aCall)  
            * Computes prices  
        * visit(aClassifiedCall)  
            * Returns computed price  
    * aUser  
    * anInvoice  
        * print  
    * aTelcoInvoiceSystem  
        * addUser  
    * aPriceCalculator  
        * computePrice  
        * priceDB  
    * aCallClassifier  
        * regionDB  
    * Strategies  
        * aRegionalStrategy  
        * aLocalStrategy  
    * aDiscount  
        * compute  
    * aDiscountValidator  
        * validityDB  
