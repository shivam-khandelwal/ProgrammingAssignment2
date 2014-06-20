

makeCacheMatrix <- function(x = matrix()) {

	i <- NULL
	
set <- function(y){
		m <<- y  
		i <<- NULL
	}
	
get <- function(){
	m
}

setInverse <- function(Inverse){
	i<<- Inverse
}

getInverse <- function(){ i }

list(set = set, get = get,
             setInverse = setInverse ,
             getInverse = getInverse)

}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	i <- z$getInverse()
	
	if(!is.null(i)){
			message("getting cached data")
			return(i)
			}
	
	data <- z$get()
	i <- solve(data,...)
	z$setInverse(i)
	
	i
}
