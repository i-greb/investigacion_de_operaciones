#se importa la librería
library(matlib)

# Asignar los coeficientes de las desigualdades
#X1 + X2 ≤ 4700		1     1  (1)
#X1 > 800			1     0  (2)
#X2 ≤ 900			0     1  (3)
#X1 ≤ 1,800			1     0  (4)

A<-matrix(c(1,1,0,1,1,0,1,0), ncol = 2, nrow = 4)

# Asignar los valores del lado derecho de las desiguldades
#X1 + X2 ≤ 4700		4700   (1)
#X1      > 800		800    (2)
#X2      ≤ 900		900    (3)
#X1      ≤ 1800	1800  (4)

b<- c(4700,800,900,1800)

# Se grafican las ecuaciones
plotEqn(A,b, xlim=c(0,2000), labels=TRUE)
