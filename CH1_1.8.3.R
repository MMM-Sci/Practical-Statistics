airline_stats <-read.csv(file = "../Data_psds/airline_stats.csv")
boxplot(pct_carrier_delay~airline, data = airline_stats, ylim = c(0, 50))
install.packages("ggplot2")
library(ggplot2)
ggplot(data = airline_stats, aes(airline, pct_carrier_delay)) +
  ylim(0, 50) +
  geom_violin() +
  labs(x = "", y = "Daily % of Delayed Flights")