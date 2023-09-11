#7c5c13b5977546d8ccd2c76ca9de43c4a13efd74
install.packages(c("httr","jsonlite"))
library(httr)
library(jsonlite)


#base <- 'https://api.jcdecaux.com/vls/v1/stations'
#contract <- "Lyon"
#info_key <- '7c5c13b5977546d8ccd2c76ca9de43c4a13efd74'
#API_URL <- paste0(base,"?contract=",contract,"&apiKey=",info_key,)

coucou <- GET("https://api.jcdecaux.com/vls/v1/stations?contract=Lyon&apiKey=7c5c13b5977546d8ccd2c76ca9de43c4a13efd74")
liste <- fromJSON(rawToChar(coucou$content), flatten = TRUE)
