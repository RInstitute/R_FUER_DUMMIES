
################################
# R fuer Dummies Kapitel 10
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"

"a" + 1

data.frame(1:10,10:1,)

x <- 1:10
y <- if(x < 5) 0 else 1

x <- 4
sqrt(x - 5)

plot(1:10, 10:1, color = 'green')


#prueft Eingabewert und berechnet Logit
logit <- function(x){
  x <- ifelse(x < 0| x > 1, "NA", x)
  log(x / (1-x))
}
#wandelt Prozentwert in Dezimalzahl um und ruft logit() auf
logitprozent <- function(x){
  x <- gsub("%","",x)
  logit(as.numeric(x))
}

logitprozent('50%')

traceback()

debug(logit)

logitprozent('50%')

#prueft Eingabewert und berechnet Logit
logit <- function(x){
  x <- ifelse(x < 0| x > 1, "NA", x)
  log(x / (1-x))
}
#wandelt Prozentwert in Dezimalzahl um und ruft logit() auf
logitprozent <- function(x){
  x <- gsub("%","",x)
  logit(as.numeric(x)/100)
}

logitprozent('50%')

#prueft Eingabewert und berechnet Logit (mit browse())
logit <- function(x){
  x <- ifelse(x < 0| x > 1, "NA", x)
  browser()
  log(x / (1-x))
}

logit(50)

logit <- function(x){
  if( any(x < 0 | x > 1) ) stop('x nicht zwischen 0 und 1')
  log(x / (1-x))
}



logit <- function(x){
  x <- ifelse(x < 0 | x > 1, NA, x)
  if( any(is.na(x)) ) warning('x nicht zwischen 0 und 1')
  log(x / (1-x))
}

logitprozent(c('50%', '150%'))


'Zeile x hatte nicht y Elemente'

'NA'
","
"fehlt"

zeilensumme.ds <- function(x){ # x[,i]
  spalte <- sapply(x, is.numeric)
  rowSums(x[,spalte])
}

zeilensumme.ds <- function(x){ # x[i]
  spalte <- sapply(x, is.numeric)
  rowSums(x[spalte])
}

zeilensumme.ds <- function(x){ # drop = FALSE
  spalte <- sapply(x, is.numeric)
  rowSums(x[,spalte, drop = FALSE])
}

zeilensumme.ds(sleep)

rowSums(sleep)
sleep


test.ds <- data.frame(col1 = c(1,2), col2 = c(3,4))
test.ds$col3 = c("A","B")
test.ds

rowSums(test.ds)
colSums(test.ds)

zeilensumme.ds(test.ds)
zeilensumme.ds(pressure)

str(pressure)
head(pressure)

str(sleep)

test.ds[]

strsplit('Dies ist ein Satz.',' ')[2]

strsplit('Dies ist ein Satz.',' ')

strsplit('Dies ist ein Satz.',' ')[[1]][2]

kunde <- c('Max Mustermann', 'Emine Kartal')
kunde.teil <- strsplit(kunde,' ')

kunde.teil

paste(kunde.teil[2], collapse=".")

paste(kunde.teil[[2]], collapse=".")

zyl.faktor <- as.factor(mtcars$cyl)

median(as.numeric(zyl.faktor))

as.numeric(levels(zyl.faktor))[zyl.faktor]

xxx

options(old.options)