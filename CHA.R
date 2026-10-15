library(epiDisplay)

Admission$CHA <- as.numeric(gsub(",", ".", Admission$CHA))

hist(Admission$CHA, 
     main = "Histograma Sperle",
     xlab = "Chance de Admissão (CHA)",
     ylab = "Frequência"
)

dev.off()
