#' Highlight subsets 
#'
#' Highlights subsets made with \code{mmplot_locator} on a \code{mmplot} object.
#'
#' @usage mmplot_selection(data, sel)
#'
#' @param plot A plot generated by mmplot.
#' @param sel Coordinates of the subset selection of the mmplot.
#' 
#' @return a ggplot2 object
#' 
#' @export
#' @import ggplot2
#' @author Soren M. Karst \email{smk@@bio.aau.dk}
#' @author Mads Albertsen \email{MadsAlbertsen85@@gmail.com}
#' @examples
#' 
#' data(rocco)
#' 
#' p <- mmplot(data = d, x = "C13.12.03", y = "C14.01.09", log.x = T, log.y = T, color = "essential", minlength = 3000)
#' p
#' #sel <- mmplot_locator(p)
#' sel <- data.frame(C13.12.03  =  c(1.39, 2.07, 16.8, 19.4, 7.72, 1.76),
#'                   C14.01.09  =  c(29.4, 67.6, 85.9, 43.6, 16.7, 14.9))
#' mmplot_selection(p, sel)
#' 


mmplot_selection <- function(plot=p,sel=sel){
  s <- plot + geom_polygon(data=sel, aes(x=sel[,1], y = sel[,2]), size = .5, color = "darkred", fill = NA, linetype= 2) +
    geom_point(data=sel, aes(x=sel[,1], y = sel[,2]), size = 2, color = "black")  
  return(s)
}
