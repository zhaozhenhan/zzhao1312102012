problem1 <- function(filename = NULL, fcnname = NULL, nrange = NULL, nsample = NULL, compile = NULL) {
  
  require(tikzDevice)
  
  fullFilename = paste(filename, ".tex", sep = "")
  
  xbegin = nrange[1]
  xend = nrange[2]
  
  xval = seq(xbegin, xend, length = nsample)
  yval = fcnname(xval)
  
  tikz(fullFilename, standAlone = TRUE)
  
  fcnnameLabel = paste("$", deparse(substitute(fcnname)), "$", sep = "")
  
  plot(xval, yval, type = 'l', xlab = "$x$", ylab = fcnnameLabel)
  
  dev.off()
  
  
  if (compile) {
    tools::texi2pdf(fullFilename)
  }
}