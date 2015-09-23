### FILE:     Get_NOAA_Storm_Data.R
### PURPOSE:  Download zip file of NOAA Storm Data.
### AUTHOR:   James B. Callahan (Jim)
### DATE:     September 21, 2015 (Monday)
###
### TRACK:    Coursera: Data Scientist Certification Track
### COURSE:   Reproducable Research -- 2nd Class Project
###
### LANGUAGE: R statistical programming language
###           R version 3.2.2 (2015-08-14) -- "Fire Safety"
###           Copyright (C) 2015 The R Foundation for Statistical Computing


### Set directory for this assignment and verify it.
setwd("~/GitHub/RepData_PeerAssessment2")
getwd()                                          # Verify

## Create /data directory if it doesn't already exist.
## Big data file -- so remember to add "\data" to .gitignore
if (!file.exists("data")) {
    dir.create("data")
}

### Get Assignment
url <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
filename <- "~/GitHub/RepData_PeerAssessment2/data/repdata%2Fdata%2FStormData.csv.bz2"
download.file(url,filename, mode="wb")

## Get Storm data documentation -- for .PDF files have to specify mode="wb"
url <- "https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2Fpd01016005curr.pdf"
filename <- "~/GitHub/RepData_PeerAssessment2/data/repdata%2Fpeer2_doc%2Fpd01016005curr.pdf"
download.file(url,filename, mode="wb")

## Get Storm data FAQ -- for .PDF files have to specify mode="wb"
url <- "https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2FNCDC%20Storm%20Events-FAQ%20Page.pdf"
filename <- "~/GitHub/RepData_PeerAssessment2/data/repdata%2Fpeer2_doc%2FNCDC%20Storm%20Events-FAQ%20Page.pdf"
download.file(url,filename, mode="wb")


### Data file should be downloaded and unzipped; ready for next program read into R.
### NO NEED to Unzip the data file -- 
### apparently this type can be read directly by Rs read.csv()

### End of: Get_NOAA_Storm_Data.R