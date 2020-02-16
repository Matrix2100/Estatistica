dados = c(95,87,110,113,85,81,81,61,109,103,101,66,109,77,93,93,74,112,100,80,99,124,93,60,93)

#AMPLITUDE DE CLASSE
x_min = min(dados) -0.1
x_max = max(dados) +0.1
AT = x_max - x_min
N = length(dados)
K = ceiling(log(N)/log(2))
AC = (AT/K)
int_classes = seq(x_min,x_max,AC)

#(valores da freq_absoluta)
w = table( cut(dados,breaks= int_classes,right =FALSE))

#para tabela de distribuição de frequencias 
freq_absoluta = c(3,6,6,7,3)
freq_relativa = prop.table(freq_absoluta)
freq_percentual = freq_relativa*100


#RESPOSTAS DA QUESTAO


#Media, mediana, desvio padrao
median(dados)
mean(dados)
sqrt(var(dados))

#tabela de destribuição de frequencia
data.frame(w,freq_relativa,freq_percentual)

# HISTOGRAMA
hist(dados, breaks=int_classes, col="blue", freq = TRUE)

# Pie Chart
pct <- round(freq_absoluta/sum(freq_absoluta)*100)
pct
lbls <- paste(lbls, pct) # add percents to labels
lbls <- paste(lbls,"%",sep="") # ad % to labels
pie(freq_percentual, labels = freq_percentual, main="Frequencia")

freq_percentual
sum(9.60+7.96+8.48+9.60+8.48+8.24+8.84+6.80+8.76+7.16+7.92+8.16)

