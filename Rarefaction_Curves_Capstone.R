#Instructions
#https://www.davidzeleny.net/anadat-r/doku.php/en:rarefaction_examples 

install.packages ('iNEXT')
library(iNEXT)
library(tidyverse)
install.packages('devtools')
library(devtools)
library(dplyr)

library(ggplot2)
#Fix Bug
source ("https://gist.githubusercontent.com/zdealveindy/f30fa1f0264eabe95828218f61e63df0/raw/333937c2155dc3b8afddd1663e266b6183062602/plot.iNEXT_quickfix")


#call in data
#Curve by region
All <- read.csv("All Regions.txt")
All

str(All)


DataInfo (All, datatype = 'abundance')

All <- iNEXT (All, datatype = 'abundance')
plot (All)

###############################################

#Hawaii by dive

Hawaii<-read.csv("Hawaii by dive.txt")
Hawaii

DataInfo (Hawaii, datatype = 'abundance')

Hawaii <- iNEXT (Hawaii, datatype = 'abundance')
plot (Hawaii)

#Hawaii by dive total 



Hawaii_1<-read.csv("Hawaii by dive total.txt")
Hawaii_1



DataInfo (Hawaii_1, datatype = 'abundance')

Hawaii_1 <- iNEXT (Hawaii_1, datatype = 'abundance')
plot (Hawaii_1)


