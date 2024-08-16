



#' Predict Runoff
#'
#' @param Rv the runoff coefficient
#' @param A the watershed area in acres
#'
#' @return the volume of stormwater runoff
#' @export
#'
#' @examples
predict_runoff <- function(impervious, A){
  runoff_vol <- (3630 * (.05+.9*impervious) * A)
  print(runoff_vol)
}
