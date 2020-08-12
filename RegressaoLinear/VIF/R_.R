setwd('C:\\GD\\DS\\zOutros_Materiais\\N\\MateriaisParaEstudo\\Github\\RegressaoLinear\\VIF')


# Importação dados --------------------------------------------------------
library(MASS) # Para carregar os dados de Boston
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


# VIF ---------------------------------------------------------------------
library(car) # Biblioteca com a função VIF
vif(lin_reg)


# Homocedasticidade -------------------------------------------------------

library(lmtest)

par(mfrow=c(2,2))
plot(lin_reg)


# Testes de Homocedasticidade ---------------------------------------------

#Teste de Breusch-Pagan
bptest(lin_reg)

# Teste de Gooldfeld-Quandt
gqtest(lin_reg)


# Autocorrelação dos resíduos ---------------------------------------------
library(ggplot2)
library(lmtest)

acf(lin_reg$residuals)
dwtest(lin_reg)
