setwd('c:/rwork')
m<-lm(dist~speed, data=cars)
summary(m)

par(mfrow=c(2,2), mar=c(3,3,3,3))
plot(m)

# Residuals vs Fitted --> x축 fitted // y축 Residuals ==> 0에 가깝게 수렴되고 있음(모델이 잘 설명하고 있음) + 잔차들의 등분산성 확인 가능(패턴 x)
# Residuals vs Leverage --> x축 Leverage(영향력) // y축 표준화된 잔차 ==> 잔차에 따른 영향력 분석 plot // 점선 밖으로 넘어가는 데이터는 이상치 // 설명 변수가 얼마나 극단적인지 확인할 수 있음. ## 잔차 회귀식의 영향력이 없음.

install.packages('lmtest')
library(lmtest)
dwtest(m)



#--------

data(iris)
d <- subset(iris, Species=='virginica' | Species=='versicolor')
str(d)
m<-glm(Species~., data=d, family='binomial')
summary(m)

fitted(m)[c(1:5, 51:55)]
as.numeric(d$Species)

f<-fitted(m)   # 0~1(실패할 확률 대비 성공 확률)
fm<-ifelse(f>.5, 1, 0)
head(fm)


is_correct<-ifelse(f>.5, 1, 0)
# P(y=1) : virginica가 될 확률
# versicolor=2, virginica=3 ==> versicolor=0, virginica=1
is_correct<-(ifelse(f>.5, 1, 0) == (as.numeric(d$Species)-2))
is_correct
sum(is_correct)
