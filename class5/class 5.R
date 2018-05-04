#' ---
#' title: 'Bioinformatics Class 5'
#' author: "Tanya"
#' date: "April 18, 2018"
#' ---


#plots
x <- rnorm(1000, 0)
mean(x)
sd(x)
summary(x)
#plot the data
boxplot(x)
#histogram
hist(x)
scatter.smooth(x)


#section 1A from lab sheet
# read table
baby <- read.table('bggn213_05_rstats/weight_chart.txt', header = TRUE)
plot(baby, type = 'b', pch =3, cex=2, lwd=2, ylim=c(2,10), lty =2, xlab='Age (months)', ylab='Weight (kg)')

# section 1B
feat <- read.table('bggn213_05_rstats/feature_counts.txt', header=TRUE, sep='\t')
#mar means margin(bottom, left, upper, right)
par(mar=c(5.2, 11, 4.1, 2.1))
barplot(feat$Count, names.arg=feat$Feature, horiz = TRUE, las=2)


#section 1C
example <- c(rnorm(10000),rnorm(10000)+4) 
hist(example, breaks=30)

#section 2A
#male <- read.table('bggn213_05_rstats/male_female_counts.txt', header=TRUE, sep='\t')
male <- read.delim('bggn213_05_rstats/male_female_counts.txt')
mycolor <- rainbow(nrow(male))
barplot(male$Count, names.arg = male$Sample,  horiz = TRUE,col=mycolor)

#section 2B
df <- read.delim('bggn213_05_rstats/up_down_expression.txt')
scatter.smooth(df$Condition1, df$Condition2, col=df$State)
# present how many of different types in State
table(df$State)

#define palett by yourself
palette(c('red', 'green', 'blue'))

#section 2C read data
expression <- read.delim('bggn213_05_rstats/expression_methylation.txt')
#define color by self
map.colors <- colorRampPalette(c('blue','red'))(100)
#then plot
par(mar=c(5,5,4,4))
plot(expression$promoter.meth, expression$gene.meth, col = map.colors)


