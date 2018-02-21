#' 
esp_getYears <- function(.data){
  
  .data %>%
    dplyr::mutate(years = stringr::str_sub(prevStudy, 1, 1)) %>%
    dplyr::mutate(years = as.integer(years)) -> .data
  
  return(.data)
}