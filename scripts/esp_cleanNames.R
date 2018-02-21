#' Clean names
#' 
#' @description Clean the survey output's names in a consistent way. 
#' 
#' @useage esp_cleanNames(.data)
#' 
#' @param .data A data frame or tibble
#' 
#' @return A cleaned data set with standardized names.
#' 
#' @importFrom dplyr %>%
#' @importFrom dplyr rename
#' @importFrom dplyr select
#' 
#' @export
esp_cleanNames <- function(.data){
  
  .data %>%
    select(-X) %>%
    rename(id = Identification.Number) %>%
    rename(fullName = Full.Name) %>%
    rename(firstName = First.Name) %>%
    rename(lastName = Last.Name) %>%
    rename(gender = Gender) %>%
    rename(spanishCourse = Spanish.Course) %>%
    rename(sec1010 = SPAN.1010.section) %>%
    rename(sec1020 = SPAN.1020.section) %>%
    rename(sec2010 = SPAN.2010.section) %>%
    rename(classStats = Class.Status) %>%
    rename(prevStudy = Previous.study) %>%
    rename(sluSpan = Taken.at.SLU) %>%
    rename(placement = Placement) %>%
    rename(placeScore = Placement.score) %>%
    rename(nativeLang = Native.language) %>%
    rename(nativeLangOthr = Other.native.language) %>%
    rename(homeLang = Home.language) %>%
    rename(homeLangOthr = Other.home.language) %>%
    rename(major = Major) %>%
    rename(majorOther = Other.major) %>%
    rename(minor = Minor) %>%
    rename(minorOther = Other.minor) %>%
    rename(spanInterest = Interested.major.minor) %>%
    rename(community = Community.interaction) %>%
    rename(work = Work.learning) %>%
    rename(attHispanic = Attitude.Hispanic.community) %>%
    rename(attPrior = Attitude.previous.course) %>%
    rename(attLearn = Attitude.learning.Spanish) %>%
    rename(interest = Interest.FL) %>%
    rename(desire = Desire) %>%
    rename(emplyment = Employment.use) %>%
    rename(inClass = In.class.feeling) %>%
    rename(speaking = Speaking.Spanish.feeling) %>%
    rename(cultures = Cultures.different) %>%
    rename(proficient = Proficient.useful) -> .data
  
  return(.data)
}