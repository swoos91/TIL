# 데이터 시각화
rainbow(10)

국어<- c(4,7,6,8,5,5,9,10,4,10)  
plot(국어)

plot(국어, type="o", col="blue")       
title(main="성적그래프", col.main="red", font.main=4) 

국어 <- c(4,7,6,8,5,5,9,10,4,10)
수학 <- c(7,4,7,3,8,10,4,10,5,7)

plot(국어, type="o", col="blue")
lines(수학, type="o", pch=16, lty=2, col="red")     
title(main="성적그래프", col.main="red", font.main=4)

국어 <- c(4,7,6,8,5,5,9,10,4,10)
par(mar=c(1,1,1,1), mfrow=c(4,2))

plot(국어, type="p", col="blue", main="type = p", xaxt="n", yaxt="n")
plot(국어, type="l", col="blue", main="type = l", xaxt="n", yaxt="n")
plot(국어, type="b", col="blue", main="type = b", xaxt="n", yaxt="n")
plot(국어, type="c", col="blue", main="type = c", xaxt="n", yaxt="n")
plot(국어, type="o", col="blue", main="type = o", xaxt="n", yaxt="n")
plot(국어, type="h", col="blue", main="type = h", xaxt="n", yaxt="n")
plot(국어, type="s", col="blue", main="type = s", xaxt="n", yaxt="n")
plot(국어, type="S", col="blue", main="type = S", xaxt="n", yaxt="n")

국어 <- c(4,7,6,8,5,5,9,10,4,10); 
수학 <- c(7,4,7,3,8,10,4,10,5,7)
par(mar=c(5,5,5,5), mfrow=c(1,1))     #원상태로 바꿔주는 값
plot(국어, type="o", col="blue", ylim=c(0,10), axes=FALSE, ann=FALSE) # ylim(limit값 지정: 최대&최소), axis 축, ann(라벨)

# x, y 축 추가하기
axis(1, at=1:10, lab=c("01","02","03","04", "05","06","07","08","09","10")) # x축 추가
axis(2, at=c(0,2,4,6,8,10))  # y축 추가

# 그래프 추가하고, 그래프에 박스 그리기
lines(수학, type="o", pch=16, lty=2, col="red")    
box()   # 박스 그리기

# 그래프 제목, 축의 제목, 범례 나타내기
title(main="성적그래프", col.main="red", font.main=4) 
title(xlab="학번", col.lab=rgb(0,1,0))
title(ylab="점수", col.lab=rgb(1,0,0)) 
legend(8, 3, c("국어","수학"), cex=0.8, col=c("blue","red"), pch=c(1,16), lty=c(1,2))


(성적 <- read.table("성적.txt", header=TRUE));  #read.csv는 header default값이 T, but read.table의 header default 값은 F

plot(성적$학번, 성적$국어, main="성적그래프", xlab="학번", ylab="점수",  xlim=c(0, 11), ylim=c(0, 11)) #첫번째 아규먼트가 기준, 학번별 국어성적 

ymax <- max(성적[3:5]) #성적 데이터 중에서 최대값을 찾는다(y 축의 크기 제한)
ymax
pcols<- c("red","blue","green")
png(filename="성적.png", height=400, width=700, bg="white") # 출력을 png파일로 설정
plot(성적$국어, type="o", col=pcols[1], ylim=c(0, ymax), axes=FALSE, ann=FALSE)
axis(1, at=1:10, lab=c("01","02","03","04","05","06","07","08","09","10"))
axis(2, at=c(0,2,4,6,8,10), lab=c(0,2,4,6,8,10))
box()
lines(성적$수학, type="o", pch=16, lty=2, col=pcols[2])
lines(성적$영어, type="o", pch=23, lty=3, col=pcols[3] )
title(main="성적그래프", col.main="red", font.main=4)
title(xlab="학번", col.lab=rgb(1,0,0))
title(ylab="점수", col.lab=rgb(0,0,1))
legend(1, ymax, names(성적)[c(3,4,5)], cex=0.8, col=pcols, pch=c(21,16,23), lty=c(1,2,3))
dev.off()  #png 함수부터 dev.off 까지 세트

