library(tidyverse) 


widthsACT <- c(
  2,  # reportYear,
  25, # lastName,
  16, # firstName,
  1,  # middleInitial,
  40, # addresss,
  2,  # countryCode,
  1,  # genderNumaric,
  1,  # genderAlpha,
  2,  # gradeLevel, 
  9,  # actID, 
  1,  # phoneType,
  6,  # dateOfBirth, #MMDDYY
  10, # phoneNum, 
  25, # city,
  2,  # stateNum, 
  2,  # stateAlpha, 
  9,  # zipcode,
  8,  # dateOfBirthExtended,
  2,  # scoreEW,   #range 01-36
  2,  # scoreWR,   #range 02-12
  4,  # blank1,
  8,  # essayComments, 
  13, # blank2, 
  13, # stateID, 
  6,  # highSchoolCode,
  2,  # hsGradeEnglish,
  2,  # hsGradeMath, 
  2,  # hsGradeSS, 
  2,  # hsGradeNS, 
  1,  # blank3, 
  3,  # hsAvg, 
  4,  # hsGradYear,  #CCYY
  6,  # testDateExpanded, #CCYYMM
  4,  # testDate, #MMYY
  3,  # stateRankEnglish, 
  3,  # stateRankMath, 
  3,  # stateRankReading, 
  3,  # stateRankScience, 
  1,  # testLocation,
  2,  # candadianProvince,
  1,  # blank4, 
  7,  # canadaPostCode,
  1,  # correctedReport, #normally blank
  2,  # scaleEnglish, 
  2,  # scaleMath, 
  2,  # scaleReading, 
  2,  # scaleScience, 
  2,  # scaleComposite, 
  1,  # blank5, 
  3,  # sumScaleScores, 
  3,  # stateRank, 
  1,  # blank6, 
  2,  # blank7, 
  2,  # interestSciAndTech, 
  2,  # blank8, 
  2,  # interestArts, 
  2,  # blank9, 
  2,  # interestSocial, 
  2,  # blank10, 
  2,  # interestAdminSales, 
  2,  # blank11, 
  2,  # interestBuisOps, 
  2,  # blank12, 
  2,  # interestTechnical, 
  6,  # worldOfWork, 
  11, # blank13, 
  2,  # scaleSubUsageMechanics, 
  2,  # scaleSubRehtorical, 
  2,  # scaleSubElemAlgebra, 
  2,  # scaleSubAlgCoordGeom, 
  2,  # scaleSubPlaneGeomTrig, 
  2,  # scaleSubSocSci, 
  2,  # scaleSubArtsLit, 
  3,  # stateRankSTEM, 
  3,  # stateRankELA, 
  29, # blank14, 
  2,  # interestInvSciAndTech, 
  2,  # interestInvArts, 
  2,  # interstInvSocialService, 
  2,  # interstInvAdminSales, 
  2,  # interstInvBuisOps, 
  2,  # interestInvTechnical, 
  10, # localID, 
  10, # blank15, 
  150,# studentProfileSection, 
  50, # blank16, 
  4,  # language, 
  1,  # eosRelease, 
  2,  # religiousAffiliation, 
  23, # blank17, 
  30, # coursesTakenOrPlanned, 
  30, # gradesEarned, 
  10, # stateIDNum,
  24, # collegeChoices, 
  58, # blank18, 
  1,  # ranksType, 
  7,  # blank19, 
  2,  # subjectScoreWriting, 
  3,  # subjectUSRankWriting, 
  2,  # domainIdeasAnalysis, 
  2,  # domainDevelopmentSupport, 
  2,  # domainOrganization, 
  2,  # domainLanUseConventions, 
  2,  # subjectScoreWriting2_12, 
  2,  # scoreELA, 
  3,  # usRankELA, 
  2,  # blank20,
  2,  # scoreSTEM, 
  3,  # usRankSTEM, 
  2,  # blank21, 
  1,  # UCTI, 
  1,  # PTCRI, 
  2,  # pointsEarnedPOW, 
  2,  # pointsPosPOW, 
  3,  # percentCorrectPOW, 
  3,  # readinessRangeLowerPOW, 
  2,  # pointsEarnedKOL, 
  2,  # pointsPosKOL, 
  3,  # percentCorrectKOL, 
  3,  # readinessRangeLowerKOL, 
  2,  # pointsEarnedCOSE, 
  2,  # pointsPosCOSE, 
  3,  # percentCorrectCOSE, 
  3,  # readinessRangeLowerCOSE,
  2,  # pointsEarnedPHM, 
  2,  # pointsPosPHM, 
  3,  # percentCorrectPHM, 
  3,  # readinessRangeLowerPHM, 
  2,  # pointsEarnedNAQ, 
  2,  # pointsPosNAQ, 
  3,  # percentCorrectNAQ, 
  3,  # readinessRangeLowerNAQ, 
  2,  # pointsEarnedALG, 
  2,  # pointsPosALG, 
  3,  # percentCorrectALG, 
  3,  # readinessRangeLowerALG,
  2,  # pointsEarnedFUN, 
  2,  # pointsPosFUN, 
  3,  # percentCorrectFUN, 
  3,  # readinessRangeLowerFUN, 
  2,  # pointsEarnedGEO, 
  2,  # pointsPosGEO, 
  3,  # percentCorrectGEO, 
  3,  # readinessRangeLowerGEO,
  2,  # pointsEarnedSAP, 
  2,  # pointsPosSAP, 
  3,  # percentCorrectSAP, 
  3,  # readinessRangeLowerSAP,
  2,  # pointsEarnedIES, 
  2,  # pointsPosIES, 
  3,  # percentCorrectIES, 
  3,  # readinessRangeLowerIES,
  2,  # pointsEarnedMDL, 
  2,  # pointsPosMDL, 
  3,  # percentCorrectMDL, 
  3,  # readinessRangeLowerMDL, 
  10, # blank22, 
  2,  # pointsEarnedKID, 
  2,  # pointsPosKID, 
  3,  # percentCorrectKID, 
  3,  # readinessRangeLowerKID,
  2,  # pointsEarnedCAS, 
  2,  # pointsPosCAS, 
  3,  # percentCorrectCAS, 
  3,  # readinessRangeLowerCAS,
  2,  # pointsEarnedIKI, 
  2,  # pointsPosIKI, 
  3,  # percentCorrectIKI, 
  3,  # readinessRangeLowerIKI,
  2,  # pointsEarnedIOD, 
  2,  # pointsPosIOD, 
  3,  # percentCorrectIOD, 
  3,  # readinessRangeLowerIOD,
  2,  # pointsEarnedSIV, 
  2,  # pointsPosSIV, 
  3,  # percentCorrectSIV, 
  3,  # readinessRangeLowerSIV,
  2,  # pointsEarnedEOM, 
  2,  # pointsPosEOM, 
  3,  # percentCorrectEOM, 
  3,  # readinessRangeLowerEOM, 
  6,  # usRanksEWWR, 
  3,  # usRanksScaleUsageMechanics, 
  3,  # usRanksScaleRehtorical, 
  3,  # usRanksScaleElmAlg, 
  3,  # usRanksScaleAlgCoordGeo, 
  3,  # usRanksScalePlaneGeoTrig,
  3,  # usRanksScaleSocialScience,
  3,  # usRanksScaleArtLit,
  3,  # usRanksScaleEnglish, 
  3,  # usRanksScaleMath,
  3,  # usRanksScaleReading, 
  3,  # usRanksScaleScience, 
  3,  # usRanksScaleComposite,
  3,  # stateRankWriting, 
  4 # blank23
  
)


