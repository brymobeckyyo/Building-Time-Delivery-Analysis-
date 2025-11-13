#######Checking the normality assumption
attach(Building_Project)
mean(Proposed)
mean(Actual)
diff=Actual-Proposed
mean_diff=mean(diff)
mean_diff
################ checkking the normality assumption
shapiro.test(diff)
######p<0.05, the data is not normal
######## Visualizing the normal plot
plot(Proposed, Actual)
qqnorm(diff)
qqline(diff, col=2)
######performing the wilcoxon signed Rank Test since that data is not normal
wilcox.test(Proposed,Actual, paired=TRUE)
#######p<0.05, there is statistically difference beftween proposed and actual mean.
#####checking effect size, which measures the strength or magnitude of the effects
######Using Cohen's' d
sd_diff=sd(diff)
cohen_d=mean(diff)/sd(diff)
cohen_d
#####Based on cohen d interpretation
#####the size size is small which implies the actual duration takes a little whaile than the proposed duration
boxplot(Proposed, Actual, main='Paired Data Comparison', col=c(2,4), names=c('Proposed','Actual'))

