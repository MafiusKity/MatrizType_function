# MatrizType_function
  Function in R to classify the type of matrix


## Operation
 Just execute it within R or IDE of your choice, using it as follows:

    Source("blablabla")  #blablabla is the path to the file MatrizType_function.R
    MatrizType(X) #X is the matrix


## Types of matrices:
- Linear
- Columnar
- Square
  - Diagonal
    - Identity
  - Triangular
    - Upper
    - Lower
- Rectangular
- Null


## Considerations:
- The MatrixType function does not recognize NULL values within the matrix; it considers NA and 0 values for this classification;
- FALSE==0 and TRUE==1;
