Problem2<-read.table('rawdata.csv',sep=',',header=T)
attach(Problem2)
Problem2<-tapply(Medal,INDEX=NOC,FUN=length)
y<-tapply(Medal,INDEX=NOC,FUN=table)

save(file='Problem2.RData',list='problem2')