
################################
# R fuer Dummies Kapitel 17
# Listings
################################

old.options <-options("width" = 50)
xxx <- "Ende aktueller Code"
getwd()


str(mtcars)

library(lattice)

xyplot(mpg ~ hp | factor(cyl), data=mtcars)

xyplot(mpg ~ hp | factor(cyl), data=mtcars,
       type =c("p","r"),
       scales = list(x=list(fontface = "bold")))

xyplot(mpg ~ hp | factor(cyl), data=mtcars,
       type =c("p","r"))

xyplot(mpg ~ hp | factor(cyl), data=mtcars,
       type =c("p","r"),
       main="Reichweite oder Leistung?",
       xlab="Leistung (PS)",
       ylab="Reichweite (Meilen/Gallone)")

xyplot(mpg ~ hp | factor(cyl), data=mtcars,
       type =c("p","r"),
       main=list(label = "Reichweite oder Leistung? Einfluss der Zylinderzahl.",
                 cex = 0.75))

xyplot(mpg ~ hp | factor(cyl), data=mtcars,
       type =c("p","r"),
       main=list(
         label = "Reichweite oder Leistung? Einfluss der Zylinderzahl.",
         cex = 0.75),
       xlab=list(
         label="Leistung (PS)",
         cex=0.75),
       ylab=list(
         label="Reichweite (Meilen/Gallone)",
         cex=0.75),
       scales=list(cex=0.5)
)

xyplot(mpg ~ hp | factor(cyl), data=mtcars,
       type =c("p","r"),
       par.settings=simpleTheme(col="red", col.line="blue"))


mtcars$cars <- rownames(mtcars)

barchart(cars ~ mpg | factor(cyl), data = mtcars,
         main="barchart",
         scales=list(cex=0.5),
         layout=c(3,1))

bwplot(~ hp | factor(cyl), data = mtcars, main="bwplot")

str(longley)

library("reshape2")
longley.s <- melt(longley, id.vars="Year")

longley

str(longley.s)

xyplot(value ~ Year | variable, data=longley.s,
       layout=c(6,1),
       par.strip.text=list(cex=0.7),
       scales=list(cex=0.7))


mtcars$cars <- rownames(mtcars)
mtcars$am <- with(mtcars, ifelse(am==0,"Automatisch", "Manuell"))


barchart(cars ~ mpg | factor(cyl), data=mtcars,
         group = am,
         scales = list(cex=0.5),
         layout=c(3,1))

barchart(cars ~ mpg | factor(cyl), data=mtcars,
         group=am,
         auto.key=TRUE,
         par.settings = simpleTheme(col=c("grey80", "grey20")),
         scales=list(cex=0.5),
         layout=c(3,1))

mein.diagramm <- xyplot(mpg ~hp | factor(cyl), data=mtcars)
class(mein.diagramm)

xyplot(mpg ~ hp | factor(cyl), data=mtcars)
mein.diagramm <- xyplot(mpg ~ hp | factor(cyl), data=mtcars)
print(mein.diagramm)

setwd("~/")
trellis.device(device="png", filename="xyplot.png")
print(mein.diagramm)
dev.off()


xxx

##################################################################
#plots
##################################################################

#PLOT 9781119962847-fg1702_de.tiff
trellis.device(device="tiff", filename="9781119962847-fg1702_de.tiff",
               width = 1500, height = 750)
trellis.par.set("fontsize",list(text=48, points=36))
trellis.par.set("clip", list(panel = "off", strip = "off"))
my.lwd <- 3
tpar1=trellis.par.get("add.line") 
tpar1$lwd=my.lwd
trellis.par.set("add.line", tpar1) 
 
tpar2=trellis.par.get("plot.polygon") 
tpar2$lwd=my.lwd 
trellis.par.set("plot.polygon", tpar2) 
 
tpar3=trellis.par.get("plot.line") 
tpar3$lwd=my.lwd
trellis.par.set("plot.line", tpar3) 
 
tpar4=trellis.par.get("superpose.polygon") 
tpar4$lwd=c(rep(my.lwd,7)) 
trellis.par.set("superpose.polygon", tpar4) 
 
tpar5=trellis.par.get("superpose.line") 
tpar5$lwd=c(rep(my.lwd,7)) 
trellis.par.set("superpose.line", tpar5) 