namesACT <-c(
   "reportYear",
   "lastName",
   "firstName",
   "middleInitial",
   "address",
   "countryCode",
   "genderNumaric",
   "genderAlpha",
   "gradeLevel",
   "actID",
   "phoneType",
   "dateOfBirth", #MMDDYY
   "phoneNum",
   "city",
   "stateNum",
   "stateAlpha",
   "zipcode",
   "dateOfBirthExtended",
   "scoreEW",   #range 01-36
   "scoreWR",   #range 02-12
   "blank1",
   "essayComments",
   "blank2",
   "stateID",
   "highSchoolCode",
   "hsGradeEnglish",
   "hsGradeMath",
   "hsGradeSS",
   "hsGradeNS",
   "blank3",
   "hsAvg",
   "hsGradYear",  #CCYY
   "testDateExpanded", #CCYYMM
   "testDate", #MMYY
   "stateRankEnglish",
   "stateRankMath",
   "stateRankReading",
   "stateRankScience",
   "testLocation",
   "candadianProvince",
   "blank4",
   "canadaPostCode",
   "correctedReport", #normally blank
   "scaleEnglish",
   "scaleMath",
   "scaleReading",
   "scaleScience",
   "scaleComposite",
   "blank5",
   "sumScaleScores",
   "stateRank",
   "blank6",
   "blank7",
   "interestSciAndTech",
   "blank8",
   "interestArts",
   "blank9",
   "interestSocial",
   "blank10",
   "interestAdminSales",
   "blank11",
   "interestBuisOps",
   "blank12",
   "interestTechnical",
   "worldOfWork",
   "blank13",
   "scaleSubUsageMechanics",
   "scaleSubRehtorical",
   "scaleSubElemAlgebra",
   "scaleSubAlgCoordGeom",
   "scaleSubPlaneGeomTrig",
   "scaleSubSocSci",
   "scaleSubArtsLit",
   "stateRankSTEM",
   "stateRankELA",
   "blank14",
   "interestInvSciAndTech",
   "interestInvArts",
   "interstInvSocialService",
   "interstInvAdminSales",
   "interstInvBuisOps",
   "interestInvTechnical",
   "localID",
   "blank15",
   "studentProfileSection",
   "blank16",
   "language",
   "eosRelease",
   'religiousAffiliation',
   "blank17",
   "coursesTakenOrPlanned",
   "gradesEarned",
   "stateIDNum",
   "collegeChoices",
   "blank18",
   "ranksType",
   "blank19",
   "subjectScoreWriting",
   "subjectUSRankWriting",
   "domainIdeasAnalysis",
   "domainDevelopmentSupport",
   "domainOrganization",
   "domainLanUseConventions",
   "subjectScoreWriting2_12",
   "scoreELA",
   "usRankELA",
   "blank20",
   "scoreSTEM",
   "usRankSTEM",
   "blank21",
   "UCTI",
   "PTCRI",
   "pointsEarnedPOW",
   "pointsPosPOW",
   "percentCorrectPOW",
   "readinessRangeLowerPOW",
   "pointsEarnedKOL",
   "pointsPosKOL",
   "percentCorrectKOL",
   "readinessRangeLowerKOL",
   "pointsEarnedCOSE",
   "pointsPosCOSE",
   "percentCorrectCOSE",
   "readinessRangeLowerCOSE",
   "pointsEarnedPHM",
   "pointsPosPHM",
   "percentCorrectPHM",
   "readinessRangeLowerPHM",
   "pointsEarnedNAQ",
   "pointsPosNAQ",
   "percentCorrectNAQ",
   "readinessRangeLowerNAQ",
   "pointsEarnedALG",
   "pointsPosALG",
   "percentCorrectALG",
   "readinessRangeLowerALG",
   "pointsEarnedFUN",
   "pointsPosFUN",
   "percentCorrectFUN",
   "readinessRangeLowerFUN",
   "pointsEarnedGEO",
   "pointsPosGEO",
   "percentCorrectGEO",
   "readinessRangeLowerGEO",
   "pointsEarnedSAP",
   "pointsPosSAP",
   "percentCorrectSAP",
   "readinessRangeLowerSAP",
   "pointsEarnedIES",
   "pointsPosIES",
   "percentCorrectIES",
   "readinessRangeLowerIES",
   "pointsEarnedMDL",
   "pointsPosMDL",
   "percentCorrectMDL",
   "readinessRangeLowerMDL",
   "blank22",
   "pointsEarnedKID",
   "pointsPosKID",
   "percentCorrectKID",
   "readinessRangeLowerKID",
   "pointsEarnedCAS",
   "pointsPosCAS",
   "percentCorrectCAS",
   "readinessRangeLowerCAS",
   "pointsEarnedIKI",
   "pointsPosIKI",
   "percentCorrectIKI",
   "readinessRangeLowerIKI",
   "pointsEarnedIOD",
   "pointsPosIOD",
   "percentCorrectIOD",
   "readinessRangeLowerIOD",
   "pointsEarnedSIV",
   "pointsPosSIV",
   "percentCorrectSIV",
   "readinessRangeLowerSIV",
   "pointsEarnedEOM",
   "pointsPosEOM",
   "percentCorrectEOM",
   "readinessRangeLowerEOM",
   "usRanksEWWR",
   "usRanksScaleUsageMechanics",
   "usRanksScaleRehtorical",
   "usRanksScaleElmAlg",
   "usRanksScaleAlgCoordGeo",
   "usRanksScalePlaneGeoTrig",
   "usRanksScaleSocialScience",
   "usRanksScaleArtLit",
   "usRanksScaleEnglish",
   "usRanksScaleMath",
   "usRanksScaleReading",
   "usRanksScaleScience",
   "usRanksScaleComposite",
   "stateRankWriting",
   "blank23"
    
  )


