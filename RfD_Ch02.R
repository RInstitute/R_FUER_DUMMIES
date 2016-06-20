
################################
# R fuer Dummies Kapitel 2
# Listings
################################

old.options <-options("width" = 55)

24+7+11

print("Hallo Welt!")

1+2+3+4+5

c(1,2,3,4,5)

1:5

sum(1:5)

x <- 1:5
x

y <- 10
x + y

x
y

z <- x + y
z

h <- "Hallo"
h

h <- 'Hallo'
h

hw <- c("Hallo","Welt!")
hw

paste("Hallo", "Welt!")

h <- "Hallo"
deinname <- readline("Wie heisst Du? ")
paste(h, deinname)

h <- "Hallo"
deinname <- readline("Wie heisst Du? ")
print(paste(h, deinname))


?paste

help(paste)

ls()

rm(z)

getwd()

save(deinname, file = "deinname.rda")

rm(deinname)

load("deinname.rda")


options(old.options)