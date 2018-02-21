#' Clean binary variables
#' 
#' @description This function takes a variable coded "Yes"/"No" and converts it to either 
#' a logical variable (the default, where "Yes" is converted to TRUE) or to a factor.
#' 
#' @useage esp_binary(.data)
#' 
#' @param .data A data frame or tibble
#' @param currentVar The current source variable
#' @param newVar The name of a new variable to be created
#' @param logical A logical scalar; should a logical variable be created? If \code{FALSE}, a factor is created.
#' 
#' @return A data frame or a tibble with the newly created variable.
#' 
#' @importFrom dplyr %>%
#' @importFrom dplyr rename
#' @importFrom dplyr select
#' 
#' @export 
esp_binary <- function(){
  
  
}