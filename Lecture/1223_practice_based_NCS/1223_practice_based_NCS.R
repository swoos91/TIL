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



# install.packages('kknn')
# library(kknn)
# 
# wbcd[2:31] <- lapply(wbcd[2:31], normalize)
# 
# summary(wbcd)
# knn_train <- wbcd[1:469,]
# knn_test <-wbcd[]