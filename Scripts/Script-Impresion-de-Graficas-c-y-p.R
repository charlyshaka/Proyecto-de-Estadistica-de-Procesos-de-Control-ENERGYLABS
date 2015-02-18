plotqcc <- function(n) {
  id <- 1:n
  library(qcc)
  
  data <- vector(mode="character", length=length(id))# Se declara un vector
                                                            #de id longitud 
        for(i in seq_along(id)) { # Se inicia un ciclo para crear un ciclo para 
                              # imprimir id documentos
             x <- id[i]
            id_string <- toString(x)
                  
              if (x >= 1 && x <= 9) {  
            
            monitor <- paste("00", id_string, ".csv", sep="")
              
              }
  
            
            else if (x >= 10 && x <= 99) {
                 
                    id_string <- toString(x)
                
                    monitor <- paste("0", id_string, ".csv", sep=""
            }
  
            
            else {
    
          id_string <- toString(x)

          monitor <- paste(id_string, ".csv", sep="") 
  }
  data[i] <- monitor      
  #print(monitor)


	library(qcc)

  for(i in data) {
    tabla <- read.csv(i)
    
    good <- complete.cases(tabla)
    
    tabla <- tabla[good, ]
    
  	attach(tabla) # Declara variables de base de datos

  	plot_p<- qcc(x[trial], sizes=size[trial], type="p") # Imprime grafica p de base de datos
	  plot_q<- qcc(x[trial], sizes=size[trial], type="c", labels=inc) # imprime grafica c de base de datos
}
}
















