## @knitr percentage_to_numeric
loansData$Interest.Rate <- as.numeric(gsub("%$", "", loansData$Interest.Rate))
loansData$Debt.To.Income.Ratio <- as.numeric(gsub("%$", "", loansData$Debt.To.Income.Ratio))

## @knitr months_to_integer
loansData$Loan.Length <- as.integer(gsub(" months$", "", loansData$Loan.Length))
names(loansData)[4] <- "Loan.Length.Months"

## @knitr purpose_to_pc
loansData$Loan.Purpose <- helper.capwords(loansData$Loan.Purpose, "_")
loansData$Loan.Purpose <- gsub("_", ".", loansData$Loan.Purpose)

## @knitr ownership_to_pc
loansData$Home.Ownership <- helper.capwords(loansData$Home.Ownership, strict=TRUE)
