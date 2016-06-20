
################################
# R fuer Dummies Kapitel 15
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"
getwd()

str(beaver2)

library(lattice)
histogram(~temp | factor(activ), data=beaver2)

qqplot(beaver2$temp[beaver2$activ==1],
       beaver2$temp[beaver2$activ==0])

qqnorm(beaver2$temp[beaver2$activ==0], main = 'In Ruhe')
qqline(beaver2$temp[beaver2$activ==0])
qqnorm(beaver2$temp[beaver2$activ==1], main = 'Aktiv')
qqline(beaver2$temp[beaver2$activ==1])

getwd()

shapiro.test(beaver2$temp)

test.ergebnis <- shapiro.test(beaver2$temp)
test.ergebnis$p.value

with(beaver2, tapply(temp, activ, shapiro.test))

t.test(temp ~ activ, data=beaver2, alternative = "g")

temp.aktiv <- beaver2$temp[beaver2$activ==1]
temp.ruhe  <- beaver2$temp[beaver2$activ==0]
t.test(temp.aktiv, temp.ruhe)

wilcox.test(temp ~ activ, data=beaver2)

'two.sided'


t.test(extra ~ group, data=sleep, paired=TRUE)

patienten <- matrix(c(1781,1443,135,47), ncol=2)
colnames(patienten) <- c('?berlebt','tot')
rownames(patienten) <- c('nicht angeschnallt', 'angeschnallt')
patienten

ergebnis.ver <- prop.test(patienten)

ergebnis.ver

chisq.test(patienten)

str(HairEyeColor)

HaarAugeRand <- margin.table(HairEyeColor, margin = c(1,2))
HaarAugeRand
options("width" = 55)
chisq.test(HaarAugeRand)
options("width" = 50)
options(old.options)

str(test.ergebnis)

t.test(temp ~ activ, data=beaver2)$p.value

str(InsectSprays)

InsectSprays


AOVModell <- aov(count ~ spray, data=InsectSprays)

AOVModell

summary(AOVModell)



model.tables(AOVModell, type = 'effects')

X <- factor(c('A','B','C'))
contr.treatment(X)

options(contrasts=c('contr.sum','contr.poly'))

Vergleich <- TukeyHSD(AOVModell)

options('contrasts')

Vergleich$spray['D-C',]

plot(Vergleich, las = 1)

Modell <- lm(mpg ~ wt, data=mtcars)

koeff.Modell <- coef(Modell)
koeff.Modell

plot(mpg ~ wt, data = mtcars)
abline(a=koeff.Modell[1], b=koeff.Modell[2])

Modell.Ueberblick <- summary(Modell)
Modell.Ueberblick

coef(Modell.Ueberblick)

Modell.Anova <- anova(Modell)
Modell.Anova

Modell.Anova['wt','Pr(>F)']

neue.Autos <- data.frame(wt=c(1.7, 2.4, 3.6))
predict(Modell, newdata=neue.Autos)

predict(Modell, newdata=neue.Autos, interval = 'confidence')

predict(Modell, newdata=neue.Autos, interval = 'prediction')

xxx

# plots


tiff(filename = "9781119962847-fg1503_de.tiff",width = 1800, height = 1200, pointsize = 16)
old.par <- par(mfrow = c(1,2), cex = 1)
qqnorm(beaver2$temp[beaver2$activ==0], main = 'In Ruhe')
qqline(beaver2$temp[beaver2$activ==0])
qqnorm(beaver2$temp[beaver2$activ==1], main = 'Aktiv')
qqline(beaver2$temp[beaver2$activ==1])
par(old.par)
dev.off()


