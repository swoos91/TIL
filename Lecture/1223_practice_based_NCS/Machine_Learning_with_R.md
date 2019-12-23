# 머신러닝

## 1. 머신러닝 종류

- 지도학습(Supervised Learning)

  > Feature(;독립변수)와 주어진 Label(;종속변수)의 관계를 설명. '분류형'과 '수치형'으로 대분류

  - 범주형
  - 연속형

- 비지도학습(Unsupervised Learning)

  > Label이 주어지지 않은 상태에서 Feature를 활용하여 학습한 모델. 행을 기준으로 유사성(거리)을 측정. **벡터화**하는 것이 핵심.

- 강화학습(Reinforcement Learning)

  > **'보상'**과 **'페널티'**가 학습의 핵심.





----

# R 을 활용한 머신러닝 분석

```R
setwd('c:/rwork')

# caret 패키지 설치

install.packages('caret')
library(caret)

# training data, test data 분리
# 범주형일 경우 label의 비율을 유지하는 것이 중요.
idx <- createDataPartition(iris$Species, p=.7, list=F)
iris_train <- iris[idx,]
iris_test <- iris[-idx,]
table(iris_train$Species)
table(iris_test$Species)



## Logistic Regression

# library(nnet)

model <- multinom(Species ~., data=iris_train)
summary(model)
### setosa에 비해 versicolor가 될 확률 or setosa에 비해 virginica가 될 확률 
result <- predict(model, iris_test)
result
### 평가 매트릭스: 예측모형이 얼마나 일치하는지 확인
confusionMatrix(result, iris_test$Species)


## Decision Tree cf) 한계점:이분법적 사고, 평균에 예민 --> randomForest(앙상블)

# library(rpart)

idx<-createDataPartition(iris$Species, p=.7, list=F)
iris_train <- iris[idx,]
iris_test <- iris[-idx,]
model<-rpart(Species ~ . , data=iris_train)
### type을 'class'로 지정해준 이유는 분류형으로 retrun하기위해.
result <- predict(model, iris_test, type="class")
head(result)
confusionMatrix(result, iris_test$Species)

## randomForest

# library(e1071)
# library(randomForest)

idx<-createDataPartition(iris$Species, p=.7, list=F)
iris_train <- iris[idx,]
iris_test <- iris[-idx,]
rdf <- randomForest(Species ~ . , data=iris_train, importance=T)
### importance 주요 변수에 가중치
rdf.pred <- predict(rdf, newdata=iris_test, type='response')
### type을 response로 한 이유는 분류형으로 결과값을 보여주기 위해
rdf.pred
confusionMatrix(rdf.pred, iris_test$Species)


## KNN

# library(class)

idx<-createDataPartition(iris$Species, p=.7, list=F)
iris_train <- iris[idx,]
iris_test <- iris[-idx,]
set.seed(1234)

model <-knn(train = iris_train[,-5],
            test = iris_test[,-5],
            cl = iris_train$Species,
            k=3)
# 예측치 (KNN은 모형을 만들면 예측치를 return함. predict 함수 실행 x)
summary(model)
confusionMatrix(model, iris_test$Species)

```

---

![image-20191223110024290](C:\Users\student\AppData\Roaming\Typora\typora-user-images\image-20191223110024290.png)

- Confusion Matrix에서의 Accuracy 측정

  **Accuracy = (TP+TN) / (TP+FN+FP+TN)**

- 1종오류: Y인데 N으로 예측하는 경우

- 머신러닝 모델 평가 지표

  ![image-20191223110539801](C:\Users\student\AppData\Roaming\Typora\typora-user-images\image-20191223110539801.png)

  - 민감도: 실측치 기준으로 긍정을 올바르게 예측한 비율
  - 정밀도:  예측치 기준으로 실제 긍정일 비율
  - F1-score: = 1 / (1/recall + 1/precision)

---

# 머신러닝기법들정리.pdf

## KNN(K-Nearest Neighbor) [p.88]

> 거리를 기반으로 가장 가까운 k개점들의 목적변수(label)들 중에 다수결에 따라 특정 데이터의 목적변수를 분류하는 기법

- 로직이 간단하여 빠르게 결과를 도출하는 것이 가능하다.

- 최적의 k개를 설정하는데 있어 수학적인 background가 없음.

- k개 안에 들어오는 모든 데이터들에 대해 같은 가중치를 부여함.

  cf) 가중치를 부여한 KNN

- 분류모형 中 가장 직관적이라 해석하기가 쉽다.





