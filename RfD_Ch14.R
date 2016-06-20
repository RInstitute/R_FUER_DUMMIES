
################################
# R fuer Dummies Kapitel 14
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"
getwd()

?mtcars

options("width" = 55)
sapply(mtcars, function(x) length(unique(x)))

autos <- mtcars[c(1,2,9,10)]
autos$gear <- ordered(autos$gear)
autos$am <- factor(autos$am, labels = c("aut", "man"))

mtcars[c(9)]
autos

str(autos, vec.len=2)

mean(autos$mpg)

median(autos$cyl)

sd(autos$mpg)

range(autos$mpg)

quantile(autos$mpg)

fivenum(autos$mpg)

quantile(autos$mpg, probs = c(0.05, 0.95))

amtabelle <-table(autos$am)
amtabelle

class(amtabelle)

amtabelle/sum(amtabelle)

prop.table(amtabelle)

index <- amtabelle == max(amtabelle)
names(amtabelle)[index]
getwd()


mpgdichte <- density(autos$mpg)


summary(autos)
str(autos)

'character'

autos$cyl <- as.factor(autos$cyl)

boxplot(mpg ~ cyl, data=autos)

mpghist <- hist(autos$mpg)

mpgbox <- boxplot(mpg ~ cyl, data=autos)
n <- nlevels(as.factor(autos$cyl))
text(1:n, mpgbox$stats[1,],
     paste('n=', mpgbox$n),
     pos = 1)

mpgbox$stats

names(iris)

plot(iris[-5])

with(iris, cor(Petal.Width, Petal.Length))

iris.kor <- cor(iris[-5])

str(iris.kor)

iris.kor['Petal.Width','Petal.Length']

#use='everything'
#use='complete.obs'
#use='pairwise'

with(autos, table(am,gear))

versuch <- matrix(c(34,11,9,32), ncol = 2)
colnames(versuch) <- c('krank','gesund')
rownames(versuch) <- c('risiko','bewusst')
versuch.tabelle <- as.table(versuch)

versuch.tabelle
versuch.tabelle['risiko','krank']

versuch.ds <- as.data.frame(versuch)
str(versuch.ds)

versuch.tabelle.ds <- as.data.frame(versuch.tabelle)
str(versuch.tabelle.ds)

addmargins(versuch.tabelle)

addmargins(versuch.tabelle, margin=2)

prop.table(versuch.tabelle)

prop.table(versuch.tabelle, margin=1)

addmargins(prop.table(versuch.tabelle))

prop.table(versuch.tabelle, margin=1)


xxx

# Plots

tiff(filename = "9781119962847-fg1401_de.tiff",width = 1036, height = 584, pointsize = 14)
old.par <- par(mfrow = c(1,2), cex = 1.2)
hist(autos$mpg, col = 'grey')
hist(autos$mpg, breaks = c(5,15,25,35))
par(old.par)
dev.off()

tiff(filename = "9781119962847-fg1402_de.tiff",width = 1036, height = 584, pointsize = 16)
old.par <- par(mfrow = c(1,2), cex = 1)
plot(mpgdichte, xlab= "N = 32  Bandbreite = 2,477")
hist(autos$mpg, col = 'grey', freq = FALSE)
lines(mpgdichte)
par(old.par)
dev.off()


options(old.options)