plot(국어, 수학)
plot(수학~국어) # 국어를 기반으로 수학을 읽음
?plot

# 막대그래프 그리기

barplot(국어)

coldens <- seq(from=10, to=100, by=10)   # 막대그래프의 색밀도 설정을 위한 벡터
xname <- 성적$학번                                         # X 축 값 설정위한  벡터
barplot(성적$국어, main="성적그래프", xlab="학번", ylab="점수", border="red", col="green",  density=coldens, names.arg=xname)

# 학생의 각 과목에 대한 각각의 점수에 대한 그래프
성적1<- 성적[3:5] 
str(성적1)
par(mar=c(5,5,5,5), mfrow=c(1,1))
barplot(as.matrix(성적1), main="성적그래프", beside=T, ylab="점수", col=rainbow(10))

par(mar=c(5,5,5,5), mfrow=c(1,2))
barplot(as.matrix(성적1), main="성적그래프", ylab="점수", col=rainbow(10))
barplot(t(성적1), main="성적그래프", ylab="점수", col=rainbow(10))  # t() : 10행 3열을 3행 10열로 바꿈

# 학생의 각 과목에 대한 합계 점수에 대한 그래프
par(mar=c(5,5,5,5), mfrow=c(1,1))
xname <- 성적$학번;    #  x축 레이블용 벡터
par(xpd=T, mar=par()$mar+c(0,0,0,4));   # 우측에 범례가 들어갈 여백을 확보 // xpd=T plot영역이 모자르면 여백을 침범해서 출력할 것 
barplot(t(성적1), main="성적그래프", ylab="점수", col=rainbow(3), space=0.1, cex.axis=0.8, names.arg=xname, cex=0.8)
legend(11,30, names(성적1), cex=0.8, fill=rainbow(3));

# 학생의 각 과목에 대한 합계 점수에 대한 그래프(가로막대 그래프)
xname <- 성적$학번;    #  x축 레이블용 벡터
barplot(t(성적1), main="성적그래프", ylab="학번", col=rainbow(3), space=0.1, cex.axis=0.8, names.arg=xname, cex=0.8, horiz=T);  #cex 폰트 크기 조절 
legend(30,11, names(성적1), cex=0.8, fill=rainbow(3))

# 파이그래프
(성적 <- read.table("성적.txt", header=TRUE));
pie(성적$국어, labels=paste(성적$성명, "-", 성적$국어), col=rainbow(10))
pie(성적$국어, clockwise=T, labels=paste(성적$성명, "-", 성적$국어), col=rainbow(10))
pie(성적$국어, density=10, clockwise=T, labels=paste(성적$성명, "-", 성적$국어), col=rainbow(10))
pie(성적$국어, labels=paste(성적$성명, "-", 성적$국어), col=rainbow(10), main="국어성적", edges=10)
pie(성적$국어, labels=paste(성적$성명,"\n","(",성적$국어,")"), col=rainbow(10))
pie(rep(1, 24), col = rainbow(24), radius = 0.5)   #radius 반지름

# 히스토그램    # breaks : 구간을 나눠주는 기능
hist(성적$국어, main="성적분포-국어", 
       xlab="점수", breaks=5, col = "lightblue",
       border = "pink")
hist(성적$수학, main="성적분포-수학", 
       xlab="점수", col = "lightblue", 
       breaks=2,border = "pink")
hist(성적$국어, main="성적분포-국어", 
       xlab="점수", ylab="도수", 
       col=rainbow(12), border = "pink")

nums <- sample(1:100, 30)
hist(nums)
hist(nums, breaks=c(0,10,20,30,40,50,60,70,80,90,100))
hist(nums, breaks=c(0,50,100))  #probability=T : y축 density로 변경
hist(nums, breaks=c(0,33,66,100)) # breaks 가 균등하지 않을 경우엔 density로 변경해서 보여줌


