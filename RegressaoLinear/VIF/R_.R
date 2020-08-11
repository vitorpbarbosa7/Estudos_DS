setwd('C:\\GD\\DS\\zOutros_Materiais\\N\\MateriaisParaEstudo\\Github\\RegressaoLinear\\VIF')


# Importa��o dados --------------------------------------------------------

dados = Boston
#Remo��o do vetor coluna CHAS como no Python 
dados$chas = NULL
X = dados[1:12]
Y = dados$medv
# Regress�o linear --------------------------------------------------------

lin_reg = lm(Y ~ ., data = cbind(X, Y))

#Informa��es: (Observa-se que no R, de imediato obt�m-se muito mais informa��es em rela��o 
#ao Python)
summary(lin_reg)