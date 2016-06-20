# Datei prozentDarstellung.R

x <- c(0.458, 1.6653, 0.83112)
prozent <- round(x * 100, digits = 1)
ergebnis <- paste(prozent, '%', sep = "")
print(prozent)

