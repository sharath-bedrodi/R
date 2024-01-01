#Click on the Functions Tab on the Right Hand Side of the IDE. Select MASS.
# Part a: Find the Pearson and Spearman correlation coefficients. Are they similar?
data(mammals)
pearson_corr <- cor(mammals$brain, mammals$body, method = "pearson")
spearman_corr <- cor(mammals$brain, mammals$body, method = "spearman")
print(paste("Pearson correlation coefficient:", pearson_corr))
print(paste("Spearman correlation coefficient:", spearman_corr))

# Part b: Plot the data using the plot command
plot(mammals$body, mammals$brain, xlab = "Body Weight", ylab = "Brain Weight", main = "Body Weight vs. Brain Weight")

# Part c: Plot the logarithm (log) of each variable and see if that makes a difference
plot(log(mammals$body), log(mammals$brain), xlab = "log(Body Weight)", ylab = "log(Brain Weight)", main = "log(Body Weight) vs. log(Brain Weight)")











