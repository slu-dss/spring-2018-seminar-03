#' 
esp_getYears <- function(.data){
  
  .data %>%
    mutate(years = str_sub(prevStudy, 1, 1)) %>%
    mutate(years = as.integer(years)) -> .data
  
  return(.data)
}