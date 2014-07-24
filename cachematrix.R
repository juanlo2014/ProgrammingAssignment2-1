## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    z <- NULL
    set <- function(y) {
        x <<- y
        z <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) z <<- inverse
    getinverse <- function() z
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function
# This function returns the inverse of the matrix. First it checks if
# the inverse has already been computed. If so, it gets the result and skips the
# computation. If not, it computes the inverse, sets the value in the cache via
# setinverse function.
cacheSolve <- function(x, ...) {
       z <- x$getinverse()
    if(!is.null(z)) {
        message("getting cached data.")
        return(z)
    }
    data <- x$get()
    z <- solve(data)
    x$setinverse(z)
    z
}

