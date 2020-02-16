dados =  q3$notas
dados

#MAXIMO E MINIMMO DE DADOS
x_min = min(dados) -0.1
x_max = max(dados) +0.1
AT = x_max - x_min
N = length(dados)
K = ceiling(log(N)/log(2))
AC = (AT/K)
int_classes = seq(x_min,x_max,AC)

#MENOR QUE 49
menor_que_49 = sum(dados < 49)
menor_que_49 = (menor_que_49*100)/2500

#intervalo das classes(valores da freq_absoluta)
w = table( cut(dados,breaks= int_classes, right = FALSE))

freq_absoluta = as.numeric(w)
freq_relativa = prop.table(freq_absoluta)
freq_percentual = freq_relativa*100

sum(freq_percentual)
#ALUNOS AVALIADOS
N
#TABELA DE DISTRIBUIÇÃO DE FREQUENCIA
data.frame(w,freq_relativa,freq_percentual)
# HISTOGRAMA
hist(dados, breaks=int_classes, col="blue",freq = FALSE)
#MENOR QUE 49
paste(menor_que_49, "%")
# SETORES PERCENTUAIS
pie(freq_percentual, labels = freq_percentual, main="Frequencia")

