y<-c(0,25,50,75,100)
z<-c(50,50,50,50,50)
y==z
y!=z
y>z
y<z
y>=z
y<=z
y==50 #50을 y 변수 갯수만큼 만들어서 비교함
y>50

num1<-11 # 11==c(11)
num2<-3
num1/num2
num1%%num2
num1%/%num2

#LIST
lds <- list(1,2,3)
lds
lds+100
lds[1]
lds[1]+10
lds[[1]]+10


names(lds) <- LETTERS[1:3]
lds
lds[[2]]
lds[["B"]]
lds$B


a<-list(
  a=1:3,
  b="a string",
  c=pi,
  d=list(-1,-5)
)


a[1]
a[[1]]  #a[["a"]]
a$a
a[[1]][1]
a$a[1]
a[1]+1
a[[1]]+1
a[[1]][2]<-100
new_a<-unlist(a[1])
a[1];new_a

names(a)<-NULL
a
names(new_a)<-NULL
ls()
length(ls())
save(list=ls(),file="all.rda") #vari
rm(list=ls())
load("all.rda")

#read file data
nums <- scan("data/sample_num.txt")
word_ansi<-scan("data/sample_ansi.txt", what="") # 문자형 데이터를 읽을 때 what 꼭 필요!!!
is.numeric(word_ansi)
words_utf8<-scan("data/sample_utf8.txt", what="", encoding="UTF-8")#ansi와 utf8은 데이터셋이 다름
words_utf8_new<-scan("data/sample_utf8.txt", what="") #ansi가 default값
lines_ansi<-readLines("data/sample_ansi.txt")

#제어문
#if else
randomNum <-sample(1:10,1)
if(randomNum>5){
  cat(randomNum,":5보다 크군요","\n")
}else{
  cat(randomNum,":5보다 작거나 같군요","\n")
}
if(randomNum%%2== 1){
  cat(randomNum,";홀수","\n")
}else{
  cat(randomNum,";짝수","\n")
}   #(randomNum%%2) 으로도 가능 // "홀수\n" 가능

score<-sample(0:100,1)
if(score>=90){
  cat(score,"는 A등급입니다\n")
}else if(score>=80){
  cat(score,"는 B등급입니다\n")
}else if(score>=70){
  cat(score,"는 C등급입니다\n")
}else if(score>=60){
  cat(score,"는 D등급입니다\n")
}else{
  cat(score,"는 F등급입니다\n")
}

#for 실습
for(data in month.name)
  print(data)
for(data in month.name)
  print(data);print("ㅋㅋ")
for(data in month.name){
  print(data);print("ㅋㅋ")
}

for(n in 1:5)
  cat("hello?\n")

for(i in 1:5){
  for(j in 1:5){
    cat("i=",i,"j=",j,"\n")
  }
}

#구구단
for(dan in 1:9){
  for(num in 1:9){
    cat(dan, "x", num, "=", dan*num, "\t") #\n: 개행문자 // \t: 탭문자
  }
  cat("\n")
}

#switch 함수
month <- sample(1:12,1)
month<-paste(month,"월",sep="")
result<-switch(EXPR=month,
               "12월"=,"1월"=,"2월"="겨울",
               "3월"=,"4월"=,"5월"="봄",
               "6월"=,"7월"=,"8월"="여름",
               "가을")
cat(month,"은 ",result,"입니다\n",sep="")

num<- sample(1:10,1)
num
switch(EXPR=num,"A","B","C","D")

for(num in 1:10){
  cat(num,":",switch(EXPR=num,"A","B","C","D"),"\n"
)
}

for(num in 1:10){
  num <- as.character(num)
  #num<-paste(num,"")
  cat(num,":",switch(EXPR=num,"7"="A","8"="B","9"="C","10"="D","ㅋ"),"\n"
  )
}





#list (->리턴하는 함수의 값이 list로 나오는 경우가 많음)

ex> list(1,2,3)에서 각각을 데이터셋으로 간주

list에 직접 연산 불가능 -> 데이터셋을 풀어서 연산해야 함.

List의 원소에도 naming 가능

#데이터 입출력

print(.. , quote=FALSE, print.gap=10)

#파일에서 데이터 읽어들이기 1

(1) 숫자로만 구성된 데이터 파일: 				scan() 
(2) 일반 텍스트 데이터 파일
행 단위: 						readLines()
워드 단위:						scan()
(3) csv 형식의 데이터 파일(문자열의 경우 팩터로 인식):		read.csv()
(4) excel 형식의 데이터 파일:					패키지 추가설치 필요
(5) xml(관공서) 형식의 데이터 파일:				패키지 추가설치 필요
--> <> 사용
(6) Database의 데이터					패키지 추가설치 필요
(7) JSON(JavaScript Object Notation) 형식의 데이터 파일		패키지 추가설치 필요
--> {} 중괄호 사용

"가"-"힣" 1989년-완성형한글코드-KSC5601 - 0xB0A1
EUC-KR, CP949, MS949 ==> ansi
전세계의 문자코드 통일 ==> UNICODE - 2바이트(16bit) ==> UTF-16
1~4바이트 ==> UTF-8