tpar6=trellis.par.get("axis.line") 
tpar6$lwd=c(rep(my.lwd,7)) 
trellis.par.set("axis.line", tpar6) 
 
tpar7=trellis.par.get("box.3d") 
tpar7$lwd=my.lwd 
trellis.par.set("box.3d", tpar7) 
 
tpar8=trellis.par.get("box.rectangle") 
tpar8$lwd=my.lwd 
trellis.par.set("box.rectangle", tpar8) 

tpar9=trellis.par.get("box.umbrella") 
tpar9$lwd=my.lwd 
trellis.par.set("box.umbrella", tpar9) 
 
tpar10=trellis.par.get("dot.line") 
tpar10$lwd=my.lwd 
trellis.par.set("dot.line", tpar10) 
 
tpar11=trellis.par.get("strip.border") 
tpar11$lwd=c(rep(my.lwd,7)) 
trellis.par.set("strip.border", tpar11) 

tpar12=trellis.par.get("reference.line") 
tpar12$lwd=c(rep(my.lwd,7)) 
trellis.par.set("reference.line", tpar12) 

my.plot <- xyplot(mpg ~ hp | factor(cyl), data=mtcars, 
                  scales = list(y = list(tck=4),
                                x = list(tck=4,
                                         at=seq(50,350,50),
                                         labels=c(50, 100, ' ' , 200 , ' ' , 300, ' ' ))),
                  lex = 3, cex = 1
                  )
print(my.plot)
dev.off()

#######################################################################################
#PLOT 9781119962847-fg1703_de.tiff
trellis.device(device="tiff", filename="9781119962847-fg1703_de.tiff",
               width = 1500, height = 750)
trellis.par.set("fontsize",list(text=48, points=36))
trellis.par.set("clip", list(panel = "off", strip = "off"))
my.lwd <- 1
my.axis.lwd <- 3
my.strip.lwd <- 3
tpar1=trellis.par.get("add.line") 
tpar1$lwd=my.lwd
trellis.par.set("add.line", tpar1) 

tpar2=trellis.par.get("plot.polygon") 
tpar2$lwd=my.lwd 
trellis.par.set("plot.polygon", tpar2) 

tpar3=trellis.par.get("plot.line") 
tpar3$lwd=my.lwd 
trellis.par.set("plot.line", tpar3) 

tpar4=trellis.par.get("superpose.polygon") 
tpar4$lwd=c(rep(my.lwd,7)) 
trellis.par.set("superpose.polygon", tpar4) 

tpar5=trellis.par.get("superpose.line") 
tpar5$lwd=c(rep(my.lwd,7)) 
trellis.par.set("superpose.line", tpar5) 

tpar6=trellis.par.get("axis.line") 
tpar6$lwd=c(rep(my.axis.lwd,7)) 
trellis.par.set("axis.line", tpar6) 

tpar7=trellis.par.get("box.3d") 
tpar7$lwd=my.lwd 
trellis.par.set("box.3d", tpar7) 

tpar8=trellis.par.get("box.rectangle") 
tpar8$lwd=my.lwd 
trellis.par.set("box.rectangle", tpar8) 

tpar9=trellis.par.get("box.umbrella") 
tpar9$lwd=my.lwd 
trellis.par.set("box.umbrella", tpar9) 

tpar10=trellis.par.get("dot.line") 
tpar10$lwd=my.lwd 
trellis.par.set("dot.line", tpar10) 

tpar11=trellis.par.get("strip.border") 
tpar11$lwd=c(rep(my.strip.lwd,7)) 
trellis.par.set("strip.border", tpar11) 

tpar12=trellis.par.get("reference.line") 
tpar12$lwd=c(rep(my.lwd,7)) 
trellis.par.set("reference.line", tpar12) 

my.plot <- xyplot(mpg ~ hp | factor(cyl), data=mtcars, type = c("p","r"),
                  scales = list(y = list(tck=4),
                                x = list(tck=4,
                                         at=seq(50,350,50),
                                         labels=c(50, 100, ' ' , 200 , ' ' , 300, ' ' ))),
                  lex = 3, cex = 1
)
print(my.plot)
dev.off()

