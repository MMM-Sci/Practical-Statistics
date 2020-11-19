kc_tax <- read.csv(file = "../Data_psds/kc_tax.csv")
kc_tax0 <- subset(kc_tax, TaxAssessedValue < 750000 & SqFtTotLiving > 100 &
                    SqFtTotLiving < 3500)
nrow(kc_tax0)
install.packages("ggplot2")
install.packages("hexbin")
library(ggplot2)
library(hexbin)
ggplot(kc_tax0, (aes(x=SqFtTotLiving, y=TaxAssessedValue))) +
  stat_binhex(colour = "white") +
  theme_bw()+ 
  scale_fill_gradient(low = "white", high = "black") + 
  labs(x = "Finished Square Feet", y = "Tax Assessed Value")

ggplot(kc_tax0, aes(SqFtTotLiving, TaxAssessedValue)) +
  theme_bw() + 
  geom_point( alpha=0.1) + 
  geom_density2d(colour="white") + 
  labs(x="Finished Square Feet", y="Tax Assessed Value")

