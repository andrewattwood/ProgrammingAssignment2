## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function takes a matrix and sets variable m to cached solution
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function
#if m contains cached result return m if not calculate inverse, cache and return m
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}

##test case uncomment next three lines
#b = matrix(c(1.2,1.5,5.7,2.2,3.1,4,5,6,7.8), nrow = 3)
#c = makeCacheMatrix(b)
#cacheSolve(c)

