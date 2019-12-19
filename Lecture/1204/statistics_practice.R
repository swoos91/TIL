xdata<-c(1196, 1340, 1232, 1184, 1295, 
  1247, 1201, 1182, 1192, 1287, 
  1159, 1160, 1243, 1264, 1276)
t.test(xdata, mu=1220)

#단일검정

setwd('c:\\머신러닝\\1204\\Part-III')
data<-read.csv('one_sample.csv', head=TRUE)
head(data)
x<-data$survey
str(x)
summary(x)  #as.factor 사용시 table 함수와 같은 결과 출력
table(x)
data$survey<-as.factor(data$survey)
summary(data)

install.packages('prettyR')
library(prettyR)
freq(x)


#양측검정 H0: 만족비율이 80%이다 // H1: 만족비율이 80%가 아니다
#단측검정(크다, 작다) H:0: 만족비율이 80%이다 // H1: 만족비율이 80%보다 크다
binom.test(c(136,14), p=0.8)
binom.test(c(136, 14), p=0.8, alternative='greater', conf.level=0.95)
#불만율이 20% 미만
binom.test(c(14,136), p=0.2, alternative='less', conf.level=0.95)
