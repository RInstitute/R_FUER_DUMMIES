
################################
# R fuer Dummies Einleitung
# Listings
################################

old.options <-options("width" = 55)

set.seed(42)
throws <- 1e6
dice <- sapply(1:2,
               function(x) sample(1:6, throws, replace = TRUE)
               )
table(rowSums(dice))

print("Hallo Welt!")


options(old.options)