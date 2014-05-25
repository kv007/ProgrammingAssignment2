## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  #Creates the 'm' object with an undefined value
  #with added comments
  m <- NULL

    set <- function(y) {
  #set x
      x <<- y
  #clear m
      m <<- NULL
    }
  #grabs and returns what is in x
  get <- function() x
  #alter m in parent dir
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  #return list
  list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)

  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    #checks and returns what exists in cache
    m <- x$getsolve()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
  #find the inverse and store appr
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m


}