(score <- sample(0:100, 30))
barplot(score)
hist(score)
hist(score, breaks=10)
hist(score, breaks=2) #?
hist(score, breaks=3) #? 
hist(score, breaks=4) #? 
hist(score, breaks=5) #?
hist(score, breaks=6) #? 
hist(score, breaks=7) #? 
hist(score, breaks=8) #? 
hist(score, breaks=9) #? 
hist(score, breaks=c(0,20,30,40,50,100))


# 추세선 추가
hist(성적$국어, main="성적분포-국어", xlab="점수", ylab="학생수", col=rainbow(12), border = "pink")
hist(성적$국어, main="성적분포-국어", xlab="점수", ylab="도수", col=rainbow(12), border = "pink",prob=T)
lines(density(성적$국어, bw=0.5), col="red", lwd=3)   #밀도 추세선
lines(density(성적$국어, bw=1.0), col="blue", lwd=3)



# 박스플롯
summary(성적$국어)
boxplot(성적$국어, col="yellow",  ylim=c(0,10), xlab="국어", ylab="성적")


성적2 <- 성적[,3:5]
boxplot(성적2, col=rainbow(3), ylim=c(0,10), ylab="성적")

data <- read.table("온도.txt", header=TRUE, sep=",")
head(data, n=5); 
boxplot(data)
boxplot(data, las = 2) # 인덱스 vertical로 보여줌
boxplot(data, las = 2, at = c(1,2,3,4, 6,7,8,9, 11,12,13,14))   #그룹지어서 보여줌
chtcols = rep(c("red","sienna","palevioletred1","royalblue2"), times=3)
chtcols
boxplot(data, las = 2, at = c(1,2,3,4, 6,7,8,9, 11,12,13,14), col=chtcols)
grid(col="gray", lty=2, lwd=1)  #lwd : 두께

rainbow()
heat.colors()
terrain.colors()
topo.colors()
cm.colors()
gray.colors()



------------------------------------------
#ggplot2 학습

install.packages("ggplot2")
library(ggplot2)
library(dplyr)
search()
data(airquality)
str(airquality)

ggplot(airquality, aes(x=Day, y=Temp))

ggplot(airquality, aes(x=Day, y=Temp)) + geom_point()

ggplot(airquality, aes(x=Day, y=Temp)) + geom_point(size=3, color="red")

ggplot(airquality, aes(x=Day, y=Temp)) + geom_line()

ggplot(airquality, aes(x=Day, y=Temp)) + geom_line() + geom_point()

ggplot(airquality, aes(x=Day, y=Temp)) + 
  geom_line(color="green") + geom_point(size=3)

str(mtcars)
?mtcars

table(mtcars$cyl)
summary(mtcars$cyl)

ggplot(mtcars, aes(x=cyl)) + geom_bar()

ggplot(mtcars, aes(x=cyl)) + geom_bar(width=0.5)

ggplot(mtcars, aes(x=factor(cyl))) + geom_bar()


ggplot(mtcars, aes(x=factor(cyl))) + geom_bar(width=0.5)

#fill=factor(gear) : 범주별로 자동으로 컬러 지정 // alpha : 색 투명도
ggplot(mtcars, aes(x=factor(cyl))) + geom_bar(aes(fill=factor(gear)), alpha=0.1)

ggplot(mtcars, aes(x=factor(cyl))) + geom_bar(aes(fill=factor(gear))) + coord_polar()

ggplot(mtcars, aes(x=factor(cyl))) + geom_bar(aes(fill=factor(gear))) + coord_polar(theta='y')

ggplot(airquality, aes(x=Day, y=Temp, group=Day)) + geom_boxplot()

ggplot(airquality, aes(Temp)) + geom_histogram()



