# makeCacheMatrix contains below four functions to
# 1. set the matrix
# 2. get the matrix
# 3. set the inverse
# 4. get the inverse

# This list is used as the input to cacheSolve().

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    # caches the enterred matrix so that cacheSolve can check whether it has been changed
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


# This fuction is used to get an inverse matrix of the original matrix input to makeCacheMatrix()
# First, the fuction checks if the inverse has alredy been calculated, or not.
# If it has been calcuatated, get it from the cache and skips the computation.
# If not, it computes the inverse, and then sets its value in the cache using setInverse function.

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  else {a
        inv <- solve(x$get())
        x$setInverse(inv)
        return(inv)
  }
}
