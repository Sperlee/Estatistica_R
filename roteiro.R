#eu fiz o trabalho por partes, 1 arquivo para cada item,mas irei juntar todos em um roteiro como pedido.

#-----exercício 1 e 2 - CLA --------------

install.packages("epiDisplay")

tabela = epiDisplay::tab1(Admission$CLA > 3)
porcentagem <- mean(Admission$CLA > 3) * 100
print(porcentagem)

write.csv2(tabela[["output.table"]], file="tabela1.csv")
#------------------------------------


#-----exercício 3 - TOELF -----------

install.packages("epiDisplay")

tabela = epiDisplay::tab1(Admission$TOELF >= 98 & Admission$TOELF < 110)
porcentagem <- mean(Admission$TOELF >= 98 & Admission$TOELF < 110) * 100
print(porcentagem)

write.csv2(tabela[["output.table"]], file="tabela.csv")
#------------------------------------


#-----exercício 4 - HISTOGRAMA -----------

library(epiDisplay)

Admission$CHA <- as.numeric(gsub(",", ".", Admission$CHA))

hist(Admission$CHA, 
     main = "Histograma Sperle",
     xlab = "Chance de Admissão (CHA)",
     ylab = "Frequência"
)

dev.off()
#----------------------------------------

#exercício 5 foi a justificativa do gráfico, disponivel no documento de resposta

#-----exercício 6 ate 9 - MEDIDAS -----------

#media GPA
mean(Admission$GPA)

#primeiro quartil
quantile(Admission$GRE)

#variancia
var(Admission$GRE)
var(Admission$SOP)
#----------------------------------------

#-----exercício 10 - BOXPLOT -----------

boxplot(
  CHA ~ CLA,
  data = Admission,
  main = "Boxplot Sperle",
  xlab = "Classificação da Universidade (CLA)",
  ylab = "Chance de Admissão (CHA)"
)

dev.off()
#----------------------------------------