#MatrizType
#Function: Analyze and classifing the matriz

MatrizType<-function(X){
  X[is.na(X)]<-0
  #X is the matriz
  
  #Checking if the matriz is a line:
  n_coll<-length(X[,1])
  if(n_coll==1){
    print("The matriz is a line")
  }
  
  #Checking if matriz is a colune:
  length(X[1,])->n_row
  if(n_row==1){
    print("The matriz is a colune")
  }
  
  #Checking if matriz is square or rectangle
  if(n_row==n_coll){
    print("The matriz is square")
    
    
    #Checking if matriz is diagonal
    diagonal_status<-T
    i<-1 #Line control indice
    j<-1 #Collune control indice
    while(i<=n_row){
      while(j<=n_coll){
        if(i!=j&&X[i,j]!=0){
          diagonal_status=F
          break
          }
        j=j+1
      }
      if(diagonal_status==F){break}
      i=i+1
      }
    if(diagonal_status!=F){
      print("The matriz is diagnal")
      
      
      #Vefifing if matriz is identity
      diagonal_value<-diag(X)
      identity_status=T
      i=1
      while(i<=length(diagonal_value)){
        if(diagonal_value[i]!=1){
          identity_status=F
          break
        }
        i=i+1
      }
      if(identity_status!=F){
        print("The matriz is identity")
        
      }
    }
    
    #Checking if matriz is triangular
    i=1 #Control indice of row
    j=1 #Control indice of collune
    triangularSuperiorStatus<-T
    triangularInferiorStatus<-T
    while(i<=n_row){
      while(j<=n_coll){
        #For triangular superior checking
        if(i>j&&X[i,j]!=0){
          triangularSuperiorStatus==F
        }
        #For triangular inferior checking
        if(i<j&&X[i,j]!=0){
          triangularInferiorStatus==F
        }
        if(triangularInferiorStatus&&triangularSuperiorStatus==F){break}
        j=j+1
      }
      if(triangularInferiorStatus&&triangularSuperiorStatus==F){break}
      i=i+1
    }
    if(triangularInferiorStatus!=F){
      print("The matrix is lower triangular")
      
    }
    if(triangularSuperiorStatus!=F){
      print("The matrix is upper triangular")
      
    }
  }
  else{
    print("The matriz is rectangle")
    
  }
  
  #Checking if matriz is null:
  i=1 #Row indice for control
  j=1 #Coll indice for control
  null_status=T
  while(i<=n_row){
    while(j<=n_coll){
      if(X[i,j]!=0){
        null_status=F
        break
      }
      j=j+1
    }
    if(null_status==F){break}
    i=i+1
  }
  if(null_status!=F){
    print("The matriz is null")
  }
  #Made by MafiousKity
  
  
###################
#                 #
#  |\__/,|   (`\  #
#  |_ _  |.--.) ) #
#  ( T   )     /  #
#  (((^_(((/(((_/ #
#                 #
###################
}