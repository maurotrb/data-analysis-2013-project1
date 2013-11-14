## @knitr raw_data
loansDataRaw <- loansData

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

## @knitr emplength_to_integer
loansData$Employment.Length <- gsub("^<.*", "0", loansData$Employment.Length)
loansData$Employment.Length <- gsub("^([0-9]+)(\\+)? years$", "\\1", loansData$Employment.Length)
suppressWarnings(loansData$Employment.Length <- as.integer(loansData$Employment.Length))

## @knitr fico_lower_upper_median
loansData$FICO.Lower <- as.numeric(lapply(strsplit(loansData$FICO.Range,"-"),"[",1))
loansData$FICO.Upper <- as.numeric(lapply(strsplit(loansData$FICO.Range,"-"),"[",2))
loansData$FICO.Median <- (loansData$FICO.Lower + loansData$FICO.Upper) / 2

## @knitr amount_funded_zero2na
loansData[loansData$Amount.Funded.By.Investors<=0,2] <- NA

## @knitr amount_funded_ranges
loansData$Amount.Funded.Range <- cut2(loansData$Amount.Funded.By.Investors, g=3)