actMappingSpecs <- data.frame(widthsACT, namesACT)

dfACT <- read.fwf(file="~filepath~", widths = widthsACT, col.names = namesACT)



write.csv(actMappingSpecs, file="mappingSpecs.CSV" )
?write.csv



#### SELECT THE DATA

dfACT %>%
  select(highSchoolCode, 
         firstName, 
         lastName, 
         dateOfBirth, 
         testDate,
         testLocation, 
         scaleMath, 
         scaleEnglish, 
         scaleReading,
         scaleScience, 
         scaleComposite, 
         scoreEW
         ) -> dfScores
summary(dfScores)




#### this reads the fixed width file into R
ReadACT<- function(filePath = "fileName", year="19-20"){
  df <- GetMapping(year)
  if(!is.data.frame(df)){
    stop("Given Mapping isn't a dataframe. Have you entered the year correctly?")
    }
  read.fwf(file=filePath,
           widths = df$widthsACT,
           col.names = df$namesACT)
}


## Flexable Mapping. So far this is only 19-20
GetMapping <- function(year="18-19"){
  switch(year,
         "18-19"= return("Old Mapping"), #placeholder
         "19-20"= return(actMap19_20),  #sep2019-aug2020
         stop('No Map found, Have you entered the year correctly?') #error catching
         )
  return(NULL)
}


