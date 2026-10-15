install.packages("epiDisplay")

tabela = epiDisplay::tab1(Admission$TOELF >= 98 & Admission$TOELF < 110)
porcentagem <- mean(Admission$TOELF >= 98 & Admission$TOELF < 110) * 100
print(porcentagem)

write.csv2(tabela[["output.table"]], file="tabela.csv")

