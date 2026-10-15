install.packages("epiDisplay")

tabela = epiDisplay::tab1(Admission$CLA == 1)
porcentagem <- mean(Admission$CLA > 3) * 100
print(porcentagem)

write.csv2(tabela[["output.table"]], file="tabela1.csv")
