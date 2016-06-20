
################################
# R fuer Dummies Kapitel 20
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"
getwd()

update.packages()

search()

library(fortunes)
library(help=fortunes)
vignette("fortunes")

detach(package:fortunes, unload=TRUE)

install.packages("data.table", repos="http://R-Forge.R-project.org")
install.packages("data.table")

update.packages("data.table")

source("http://bioconductor.org/biocLite.R")

setwd("~/")
getwd()

# Sample profile file
# Set CRAN mirror to a default location
options(repos="http://cran.r-mirror.de/")
# R interactive prompt
options(prompt="R: ")
# sets work directory back to original
go.home <- function() setwd("D:/MyWorkspace")



xxx
