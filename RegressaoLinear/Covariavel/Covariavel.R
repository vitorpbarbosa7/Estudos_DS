setwd('C:/GD/DS/DS_Share/Github/RegressaoLinear/Covariavel')

data = read.csv('data.csv')
names(data)[1] = 'Maquina'

fit1 = lm(formula = Resistencia ~ Diametro, data = data)
summary(fit1)

plot(data$Resistencia, data$Diametro)
plot(fit1)

fit2 = lm(formula = Resistencia ~ Diametro + Maquina, data = data)
summary(fit2)

fit3 = lm(formula = Resistencia ~ Diametro + Maquina + Diametro*Maquina, data = data)
summary(fit3)

