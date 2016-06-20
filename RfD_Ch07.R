
################################
# R fuer Dummies Kapitel 7
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"

erste.matrix <- matrix(1:12, ncol=4)
erste.matrix

matrix(1:12, ncol=4, byrow=TRUE)

str(erste.matrix)

dim(erste.matrix)

length(erste.matrix)

attributes(erste.matrix)

koerbe.von.oma <- c(12,4,5,6,9,3)
koerbe.von.margarete <- c(5,4,2,4,12,9)
koerbe.team <- rbind(koerbe.von.oma, koerbe.von.margarete)

koerbe.team

attributes(koerbe.team)
attr(koerbe.team, 'saison') <- '2010-2011'
attr(koerbe.team, 'saison')
attr(koerbe.team, 'saison') <- NULL

cbind(1:3,4:6, matrix(7:12, ncol=2))

erste.matrix[1:2,3:4]

erste.matrix[2:3,]

erste.matrix[-2,-3]


az <- nrow(erste.matrix)
id <- az*2+2
erste.matrix[-id]

erste.matrix[-(2*nrow(erste.matrix)+2)]

erste.matrix[-c(1,3),]

erste.matrix[2, ,drop = FALSE]

erste.matrix[3,2] <- 4
erste.matrix


erste.matrix[2,] <- c(1,3)
erste.matrix

erste.matrix[1:2, 3:4] <- c(8,4,2,1)
erste.matrix

rownames(koerbe.team) <- c('Oma', 'Margarete')
rownames(koerbe.team)

colnames(koerbe.team) <- c("1.","2.","3","4.","5.","6.")
koerbe.team

colnames(koerbe.team)[3] <- '3.'

koerbe.team.kopie <- koerbe.team
colnames(koerbe.team.kopie) <- NULL
koerbe.team.kopie

attributes(koerbe.team)

koerbe.team[,c("2.","5.")]

koerbe.team["Oma",]

erste.matrix + 4

zweite.matrix <- matrix(1:3, nrow=3, ncol=4)

erste.matrix + zweite.matrix

erste.matrix + zweite.matrix[,1:3]

erste.matrix + 1:3

rowSums(koerbe.team)

t(erste.matrix)

t(1:8)

t(erste.matrix[2,])

t(erste.matrix[2,,drop = FALSE])

quad.mat <- matrix(c(1,0,3,2,2,4,3,2,1), ncol=3)
solve(quad.mat)

erste.matrix %*% t(zweite.matrix)
t(erste.matrix) %*% zweite.matrix

erste.matrix
zweite.matrix

t(c(1:2)) %*% c(3:4)
c(1:2)
c(3:4)

c(1:3) %*% t(c(3:4))

quad.mat
quad.mat * quad.mat
quad.mat %*% quad.mat

erste.matrix
erste.matrix %*% 1:4
1:3 %*% erste.matrix

mein.datenfeld <- array(1:24, dim=c(3,4,2))

mein.datenfeld

mein.vektor <- 1:24

dim(mein.vektor) <- c(3,4,2)

identical(mein.datenfeld, mein.vektor)

mein.datenfeld[2,3,1]

mein.datenfeld[,3,2, drop=FALSE]

mein.datenfeld[2, , ]

(koerbe.ds <- as.data.frame(koerbe.team))
koerbe.ds <- as.data.frame(t(koerbe.team))
koerbe.ds

t(koerbe.team)

str(koerbe.ds)

nrow(koerbe.ds)

length(koerbe.ds)

mitarbeiter <- c('Susanne Muster', 'Max Mustermann', 'Emine Kartal')
gehalt <- c(21000, 23400, 26800)
eintritt <- as.Date(c('2010-11-01', '2008-03-25', '2007-03-14'))

ma.daten <- data.frame(mitarbeiter, gehalt, eintritt)


str(ma.daten)

ma.daten

ma.daten <- data.frame(mitarbeiter, gehalt, eintritt, stringsAsFactors=FALSE)

str(ma.daten)

names(ma.daten)

names(ma.daten)[3] <- 'anfang'
names(ma.daten)

rownames(ma.daten)

rownames(ma.daten) <- c('Chef', 'Oberchef', 'Hauptchef')
ma.daten

koerbe.ds['3.','Margarete']

koerbe.ds[,1]

str(koerbe.ds[, 1, drop=FALSE])

koerbe.ds$Oma

koerbe.neu.ds <- rbind(koerbe.ds, c(7,4))
koerbe.neu.ds

koerbe.ds <- rbind(koerbe.ds, '7.' = c(7,4))
koerbe.ds

koerbe.neu.ds <- data.frame(Oma = c(3,8),Margarete=c(9,4))

rownames(koerbe.neu.ds) <- c('8.','9.')

koerbe.neu.ds

names(koerbe.neu.ds) <- names(koerbe.ds)

c('Oma', 'Margarete')

koerbe.ds <- rbind(koerbe.ds, koerbe.neu.ds)

koerbe.ds


koerbe.ds <- as.data.frame(t(koerbe.team))
koerbe.ds <- rbind(koerbe.ds, '7.' = c(7,4))
koerbe.ds[c('8.', '9.'),] <- matrix(c(3,8,9,4), ncol=2)
koerbe.ds


koerbe.ds <- as.data.frame(t(koerbe.team))
koerbe.ds <- rbind(koerbe.ds, '7.' = c(7,4))
koerbe.ds[c('8.', '9.'),] <- c(3,8,9,4)
koerbe.ds

koerbe.von.gabriele <- c(11,5,6,7,3,12,4,5,9)

koerbe.ds$Gabriele <- koerbe.von.gabriele
koerbe.ds

head(koerbe.ds, 4)

neu.ds <- data.frame(
  Gertrude  = c(3,5,2,1,NA,3,1,1,4),
  Gertraude = c(6,9,7,3,3,6,2,10,6)
)

head(cbind(koerbe.ds,neu.ds),4)

koerbe.liste <- list(koerbe.team, '2010-2011')

koerbe.liste

koerbe.bliste <- list(koerbe=koerbe.team, saison='2010-2013')

koerbe.bliste

names(koerbe.bliste)

length(koerbe.liste)

koerbe.liste[[1]]

koerbe.bliste[['koerbe']]

koerbe.liste[-1]

koerbe.bliste[names(koerbe.bliste)=='saison']

koerbe.bliste[[1]] <- koerbe.ds
koerbe.bliste[['koerbe']] <- koerbe.ds
koerbe.bliste$koerbe <- koerbe.ds

koerbe.bliste[1] <- list(koerbe.ds)

koerbe.liste[1:2] <- list(koerbe.ds,'2009-2010')

koerbe.bliste[[1]] <- NULL
koerbe.bliste$koerbe <- NULL
koerbe.bliste['koerbe'] <- NULL

koerbe.bliste <- list(koerbe=koerbe.ds,saison='2010-2011')
koerbe.bliste['koerbe'] <- list(NULL)
koerbe.bliste

koerbe.liste

koerbe.bliste$spieler <- c('Oma','Margarete','Gabriele')
koerbe.bliste[['spieler']] <- c('Oma','Margarete','Gabriele') 
koerbe.bliste['spieler'] <- list(c('Oma','Margarete','Gabriele')) 

koerbe.liste[[3]] <- c('Oma','Margarete','Gabriele')
koerbe.liste[3] <- list(c('Oma','Margarete','Gabriele'))

koerbe.liste <- list(koerbe.team,'2010-2011')
spieler <- list(rownames(koerbe.team))

spieler

c(koerbe.liste,spieler)

str(koerbe.liste)

str(koerbe.bliste)

xxx

options(old.options)