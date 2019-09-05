
## This pair of functions will cache the inverse of a given matrix

        
makeCacheMatrix <- function(x = matrix()) {             ## function with argument x defined as matrix
                
        inv <- NULL                                     ## the inverse matrix starts with NULL value 
        set <- function(y) {                            ## define the set function  
                        
                x <<- y                                 ## value of matrix in parent environment
                inv <<- NULL                            ## if there is a new matrix, reset the inverse matrix to NULL
                        
        }
                
        get <- function() x                             ## define the get fucntion, this returns value of the matrix
                
        setinverse <- function(inverse) inv <<- inverse ## sets the value of inverse matrix in parent environment
        getinverse <- function() inv                    ## gets the value of inverse matrix
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  
        
}
        



cacheSolve <- function(x, ...) {
        
        inv <- x$getinverse()                            
        if(!is.null(inv)) {                             ## if there is already a value assigned for the inverse matrix,
                                                        
                message("getting cached data")          ## a message is returned, 
                return(inv)                             ## along with the inverse matrix
                
        }
        
        data <- x$get()                                 ## get the submitted matrix
        inv <- solve(data, ...)                         ## inverse the matrix
        x$setinverse(inv)                               ## set the inverse matrix
        inv                                             ## return the inverse matrix
        
}


#Thank you for grading my assignment - Laurens




