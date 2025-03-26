## Example of data requests from the water quality portal ######################
## https://www.waterqualitydata.us/ ############################################
## See Documentation for more example & parameters #############################
## https://www.waterqualitydata.us/webservices_documentation/ ##################

## Build water quality portal web request url###################################
# Base url - Required
bas <- 'https://www.waterqualitydata.us/data/'
# Type of search - Required
srh <- 'Station/search?'
rrh <- 'Result/search?'
# Organization ID - Required
org <- 'organization=CT_DEP01_WQX&'
# org <- 'organization=CTVOLMON'
# Project
prj <- 'project=benthicAlgABM&'
# Start Date
sdt <- 'startDateLo=01-01-2020&'
# Characteristic Type
crt <- 'characteristicType=Nutrient&'
# Minimum number of activities
act <- 'minactivities=1&'
# Type of file to retrieve
mim <- 'mimeType=csv&'
prv <- 'zip=no&providers=STORET'

## Retreive Data ###############################################################
# Example - Retreive Site Data for a Project
surl  <- paste0(bas,srh,org,prj,sdt,act,mim,prv)
sites <- read.csv(surl)

# Example - Retrieve Selected Characteristic Results for a Project with Dates
durl  <- paste0(bas,rrh,org,prj,sdt,crt,mim,prv)
sdata <- read.csv(durl)

