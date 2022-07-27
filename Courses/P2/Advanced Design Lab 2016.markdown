# Advanced Design Lab 2016  
  
## TelCo initial requirements  
  
* Print invoices for customers  
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
  
## First design  
  
* What objects do we need?  
    * …  
    * a Telco Invoicing System  
    * a Customer  
    * an Invoice  
    * Calls  
        * a Local Call  
            * price  
            * duration  
            * start time  
        * a National Call  
            * price  
            * duration  
            * start time  
        * an International Call  
            * price  
            * duration  
            * start time  
  
## TelCo new requirements  
  
* Print invoices for customers  
* Kinds of calls  
    * Local calls  
        * Peak  
            * 1 CHF/m  
        * Off-peak  
            * 0.90 CHF/m  
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
  
## Second design  
  
* What objects do we need?  
    * …  
    * a Telco Invoicing System  
        * assignPricePlan(aCall)  
    * a Customer  
    * an Invoice  
    * a Call  
        * price  
        * duration  
        * start time  
    * Price plans  
        * a Price Plan  
            * calculate(duration,start date)  
        * a Local Price Plan  
            * calculate(duration,start date)  
  
## Third requirements  
  
* New kinds of calls can be added dynamically  
    * Cantonal price plan  
    * Continental price plan  
  
## Third design  
  
* What objects do we need?  
    * …  
    * a Telco Invoicing System  
        * assignPricePlan(aCall)  
    * a Customer  
    * an Invoice  
    * a Call  
        * price  
        * duration  
        * start time  
    * Price plans  
        * a Price Plan  
            * calculate(duration,start date)  
        * a Local Price Plan  
            * calculate(duration,start date)  
        * a Cantonal Price Plan  
            * calculate(duration,start date)  
        * a Continental Price Plan  
            * calculate(duration,start date)  
    * Price plan filters  
        * a Price Plan Filter  
            * appliesTo(aCall)  
        * a Local Price Plan Filter  
            * appliesTo(aCall)  
        * a Cantonal Price Plan Filter  
            * appliesTo(aCall)  
        * a Continental Price Plan Filter  
            * appliesTo(aCall)  
