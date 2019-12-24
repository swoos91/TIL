## 실습 예제 (거리개념과 MDS)

setwd('c:/rwork')
academy <- read.csv('MLData/academy.csv', stringsAsFactors = F, header = T)

## SVM 가우시안
install.packages('kernlab')
library(kernlab)

m=ksvm(Species~. , data=iris)
m

## 실습예제책 SVM

set1 <- read.csv('MLData/set1.csv', header=T, stringsAsFactors = F)
set1

# 6*6 plot -> 데이터가 중앙으로 모이는 성향
plot(set1)

library(MASS)

# 누적 확률 커널 밀도 함수 kde2d (x축, y축, )
density <- kde2d(set1$food, set1$book, n=400)
image(density, xlab = 'food', ylab='book')
# 중앙으로 몰리는 성향으로 미루어보아 비선형의 가능성이 있음.

library(e1071)
m1 <- svm(status ~ food + book + cul + cloth + travel, data = set1, type = 'C-classification')
m1
# tune.svm(m1,) #parameter 찾기
predict(m1, set1)
sum(set1$status != predict(m1, set1)) #confusionMatrix()

m2 <- ksvm(status ~. , kernel = 'rbfdot', data =set1)
predict(m2, set1)
