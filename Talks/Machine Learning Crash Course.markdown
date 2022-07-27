# Machine Learning Crash Course  
  
Nevena Milojkovic crash course 2018-08-10  
  
## Example  
  
* Detecting spam/phishing emails  
    * We use our experience to classify emails as spam or not.  
  
## ML  
  
* Input: classified emails  
* Generate representation vector for each email  
    * How do you decide what information to represent?  
* Classification algorithm finds a hyper-plane  that separates spams from non-spams  
    * Non-linear separations are much harder  
  
## Logistic Regression  
  
* Simplest classification algorithm  
* For 2D vectors, the separation is a line (ax+by+c=0)  
    * In general a hyperplane a1x1+a2x2+... = 0  
* Start with a=b=0  
* Cost function measures error with cost = 0 or 1  
* Iteratively update a and b  
* Inequations ax+by>0 (resp.<0) perform the classification  
    * Sigmoid function gives certainty that classification is correct  
    * I.e., 1/(1+e^-(ax+by+c))  
        * On the line gives certainty 0.5  
  
## Deep learning  
  
* Neural network with multiple layers  
    * Basic NN: input, function and output  
  
## Number of features  
  
* Too few or many features can lead to under- or overfitting  
* Overfitting = works only for your training set  
  
## Feature normalization  
  
* All features should have same scale  
    * Eg from 0 to 1  
* Usual approach: subtract mean and divide by SD  
    * Assumes normal distribution  
    * Alternative: scale to max-min  
  
## Outliers  
  
* Often removed  
  
## Supervised ML  
  
* Requires training set with ground truth (labels)  
* Approaches  
    * Linear Regression  
        * Fitting a function f(xi)=a1xi1+a2xi2+...  
        * Can be univariate (one argument) or multivariate  
        * Usually uses sum of squares of differences cost function  
        * Fast to model  
        * Easy to understand  
        * Not good for complex relationships  
            * NB: Can use PCA to test if linear relations exist in multi-dimensional data  
            * Can also try visualization  
    * Polynomial Regression  
        * More expensive than LR  
        * Use neural nets to compute  
        * Fast to model  
        * Challenging to design  
    * Logistic Regression  
        * Most basic method for binary classification  
        * Can combine several LR algorithms for multiclass classification  
            * Get one hyperplane for each category to be identified  
    * Support Vector Machines  
        * Refinement of LR  
        * Finds the hyperplane with the largest margin  
        * Most powerful "off-the-shelf" classifier  
    * Decision Trees  
        * Tree of decisions, one for each feature  
            * Use to classify data or predict a numerical value  
        * ML derives tree by measuring the "purity" of using each feature as the next step in the decision tree  
        * Effective for non-linear combinations  
        * Easy to understand  
        * Prone to overfitting  
            * Can address by pruning tree at some level  
        * Requires more memory  
    * Random Forests  
        * Refinement of decision trees  
        * Divide training data into random subsets of equal size and generate a decision tree for each subset  
            * How do you decide the size of the random subsets?  
        * Use "ensemble" of trees in parallel and vote or average result  
            * Is there a way to measure the "certainty" of the result? (Level of agreement.)  
    * K-Nearest Neighbours  
        * Used for both classification and numerical prediction  
        * Training data should be in a vector space  
        * Estimate values based on those of the k nearest neighbours  
            * Vote or average  
            * High k underfits; low k overfits  
        * How to find k?  
            * Use a cost function to find a good value for k  
            * Or: take square root of the number of data items ?!  
            * Use k-fold cross validation  
                * Usually split data into 70% training and 30% test data  
                * Instead 60% training, 20% validation, 20% test data.  
                    * [What is the difference between validation and test data?!]  
                        Link: [en.m.wikipedia.org/wiki/Training,_test,_and_validation_sets][1]  
  
                    * Validation is for tuning hyperparameters  
                        Link: [en.m.wikipedia.org/wiki/Hyperparameter][2]  
  
                        * To avoid overfitting  
                * K-fold: split training and validation data into k sets  
                    * Use one subset for validation  
                    * Rotate the sets  
                    * Keep the test data separate  
                    * K = 10 is common  
                * Can be used to find the best k for k-nearest neighbours  
    * Neural Networks  
        * Effective for non-linear combinations  
        * Flexible for learning in any kind of relation  
        * Not easy to interpret  
        * Challenging to train  
        * Requires lots of data for high performance  
* Pros and cons  
    Link: [kdnuggets.com/2018/08/selecting-best-machine-learning-algorithm-regression-problem.html][3]  
  
## Unsupervised learning  
  
* No ground truth  
    * Computer decides  
    * Good for clustering  
* Approaches  
    * K-Means  
    * Principle Component Analysis (PCA)  
    * Anomaly Detection  
    * Recommender systems  
  
## Neural Networks  
  
Third session  
  
* Input nodes plus bias node feed into hidden nodes/layers  
* Training  
    * Use sigmoid function as "activation function" to combine inputs and weights  
        * 1/(1 + e ^ -(x0 * theta0 + x1 * theta1 + ...))  
        * Alternative is tanh(x) = 2 * sigmoid(2x) - 1  
    * Search for weights that get close to optimum values  
    * Use Newton's method?  
        * Take derivatives to select new weights and iterate  
* Recurrent NN  
    * Good for sequences  
  
[1]: https://en.m.wikipedia.org/wiki/Training,_test,_and_validation_sets  
[2]: https://en.m.wikipedia.org/wiki/Hyperparameter  
[3]: https://www.kdnuggets.com/2018/08/selecting-best-machine-learning-algorithm-regression-problem.html  
