#Data
#  revenue and expenses for each month of a firm
revenue <-
  c(
    14574.49,
    7606.46,
    8611.41,
    9175.41,
    8058.65,
    8105.44,
    11496.28,
    9766.09,
    10305.32,
    14379.96,
    10713.97,
    15433.50
  )
expenses <-
  c(
    12051.82,
    5695.07,
    12319.20,
    12089.72,
    8658.57,
    840.20,
    3285.73,
    5821.12,
    6976.93,
    16618.61,
    10054.37,
    3803.96
  )

#Solution
#profit for each month
profit <- revenue - expenses
round(profit)

#profit after tax for each month
#30% tax applied
profitAfterTax <- profit * (1 - 0.30)
round(profitAfterTax)

# profit margin for each month - equals to profit a after tax divided by revenue
netProfitMargin <- profitAfterTax / revenue
netProfitMargin

#converting profit Margin into percentage
install.packages("formattable")
library(formattable)
netProfitMargin <- percent(netProfitMargin)
netProfitMargin

#good months - where the profit after tax was greater than the mean for the year
#bad months - where the profit after tax was less than the mean for the year
meanProfit <- mean(profitAfterTax)
round(meanProfit)
goodMonths  <- vector()
badMonths   <- vector()
for (i in 1:length(profitAfterTax))
{
  if (profitAfterTax[i] > meanProfit)
  {
    goodMonths <- c(goodMonths, month.abb[i])
  }
  else
  {
    badMonths <- c(badMonths, month.abb[i])
  }
}
bestMonth <- month.abb[which.max(profitAfterTax)]
worstMonth <- month.abb[which.min(profitAfterTax)]

#printing  values
goodMonths
badMonths
bestMonth
worstMonth
