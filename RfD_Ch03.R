
################################
# R fuer Dummies Kapitel 3
# Listings
################################

old.options <-options("width" = 55)

koerbe.von.Oma <- c(12,4,4,6,9,3)
koerbe.von.Oma

sum(koerbe.von.Oma)

vornamen <- c("Joris", "Carolien", "Koen")
nachname <- "Meys"
paste(vornamen,nachname)

paste(c(1:2), c(1:3))

vornamen <- c("Andrie","Joris")
nachnamen <- c("de Vries","Meys")
paste(vornamen,nachnamen)

print("Hallo Welt!")
print(x = "Hallo Welt!")

?print()

print()

print(digits = 4, x = 11/7)

?print.default()

savehistory(file = "Kapitel3.RHistory")

history()

paste <- paste("Das ist ja ", "verwirrend!")
paste
paste("Finden ","Sie nicht?")

koerbe.von.Margarete <-
          c(5,3,2,2,12,9)

Anfang <- "Wahnsinn! Die Super-Omas haben in den 
letzten sechs Spielen"
Ende <- "Koerbe geworfen!"

Koerbe.gesamt <- koerbe.von.Oma +
                 koerbe.von.Margarete

Text <- paste(Anfang,
              sum(Koerbe.gesamt),
              Ende)
cat(Text)

Text

cat('Wenn Sie daran zweifeln
probieren Sie es einfach.')

#Die Super-Omas haben es wieder geschafft!
koerbe.von.Oma <- c(12,4,4,6,9,3) # Oma ist die beste.
sum(koerbe.von.Oma) # Körbe insgesamt

install.packages('fortunes')

library(fortunes)

fortune("Hier ist R!")
fortune("Ripley")

fortune(161)

detach(package:fortunes)

options(old.options)
