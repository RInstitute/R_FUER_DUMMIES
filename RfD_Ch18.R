
################################
# R fuer Dummies Kapitel 18
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"
getwd()

#install.packages("ggplot2")
library("ggplot2")

ggplot(faithful, aes(x=eruptions, y=waiting)) + geom_point()+ stat_smooth()

ggplot(quakes, aes(x=depth)) + geom_bar()
ggplot(quakes, aes(x=depth)) + geom_bar(binwidth=50)

str(quakes)

quakes.agg <- aggregate(mag ~ round(depth, -1), data = quakes,
                        FUN=length)
names(quakes.agg) <- c("depth", "mag")

ggplot(quakes.agg, aes(x=depth,y=mag)) + geom_bar(stat="identity")

round(150, -2)

log(50, base=10)

ggplot(quakes, aes(x=long, y=lat)) + geom_point()

ggplot(longley, aes(x=Year,y=Unemployed)) + geom_line()


ggplot(quakes, aes(x=depth)) + geom_bar(binwidth=50)
ggplot(quakes, aes(x=depth)) + stat_bin(binwidth=50)

ggplot(longley, aes(x=Year, y= Employed)) + geom_point()

ggplot(longley, aes(x=Year, y= Employed)) + 
  geom_point() + stat_smooth()

ggplot(longley, aes(x=Year, y= Employed)) + 
  geom_point() + stat_smooth(method="lm")

ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point()

ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point() +
  stat_smooth(method="lm") + facet_grid(~cyl)

ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point() +
  stat_smooth(method="lm") + facet_wrap(~cyl)

ggplot(mtcars,aes(x=hp, y=mpg)) + geom_point() +
  xlab("Leistung (PS)") +
  ylab("Verbrauch (Meilen/Gallone)") +
  ggtitle("Kraftfahrzeug-Vergleich")

ggplot(mtcars,aes(x=hp, y=mpg)) + 
  geom_point(aes(shape=factor(cyl),
                  colour=factor(cyl)))


ggplot(mtcars,aes(x=hp, y=mpg)) + 
  geom_point(aes(shape=factor(cyl),
                 colour=factor(cyl))) +
  scale_shape_discrete(name="Zylinder") +
  scale_colour_discrete(name="Zylinder")

ggplot(mtcars,aes(x=hp, y=mpg)) + 
  geom_point(aes(shape=factor(cyl),
                 colour=factor(cyl))) +
  scale_shape_discrete(name="Zylinder") +
  scale_colour_discrete(name="Zylinder") +
  scale_x_continuous("Leistung")


name="Zylinder"



xxx