ggplot(mtcars, aes(x=gear))+geom_bar() + labs(x="기어수", y="자동차수", title="변속기 기어별 자동차수") + theme_gray()
ggplot(mtcars, aes(x=gear))+geom_bar() + labs(x="기어수", y="자동차수", title="변속기 기어별 자동차수") + theme_bw()
ggplot(mtcars, aes(x=gear))+geom_bar() + labs(x="기어수", y="자동차수", title="변속기 기어별 자동차수") + theme_linedraw()
ggplot(mtcars, aes(x=gear))+geom_bar() + labs(x="기어수", y="자동차수", title="변속기 기어별 자동차수") + theme_light()
ggplot(mtcars, aes(x=gear))+geom_bar() + labs(x="기어수", y="자동차수", title="변속기 기어별 자동차수") + theme_dark()
ggplot(mtcars, aes(x=gear))+geom_bar() + labs(x="기어수", y="자동차수", title="변속기 기어별 자동차수") + theme_minimal()
ggplot(mtcars, aes(x=gear))+geom_bar() + labs(x="기어수", y="자동차수", title="변속기 기어별 자동차수") + theme_classic()
ggplot(mtcars, aes(x=gear))+geom_bar() + labs(x="기어수", y="자동차수", title="변속기 기어별 자동차수") + theme_void()

imsi <- ggplot(mtcars, aes(x=gear))+geom_bar() + labs(x="기어수", y="자동차수", title="변속기 기어별 자동차수")

imsi + theme_gray()
imsi + theme_bw()
imsi + theme_linedraw()
imsi + theme_light()
imsi + theme_dark()
imsi + theme_minimal()
imsi + theme_classic()
imsi + theme_void()


mpg <- as.data.frame(ggplot2::mpg)
str(mpg)
# x축 displ, y축 hwy로 지정해 배경 생성
ggplot(data = mpg, aes(x = displ, y = hwy))
# 배경에 산점도 추가
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() + xlim(3, 6)
ggplot(data = mpg, aes(x = displ, y = hwy)) +   geom_point() +  xlim(3, 6) +  ylim(10, 30)

install.packages("xlsx")
library(xlsx)
classDF <- read.xlsx("data.xlsx", 1, encoding="UTF-8")
str(classDF)
View(classDF)

bar_data <- classDF[3]
bar_data
ggplot(bar_data, aes(x=bloodType)) + geom_bar()

#fill=gender --> 팩터에 따라 자동으로 색을 입힘
ggplot(classDF, aes(x=bloodType, fill=gender)) + 
  geom_bar()





# A, B회사의 매출 실적 데이터프레임 만들기
company <- c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B')
year <- c('1980', '1990', '2000', '2010', '1980', '1990', '2000', '2010')
sales <- c(2750, 2800, 2830, 2840, 2760, 2765, 2775, 2790)

coSalesDF <- data.frame(company, year, sales)

# 생성된 coSalesDF 확인
coSalesDF
str(coSalesDF)
#-------------------------------------------------------------

# 라인차트 생성 - x축은 연도(year), y축은 매출(sales) 매칭
ggplot(coSalesDF, aes(x=year, y=sales)) + geom_line(aes(group=company))

#-------------------------------------------------------------
# 선 색상 및 두께 설정
ggplot(coSalesDF, aes(x=year, y=sales)) + geom_line(size=2, aes(group=company,color=company))

#-------------------------------------------------------------
ggplot(coSalesDF, aes(x=year, y=sales)) + geom_line(size=2, aes(group=company, colour=company)) + geom_point(size=2)


# 빈도 막대 그래프
ggplot(data = mpg, aes(x = drv)) + geom_bar()

# 선 그래프
ggplot(data = economics, aes(x = date, y = unemploy)) + geom_line()

# 상자 그림
ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()





library(MASS)
str(Cars93)
ggplot(Cars93, aes(x=Weight, y=MPG.highway)) +  geom_point(shape=21, size=6)
ggplot(Cars93, aes(x=Weight, y=MPG.highway)) +  geom_point(shape=21, size=6, colour="blue")
ggplot(Cars93, aes(x=Weight, y=MPG.highway)) +   geom_point(shape=21, size=6, fill="blue")   
ggplot(Cars93, aes(x=Weight, y=MPG.highway)) +  geom_point(colour="grey", shape=21, size=6) 
ggplot(Cars93, aes(x=Weight, y=MPG.highway, fill=Price)) +   geom_point(colour="grey", shape=21, size=6) 
ggplot(Cars93, aes(x=Weight, y=MPG.highway)) +   geom_point(colour="grey", shape=21, size=6, aes(fill=Price)) 

