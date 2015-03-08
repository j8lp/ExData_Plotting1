getData = function(url){

if(!file.exists("data"))
{
  dir.create("data")
}

download.file(url,destfile = "./data/temp.zip",mode="wb")
data = read.table(unzip("./data/temp.zip"),T,sep = ';', colClasses = c("character", "character", rep("numeric",7)),na.strings = c("?"))
unlink("./data/temp.zip")
data$Date = strptime(paste(data$Date,data$Time,sep = "T"), format="%d/%m/%YT%H:%M:%S")
data$Time = NULL
data = subset.data.frame(data,Date > as.POSIXlt("2007-02-01") & Date < as.POSIXlt("2007-02-03"))
return(data)
}