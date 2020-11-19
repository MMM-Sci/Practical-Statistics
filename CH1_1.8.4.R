kc_tax <- read.csv(file = "../Data_psds/kc_tax.csv")
kc_tax0 <- subset(kc_tax, TaxAssessedValue < 750000 & SqFtTotLiving > 100 &
                    SqFtTotLiving < 3500)
install.packages("ggplot2")
library(ggplot2)

ggplot(subset(kc_tax0, ZipCode %in% c(98188, 98105, 98108, 98126)),
  aes(x=SqFtTotLiving, y=TaxAssessedValue)) +
  stat_binhex(colour = "white") +
  theme_bw()+ 
  scale_fill_gradient(low = "white", high = "blue") + 
  labs(x = "Finished Square Feet", y = "Tax Assessed Value") +
  facet_wrap("ZipCode")
