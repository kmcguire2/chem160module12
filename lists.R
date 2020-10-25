r <- list()
for (i in 1:10) {
  r[[i]] <- sample(1:6, i, replace = TRUE) #chooses i values from the range 1-6
}

for (i in r) {
 cat(i, "\n") #print each value in r to the screen
}

rsum <- sapply(r, sum) #apply the sum command to all elements in list r
cat("sums=", rsum, "\n") #print the sums

rmean <- sapply(r, mean) #apply the mean command to all elements in list r
cat("means=", rmean, "\n")
