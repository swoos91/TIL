setwd('c:/rwork/MLData')
drink <- read.csv('drink.csv', header=T)
drink
str(drink)
library(class)
m<-glm(지각여부~., family=binomial(link = logit), data=drink)
m
predict(m, drink, type = 'response')
predict(m, drink, type = 'response')>=0.5
table(drink$지각여부, predict(m, drink, type = 'response')>=0.5)

#############################

attach(drink)
predict(m, drink, type = 'response')

predict(m, drink, type = 'response')>=0.5
drink$지각여부
table(drink$지각여부, predict(m, drink, type = 'response')>=0.5
)
summary(m)


######################################## p.56


install.packages('aod')

library(aod)
library(ggplot2)
# view the first few rows of the data
mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
head(mydata) # 데이터의 대략적인 분포 확인
str(mydata) # 변수별 표준편차 확인
summary(mydata) # 데이터 구조 확인

# apply 는 반복문을 쓰지 않고 처리하는 함수
sapply(mydata, sd)
# contingency table(교차 도수 분포표: 범주형 데이터에 쓰임) : xtabs(~ x + y, data)  <- ~ 앞에 없는 이유: 갯수 
xtabs(~admit+rank, data=mydata)

mydata$rank <- factor(mydata$rank)

# rank만 범주형으로 바꿔준 이유?? glm은 종속변수를 무조건 범주형으로 인식
mylogit <- glm(admit ~ gre + gpa + rank, data = mydata, family =
                   "binomial")

summary(mylogit)

# 해석
# gre와 gpa는 양수인데, 이는 log값이 양수를 의미하여 불합격 확률 대비 합격 확률이 더 높다고 볼 수 있다.
# rank1 은 각각의 변수에 영향이 없다고 가정 --> rank2~4는 rank1에 비해 admit에 부정적인 영향을 준다고 해석(오즈비로 해석)

exp(coef(mylogit))



##################### p.68 ~ p.72
require(foreign)
require(nnet)
require(ggplot2)
require(reshape2)

ml <- read.dta("https://stats.idre.ucla.edu/stat/data/hsbdemo.dta")
