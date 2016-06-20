
################################
# R fuer Dummies Kapitel 8
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"

source('prozentDarstellung.R')

prozentDarstellung <- function(x) {
  prozent <- round(x * 100, digits = 1)
  ergebnis <- paste(prozent, '%', sep = "")
  return(ergebnis)  
}
  
prozentDarstellung(c(0.458, 1.6653, 0.83112))

#rm(list = ls())
#rm(xxx)

ls()

neue.zahlen <- c(0.8223, 0.02487, 1.62, 0.4)
prozentDarstellung(neue.zahlen)

sprintf("%1.1f%%", 100 * x)

prozentWert <- prozentDarstellung

prozentWert

print(prozentDarstellung(neue.zahlen))

prozentDarstellung <- function(x) {
  prozent <- round(x * 100, digits = 1)
  paste(prozent, '%', sep = "") 
}

prozentDarstellung(neue.zahlen)

prozentDarstellung <- function(x) {
  if(!is.numeric(x)) return(NULL)
  prozent <- round(x * 100, digits = 1)
  paste(prozent, '%', sep = "") 
}


quote <- function(x) x / (1-x)

quote(0.8)

prozentDarstellung <- function(x) paste(round(x * 100, digits = 1),"%",sep = "")

prozentDarstellung(neue.zahlen)

prozentZahlen <- c(58.23, 120.4, 33)
prozentDarstellung(prozentZahlen/100)

prozentDarstellung <- function(x, mult) {
  prozent <- round(x * mult, digits = 1)
  paste(prozent, '%', sep = "") 
}

prozentDarstellung(prozentZahlen, mult = 1)

prozentDarstellung(neue.zahlen)

prozentDarstellung <- function(x, mult = 100) {
  prozent <- round(x * mult, digits = 1)
  paste(prozent, '%', sep = "") 
}


prozentDarstellung(neue.zahlen)
prozentDarstellung(prozentZahlen, mult = 1)

prozentDarstellung <- function(x, mult = 100, ...) {
  prozent <- round(x * mult, ...)
  paste(prozent, '%', sep = "") 
}

prozentDarstellung(neue.zahlen, digits = 2)

prozentDarstellung(neue.zahlen)

prozentDarstellung <- function(x, mult = 100, digits = 1) {
  prozent <- round(x * mult, digits = digits)
  paste(prozent, '%', sep = "") 
}

signif(0.012345678, digits=3)
signif(12345678, digits=4)

prozentDarstellung <- function(x, mult = 100, FUN = round, ...) {
  prozent <- FUN(x * mult, ...)
  paste(prozent, '%', sep = "") 
}

prozentDarstellung(neue.zahlen, FUN = signif, digits = 3)

gewinne <- c(2100, 1430, 3580, 5230)

rel.gewinne <- function (x) round(x / sum(x) * 100)

prozentDarstellung(gewinne, FUN = function(x) round(x / sum(x) * 100))

prozentDarstellung(gewinne / sum(gewinne))

x <- 1:5
test <- function(x) {
  cat("Das ist x: ", x,"\n" )
  rm(x)
  cat("Das ist x nachdem wir es entfernt haben: ", x,"\n" )
}

round <- c(0.48, -0.52, 1.88)

prozentDarstellung(round, FUN=round)

test(5:1)

prozentDarstellung <- function(x, mult = 100,
                               FUN, ...){
  FUN <- match.fun(FUN)
  percent <- FUN(x * mult,...)
  paste(percent, "%", sep = "")
}

FUN <- 'round'

berechne.eff <- function(x, y, hintergrund) {
  hint.korr <- function(z) z - mean(hintergrund)
  hint.korr(x) / hint.korr(y)
}

halb <- c(2.23, 3.23, 1.48)
voll <- c(4.85, 4.95, 4.12)
aus <- c(0.14, 0.18, 0.56, 0.23)
berechne.eff(halb, voll, aus)

print

apropos('print\\.')

kleiner.test <- data.frame(a = 1:2, b = 2:1)
print.data.frame(kleiner.test)

print.default(kleiner.test)

prozentDarstellung.character <- function(x) {
  paste(x,"%",sep ="")
}

prozentDarstellung.numeric <- function(x, mult = 100, FUN = round, ...) {
  prozent <- FUN(x * mult, ...)
  paste(prozent, '%', sep = "") 
}

prozentDarstellung <- function(x, ...){
  UseMethod("prozentDarstellung")
}

prozentDarstellung(neue.zahlen, FUN = floor)
prozentDarstellung(letters[1:6])

prozentDarstellung(kleiner.test)

prozentDarstellung.default <- function(x){
  cat('Bitte verwenden Sie einen numerischen oder Zeichenvektor.\n')
}


xxx



options(old.options)