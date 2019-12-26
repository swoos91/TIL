setwd('c:/rwork')
data(iris)
# install.packages('caret')
library(caret)

# 150건 --> 70% ( 105건 ==> 3 )
idx <- createDataPartition(iris$Species, p=.7, list=F)

iris_train <- iris[idx,]
iris_test <- iris[-idx,]

table(iris_train$Species)
table(iris_test$Species)

# Naive Bayes model

library(e1071)
naive.result <- naiveBayes(iris_train, iris_train$Species, laplace = 1)
naive.pred <- predict(naive.result, iris_test, type = 'class')
table(naive.pred, iris_test$Species)
confusionMatrix(naive.pred, iris_test$Species)

# 실습예제(Naive Bayes)

# Q1

movie <- read.csv('MLData/movie.csv', header = T)
nm <- naiveBayes(movie[1:5], movie$장르, laplace = 0)
# head(movie)
result <- predict(nm, movie[1:5])
sum(movie$장르 != result)

# Q2

mail <- read.csv('MLData/spam.csv', header = T)
mail[is.na(mail)] <- 0
nm2 <- naiveBayes(mail[2:13], mail$메일종류, laplace = 0)
# head(mail)

result2 <- predict(nm2, mail[2:13])
sum(mail$메일종류 != result2)


## ANN

# library(caret)

idx <- createDataPartition(iris$Species, p=.7, list=F)
iris_train <- iris[idx,]
iris_test <- iris[-idx,]
table(iris_train$Species)

library(nnet) # 인공 신경망 기법을 사용하기 위한 패키지
# 데이터 표준화 // # scale 함수 -> 표준화(평균이 0이고, 표준편차가 1이 되도록)
## 정규화: 모든 데이터를 0~1 사이로 rescaling
iris_train_scale <- as.data.frame(sapply(iris_train[,-5],scale)) 
iris_test_scale <- as.data.frame(sapply(iris_test[,-5],scale))
iris_train_scale$Species <- iris_train$Species
iris_test_scale$Species <- iris_test$Species
#훈련 데이터 통한 모형 적합 //// size --> 노드수
nnet.result <- nnet(Species~. , iris_train_scale, size = 3)
# 테스트 데이터 평가
nnet.pred <- predict(nnet.result, iris_test_scale, type='class')
#분류 결과 도출
table(nnet.pred, iris_test$Species)


## ANN 실습예제 

prob <- read.csv('MLData/problem.csv', header=T, stringsAsFactors = F)
head(prob)
for (i in 1:30) {
  prob[i] = prob[i]*(1/5)
}
head(prob)

prob$accident2 <- with(prob, ifelse(accident=='suicide' | accident == 'violence', 1, 0))
head(prob)

# library(nnet)
prob<-prob[-31]
m1 <- nnet(accident2 ~ ., data = prob, size = 10)
r1 <- predict(m1, prob)
head(r1)

cbind(prob$accident2 , r1>0.5)
sum(as.numeric(r1>.5) != prob$accident2)

# 같은 방법 다른 패키지

# install.packages('neuralnet')
library(neuralnet)
xnam <- paste0('ans', 1:30)
fmla <- as.formula(paste('accident2 ~ ', paste(xnam, collapse = "+")))
m2 <- neuralnet(fmla, data = prob, hidden =10)
plot(m2)
