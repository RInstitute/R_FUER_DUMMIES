
################################
# R fuer Dummies Kapitel 4
# Listings
################################

old.options <-options("width" = 55)
xxx <- "Ende aktueller Code"

koerbe.von.Oma <- c(12,4,4,6,9,3)
koerbe.von.Margarete <- c(5,3,2,2,12,9)

spenden.Oma <- koerbe.von.Oma * 120
spenden.Margarete <- koerbe.von.Margarete * 145

spenden.Margarete; spenden.Oma

spenden.Oma + spenden.Margarete

koerbe.von.Oma * 120 + koerbe.von.Margarete * 145

4 + 2 * 3
(4 + 2) * 3


log(1:3)

log(1:3, 6)

x <- log(1:3)
exp(x)

1.33e4

4.12e-2

1.2e6 / 2e3

round(123.456, digits=2)

round(-123.456, digits=-2)

signif(-123.456,4)

cos(120)

cos(120 * pi/180)

'+'(2,3)

2/0

4 - Inf

is.finite(10^(305:310))

Inf/Inf

NaN + 4

x <- NA

x + 4
log(x)

is.na(x)

str(koerbe.von.Oma)

length(koerbe.von.Oma)

vornamen <- c("Andrie","Joris")
str(vornamen)

is.numeric(koerbe.von.Oma)

is.integer(koerbe.von.Oma)

x <- c(4L,6L)
is.integer(x)

seq(from = 4.5, to = 2.5, by = -0.5)

seq(from = -2.7, to = 1.3, length.out = 9)

alle.koerbe <- c(koerbe.von.Oma, koerbe.von.Margarete)
alle.koerbe

rep(c(0, 0, 7), times = 3)

rep(c(2, 4, 2), each = 3)

rep(c(0, 7), times = c(4,2))

rep(1:3, length.out = 7)

zahlen <- 30:1
zahlen

zahlen[5]

zahlen[c(5,11,3)]

indizes <- c(5,11,3)
zahlen[indizes]

zahlen[-3]

zahlen[-c(1:20)]

zahlen[-1:20]

koerbe.von.Oma[3] <- 5
koerbe.von.Oma

koerbe.von.Margarete[c(2,4)] <- 4 
koerbe.von.Margarete

Oma.Kopie <- koerbe.von.Oma

koerbe.von.Oma[4] <- 11
koerbe.von.Oma

koerbe.von.Oma <- Oma.Kopie
koerbe.von.Oma

koerbe.von.Oma > 5

which(koerbe.von.Oma > 5)

die.beste <- koerbe.von.Margarete < koerbe.von.Oma
which(die.beste)

koerbe.von.Oma[die.beste]

x <- c(3, 6, 1, NA, 2)
x[x > 2]

x > 2

x[c(TRUE,NA,NA,TRUE,TRUE)]

koerbe.min <- koerbe.von.Oma == min(koerbe.von.Oma)
koerbe.max <- koerbe.von.Oma == max(koerbe.von.Oma)
koerbe.min | koerbe.max

x[!is.na(x)]

sum(die.beste)

any(die.beste)

all(die.beste)

min(koerbe.von.Oma)
max(koerbe.von.Oma)

sum(koerbe.von.Oma, koerbe.von.Margarete)

x <- c(3,6,2,NA,1)
sum(x)
sum(x,na.rm=TRUE)

cumsum(koerbe.von.Oma)

cummax(koerbe.von.Margarete)

cummin(x)

diff(koerbe.von.Oma)

diff(x)

Oma.2er3er <- c(10,2,4,0,4,1,4,2,7,2,1,2)

Oma.Punkte <- Oma.2er3er * c(2,3)
Oma.Punkte
sum(Oma.Punkte)

sum(Oma.2er3er * c(2,3))

round(diff(koerbe.von.Oma)/koerbe.von.Oma*100)
LV <- .Last.value
names(LV) <- c("1. ","2. ","3. ","4. ","5. ","6. ")
LV

round(diff(koerbe.von.Oma)/koerbe.von.Oma[1:5] * 100)
LV <- .Last.value
LV
names(LV) <- c("2. ","3. ","4. ","5. ","6. ")
LV

xxx

options(old.options)


