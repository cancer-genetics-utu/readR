get.nlines <-
  function(file, n=1, pattern=NULL, incl.header=FALSE)
  {
    f.nrow <- system2("wc", c("-l", file, " | awk '{print $1}'"), stdout = TRUE)
    if (!incl.header) {
      f.head <- get.skip(file, n=n, pattern=pattern)
      f.nrow <- as.integer(f.nrow)-f.head
    }
    return(f.nrow)
  }
