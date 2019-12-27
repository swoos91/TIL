### 계층적 클러스터

library(ggplot2)
data(diamonds)
head(diamonds)
str(diamonds)

t <- sample(1:nrow(diamonds), 1000)
test <- diamonds[t,]
dim(test)
test

mydia <- test[c('price', 'carat','depth','table')]

# 군집의 평균 성향을 average // 거리값을 이용한 계층적 클러스터링
result <- hclust(dist(mydia), method = 'ave') 
plot(result, hang = -1)

### K-means

result2 <- kmeans(mydia, 3) #군집수 = 3
names(result2)
result2

g1 <- subset(mydia, result2$cluster==1)
summary(g1)
g2 <- subset(mydia, result2$cluster==2)
g3 <- subset(mydia, result2$cluster==3)
summary(g2)
summary(g3)
str(mydia)



# 최적의 k값 선정 과정 (급감 시켜주는 k값; 엘보우값)
iris2<-iris[,1:4] #목표변수(Species) 제외


km.out.withness<-c()
km.out.between<-c()
for (i in 2:7){ #군집수를k=2~7까지변화시켜가며클러스터링시행
 set.seed(1)
 km.out<-kmeans(iris2, centers=i)
 km.out.withness[i-1]<-km.out$tot.withinss#군집내제곱합의합
 km.out.between[i-1]<-km.out$betweenss#군집간제곱합의합
   }
data.frame(km.out.withness, km.out.between)


### 연관성 규칙(아프리오리 알고리즘)

# 주의사항: data(*.csv)파일을 트랜잭션 클래스와 같이 변환해야함.
# help("read.transactions")
# stran2<-read.transactions("single_format.csv",format="single",
#                           sep=",",cols=c(1,2), rm.duplicates=T)
install.packages('arules')
install.packages('arulesViz')
library(arules)
library(arulesViz)
data(Groceries)
str(Groceries)
# inspect: 거래 정보를 {} brace 형태로 print --> type: transactions 
inspect(Groceries)
summary(Groceries)

sort(itemFrequency(Groceries,type="absolute"),decreasing = T)
itemFrequencyPlot(Groceries,topN=10,type="absolute")
itemFrequencyPlot(Groceries,topN=10,type="relative")

# apriori(Groceries) #support=0.1, confidence=0.8
# minlen --> {} -> {} // lhs(왼쪽 아이템 수) + rhs(오른쪽 아이템 수)
result_rules<-apriori(Groceries,
                      parameter=list(support=0.005,confidence=0.5,minlen=2))
result_rules
summary(result_rules) # {lhs} --> {rhs}
inspect(result_rules[1:10])



#######################

### 실습예제 (머신러닝기반의 빅데이터 분석 실전 예제)

# Q1

# 데이터 읽기/ 전처리
setwd('c:/rwork')
build <- read.csv('MLData/building.csv', header = T)
build[is.na(build)] <- 0
build <- build[-1]
build

# 연관성 분석
# 연관성 규칙 분석을 위해 transaction 타입으로 전환


trans <- as.matrix(build, 'transaction')
rules1 <- apriori(trans, parameter = list(supp = .2, conf = .6, target = "rules"))
rules1

inspect(sort(rules1))

rules2 <- subset(rules1, subset = lhs %pin% '보습학원' & confidence > .7)
inspect(sort(rules2))

rules3 <- subset(rules1, subset = rhs %pin% '편의점' & confidence > .7)
inspect(sort(rules3))

# visualization

b2 <- t(as.matrix(build)) %*% as.matrix(build)
# install.packages('sna')
# install.packages('rgl')
library(sna)
library(rgl)
b2.w <- b2 - diag(diag(b2))
# rownames(b2.w)
# colnames(b2.w)
gplot(b2.w, displaylabel = T, vertex.cex = sqrt(diag(b2)), vertex.col = "green", 
      edge.col = "blue", boxed.labels = F, arrowhead.cex = .3, label.pos = 3, edge.lwd = b2.w*2)
