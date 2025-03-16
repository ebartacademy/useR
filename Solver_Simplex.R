##################################################
# Usando o RStudio para resolver Modelos Lineares

# Modelo:
# Z(Máx) = 5X1 + 4X2
# Sujeito a:
#   R1: 6X1 + 4X2 <= 24
#   R2:  X1 + 2X2 <= 6
#   R3: -X1 + 2X2 <= 1
#   R4:        X2 <= 2

# X1 e X2 são positivos

install.packages("boot")
install.packages("matlib")
library(boot)
library(matlib)

Zmax<-c(5,4)
Zmax

A<-matrix(c(6,4,1,2,-1,1,0,1), 4, 2, byrow=TRUE)
A

b<-c(24,6,1,2)
b

Resolucao<-simplex(Zmax, A1=A, b1= b, maxi = TRUE)
Resolucao

# Gráfico da resolução:
plotEqn(A, b)

         