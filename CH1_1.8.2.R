install.packages("descr")
library(descr)
lc_loans <- read.csv(file = "../Data_psds/lc_loans.csv")
x_tab <- CrossTable(lc_loans$grade, lc_loans$status, 
                    prop.c=FALSE, prop.chisq=FALSE, prop.t=FALSE)
