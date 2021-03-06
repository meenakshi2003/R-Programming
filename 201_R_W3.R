# Cache the Inverse of a Matrix
# Store matrix 
makeCacheMatrix <- function(x = matrix()) {
  invr <- NULL
  set <- function(y) {
    x <<- y
    invr <<- NULL
  }
  get <- function() x
  setInvr <- function(rev) invr <<- rev
  getInvr <- function() invr
  list(set = set, get = get, setInvr = setInvr, getInvr = getInvr)
}
#makeCacheMatrix

#Cache to Solve 
# Condition check implemented To retain the inverse from Cache
cacheSolve <- function(x, ...) {
  invr <- x$getInvr()
  if (!is.null(invr)) {
    message("Cached data processing..")
    return(invr)
  }
  matx <- x$get()
  invr <- solve(matx, ...)
  x$setInvr(invr)
  invr
}
#cacheSolve
