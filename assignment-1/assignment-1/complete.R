complete <- function(directory, id = 1:332) {
  f <- data.frame()
  for(i in id) {
    f = rbind(f, data.frame(id=i,
      nobs=dim(subset(read.csv(sprintf("%s/%03d.csv", directory, i)),
      !is.na(sulfate) & !is.na(nitrate)))[1]))
  }
  return(f)
}