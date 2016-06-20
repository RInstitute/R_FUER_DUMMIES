
################################
# R fuer Dummies Kapitel 5
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"


x <- c("Hallo Welt!")
length(x)
nchar(x)

letters

LETTERS

letters[10]

LETTERS[24:26]

tail(LETTERS,5)

head(letters,10)

str(islands)

islands[c("Asia", "Africa", "Antarctica")]

names(islands)[1:9]

names(sort(islands, decreasing = TRUE)[1:6])

month.days <- c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
names(month.days) <- month.name
month.days

names(month.days[month.days == 31])

Pangramm <- "Franz jagt im komplett verwahrlosten Taxi quer durch Bayern"
Pangramm

strsplit(Pangramm, " ")

woerter <- strsplit(Pangramm, " ")[[1]]
woerter

unique(tolower(strsplit("Der Ort der Stadt Der ist ungewiss."," ")[[1]]))

toupper(woerter[c(4,9)])

tolower(woerter[c(6,9)])

paste("Franz", "jagt", "im", "komplett", "verwahrlosten", "Taxi")

" "

paste(c("Franz", "jagt", "im", "komplett", "verwahrlosten", "Taxi"))

paste(c(c("Franz", "jagt", "im", "komplett", "verwahrlosten", "Taxi")), collapse = " ")

paste("Franz", "jagt","im", sep = c("a","b"))

paste(woerter)

paste(woerter, collapse = " ")

paste(woerter, collapse = "_")

paste(LETTERS[1:5], 1:5, sep="_", collapse="---")

paste(LETTERS[1:5], 1:5, sep="_")

paste("Stichprobe", 1:5)

paste(c("A","B"), c(1,2,3,4), sep="-")

paste(c("A"), c(1,2,3,4,5), sep="-")

sort(letters, decreasing=TRUE)

sort(woerter)

head(state.name)

head(substr(state.name, start=3,stop=6))

grep("New", state.name)

state.name[29]

state.name[grep("New",state.name)]

state.name[grep("new",state.name)]

state.name[grep(" ", state.name)]

state.name[grep("East", state.name)]

gsub("Golf","Wolf","Ein Golf im Schafspelz.")

x <- c("Datei_a.csv","Datei_b.csv","Datei_c.csv")
y <- gsub("Datei_","",x)
y
gsub(".csv","",y)

install.packages("stringr")
library(stringr)

shopping_list <- c("apples x4 apples", "flour", "sugar", "milk x2")
str_extract(shopping_list, "\\d")
str_extract_all(shopping_list, "[a-z]+")
str_extract(shopping_list, "[a-z]{1,4}")
str_extract(shopping_list, "\\b[a-z]{1,4}\\b")

str_length("mickey mouse")

strings <- c(" 219 733 8965", "329-293-8753 ", "banana", "595 794 7569",
             "387 287 6718", "apple", "233.398.9187  ", "482 952 3315",
             "239 923 8115", "842 566 4692", "Work: 579-499-7527", "$1000",
             "Home: 543.355.3679", " 219 733 8965", " 219 733 89657")
phone <- "([2-9][0-9]{2})[- .]([0-9]{3})[- .]([0-9]{4})"

str_extract(strings, phone)
str_match(strings, phone)

fruits <- c(
  "apples and oranges and pears and bananas",
  "pineapples and mangos and guavas"
)
str_split(fruits, " and ")

# Specify n to restrict the number of possible matches
str_split(fruits, " and ", n = 3)
str_split(fruits, " and ", n = 2)
# If n greater than number of pieces, no padding occurs
str_split(fruits, " and ", n = 5)

rwoerter <- c("land", "sand", "sessel", "segel")

# Alternativen
grep("land|sand", rwoerter)
rwoerter[grep("land|sand", rwoerter)]


# Gruppierung
rwoerter[grep("land|sand", rwoerter)]

# Quantifizierer
rwoerter[grep("se(s*|g*)el",rwoerter)]

rwoerter <- c("schleier", "schleimer", "schlemmer", "schlimmer", "schlummer")
# Alternativen
grep("schlemmer|schlummer", rwoerter)
rwoerter[grep("schlemmer|schlummer", rwoerter)]

# Gruppierung
rwoerter[grep("schl(e|u)mmer", rwoerter)]

# Quantifizierer
rwoerter[grep("schle(i*|m*)er", rwoerter)]

#Himmelsrichtungen
hr <- c("Norden","Osten","Sueden","Sueden")

factor(hr, levels = c("Norden","Osten","Sueden","Westen"))

factor(hr, levels = c("Nirden","Oesten","Suden","Waesten"))

factor(hr, levels = c("Norden","Osten","Sueden","Westen"), labels = c("N", "E", "S", "W"))

hr <- c("Norden","Osten","Sueden","Sueden") 

hr.factor <- factor(hr)

hr.factor

as.character(hr.factor)

as.numeric(hr.factor)

testerg <- factor(c(9, 8, 10, 8, 9))

str(testerg)

as.character(testerg)

as.numeric(testerg)

as.numeric(as.character(testerg))

str(state.region)

levels(state.region)

testdrive <- factor(c("a","b","c"), labels = c("A","B","C"))

levels(testdrive) <- c("d","e","f")
levels(testdrive)
labels(testdrive)


str(testdrive)

levels(state.region) <- c("NE", "S", "NC", "W")
head(state.region)

nlevels(state.region)

length(levels(state.region))

levels(state.region)[2:3]

head(state.region)
table(state.region)

status <- c("s", "g", "m", "m", "g")
status.geord <- factor(status, levels = c("s", "m", "g"), ordered = TRUE)
status.geord

table(status)
table(status.geord)
xxx

options(old.options)