## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL 
  }
  get <- function() x
  setInverse <- function(inv) i <- inv
  getInverse <- function() i
  list(set = set, get = get, 
       setmean = setmean,
       getmean = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- inverse.gaussian(data)
  x$setInverse(m)
  m
}