#######################################################################################
#PLOT 9781119962847-fg1704_de.tiff
trellis.device(device="tiff", filename="9781119962847-fg1704_de.tiff",
               width = 1500, height = 900)
trellis.par.set("fontsize",list(text=48, points=36))
trellis.par.set("clip", list(panel = "off", strip = "off"))
my.lwd <- 1
my.axis.lwd <- 3
my.strip.lwd <- 3
tpar1=trellis.par.get("add.line") 
tpar1$lwd=my.lwd
trellis.par.set("add.line", tpar1) 

tpar2=trellis.par.get("plot.polygon") 
tpar2$lwd=my.lwd 
trellis.par.set("plot.polygon", tpar2) 

tpar3=trellis.par.get("plot.line") 
tpar3$lwd=my.lwd 
trellis.par.set("plot.line", tpar3) 

tpar4=trellis.par.get("superpose.polygon") 
tpar4$lwd=c(rep(my.lwd,7)) 
trellis.par.set("superpose.polygon", tpar4) 

tpar5=trellis.par.get("superpose.line") 
tpar5$lwd=c(rep(my.lwd,7)) 
trellis.par.set("superpose.line", tpar5) 

tpar6=trellis.par.get("axis.line") 
tpar6$lwd=c(rep(my.axis.lwd,7)) 
trellis.par.set("axis.line", tpar6) 

tpar7=trellis.par.get("box.3d") 
tpar7$lwd=my.lwd 
trellis.par.set("box.3d", tpar7) 

tpar8=trellis.par.get("box.rectangle") 
tpar8$lwd=my.lwd 
trellis.par.set("box.rectangle", tpar8) 

tpar9=trellis.par.get("box.umbrella") 
tpar9$lwd=my.lwd 
trellis.par.set("box.umbrella", tpar9) 

tpar10=trellis.par.get("dot.line") 
tpar10$lwd=my.lwd 
trellis.par.set("dot.line", tpar10) 

tpar11=trellis.par.get("strip.border") 
tpar11$lwd=c(rep(my.strip.lwd,7)) 
trellis.par.set("strip.border", tpar11) 

tpar12=trellis.par.get("reference.line") 
tpar12$lwd=c(rep(my.lwd,7)) 
trellis.par.set("reference.line", tpar12) 

my.plot <- xyplot(mpg ~ hp | factor(cyl), data=mtcars, type = c("p","r"),
                  scales = list(y = list(tck=4),
                                x = list(tck=4,
                                         at=seq(50,350,50),
                                         labels=c(50, 100, ' ' , 200 , ' ' , 300, ' ' ))),
                  lex = 3, cex = 1,
                  main="Reichweite oder Leistung?",
                  xlab="Leistung (PS)",
                  ylab="Reichweite (Meilen/Gallone)"
)
print(my.plot)
dev.off()


#######################################################################################
#PLOT 9781119962847-fg1705_de.tiff
trellis.device(device="tiff", filename="9781119962847-fg1705_de.tiff",
               width = 1500, height = 750)
trellis.par.set("fontsize",list(text=48, points=36))
trellis.par.set("clip", list(panel = "off", strip = "off"))
my.lwd <- 1
my.axis.lwd <- 3
my.strip.lwd <- 3
tpar1=trellis.par.get("add.line") 
tpar1$lwd=my.lwd
trellis.par.set("add.line", tpar1) 

tpar2=trellis.par.get("plot.polygon") 
tpar2$lwd=my.lwd 
trellis.par.set("plot.polygon", tpar2) 

tpar3=trellis.par.get("plot.line") 
tpar3$lwd=my.lwd 
trellis.par.set("plot.line", tpar3) 

tpar4=trellis.par.get("superpose.polygon") 
tpar4$lwd=c(rep(my.lwd,7)) 
trellis.par.set("superpose.polygon", tpar4) 

tpar5=trellis.par.get("superpose.line") 
tpar5$lwd=c(rep(my.lwd,7)) 
trellis.par.set("superpose.line", tpar5) 

tpar6=trellis.par.get("axis.line") 
tpar6$lwd=c(rep(my.axis.lwd,7)) 
trellis.par.set("axis.line", tpar6) 

tpar7=trellis.par.get("box.3d") 
tpar7$lwd=my.lwd 
trellis.par.set("box.3d", tpar7) 

