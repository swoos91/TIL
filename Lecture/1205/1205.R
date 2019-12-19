setwd('c:\\rwork\\Part-III')
data<-read.csv('one_sample.csv', header=T)
head(data)

x<-data$time
summary(x)
mean(x, na.rm=T)
x1<-na.omit(x)
summary(x1)

shapiro.test(x1)
hist(x1)
qqnorm(x1)

t.test(x1, mu=5.2, alter='greater', conf.level=0.95)

# 두 집단 검정

setwd('c:\\rwork\\Part-III')
data2<-read.csv('two_sample.csv', header=T)
head(data2)

x<-data2$method
y<-data2$survey
table(x)
table(y)
table(x,y,useNA='ifany')


prop.test(c(110,135),c(150,150), alter='less')   # 교육방법에 따른 만족도 차이를 알아보기 위한 함수


# 두 집단의 평균 검정(두 집단의 분포가 동질성을 가져야 평균 검정이 가능함)

result<-subset(data2, !is.na(score), c(method, score)) # subset은 행 단위 추출
length(result$score)
a<-subset(result, method==1)
b<-subset(result, method==2)

length(a$score);length(b$score)

mean(a$score);mean(b$score)
var.test(a$score, b$score)
t.test(a$score,b$score, var.equal=T)

#대응 두 집단의 평균 검정 // t-test는 동질성분산 하에 활용 가능 but r에서는 비동질 하에서도 가능하게 프로그래밍 되어있음.

data3<-read.csv('paired_sample.csv', header=T)
head(data3)

summary(data3)
result<-subset(data3, !is.na(after), c(before, after))
head(result)

mean(x);mean(y)
var.test(x,y,paired=T)   # 동질집단 하에서는 var.test 시 옵션으로 paired=T 넣어줄 것
t.test(x,y, alter='less', paired=T, conf.level=0.95)


# 교차분석

data4<-read.csv('cleanDescriptive.csv', header=T)
head(data4)

x<-data4$level2  # 부모의 학력 수준
y<-data4$pass2   # 자녀의 대학 진학 여부

table(x,y)

install.packages('gmodels') # crossTable
library(ggplot2)            # diamond dataset
library(gmodels)

data('diamonds')
CrossTable(x=diamonds$color, y=diamonds$cut, chisq=T)  # 행 주석: 관측치, 카이제곱, 행에서의 비율, 열에서의 비율, 전체에서의 비율


