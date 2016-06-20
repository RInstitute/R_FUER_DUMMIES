
################################
# R fuer Dummies Kapitel 16
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"
getwd()

large.islands <- head(sort(islands, decreasing=TRUE), 10)

plot(large.islands, main = "Landfl?che von Kontinenten und Inseln",
     ylab="Landfl?che in Quadratmeilen")
text(large.islands, labels=names(large.islands), adj=c(0.5,1))

plot(faithful)

kurze.eruptionen <- with(faithful, faithful[eruptions < 3, ])

plot(faithful)
points(kurze.eruptionen, col="red", pch=19)


options("width" = 70)
head(colors(),10)

linreg <- lm(waiting~eruptions, data=faithful)
fitted(linreg)

plot(faithful)
lines(faithful$eruptions, fitted(linreg), col = "blue")
abline(v=3, col="purple")

abline(h=mean(faithful$waiting))

abline(a=coef(linreg)[1], b=coef(linreg)[2])

abline(linreg, col="red")

plot(LakeHuron, type="l", main = 'type="l"')
plot(LakeHuron, type="p", main = 'type="p"')
plot(LakeHuron, type="b", main = 'type="b"')

with(mtcars, plot(mpg,disp))

with(mtcars, boxplot(mpg,disp))

with(mtcars, hist(mpg))

pairs(iris)

plot(LakeHuron, type="o", main = 'type="o"')

plot(LakeHuron, type="n", main = 'type="n"')

x <- seq(0.5, 1.5, 0.25)
y <- rep(1, length(x))
plot(x,y, type="n")
points(x,y)



plot(faithful,
     main = "Eruptionen von Old Faithful",
     xlab = "Eruptionszeit (min)",
     ylab = "Ruhezeit bis zur n?chsten Eruption (min)")


plot(faithful, las =1)

#"1", "7", "c", "u", oder "]"

plot(faithful, bty="n")

plot(faithful, las=1, bty="l", col="red", pch=19)

old.verz <- getwd()
setwd("~/")
getwd()

png(filename="faithful.png")
plot(faithful)
dev.off()

xxx

#plots

tiff(filename = "9781119962847-fg1601_de.tiff",width = 900, height = 600, pointsize = 10)
old.par <- par(cex = 2.4, lwd = 3)
plot(large.islands, main = "Landfl?che von Kontinenten und Inseln",
     ylab="Landfl?che in Quadratmeilen", lwd.tick = 3)
text(large.islands, labels=names(large.islands), adj=c(0.5,1))
par(old.par)
dev.off()


tiff(filename = "9781119962847-fg1606_de.tiff",width = 900, height = 600, pointsize = 10)
old.par <- par(cex = 2.4, lwd = 3)
plot(faithful,
     main = "Eruptionen von Old Faithful",
     xlab = "Eruptionszeit (min)",
     ylab = "Ruhezeit bis zur n?chsten Eruption (min)",
     lwd.tick = 3)
par(old.par)
dev.off()

tiff(filename = "9781119962847-fg1610_de.tiff",width = 2100, height = 900, pointsize = 48)
old.par <- par(mfrow = c(1,2), lwd = 3) #, cex = 2.4, lwd = 3)
x <- seq(0.5, 1.5, 0.25)
y <- rep(1, length(x))
plot(x, y, main ="cex und Schriftgr??e", lwd.tick = 3)
text(x, y+0.1, labels=x,cex=x)
plot(x, y, main="cex.main, cex.lab und cex.axis",
     cex.main=0.75, cex.lab=1.5, cex.axis=0.75, lwd.tick = 3)
par(old.par)
dev.off()

tiff(filename = "9781119962847-fg1611_de.tiff",width = 2100, height = 900, pointsize = 48)
old.par <- par(mfrow = c(1,2), lwd = 3) #, cex = 2.4, lwd = 3)
plot(faithful, main ="Faithful Eruptionen", lwd.tick =3)
plot(large.islands, main="Inseln", ylab = "Fl?che", lwd.tick= 3)
par(old.par)
dev.off()
