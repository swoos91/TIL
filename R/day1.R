v1 <- c(4, 1, 8, 6, 10)
print(v1)
v2 <- max(v1)
print(v2)
v3 <- min(v1)
print(v3)
함수명 <- function([매개변수...]) {
  
}
r1 <- 10
r1 <- 1:10
r1 C- c(10, 20, 30)
r1 <- NULL
r1 <- TRUE
r1 <- '가나다'
r1 <- 'nums' #literal -- '와 "의 용도는 같음 
r1 <- nums # 변수 
r1 <- nums() # 함수 
l-value <- r-value  #l-value: 장소, 변수 // r-value: 값, 식(변수, 리터럴, 함수호출식....)
seq(1, 4, by=1)
is.character(v1)
c(10, 20, TRUE)
c(10, 20, 'A')
rep(1, 100)
rep(1:3,5)
rep(1:3, time=5) 
rep(1:3, each=5)
LETTERS;month.name;month.abb;pi
LETTERS[1];LETTERS[3:5];LETTERS[-1];LETTERS[c(-2, -4)]

length(LETTERS)
length(month.name)
x <- c(10,2,7,4,15)
class(x)
rev(x)
range(x)
sort(x)
sort(x, decreasing=TRUE)
sort(x, decreasing=T)
order(x, decreasing=T)
x[3] <- 20
x + 1
x <- x +1
mean(x)
summary(x)

x[c(2,4)]
x[c(F,T,F,T,F)]
x > 5
x[x>5 & x<15]
x[x>5 | x<15] # | -- OR // & -- AND
10%/%3
names(x)
names(x) <- c('가', '나', '다', '라', '마')
x[2];x['나']

names(x) <- LETTERS[1:5]
names(x)

names(x) <- NULL

c(T, T, F, F) & c(T, F, T, F)
c(T, T, F, F) | c(T, F, T, F)
c(T, T, F, F) && c(T, F, T, F) #첫번째 원소끼리만 판단하고 끝
c(T, T, F, F) || c(T, F, T, F)

ls() #객체 리스트
rm(num2) #객체 삭제 명령

rainfall <- c(21.6, 23.6, 45.8, 77.0, 102.2, 133.3, 327.9, 348.0, 137.6, 49.3, 53.0, 24.9)
rainfall > 100
rainfall[rainfall>100]
which(rainfall > 100) #인덱스를 뽑아주는 함수
month.name[which(rainfall>100)]
month.abb[which(rainfall>100)]
month.korname <- c('1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월')
month.korname[which(rainfall>100)]
which.max(rainfall)
which.min(rainfall)
month.korname[which.max(rainfall)]
month.korname[which.min(rainfall)]