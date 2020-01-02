# setwd('c:/rwork')


# PCA 분석 예제

x1<-c(26,46,57,36,57,26,58,37,36,56,78,95,88,90,52,56)
x2<-c(35,74,73,73,62,22,67,34,22,42,65,88,90,85,46,66)
x3<-c(35,76,38,69,25,25,87,79,36,26,22,36,58,36,25,44)
x4<-c(45,89,54,55,33,45,67,89,47,36,40,56,68,45,37,56)

score<-cbind(x1,x2,x3,x4)
colnames(score)<-c("국어","영어","수학","과학")
rownames(score)<-1:16
head(score)

#주성분분석(PCA) # 이산형 데이터이므로 prcomp 활용
result<-prcomp(score)
result
## result 해석 : pc1 아래 수치가 바로 Weight값을 의미 
## 국어와 영어의 W값이 높은데, 이는 pc1이 국어와 영어를 식별하는데 용이함을 의미

summary(result)
## 어디까지의 PCA 성분을 봐야하는지 알려주는 지표
## : Cumulative Proportion(누적 기여율) --> PCA가 데이터를 얼마만큼 설명하는 지를 말함 ( 80%가 일반적 기준 )

biplot(result)
screeplot(result,npcs=4,type="lines",main="Score")