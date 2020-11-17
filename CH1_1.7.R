sp500_px <- read.csv(file = "../Data_psds/sp500_px.csv")
sp500_sym <- read.csv(file = "../Data_psds/sp500_sym.csv")
etfs <-sp500_px[row.names(sp500_px)>"2012-07-01",
               sp500_sym[sp500_sym$sector == "etf", 'symbol']]
library(corrplot)
corrplot(cor(etfs), method = "ellipse")

telecom <- sp500_px[, sp500_sym[sp500_sym$sector=="telecommunications_services", 'symbol']]
plot(telecom$T, telecom$VZ, xlab = "T", ylab = "VZ")
