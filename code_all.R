rm(list=ls())
par(mfrow=c(2,2))


Year=c( 1951 , 1961 , 1971 , 1981 , 1991 , 2001 , 2011)
Population=c( 26300670 , 34926000 , 44312017 , 54580650 , 68077970 , 80221300 , 91347736)
aa=data.frame(Year,Population)
plot(aa,type="o",main="Decennial Population by Census in West Bengal ")


gr<-c(0)
for (i in 1:6){
  gr[i]<-Population[i+1]-Population[i]
  gr[i]<-gr[i]/Population[i] * 100
}
yr<-c("1951-1961","1961-1971","1971-1981","1981-1991","1991-2001","2001-2011")

growthrt<-data.frame(yr,gr)

plot(c(1:6),gr, xlab = "Years", ylab = "Growth Rate (in %)", main="Percentage Decadal Growth Rate of West Bengal" ,  xaxt='n',type = 'o' )
axis(1, at=1:6, labels=yr,las=2)


lit=c(24.61, 34.46, 38.86, 48.65, 57.70, 68.64, 76.26)
plot(Year,lit, xlab = "Year", ylab = "Literacy rate (in %)", main="Decadal Literacy rate of West Bengal", type="o")


srat<-c(865, 	878,	891, 	911, 	917, 	934, 	950)
plot(Year,srat, main = "Decadal Sex-Ratio of West Bengal (per 1000 males)", xlab = "Years", ylab = "Sex- Ratio (female per 1000 males)", type = "o")


popdens<-c(296, 394, 499, 615, 767, 903, 1028)
plot(Year,popdens,main="Population Density of West Bengal",xlab="Years",ylab="Population density (per thousand)",type="o")

urban=c(6282 ,8541, 10967 ,14447 ,18708 ,22427 ,29093)
plot(Year,urban,main = "Urban Population of West Bengal",xlab="Years",ylab="Urban population(in thousands)",type="o")

rural=c( 20018, 26385, 33345, 40134, 49370, 57749, 62183   )
plot(Year,rural,main="Rural population of West Bengal",xlab="Years",ylab="Rural population(in thousands)",type="o")

Yearn=c(1990:2016)
birth=c(  28.2, 27.0, 24.8, 25.7, 25.2, 23.6, 22.8, 22.4, 21.3, 20.7, 20.7, 20.5, 20.5, 20.3, 19.3, 18.8 ,18.4, 17.9 ,
          17.5 ,17.2, 16.8, 16.3 ,16.1, 16.0, 15.6, 15.5, 15.4)

plot(Yearn,birth,main="Birth Rate of West Bengal", xlab="Years", ylab= "Birth rate (per thousand)",type="o")

death=c(  8.4, 8.3, 8.4, 7.4, 8.3, 7.9, 7.8, 7.7, 7.5, 7.1, 7.0, 6.8 ,6.7, 6.6, 6.3, 6.4, 6.2, 6.3,
          6.2, 6.2, 6.0 ,6.2, 6.3, 6.4, 6.1 ,5.9, 5.8)
par(mfrow=c(1,1))
plot(Yearn,death ,main="Death Rate of West Bengal", xlab="Years", ylab= "Death rate (per thousand)",type="o")