tpar8=trellis.par.get("box.rectangle") 
tpar8$lwd=my.lwd 
trellis.par.set("box.rectangle", tpar8) 

tpar9=trellis.par.get("box.umbrella") 
tpar9$lwd=my.lwd 
trellis.par.set("box.umbrella", tpar9) 

tpar10=trellis.par.get("dot.line") 
tpar10$lwd=my.lwd 
trellis.par.set("dot.line", tpar10) 

tpar11=trellis.par.get("strip.border") 
tpar11$lwd=c(rep(my.strip.lwd,7)) 
trellis.par.set("strip.border", tpar11) 

tpar12=trellis.par.get("reference.line") 
tpar12$lwd=c(rep(my.lwd,7)) 
trellis.par.set("reference.line", tpar12) 

my.plot <- xyplot(mpg ~ hp | factor(cyl), data=mtcars, type = c("p","r"),
                  scales = list(
                    cex = 0.5,
                    y = list(tck=4),
                    x = list(tck=4,
                            at=seq(50,350,50),
                            labels=c(50, 100, 150 , 200 , 250 , 300, 350 ))),
                  lex = 3, cex = 1,
                  main=list(
                    label = "Reichweite oder Leistung? Einfluss der Zylinderzahl.",
                    cex = 0.75),
                  xlab=list(
                    label="Leistung (PS)",
                    cex=0.75),
                  ylab=list(
                    label="Reichweite (Meilen/Gallone)",
                    cex=0.75)
)
print(my.plot)
dev.off()

#######################################################################################
#PLOT 9781119962847-fg1706_de.tiff
trellis.device(device="tiff", filename="9781119962847-fg1706_de.tiff",
               width = 1500, height = 750)
trellis.par.set("fontsize",list(text=48, points=36))
trellis.par.set("clip", list(panel = "off", strip = "off"))
my.lwd <- 1
my.axis.lwd <- 3
my.strip.lwd <- 3
tpar1=trellis.par.get("add.line") 
tpar1$lwd=my.lwd
trellis.par.set("add.line", tpar1) 

tpar2=trellis.par.get("plot.polygon") 
tpar2$lwd=my.lwd 
trellis.par.set("plot.polygon", tpar2) 

tpar3=trellis.par.get("plot.line") 
tpar3$lwd=my.lwd 
trellis.par.set("plot.line", tpar3) 

tpar4=trellis.par.get("superpose.polygon") 
tpar4$lwd=c(rep(my.lwd,7)) 
trellis.par.set("superpose.polygon", tpar4) 

tpar5=trellis.par.get("superpose.line") 
tpar5$lwd=c(rep(my.lwd,7)) 
trellis.par.set("superpose.line", tpar5) 

tpar6=trellis.par.get("axis.line") 
tpar6$lwd=c(rep(my.axis.lwd,7)) 
trellis.par.set("axis.line", tpar6) 

tpar7=trellis.par.get("box.3d") 
tpar7$lwd=my.lwd 
trellis.par.set("box.3d", tpar7) 

tpar8=trellis.par.get("box.rectangle") 
tpar8$lwd=my.lwd 
trellis.par.set("box.rectangle", tpar8) 

tpar9=trellis.par.get("box.umbrella") 
tpar9$lwd=my.lwd 
trellis.par.set("box.umbrella", tpar9) 

tpar10=trellis.par.get("dot.line") 
tpar10$lwd=my.lwd 
trellis.par.set("dot.line", tpar10) 

tpar11=trellis.par.get("strip.border") 
tpar11$lwd=c(rep(my.strip.lwd,7)) 
trellis.par.set("strip.border", tpar11) 

tpar12=trellis.par.get("reference.line") 
tpar12$lwd=c(rep(my.lwd,7)) 
trellis.par.set("reference.line", tpar12) 

my.plot <- xyplot(mpg ~ hp | factor(cyl), data=mtcars, type = c("p","r"),
                  scales = list(y = list(tck=4),
                                x = list(tck=4,
                                         at=seq(50,350,50),
                                         labels=c(50, 100, ' ' , 200 , ' ' , 300, ' ' ))),
                  lex = 3, cex = 1,
                  par.settings=simpleTheme(col="red", col.line="blue")
)
print(my.plot)
dev.off()
