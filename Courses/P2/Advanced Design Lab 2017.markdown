# Advanced Design Lab 2017  
  
## TelCo initial requirements  
  
* Print invoices for customers  
    * 1x2" int. + 1x10" nat. + 3x2" peak + 1x20" off-peak  
* Kinds of calls  
    * Local calls  
        * Peak  
            * 1 CHF/m  
        * Off-peak  
            * 0.50 CHF/m  
    * National calls  
        * 1.50 CHF/m  
    * International calls  
        * 2 CHF/m  
  
## First Design  
  
* aTelCo  
* anInvoicePrinter  
    * print(anInvoice)  
* anInvoice  
* aCustomer  
    * location  
* aCallFactory  
    * makeCall(aNumber)  
* Calls  
    * aLocalCall  
        * startTime  
        * endTime  
        * isPeakCall  
        * price  
    * anInternationalCall  
    * aNationalCall  
* abstractPrice  
  
## TelCo requirements v2  
  
* Print invoices for customers  
    * 1x2" int. + 1x10" nat. + 3x2" peak + 1x20" off-peak  
* Kinds of calls  
    * Local calls  
        * Peak  
            * Weekend  
                * 1 CHF/m  
            * Weekday  
                * 0.9 CHF/m  
        * Off-peak  
            * 0.50 CHF/m  
    * National calls  
        * Peak  
            * 1.50 CHF/m  
        * Off-peak  
            * 1.25 CHF/m  
    * International calls  
        * Peak  
            * 2 CHF/m  
        * Off-peak  
            * 1.50 CHF/m  
  
## Second Design  
  
* aTelCo  
* anInvoicePrinter  
    * print(anInvoice)  
* anInvoice  
* aCustomer  
    * location  
* aCallFactory  
    * makeCall(aNumber)  
* aCall  
    * startTime  
    * endTime  
    * caller  
    * callee  
    * price  
* aType  
* aCalculator  
    * priceFor(aCall)  
* aRuleSet  
* aRule  
  
## TelCo requirements v3  
  
* Print invoices for customers  
    * 1x2" int. + 1x10" nat. + 3x2" peak + 1x20" off-peak  
* Kinds of calls  
    * Local calls  
        * Peak  
            * 0.9 CHF/m  
        * Off-peak  
            * 0.50 CHF/m  
        * Same Canton  
            * Always 0.45 CHF/m  
    * National calls  
        * Peak  
            * 1.50 CHF/m  
        * Off-peak  
            * 1.25 CHF/m  
    * International calls  
        * Peak  
            * 2 CHF/m  
        * Off-peak  
            * 1.50 CHF/m  
    * EU call  
        * 0.10 CHF/m  
  
## Third Design  
  
* aTelCo  
* anInvoicePrinter  
    * print(anInvoice)  
* anInvoice  
* aCustomer  
    * location  
* aCallFactory  
    * makeCall(aNumber)  
* aLocalRule  
    * apply(aCall) : Boolean  
* anEURule  
* aCall  
    * startTime  
    * endTime  
    * caller  
    * callee  
    * price  
* aType  
* aCalculator  
    * priceFor(aCall)  
* aRuleSet  
* aRule  
