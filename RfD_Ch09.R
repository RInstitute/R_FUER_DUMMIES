
################################
# R fuer Dummies Kapitel 9
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"

preisRechner <- function(stunden, pps){
  netto.preis <- stunden * pps
  round(netto.preis)
}


preisRechner <- function(stunden, pps = 40){
  netto.preis <- stunden * pps
  if(stunden > 100) {
    netto.preis <- netto.preis * 0.9
  }
    round(netto.preis)
}

preisRechner(stunden = 110)

# if(stunden > 100) netto.preis <- netto.preis * 0.9


?'if'
?"if"
?`if`


preisRechner <- function(stunden, pps = 40, oeff = TRUE){
  netto.preis <- stunden * pps
  if(stunden > 100) {
    netto.preis <- netto.preis * 0.9
  }
  if(oeff) {
    brutto.preis <- netto.preis * 1.06
  } else {
    brutto.preis <- netto.preis * 1.12
  }
  
  round(brutto.preis)
}

preisRechner(25, oeff=TRUE)
preisRechner(25, oeff=FALSE)

# if(oeff) brutto.preis <- netto.preis * 1.06 else
#          brutto.preis <- netto.preis * 1.12

# brutto.preis <- netto.preis * if(oeff) 1.06 else 1.12

preisRechner <- function(stunden, pps = 40, oeff = TRUE){
  netto.preis <- stunden * pps
  if(stunden > 100) netto.preis <- netto.preis * 0.9
  brutto.preis <- netto.preis * if(oeff) 1.06 else 1.12  
  round(brutto.preis)
}

preisRechner(50,oeff=FALSE)


preisRechner(c(25,110))

preisRechner(110)


c(25, 110) > 100

ifelse(c(1,3) < 2.5, 1:2, 3:4)

meine.stunden <- c(25, 110)
meine.stunden * 40 * ifelse(meine.stunden > 100, 0.9, 1)


preisRechner <- function(stunden, pps = 40, oeff){
  netto.preis <- stunden * pps
  netto.preis <- netto.preis * ifelse(stunden > 100, 0.9, 1)
  brutto.preis <- netto.preis * ifelse(oeff, 1.06, 1.12)
  round(brutto.preis)
}

kunden <- data.frame(
  stunden = c(25, 110, 125, 40),
  oeff = c(TRUE,TRUE,FALSE,FALSE)
  )


with(kunden, preisRechner(stunden = stunden, oeff = oeff))

# if(kunde == 'priv'){
#  brutto.preis <- netto.preis * 1.12 # 12 % MwSt.
# } else {
#   if (kunde == 'oeff'){
#   brutto.preis <- netto.preis * 1.06 # 6 % MwSt.
#   } else {
#   brutto.preis <- netto.preis * 1    # 0 % MwSt.
#   }
# }

# if(kunde == 'priv'){
#   brutto.preis <- netto.preis * 1.12 # 12 % MwSt.
# } else if (kunde == 'oeff'){
#     brutto.preis <- netto.preis * 1.06 # 6 % MwSt.
#   } else {
#     brutto.preis <- netto.preis * 1    # 0 % MwSt.
#   }


# MWSt <- ifelse(kunde == 'priv', 1.12, 
#                ifelse(kunde == 'oeff', 1.06, 1)
#                )

brutto.preis <- netto.preis * MWSt

MWSt <- switch(kunde, priv=1.12, oeff=1.06, ausl=1)

switch(2, 'ein wert', 'ein zweiter wert', 'ein dritter wert')

MWSt <- switch(kunde, priv=1.12, oeff=1.06, 1)

kunde <- 'unbekannt'
switch(kunde, priv=1.12, oeff=1.06, 1)

# for(i in werte) {
#  ... führe code aus ...
# }

preisRechner <- function(stunden, pps = 40, kunde){
  netto.preis <- stunden * pps * ifelse(stunden > 100, 0.9, 1)
  MWSt <- numeric(0)
  for (i in kunde) {
    MWSt <- c(MWSt,switch(i, priv=1.12, oeff=1.06, 1))
  }
  brutto.preis <- netto.preis * MWSt
  round(brutto.preis)
}

preisRechner(c(90,280), kunde = c('priv','oeff'))

kunden


kunden$ktyp <- c('oeff', 'ausl', 'priv', 'ausl')
preisRechner(kunden$stunden, kunde = kunden$ktyp)


preisRechner <- function(stunden, pps = 40, kunde){
  netto.preis <- stunden * pps * ifelse(stunden > 100, 0.9, 1)
  anzkunde <- length(kunde)
  MWSt <- numeric(anzkunde)
  for (i in seq_along(kunde)) {
    MWSt[i] <- switch(kunde[i], priv=1.12, oeff=1.06, 1)
  }
  brutto.preis <- netto.preis * MWSt
  round(brutto.preis)
}

liedzeile <- 'Und am Ende der Strasse steht ...'
for(liedzeile in 1:5) print('... ein Haus am See.')

liedzeile

anzahl <- matrix(c(3,2,4,6,5,1,8,6,1),ncol = 3)
colnames(anzahl) <- c('Sperling','Taube','Kraehe')
anzahl

apply(anzahl, 2, max)

anzahl[2,2] <- NA

apply(anzahl, 2, max)

apply(anzahl, 2, max, na.rm = TRUE)

sapply(c('a','b'), switch, a='Hallo', b='Tschuess')

preisRechner <- function(stunden, pps = 40, kunde){
  netto.preis <- stunden * pps * ifelse(stunden > 100, 0.9, 1)
  
  MWSt <- sapply(kunde, switch, priv=1.12, oeff=1.06, 1)
  
  brutto.preis <- netto.preis * MWSt
  round(brutto.preis)
}

preisRechner(kunden$stunden, kunde = kunden$ktyp)

kunden

sapply(kunden, class)

sapply(kunden, unique)

sapply(kunden[c(1,3),], unique)

lapply(kunden[c(1,3),], unique)

xxx



options(old.options)