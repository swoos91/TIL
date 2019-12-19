install.packages('rpart')
library(rpart)

# CART: 목적변수가 범주형(지니지수), 연속형(분산 이용하여 이진 분리 ex. 분산값이 큰 변수와 작은 변수)
help(rpart)

m<- rpart(Species~., data=iris)
m
# 해석// n: 총 갯수, loss: yval 기준으로 다른 정보의 수,  yval: y value, yprob: y의 비율 값

plot(m, mar=.2)
text(m, cex=.7)

install.packages('rpart.plot')
library(rpart.plot)
help(rpart.plot)

prp(m, type=4, extra=2, digits=3)


# ctree : p-value 값과 같이 통계학적 검증이 들어가서 보강. but 속성 갯수가 30개 이하일 때만 사용 가능.
install.packages('party')
library(party)
m2 <- ctree(Species~., data=iris)
m2
plot(m2)
