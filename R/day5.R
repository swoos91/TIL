print(1)
myFunction<-function(){
  print(LETTERS[1])
  print(LETTERS[2])
  print(LETTERS[3])
  print(LETTERS[4])
  return("END")
}
myFunction()
print(2)

myFunction<-function(){
  print(LETTERS[1])
  print(LETTERS[2])
  today<-weekdays(Sys.Date())
  if(today=="월요일")
    return()
  print(LETTERS[3])
  print(LETTERS[4])
  return("END")
}
print(1)
myFunction()
print(2)
r<-myFunction()

sum(LETTERS)

matrix(1:7, nrow=3)

#stop() 함수 --> error를 정의하는 함수
testError<-function(x){
  if(x<=0)
    stop("양의 값만 전달 하숑!! 더 이상 수행 안할거임..")
  return(rep("테스트",x))
}
testError(5)
testError(0)

#warning()함수
testWarn<-function(x){
  if(x<=0)
    stop("양의 값만 전달 하숑!! 더 이상 수행 안할거임..")
  if(x>5){
    x<-5
    warning("5보다 크면 안됌!! 하여 5로 처리했삼...!!")
  }
  return(rep("테스트",x))
}
testWarn(3)
testWarn(10)

test1<-function(){
  cat("난 수행함\n")
  testError(-1)
  cat("나 수행할까요? \n")
}
test1()                       #test1도 같이 끊김

#try()
test2<-function(p){
  cat("난 수행함\n")
  try(testError(-1))
  cat("나 수행할까요? \n")
}
test2()



testAll <-function(p){
  ?tryCatch({  # tryCatch(코드블럭, warning=함수, error=함수, finally=코드블럭) warning과 error를 코드블럭이 아닌 함수로 정의하는 이유는 arguement를 받기 위해
    if(p=="오류테스트"){
      testError(-1)
    }else if (p =="경고테스트"){
      testWarn(6)
    }else{
      cat("정상 수행..\n")
      print(testError(2))
      print(testWarn(3))
    }
  },warning = function(w){
    print(w)
    cat("-.-;;\n")
  },error = function(e){
    print(e)
    cat("ㅠㅠ \n")
  },finally ={
    cat("반드시 수행되는 부분입니다요..\n")
  })
}

testAll("오류테스트")
testAll("경고테스트")
testAll("아무거나")



f.case1<- function(x){
  if(any(is.na(x)))            #any --> 하나라도 TRUE이면 수행
    return("NA가 있슈")
  else
    return("NA가 없슈")
}

f.case1(100)
f.case1(NA)
f.case1(1:6)
f.case1(c(10,20,30))
f.case1(c(NA,20))
f.case1(c(10,NA,20))


f.case1<- function(x){
  if(all(is.na(x)))            #all --> 모두 TRUE이면 수행
    return("모두 NA임")
  else
    return("모두 NA인 것은 아님")
}

f.case1(100)
f.case1(letters)
f.case1(NA)
f.case1(c(NA,NA,NA))
f.case1(c(NA,NA,20))

#Sys.sleep(초시간) 함수
testSleep<-function(x){
  for(data in 6:10){
    cat(data,"\n")
    if(x)
      Sys.sleep(1)
  }
  return()
}
testSleep(FALSE)
testSleep(TRUE)