pollutantmean <- function(directory, pollutant, id = 1:332) {
  data <- data.frame()
  for(i in id) {
    filename <- sprintf("%s/%03d.csv", directory, i)
    data <- rbind(data, read.csv(filename))
  }
  mean(data[[pollutant]],na.rm=TRUE)
}