ggplot(Cars93, aes(x=Weight, y=MPG.highway, fill=Cylinders)) +  geom_point(colour="grey", shape=21, size=6)
ggplot(Cars93, aes(x=Weight, y=MPG.highway, fill=Cylinders)) +
  geom_point(colour="grey", shape=21, size=6) +
  scale_fill_brewer(palette="Oranges") # Oranges  

ggplot(Cars93, aes(x=Weight, y=MPG.highway, fill=Cylinders)) +
  geom_point(colour="grey", shape=21, size=6) +
  scale_fill_brewer(palette="Reds") # Reds

ggplot(Cars93, aes(x=Weight, y=MPG.highway, fill=Cylinders)) +
  geom_point(colour="grey", shape=21, size=6) +
  scale_fill_brewer(palette="Blues") # Blues


w <- data.frame(year=c("2014", "2015", "2016", "2017", "2018"), weight=c(65,66,64,68,72))
ggplot(data=w, aes(x=year)) + geom_bar()
ggplot(data=w, aes(x=year, y=weight)) + geom_bar()
ggplot(data=w, aes(x=year, y=weight)) + geom_bar(stat="identity")
ggplot(data=w, aes(x=year, y=weight)) + geom_bar(stat="identity") + coord_cartesian(ylim=c(60, 75))
ggplot(data=w, aes(x=year, y=weight)) + geom_bar(aes(fill=year), stat="identity") + coord_cartesian(ylim=c(60, 75))
ggplot(data=w, aes(x=year, y=weight)) + geom_bar(aes(fill=year), colour="blue", stat="identity") + coord_cartesian(ylim=c(60, 75))
ggplot(data=w, aes(x=year, y=weight)) + geom_bar(aes(fill=year), stat="identity") + geom_label(aes(label=weight), nudge_y=1.1)+coord_cartesian(ylim=c(60, 75))
ggplot(data=w, aes(x=year, y=weight)) + geom_bar(aes(fill=year), stat="identity") + geom_label(aes(label=weight), nudge_y=-1.1)+coord_cartesian(ylim=c(60, 75))
ggplot(data=w, aes(x=year, y=weight)) + geom_bar(aes(fill=year), stat="identity") + geom_label(aes(label=weight), nudge_y=1.1)+coord_cartesian(ylim=c(60, 75)) + labs(title = "테스트", subtitle="ggplot2 패키지를 이용한 시각화", x="년도", y="무게")

# 트리맵 라이브러리 설치
install.packages("treemap")
# 트리맵 메모리 로드
library(treemap)

sales_df <- read.xlsx("data.xlsx", 2, encoding="UTF-8")
#-------------------------------------------------------------

# 트리맵 그리기
# index에 표현하고 싶은 계층 순서대로 벡터로 생성. product, region 순으로 벡터를 지정함으로써 product가 region보다 더 상위로 구분이 됨
treemap(sales_df, vSize="saleAmt", index=c("product", "region"), title="A기업 판매현황")

# 트리맵 그리기
treemap(sales_df, vSize="saleAmt", index=c("region", "product"), title="A기업 판매현황")
?mpg
성적
# 인터랙티브 그래프 만들기
# 패키지 준비하기
install.packages("plotly")
library(plotly)
# ggplot으로 그래프 만들기
library(ggplot2)
p <- ggplot(data = mpg, aes(x = displ, y = hwy, col = drv)) + geom_point()
p
# 인터랙티브 그래프 만들기 viewer --> javascript로 구현
imsi <- ggplotly(p)
str(imsi)
?ggplotly
?renderTags
library(htmltools)
renderTags(imsi)

# 인터랙티브 막대 그래프 만들기
p <- ggplot(data = diamonds, aes(x = cut, fill = clarity)) + 
  geom_bar(position = "dodge")
ggplotly(p)

