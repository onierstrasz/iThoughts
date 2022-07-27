# Advanced Design Lab 2015  
  
2015-04-24  
Andrei Chis  
  
## V1  
  
* TelCo Invoices  
    * Local Calls  
        * Peak: $1/m  
        * Off-peak: $0.50/m  
    * National Calls  
        * $1.50/m  
    * International  
        * $2/m  
* Objects  
    * Swisscom Invoice Printer  
        * print  
    * Swisscom Invoicing System  
        * create_invoice(client)  
        * clients  
    * Invoice  
    * Client  
        * has  
    * Call  
        * Local call  
            * duration  
            * start time  
            * total price  
        * National call  
            * ...  
        * International call  
            * ...  
  
## V2  
  
* New requirements  
    * Change prices  
    * Peaks hours for all call types  
    * Perhaps more fine-grained  
* Objects  
    * Swisscom Invoice Printer  
        * print  
    * Invoice  
    * Swisscom Invoicing System  
        * create_invoice(client)  
        * clients  
    * Client  
        * has  
    * Call  
        * duration  
        * start time  
        * call type  
        * destination number  
        * computed price  
            * Remember computed price  
        * Eliminate hierarchy  
    * Price List  
        * calculate(aCall)  
        * Global DB of prices  
  
## V3  
  
* New requirements  
    * More kinds of calls  
* Objects  
    * Swisscom Invoice Printer  
        * print  
    * Invoice  
    * Swisscom Invoicing System  
        * create_invoice(client)  
        * clients  
    * Client  
        * has  
    * Call  
        * duration  
        * start time  
        * call type  
        * destination number  
        * computed price  
    * Call Classifier  
        * classify(aCall)  
        * Replace price list by price strategies and a classifier  
    * Price Strategy  
        * Local Price Strategy  
        * Regional Price Strategy  
        * International Price Strategy  
