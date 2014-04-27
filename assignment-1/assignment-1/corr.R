corr <- function(directory, threshold = 0) {
  files <- subset(complete(directory),nobs>threshold)
  vec <- numeric()
  if(dim(files)[1]>0)
    for(i in 1:dim(files)[1]){
      obs = read.csv(sprintf("%s/%03d.csv", directory, files[i,1]))
      vec[i] <- cor(obs$nitrate, obs$sulfate,"complete.obs")
    }
  return(vec)
}