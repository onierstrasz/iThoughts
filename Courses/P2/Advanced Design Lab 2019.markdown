# Advanced Design Lab 2019  
  
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
  
* aClient  
    * printInvoice()  
* anInvoice  
* aLocalCall  
    * calculatePrice()  
    * isPeak()  
* aNationalCall  
    * calculatePrice()  
* anInternationalCall  
    * calculatePrice()  
  
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
  
* aCalculator  
    * computePrice(aCall)  
* anInvoiceSystem  
* aClient  
    * printInvoice()  
* anInvoice  
    * toString()  
* aCall  
    * getPrice()  
    * getType()  
    * from()  
    * to()  
  
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
  
* anInvoiceSystem  
* aCalculator  
    * computePrice(aCall)  
* Strategies  
    * aLocalPriceStrategy  
    * anEUPriceStrategy  
    * ...  
    * Encodes logic to compute price for a region  
* RegionFilter  
    * aLocalRegionFilter  
    * anEURegionFilter  
    * ...  
    * Encodes logic to decide if a call matches a region/strategy  
* aClient  
    * printInvoice()  
* anInvoice  
    * toString()  
* aCall  
    * getPrice()  
    * getType()  
    * getRegion()  
    * from()  
    * to()  
