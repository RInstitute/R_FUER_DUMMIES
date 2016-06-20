
################################
# R fuer Dummies Kapitel 19
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"
getwd()

iris.num <- iris[,-5]

colSums(iris.num)
colMeans(iris.num)

apply(iris.num,2,min)
apply(iris.num,2,max)


sapply(iris.num, min)
sapply(iris.num, max)

format(12345.6789, digits = 9, decimal.mark=",",
       big.mark=".", small.mark=" ", , small.interval=3)

x <- colMeans(mtcars[, 1:4])
format(x, digits=2, nsmall=2)

x <- seq(0.5, 0.55, 0.01)
sprintf("%.1f %%", 100 * x)



LC_NUMERIC.alt <- Sys.getlocale(category = "LC_NUMERIC")
Sys.setlocale("LC_NUMERIC", "")
Sys.getlocale("LC_NUMERIC")
x <- seq(0.5, 0.55, 0.01)
sprintf("%.1f %%", 100 * x) 
Sys.setlocale(category="LC_NUMERIC", locale=LC_NUMERIC.alt)

set.seed(1)
x <- 1000*runif(5)
sprintf("CHF %3.2f", x)

Einkauf <- c("Brot","Butter")
Preis <- c(2.1,4)
sprintf("%s hat CHF %3.2f gekostet", Einkauf, Preis)

with(mtcars, mtcars[order(hp),])
with(mtcars, mtcars[order(hp),], decreasing=TRUE)

mtcars <- within(mtcars,
                 mpgKlasse <- ifelse(mpg< mean(mpg), "niedrig", "hoch"))
mtcars[mtcars$mpgKlasse == "hoch",]
mtcars

with(mtcars, mean(mpg))
with(mtcars, mean(mpg[hp<150]))
with(mtcars, mean(mpg[hp>=150]))

with(mtcars, length(mpg[hp>150]))

x <- matrix(1:12, ncol=3)
x

t(x)

t(mtcars[1:4,])

unique(mtcars$cyl)

Duplikate <- duplicated(iris)
head(Duplikate)
which(Duplikate)
iris[Duplikate,]

fakultaet <- function(x){
  ifelse(x==1,1,x*fakultaet(x-1))
}

fakultaet(4)

iris[!Duplikate,]
nrow(iris[!Duplikate,])

index <- match("Toyota Corolla", rownames(mtcars))
index
mtcars[index,1:4]

with(mtcars, tapply(hp, list(cyl,gear), mean))

aggregate(hp~cyl+gear+am, mtcars, mean)

Menge <- function(Preis){100 - 0.5 * Preis}
Umsatz <- function(Preis){Preis * Menge(Preis)}

par(mfrow=c(1,2))
curve(Menge, from = 50, to = 150, xname = "Preis", ylab="Menge", main="Preis-Mengen-Kurve")
curve(Umsatz, from = 50, to = 150, xname = "Preis", ylab="Umsatz", main="Preis-Umsatz-Kurve")
par(mfrow=c(1,1))

optimize(Umsatz, interval=c(50,150), maximum=TRUE)

xxx
