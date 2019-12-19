data(cars)
head(cars)

# linear modeling __> lm 축약
m<-lm(dist~speed, data=cars)  # 종속~독립
summary(m)

fitted(m)[1:4]
residuals(m)[1:4]

predict( m, newdata = data.frame( speed=3 ) )  # m 모델에 newdata를 입력하여 값을 예측


# 다중 회귀분석 __> 종속변수는 무조건 수치형 , 독립(설명)변수는 범주 수치형 둘 다 가능

install.packages('mlbench')
library(mlbench)
data(BostonHousing)

m2<-lm( medv ~ . , data = BostonHousing )
summary(m2)

#설명변수로 써도 되는지 판별하는 함수 --> 단계적 변수 선택 방법

m3<-step(m2, direction='both')


