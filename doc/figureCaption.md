Figure 1. Lending Club loans. Relationship between Interest rate and FICO score.
--------------------------------------------------------------------------------

_FICO score_ is the best predictor for loan rate, but there are not explained variations
to the linear model. Two confounders was selected during the exploration and the analysis:
_loan length_ and _amount funded_.

*  **Panel (a)**. Points colored by loan lenght. Variations not explained by FICO
   scores could be attributed to loan lenght: negative variations (lower interest rate)
   to 36 months length, positive variations (higher interest rate) to 60 months length
*  **Panel (b)**. Points colored by amount funded, divided in three range (quantiles).
   Variations not explained by FICO scores could be attributed to amount funded:
   negative variations (lower interest rate) to the first two quantiles (from $200 to
   $14,075), positive variations (higher interest rate) to the last quantiles
   (from $14,075 to $35,000)

Sample of 2494 loans. 6 observations present in the original data were discarded
because the amount funded was not significant (0 and -0.10 dollars).
FICO score was divided in 38 ranges: plotting is based on the median value of each range.
Linear model is showed as a grey line.
