## The first function, makeCacheMatrix, caches the inverse of a matrix in a list
## The second function, cacheSolve, checks to see if the inverse is in the cache.  It returns the inverse if it is in cache 
## or puts it there if it is not in cache.

## Call this funciton first, with a matrix as the arguement, save this list to a variable
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
  #define set
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list (set = set,
        get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}


## call this function second with the result of the first.  Your return value will be the inverse of the initial matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
  }
