
################################
# R fuer Dummies Kapitel 13
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"

str(islands)

islands[]

islands[c(8,1,1,42)]

islands[-(3:46)]

islands[islands < 20]

islands[c("Madagascar", "Cuba")]

str(iris)

iris[1:5,]


iris[,c("Sepal.Length", "Sepal.Width")]

iris[,c("Sepal.Length")]

iris[,c("Sepal.Length"), drop=FALSE]

iris['Sepal.Length']

iris[1:5,c("Sepal.Length", "Sepal.Width")]

set.seed(2)
sample(1:6,10,replace=TRUE)

set.seed(1)
sample(1:6,10,replace=TRUE)

set.seed(123)
index <- sample(1:nrow(iris), 5)
index
iris[index,]

duplicated(c(1,2,1,3,1,4))
#options("width" = 60)
duplicated(iris)

which(duplicated(iris))

iris[!duplicated(iris),]

index <- which(duplicated(iris))
iris[-index]

str(airquality)
complete.cases(airquality)

airquality[!complete.cases(airquality),]

x <- airquality[complete.cases(airquality),]
str(x)

x <- iris$Sepal.Length / iris$Sepal.Width

head(x)

y <- with(iris, Sepal.Length/Sepal.Width)

head(y)

identical(x,y)

iris.test <- with(iris, Sepal.Length/Sepal.Width)

iris.neu <- within(iris, ratio <- Sepal.Length/ Sepal.Width)

head(iris.neu$ratio)
head(iris.test)

iris$ratio <- iris$Sepal.Length / iris$Sepal.Width

iris <- within(iris, ratio <- Sepal.Length/ Sepal.Width)

head(iris$ratio)

#options("width" = 78)
head(state.x77)

frost <- state.x77[,"Frost"]
head(frost, 5)

#options("width" = 70)
cut(frost, 3, include.lowest=TRUE)

cut(frost, 3, include.lowest=TRUE, labels=c("selten","mittel","h?ufig"))

x <- cut(frost, 3, include.lowest=TRUE, labels=c("selten","mittel","h?ufig"))
table(x)

alle.Staaten <- as.data.frame(state.x77)
head(alle.Staaten)
alle.Staaten$Name <- rownames(state.x77)
rownames(alle.Staaten) <- NULL
head(alle.Staaten)

str(state.x77)

str(alle.Staaten)

kalte.Staaten <- alle.Staaten[alle.Staaten$Frost > 150,c("Name", "Frost")]
kalte.Staaten

grosse.Staaten <- alle.Staaten[alle.Staaten$Area >= 100000, c("Name","Area")]
grosse.Staaten

merge(kalte.Staaten, grosse.Staaten)
rm(kalte.staaten)

merge(kalte.Staaten, grosse.Staaten, all=TRUE)

index <- match(kalte.Staaten$Name, grosse.Staaten$Name)
index

grosse.Staaten[na.omit(index),]

index <- kalte.Staaten$Name %in% grosse.Staaten$Name
index

!is.na(match(kalte.Staaten$Name, grosse.Staaten$Name))


kalte.Staaten
grosse.Staaten

kalte.Staaten[index,]

?"%in%"

einige.Staaten <- data.frame(
  Region = state.region,
  state.x77)


einige.Staaten <- einige.Staaten[1:10, 1:3]
einige.Staaten

options("width" = 60)
sort(einige.Staaten$Population)

sort(einige.Staaten$Population, decreasing=TRUE)

reihenfolge.pop <- order(einige.Staaten$Population)
reihenfolge.pop

einige.Staaten$Population[reihenfolge.pop]

einige.Staaten[reihenfolge.pop, ]

order(einige.Staaten$Population)
order(einige.Staaten$Population, decreasing=TRUE)

einige.Staaten[order(einige.Staaten$Population, decreasing=TRUE), ]

index <- with(einige.Staaten, order(Region, Population))
einige.Staaten[index, ]

xtfrm(einige.Staaten$Region)


index <- order(-xtfrm(einige.Staaten$Region), einige.Staaten$Population)
einige.Staaten[index, ]

str(Titanic)


Titanic[,1, ,]

apply(Titanic, 1, sum)

apply(Titanic, MARGIN=c("Class","Sex"), sum)


test.matrix <- array(c(1:8), dim = c(2,2,2))
test.matrix

apply(test.matrix,c(1,3),sum)

apply(Titanic, 3, sum)

apply(Titanic, c(3, 4), sum)

lapply(iris, class)

sapply(iris, class)

str(sapply(iris,class))

sapply(iris, mean)

sapply(iris, function(x) ifelse(is.numeric(x), mean(x),NA))

tapply(iris$Sepal.Length, iris$Species, mean)

with(iris, tapply(Sepal.Length, Species, mean))

head(mtcars)

str(mtcars)

autos <- within(mtcars, 
      am <- factor(am, levels=0:1, labels=c("auto","man"))
      )

with(autos, tapply(mpg, am, mean))

with(autos, tapply(mpg, list(gear, am), mean))

with(autos, aggregate(mpg, list(gear=gear, am=am), mean))

aggregate(mpg ~ gear + am, data=autos, mean)


spiele.omas <- data.frame(Spiel=c("1.","2.","3.","4."),
                          Ort = c("Bruegge", "Gent", "Gent", "Bruegge"),
                          Oma = c(12, 4, 5, 6),
                          Margarete = c(5, 4, 2, 4),
                          Gabriele = c(11, 5 ,6, 7))

spiele.omas

aov(mpg ~ gear + am, data = autos)

library(lattice)
xyplot(mpg ~ gear + am, data=autos)

library(reshape2)
m.spiele.omas <- melt(spiele.omas)
m.spiele.omas
dcast(m.spiele.omas, variable ~ Ort, sum)

"reshape2"

m.spiele.omas <- melt(spiele.omas, id.vars=c("Spiel", "Ort"))
m.spiele.omas


dcast(m.spiele.omas, Ort + Spiel ~ variable, sum)

dcast(m.spiele.omas, variable ~ Ort, sum)

dcast(m.spiele.omas, Ort ~ variable, sum)

dcast(m.spiele.omas, Ort + variable ~ Spiel, sum)

#install.packages("ggplot2")
library(grid)

library(ggplot2)
ggplot(m.spiele.omas, aes(x=variable, y=value, fill=Spiel)) + geom_bar()


ggplot(m.spiele.omas, aes(x=variable, y=value, fill=Spiel)) + 
  geom_bar() + xlab("Spielerin") + ylab("K?rbe") + 
  theme(axis.title.x = element_blank()) + 
  theme(axis.title.y = element_text(size=10)) + 
  theme(axis.text.x = element_text(color = "black", size=10)) + 
  theme(axis.text.y = element_text(color = "black", size=10)) + 
  theme(legend.title = element_text(size=10, face="bold")) + 
  theme(legend.text = element_text(size = 10)) +
  theme(legend.key.size = unit(14, "pt"))

ggsave(filename="test.tiff", dpi=380, scale = 1, height = 6, width = 12, units = "cm" )

    #ggplot(m.spiele.omas)

str(m.spiele.omas)

#update.packages()

getwd()

xxx

options(old.options)