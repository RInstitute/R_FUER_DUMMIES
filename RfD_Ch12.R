
################################
# R fuer Dummies Kapitel 12
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"

elemente <- data.frame()
elemente <- edit(elemente)

print(elemente)


x <- readClipboard()
x

x <- readClipboard()
x

x <- read.table(file = "clipboard", sep = "\t", header=TRUE)
x

elemente <- read.csv(file.path("c:","Elemente.csv"), sep = ";", dec = ",")
str(elemente)

colnames(elemente)

elemente <- read.csv(file.path("c:","Elemente.csv"), sep = ";", dec = ",", stringsAsFactors = FALSE)
str(elemente)


elemente <- read.csv2(file.path("c:","Elemente.csv"), stringsAsFactors = FALSE)
str(elemente)



default.stringsAsFactors()

getwd()

install.packages("XLConnect")
# library("XLConnect")
excel.datei <- file.path("~/Elemente.xlsx")

elemente <- readWorksheetFromFile(excel.file, sheet=1)
elemente <- readWorksheetFromFile(excel.file, sheet="Blatt1")

library(foreign)
read.spss(file="Wo/meine/Datei/liegt")

writeClipboard(names(iris))

write.table(head(iris), file="clipboard", sep = "\t", row.names = FALSE)

getwd()

setwd("F:/RfD/Kap12")
getwd()

setwd("F:\\RfD\\Kap12")
getwd()

file.path("F:","RfD","Kap12")

file.path("F:","RfD","Kap12","Beispiele.R")

list.files(file.path("F:","RfD","Kap12"))


meine.datei <- tempfile()
meine.datei

write.csv(iris, file=meine.datei)
list.files(tempdir())

datei.iris <- read.csv(meine.datei)

str(datei.iris)

file.remove(meine.datei)
list.files(tempdir())

xxx

options(old.options)