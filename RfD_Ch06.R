
################################
# R fuer Dummies Kapitel 6
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"

ed <- as.Date("2012-07-27")
ed


str(ed)

weekdays(ed)

ed + 7

ed + 0:6

weekdays(ed + 0:6)

startDatum <- as.Date("2012-01-01")
mSerie <- seq(startDatum, by = "2 months", length.out = 6)
mSerie

months(mSerie)
quarters(mSerie)


Sys.getlocale()

Sys.setlocale("LC_TIME", "German_Germany.1252")
Sys.setlocale("LC_TIME", "C")

Sys.localeconv()
Sys.getlocale()


as.Date("27. Juli 2012", format = "%d. %B %Y")

as.Date("27/7/2012", format = "%d/%m/%Y")


d <- as.Date(c("2010-04-01","2010-04-02"))
str(as.POSIXlt(d)$wday)


apollo <- "20. Juli 1969, 20:17:39"
apollo.fmt <- "%d. %B %Y, %H:%M:%S"
apollo.ct <- as.POSIXct(apollo, format=apollo.fmt, tz="UTC") 
apollo.ct

format(apollo.ct, "%d.%m.%Y")

format(apollo.ct, "Die Apollo 11 landete am %d.%m.%Y %M Minuten nach %H Uhr auf dem Mond.")

24*60*60

apollo.ct + 7*86400

apollo.ct + 3*60*60

apollo.ct - 7*86400

as.Date(apollo.ct) - 7

Sys.time()

Sys.time() < apollo.ct

dek.start <- as.POSIXct("1950-01-01", tz = "UTC")
dek <- seq(dek.start, by = "10 years", length.out = 4)
dek

dek > apollo.ct

apollo.lt <- as.POSIXlt(apollo.ct)
apollo.lt

apollo.lt$year

apollo.lt$mon

unclass(apollo.lt)

xxx

options(old.options)