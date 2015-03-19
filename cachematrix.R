## MakeCacheMatrix cache the matrix and the solve

## Cache the matrix and the inverted matrix, show the enviroment where both values are

makeCacheMatrix <- function(x = matrix(),...) {
    cache1 <- x
    getfunction <- function() cache1
    setfunction <- function(y = NULL) {
      cache1 <<- y 
    }
    #Solve the matrix and put it on cache aswell
    m<<- solve(x)
    #Show environment that x is in cache
    list(get = getfunction, set = setfunction)
 
  }


## See if values are already assigned, if not run makeCacheMatrix

cacheSolve <- function(x, ...) {
  # See if there's a assigned value on cache      
  if(x != NULL){
          message("Matrix assigned in Cache")
          #See if the inverted matrix is in cache
          if( m = NULL){
            message("No inverted Matrix, make sure that the original matrix is quadratic")
          }
        }
  #If there is no value assigned, run makeCacheMatrix
        else{
          matrixCacheMatrix(x)
        }
}
