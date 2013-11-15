Analysis Write-Up
=================

Introduction
------------

[Lending Club](https://www.lendingclub.com/) is an online financial community that
brings together borrowers and investors replacing the high cost and complexity of
bank lending with a faster way to borrow and invest.

Borrowers can apply for a loan online and get an instant rate quote.
Lending Club claims that the interest rate of these loans is determined on the basis
of characteristics of the person asking for the loan such as their employment history,
credit history, and creditworthiness scores. 

Here we performed an analysis to determine if there was a significant association
between the interest rate of the loan and the characteristics of borrowers.
Using exploratory analysis and standard multiple regression techniques we show
that there is a significant relationship between interest rate and FICO score
[[1](#fico-score)], even after adjusting for confounders such as the amount
funded and the loan length.

Our analysis suggests that lower loan rate is associated with higher FICO score.

Methods
-------

### Data Collection

For our analysis we used a sample of 2,500 peer-to-peer loans issued through the
Lending Club. The data were downloaded, using the R programming language
[[2](#r-language)], from here:

<https://spark-public.s3.amazonaws.com/dataanalysis/loansData.csv>

There is a code book for the variables in the data set available here:

<https://spark-public.s3.amazonaws.com/dataanalysis/loansCodebook.pdf>

### Exploratory Analysis

### Statistical Modeling

### Reproducibility

Analysis
--------

Conclusions
-----------

References
----------

1.  <a name="fico-score"/>FICO score: <http://en.wikipedia.org/wiki/Credit_score_in_the_United_States>
2.  <a name="r-language"/>The R Project for Statistical Computing <http://www.R-project.org>
