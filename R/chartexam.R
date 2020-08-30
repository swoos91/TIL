(data3 <- read.table("product_click.log", header=F))

png(filename="clicklog1.png", height=400, width=700, bg="white") 
q1<-data3 %>% group_by(V2) %>% 
  summarise(click_num=n())
barplot(q1$click_num, 
        main="세로바 그래프 실습", 
        xlab="상품ID", ylab='클릭수', 
        names.arg=q1$V2, 
        col=terrain.colors(15))
dev.off()

png(filename="clicklog2.png", height=400, width=700, bg="white") 
data3$V1 <-strptime(data3$V1, '%Y%m%d%H%M')
data3$V1 <-format(data3$V1, '%H')
q2<-data3 %>% 
  group_by(V1) %>% 
  summarise(click_num=n())
abc<-as.numeric(q2$V1)
pie(q2$click_num, labels=paste(abc, "-", abc+1), col=rainbow(18),main="파이그래프 실습")
dev.off()




--------------------------
click=read.table('product_click.log', col.names=c('time', 'product'))
click$time = as.character(click$time)
click$time = strptime(click$time, '%Y%m%d%H%M')

#문제1
xname = levels(click$product)       #벡터형 변환으로, table 함수에 변수 이름도 설정됨 
png(filename='clicklog1.png', height=400, width=700, bg='white')
barplot(table(click$product),
        main='세로바 그래프 실습',
        xlab='상품ID',
        ylab='클릭수',
        col=terrain.colors(10))

#문제2
click_time=format(click$time, '%H')
times = as.numeric(unlist(dimnames(table(click_time))))
png(filename='clicklog2.png', height=400, width=700, bg="white")
pie(table(click_time))