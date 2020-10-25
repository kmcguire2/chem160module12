p <- matrix(0,2,2) #probabilities
p[1,1] = 0.25 #probability of A -> A
p[2,1] = 0.75 #probability of A -> B
p[1,2] = 0.40 #probability of B -> A
p[2,2] = 0.60 #probability of B -> B

n <- matrix(0,2,1) #populations
n[1,1] <- 50 #A
n[2,1] <- 50 #B

cat("Initial pops", n, "\n") #print inital values

for (i in 1:200) {
  n <- p%*%n  #matrix multiply
}

cat("Final pops", n, "\n")