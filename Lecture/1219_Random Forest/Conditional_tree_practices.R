# Conditional inference tree

install.packages('party')
library(party)
str(airquality)
summary(airquality)
# 수치예측 모형이 아닌 분류 모형이기 때문에 NA 값이 크게 영향을 주지 않음.


air_ctree <- ctree(Temp~Solar.R+Wind+Ozone, data=airquality)
air_ctree
plot(air_ctree)
# Solar.R은 중요변수로 선정이 되지 않음 --> 데이터를 분기하는데 있어서 solar.r이 temp에 있어 중요한 변수가 아님
# 'creterion'은 신뢰도에 해당하는 값이며, p-value = 1 - creterion 을 의미한다.
# 귀무가설이 맞다는 가정 하에서, 기각을 했을 때 발생할 오류율
# ex) ozone <=19 에서 p-value 값은 약 0.03이므로 기각해도 된다.
# 여기서 대립가설이 바로 ozone <= 19 이다.

#################################################
# Random forest

install.packages('randomForest')
library(randomForest)
rf<-randomForest(Species~. , data=iris)
rf
# OOB estimate o error rate: 4% --> OOB 데이터 이용한 오류율 측정
# 행이 실측치, 열이 예측치

#변수의 중요도 평가
rf3 <- randomForest(Species~. , data=iris, importance=TRUE)
importance(rf3)

# 파라미터 튜닝 : 같은 데이터라도 정확도를 다르게 뽑아낼 수 있음.

grid <- expand.grid(ntree=c(10, 100, 200), mtry=c(3,4))
grid
