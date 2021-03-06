#'
esp_female <- function(.data, currentVar, newVar, logical = TRUE){
  
  # reformat currentVar input
  currVar <- rlang::enquo(currentVar)
  
  # reformat newVar input
  newVar <- rlang::enquo(newVar)
  newVarQ <- rlang::quo_name(rlang::enquo(newVar))
  
  # recode variable
  if (logical == TRUE){
    
    .data <- dplyr::mutate(.data, !!newVarQ := ifelse(!!currVar == "female", TRUE, FALSE))    
    
  }
  else if (logical == FALSE){
    
    .data %>%
      dplyr::mutate(!!newVarQ := ifelse(!!currVar == "female", "Yes", "No")) %>%
      dplyr::mutate(!!newVarQ := as.factor(!!newVar)) -> .data
    
  }
  
  return(.data)
  
}
