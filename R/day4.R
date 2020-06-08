for(data in month.name) # 벡터로 범위 지정 가능
  print(data)

#for문


sum <- 0
for(i in 5:15){
  if(i%%10==0){
    break;
  }
  sum<-sum+i
  print(paste(i,":",sum))
}



sum <- 0
for(i in 5:15){
  if(i%%10==0){
    next;  #continue --> if문이 참이면 for문으로 돌아감 // if문이 거짓이면 아래 문장 수행
  }
  sum<-sum+i
  print(paste(i,":",sum))
}


#while

sumNumber<-0              #반복횟수가 정해진 경우는 for문 // 반복횟수가 미정인 경우는 while문
while(sumNumber<=20){
  i <- sample(1:5,1)
  sumNumber<-sumNumber+i;
  cat(sumNumber,"\n")
}

#repeat

repeat{
  cat("ㅋㅋㅋ\n")
}

sumNumber<-0
repeat{
  i<-sample(1:5,1)
  sumNumber<-sumNumber+i;
  cat(sumNumber,"\n")
  if(sumNumber>20)
    break;
}

f1<-function() print("TEST")
f2<-function(num){print("TEST");print(num)}
f3<-function(p="R") print(p)
f4<-function(p1="ㅋㅋㅋ", p2){for(i in 1:p2){print(p1)}}

func1<-function(){
  xx<-10                              #지역변수:함수 안에서 만들어진 변수는 함수 밖에서 사용 불가
  yy<-20
  return(xx*yy)
}
func1()

result<-func1()
result
xx

func2<-function(x,y){
  xx<-x
  yy<-y
  return(sum(xx,yy))
}

func3<-function(x,y){
  x3<- x+1
  y3<- y+1
  x4<- func2(x3,y3)     #값(식): 변수, 리터럴, 연산식, 호출식
  return(x4)
}

func4<-function(x=100, y=200, z){
  return(x+y+z)
}
func4()
func4(10,20,30)
func4(x=1, y=2, z=3)
func4(y=11, z=22, x=33)
func4(z=1000)

#전역변수/지역변수

a<-3;b<-7;c<-11
ft<-function(a){
  b<-a+10
  c<<-a+10                                    #<<- : 전역 대입 연산
  d<-a
  print(a);print(b);print(c);print(d)
  return()                                    #NULL
}
print(ft(100))
print(a);print(b);print(c);print(d)

testParamType<- function(x){
  if(is.vector(x)) print("벡터를 전달했군요!")
  if(is.data.frame(x)) print("데이터프레임을 전달했군요!")
  if(is.list(x)) print("리스트를 전달했군요!")
  if(is.matrix(x)) print("매트릭스를 전달했군요!")
  if(is.array(x)) print("배열을 전달했군요!")
  if(is.function(x)) print("함수를 전달했군요!")
}

rm(sum)
testParamType(100)
testParamType(letters)
testParamType(data.frame())
testParamType(matrix())
testParamType(list())
testParamType(array())
testParamType(sum)

f7<-function(...){
  data<-c(...)
  sum<-0
  for(item in data){
    if(is.numeric(item))
      sum<- sum+item
    else
      print(item)
  }
  return(sum)
}

f7(10,20,"test",30,40)