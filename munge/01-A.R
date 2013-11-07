# Convert Interest.Rate and Debt.To.Income.Ratio to numeric
loansData$Interest.Rate <- as.numeric(gsub("%$", "", loansData$Interest.Rate))
loansData$Debt.To.Income.Ratio <- as.numeric(gsub("%$", "", loansData$Debt.To.Income.Ratio))

# Convert Loan.Length to integer
loansData$Loan.Length <- as.integer(gsub(" months$", "", loansData$Loan.Length))
names(loansData)[4] <- "Loan.Length.Months"