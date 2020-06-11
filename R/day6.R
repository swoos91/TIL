28일 내용
: 교재내용 정리,
웹 기술 개요(HTML, CSS Selector, Xpath, JavaScript
29일 내용
: 정적 컨텐츠 크롤링 & 스크래핑
30일 내용
: 동적 컨텐츠 크롤링 
31일 내용
: 크롤링 & 스크래핑 실습
11/1일 내용
: 공공DB, SNS의 Open API를 활용한 데이터 수집

?read.csv
#read.table // read.csv ==> (,) 구분 차이
search()
installed.packages()
read_excel()
install.packages("readxl")
library(readxl)
excel_data_ex <- read_excel("data/data_ex.xls")
View(excel_data_ex)

ID<-c(1,2,3,4,5)
SEX<-c('F','M','F','M','F')
data_ex<-data.frame(ID=ID, SEX=SEX)
save(data_ex, file="data_ex.rda")