## this gets the comment for a given code
GetComment <- function(commentCode="--"){

  ## if the code is -- there is no comment
  if(commentCode=="--"){
    return("NA")
  }
  ## if the comment codes need to be between 01 and 99 if this isn't the case something is wrong
  else if(!(as.numeric(commentCode)%in%c(1:99))){
    stop('Invalid Comment Code Code values should be between 01 and 99')
  }
  return(paste0("test",commentCode))
}

## creates a string of comments based on the comment field
TranslateComment <- function(comment="--------"){
  if(comment=="--------"){
    "No Essay Comments"
  }
  else{
    comments <- ""
    for(i in 1:4){
      stop <- i*2
      start <-  stop-1
      comments <- paste(comments, GetComment(substr(comment, start, stop)))
    }
    return(comments)
  }
}

## transform column of comment codes into comments
## THIS IS DPLYR COMPATABLE! :):):)
FindComments <- function(.data, ...){
  .data$commentText <- lapply(.data$essayComments, TranslateComment)
  return(.data)
}

## UTCI
# 0:Below Proficent, 1:Proficent,  2:Above Proficent, -: unable to caluclate
GetUTCI <- function(textUTCI="-"){
  switch(as.character(textUTCI),
         "0" = return("Below Proficent"),
         "1" = return("Proficent"),
         "2" = return("Above Proficent"),
         "-" = return("Unable to calculate"),
         stop('Invalid UTCI code') #error catching
  )
}

#Tranforms the column of  UTCI into text
FindUTCI <- function(.data, ...){
  .data$UTCIText <- lapply(test2$UCTI, GetUTCI)
  return(.data)
}



## PTCRI
# 0:Below Proficent, 1:Proficent,  2:Above Proficent, -: unable to caluclate
GetPTCRI <- function(textPTCRI="-"){
  switch(as.character(textPTCRI),
         "0" = return("= Unlikely to obtain an NCRC"),
         "1" = return("Likely to obtain a Bronze level NCRC"),
         "2" = return("Likely to obtain a Silver level NCRC"),
         "3" = return("Likely to obtain a Gold level NCRC"),
         "4" = return("Likely to obtain a Platinum level NCRC"),
         "-" = return("Unable to calculate"),
         stop('Invalid PTCRI code') #error catching
  )
}

#Tranforms the column of  PTCRI into text
FindPTCRI <- function(.data, ...){
  .data$PTCRIText <- lapply(test2$PTCRI, GetPTCRI)
  return(.data)
}

