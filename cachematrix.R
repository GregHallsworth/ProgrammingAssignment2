## This code is in support of Programming Assignment 2: Lexical Scoping
## For the Coursera course [R Programming]

## MakeCacheMatrix is a function that returns a list of functions
## Its purpose is to store a matrix and a cached value of the inverse of the matrix
## It Contains the following functions:
## * setMatrix      set the value of a matrix
## * getMatrix      get the value of a matrix
## * cacheInverse   get the cahced value (inverse of the matrix)
## * getInverse     get the cahced value (inverse of the matrix)

makeCacheMatrix <- function(x = matrix()) {
# holds cached value or NULL if nothing cached
# initially nothing cached so set it to NULL
cache <- NULL
# store a matrix
setMatrix <- function(newValue) {
        x <<- newValue
        # since matrix is assigned new value, clear the cache
        cache <<- NULL
}
# returns stored matrix
getMatrix <- function() {
        x
        }
   # cache the given argument 
  cacheInverse <- function(solve) {
          cache <<- solve
}
# get the cached value
getInverse <- function() {
        cache
}
# return a list. Each named element is a function
list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)

}


## The function below calculates the inverse of a "special" matrix created with
## makeCacheMatrix


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- y$getInverse()
 # if cached value exists return it
 if(!is.null(inverse)) {
         message("getting cached data")
         return(inverse)
}
# otherwise get the matrix, caclulate inverse and store it in
# the cache
data <- y$getMatrix()
inverse <- solve(data)
y$cacheInverse(inverse)
# return the inverse
 inverse


}
