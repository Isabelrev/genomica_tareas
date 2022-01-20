######## Tarea 0 genómica ########

library(Biostrings)
ej1 <- readRNAStringSet(file.choose())
ej1

ami <- translate(ej1)


#Ejercicio 1
#Número de nucleótidos

#En esencia al leer el string con readRNAStringSet te arroja el width, que es el tamaño de cada
#secuencia

nchar(ej1) # me da la longitud en caracteres

width(ej1) # es equivalente a la anterior pero especial, se usa para secuencias fasta


#Ejercicio 2
#Obtener el porcentaje de GC

letterFrequency(ej1, as.prob = T, letters = "GC") #se obtiene el % de GC de todas las secuencias

letterFrequency(ej1, as.prob = T, letters = "GC")[[1]] #Estos se usarían para obtener el % de cada secuencia
letterFrequency(ej1, as.prob = T, letters = "GC")[[2]] 
letterFrequency(ej1, as.prob = T, letters = "GC")[[3]]
letterFrequency(ej1, as.prob = T, letters = "GC")[[4]]
letterFrequency(ej1, as.prob = T, letters = "GC")[[5]]



e1 <- ej1[1]
e2 <- ej1[2]
e3 <- ej1[3]
e4 <- ej1[4]
e5 <- ej1[5]
e1

probDNA<-function(String, N){
  DNA<-as.vector(String)
  rel<-length(which(DNA == N))/length(DNA)
  prob<-rel*100
  return(prob)
}
#porcentaje GC primera secuencia
probDNA(ej1[[1]], "G") + probDNA(ej1[[1]], "C")

#porcentaje GC segunda secuencia
probDNA(ej1[[2]], "G") + probDNA(ej1[[2]], "C")

#porcentaje GC tercera secuencia
probDNA(ej1[[3]], "G") + probDNA(ej1[[3]], "C")


#porcentaje GC cuarta secuencia
probDNA(ej1[[4]], "G") + probDNA(ej1[[4]], "C")


#porcentaje GC quinta secuencia
probDNA(ej1[[5]], "G") + probDNA(ej1[[5]], "C")

