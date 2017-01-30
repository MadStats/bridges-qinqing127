setwd("C:/Users/LiaoQinqing/Desktop/2016 Spring/stat 479")
b=read.csv("2014_bridge.csv",header=T)
bwis=b[b$STATE_CODE_001==55,c(1,2,9,22,24,27,67,68,69,70,73)]
bwis$COUNTY_CODE_003= formatC(bwis$COUNTY_CODE_003, width = 3, format = "d", flag = "0")
for(i in 2:nrow(bwis)){
  bwis$FIPS[i]=paste(bwis$STATE_CODE_001[i],bwis$COUNTY_CODE_003[i],sep="")
}
bwis$FIPS=as.numeric(bwis$FIPS)
bridge.wisc=as.data.frame(bwis[,c(12,2,4,5,6,7,8,9,10,11)])
