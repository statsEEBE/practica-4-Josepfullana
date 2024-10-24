#variable aleatoria Poisson (landa es un dato enunciado)
    #Datos: media de llamadas 25/minuto

  #ej, 30 llamadas en la proxima hora
dpois(30,23)
exp(-23)*(23^30)/factorial(30)
  #vemos que equivalen la formula i la funcion preprogramada

x<- 0:40
plot(x, dpois(x,23), type='h', col='red') #graficamos masa probabilidad en horizontal
  #probabilidad de max 30 llamadas. funcion de acumulacion F(30)

  #funcion de acumulacion de probabilidad
ppois(30, 25)
plot(x, ppois(x,23), type='s', col='red') #graficamos en forma de escalera con el 's'

  #prob de 30 llamadas en 2 horas, entonces ahora el landa es 2*landa=50

  #prob entre 25 y 19 llamadas
ppois(25,25)-ppois(19,25)

#a) probabilidad de que passen 0.033 horas entre dos llamadas, realmente es una exponencial
0 
  #ya que es la integral en un punto

#b) probabilidad de que al menos haya pasado 0.052h entre 2 llamadas
t<-seq(0,2,0.01)
t
plot(t, dexp(t,25), type='l',col='red') #densidad de probabilidad de la exponencial#tipo linea
plot(t, pexp(t,25), type='l',col='red') #acumulacion de probabilidad
    # 1-F(0.052)=P(T>=0.052)
1-pexp(0.052, 1/25)
#c)un experimento se define como el intervalo de tiempo entre dos llamadas, para
#50000 experimentos, la mediana 
mean(rexp(500000,25)) #tiempo medio de tiempo entre dos llamadas
  #equivale a 1/landa
  1/25

