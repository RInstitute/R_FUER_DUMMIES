
################################
# R fuer Dummies Kapitel 11
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"

help.search("date")

RSiteSearch("cluster analysis")

findFn("cluster")

install.packages("sos")

set.seed(1)
x <- rnorm(5)
x

wert <- c(1:9, "B", "D", "K", "A")
farben <- c("pik", "karo", "herz", "kreuz")
karten <- paste(rep(farben, each=13), wert)
set.seed(123)
sample(karten,7)

set.seed(5)
sample(LETTERS[1:3], 12, replace=TRUE)

set.seed(42)
dat <- data.frame(
  x = sample(1:5),
  y = sample(c("ja","nein"),5,replace = TRUE)
  )
dat


dput(cars[1:4, ])
# structure(list(speed = c(4,4,7,7),
#                dist = c(2, 10, 4, 22)),
#                .Names = c("v_max","entf"),
#                row.names = c(NA,4L),
#                class = "data.frame")


sessionInfo()

xxx

options(old.options)