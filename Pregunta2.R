#ej 2
  #datos: exponencial con media de duracion de componente de 10000h
#a) probabilidad de al menos 13000h?
  #el valor esperado de la exp es 1/lambda

  #taraer apuntes lista de esperanzas y varianza
1-pexp(13000,1/10000)

#b)duracion para q p=0.2
qexp(0.8, 1/10000)

#c)
set.seed(85)
simulacion <-rexp(100,1/10000)
mean(simulacion)
#d)
median(simulacion)
var(simulacion)

