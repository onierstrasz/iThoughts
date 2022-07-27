# Applied Statistics for CS  
  
CUSO Seminar May 11-12, 2015  
Bernadetta Tarigan  
  
## Terminology  
  
* Cases  
    * Objects of interest  
* Variables  
    * Categorical  
    * Quantitative  
* “y hat”  
    * “hat” indicates an estimated value  
* “y bar”  
    * “bar” indicates an average value  
  
## Exploring data  
  
* Distribution  
    * Look for overall pattern  
        * center  
        * spread/variability  
        * shape  
    * Look for deviations  
        * Skew  
            * Might want to focus on cases in skewed region  
        * Measures of center  
            * median  
                * robust to extreme values  
            * mean  
                * not robust to extreme values  
            * Standard deviation  
                * Use only for symmetric data  
                * When mean is the measure of center  
        * outliers  
            * e.g. Larger than Q3 *1.5  
* Relationships among variables  
    * CxC  
        * Two-way Tables  
        * Mosaic plots  
            Link: [en.wikipedia.org/wiki/Mosaic_plot][1]  
  
        * Bar plot  
    * QxC  
        * Side by side boxplots  
    * QxQ  
        * Scatter plots  
            Link: [en.wikipedia.org/wiki/Scatter_plot][2]  
  
        * Summary statistics  
        * Correlation  
            Link: [en.wikipedia.org/wiki/Correlation_and_dependence][3]  
  
            * Between -1 and 1  
            * 0 not correlated  
            * Fitting a line  
                * Ordinary Least Squares  
                    Link: [en.wikipedia.org/wiki/Ordinary_least_squares][4]  
  
* Displaying data  
    * Avoid Pie Charts!  
        * Bar charts enable comparison  
    * Stem plot  
        Link: [en.wikipedia.org/wiki/Stem-and-leaf_display][5]  
  
        * After decimal, digits represent number of samples  
        * Good for small data sets  
    * Histograms  
        * better for large data sets  
    * Interquartile ranges  
        * Split into 4x 25%  
            * Sensitive to outliers  
        * Box plots!  
            Link: [en.wikipedia.org/wiki/Box_plot][6]  
  
            * Display inner quartiles  
            * dashed lines at 1.5 * inner quartiles  
            * variations exist …  
    * Normal distributions  
        * Completely determined by µ and sigma  
        * 68% data within 1 sd  
            * 95% with 2x sd  
        * Z is a standard curve w µ = 0 and sd = 1  
  
## Producing Data  
  
* Study Designs  
    * Observational  
        * Cannot determine cause & effect  
    * Experimental  
        * Intervention  
* Sampling  
    * Convenience  
        * bias!  
    * Voluntary  
        * bias!  
    * Simple Random  
        Link: [en.wikipedia.org/wiki/Simple_random_sample][7]  
  
    * Stratified Random  
        Link: [en.wikipedia.org/wiki/Stratified_sampling][8]  
  
        * Categorize population  
            * Mutually exclusive  
            * Exhaustive  
        * Simple random samples from subgroups  
            * Proportional sample sizes!  
  
## Probability  
  
* Discrete random variables  
    * Binomial  
        * n independent trials  
        * e.g. choose 6 people  
            * X = p blood type A  
    * Discrete - uniform  
    * Geometric  
    * Poisson  
* Continuous RV  
    * Normal distribution  
        * Compute p for intervals  
            * P(a<X<b) = P(X<b) - P(X<a)  
        * Use standard normal distribution  
            * Z ~ N(0,1)  
        * Alpha quantile  
            * P(Z < z_alpha) = alpha  
            * So z_0.16 = -1  
                * (16% = (100-68)/2  
    * Uniform  
    * Exponential  
    * Gamma  
    * Ch-squared  
    * t  
    * F  
* Mean and variance  
    * depend purely on parameters of the distribution  
    * E (X) = expected value (mean)  
    * Var (X) = E(X^2) - µ^2 (variance)  
* Chi squared distribution  
    * Sampling distribution of sample variance S^2  
* t distribution  
    * used to estimate mean when sample size is small and sd is unknown  
        * If variance is known, distribution does not matter  
        * Central Limit Theorem (CLT) can be used  
    * t test only applicable to normal distribution!  
  
[1]: http://en.wikipedia.org/wiki/Mosaic_plot  
[2]: http://en.wikipedia.org/wiki/Scatter_plot  
[3]: http://en.wikipedia.org/wiki/Correlation_and_dependence  
[4]: http://en.wikipedia.org/wiki/Ordinary_least_squares  
[5]: http://en.wikipedia.org/wiki/Stem-and-leaf_display  
[6]: http://en.wikipedia.org/wiki/Box_plot  
[7]: http://en.wikipedia.org/wiki/Simple_random_sample  
[8]: http://en.wikipedia.org/wiki/Stratified_sampling  
