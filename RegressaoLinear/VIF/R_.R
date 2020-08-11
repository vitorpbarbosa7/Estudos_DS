setwd('C:\\GD\\DS\\zOutros_Materiais\\N\\MateriaisParaEstudo\\Github\\RegressaoLinear\\VIF')


# Importação dados --------------------------------------------------------

dados = Boston
#Remoção do vetor coluna CHAS como no Python 
dados$chas = NULL
X = dados[1:12]
Y = dados$medv
# Regressão linear --------------------------------------------------------

lin_reg = lm(Y ~ ., data = cbind(X, Y))

#Informações: (Observa-se que no R, de imediato obtêm-se muito mais informações em relação 
#ao Python)
summary(lin_reg)
