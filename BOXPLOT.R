boxplot(
  CHA ~ CLA,
  data = Admission,
  main = "Boxplot Sperle",
  xlab = "Classificação da Universidade (CLA)",
  ylab = "Chance de Admissão (CHA)"
)

dev.off()
