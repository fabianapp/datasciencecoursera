## Above there is a pair of functions that cache the inverse of a matrix.

## this function is able to cache the inverse matrixa a done matrix
makeCacheMatrix <- function(x ) {
    t<-NULL
    set <- function(y) {
        x <<- y
        t<<-NULL
        
    }
    get <- function() x
    setinv <- function(transp) t <<- transp
    getinv <- function() t
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv
         )   
}


## this function creates the inverse matrix

cacheSolve <- function(x, ...) {
    t <- x$getinv()
    
    if(!is.null(t)) {
        message("getting cached data")
        return(t)
    }
    
    data <- x$get()
    t <- solve(data, ...)
    x$setinv(t)
    t
}

