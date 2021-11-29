(now_ct <- Sys.time())

(now_date <- as.Date(now_ct))
class (now_date)

as.Date('2021-11-16')

as.Date('2021/11/16')

as.Date('1/15/2001',format='%m/%d/%y)
as.Date('April 26,2001',format='%B, %d, %Y')
as.Data('22JUN01',format='%d,%b,%y')

OlsenNames()
ISOdate(2005,10,21,18,47,22,tz="Asia/calcutta")




thedate = ISOdate(2021,11,16,17,05,22,tz="Asia/calcutta")
format(thedate,'%A,%B,%D,%Y,%H,%M,%S')

b1=ISOdate(2020,03,28)
b2=ISOdate(2021,11,16)
b2-b1

difftime(b2,b1,units='weeks')
seq(as.data())


make.power <- function(n){
  pow <- function(x)
  {
x^n   
}
pow
}
cube<-make.power(3)
square<-make.power(2)
Cube<-make.power(3)
square<-make.power(3)
