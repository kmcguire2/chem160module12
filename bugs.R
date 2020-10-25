# E(t+1) = 100A(t)
# E(t+1) = 0*E(t)+ 0*L(t) + 100A(t)
# number of eggs = number of adults*100

# L(t+1) = 0.15E(t)
# 15% of eggs hatch into larvae

# A(t+1) = 0.10L(t) + 0.40A(t)
# 10% or larvae survive, 40% of adults survive

p <- matrix(0,3,3) # 3 by 3 matrix of zeros
p[1,3] <- 100
p[2,1] <- 0.15
p[3,2] <- 0.1
p[3,3] <- 0.4
print(p)

s <- matrix(0,3,1) #vector to hold initial population sizes
s[1,1] <- 10
cat("Initial pops", s, "\n")

for (i in 1:25) {   #25 generations
  s <- p%*%s  #multiply the matrices
}
cat("Final pops", s, "\n")