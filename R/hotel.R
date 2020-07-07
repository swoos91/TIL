#아고다 review 웹크롤링
revi<-NULL
repeat{
  totalReviewNodes<-remDr$findElements(using='css selector','p.Review-comment-bodyText')
  totalReview<-sapply(totalReviewNodes, function(x){x$getElementText()})
  revi <- c(revi, unlist(totalReview))
  try(nextPage<-remDr$findElement(using='css',
                                  "#reviewSection > div:nth-child(4) > div > span:nth-child(3) > i"))
  if(length(nextPage) == 0)  break;
  nextPage$clickElement()
  Sys.sleep(1)
}
write(revi, 'hotel.txt')
cat(length(revi), "개의 댓글 추출", sep="")


#(2)
revi<-NULL
url<-'https://www.agoda.com/ko-kr/shilla-stay-seocho/hotel/seoul-kr.html?cid=-204'
remDr$navigate(url)
totalReviewNodes<-remDr$findElements(using='css selector','p.Review-comment-bodyText')
revi<-sapply(totalReviewNodes, function(x){x$getElementText()})
for(i in 2:5){
  y<-paste("#reviewSection > div:nth-child(4) > div > span.Review-paginator-numbers > span:nth-child(", i,")")
  nextPage<-remDr$findElement(using='css',y)
  nextPage$clickElement()
  totalReviewNodes<-remDr$findElements(using='css selector','p.Review-comment-bodyText')
  totalReview<-sapply(totalReviewNodes, function(x){x$getElementText()})
  revi <- c(revi, unlist(totalReview))
  if(i==4){
    repeat{
      y<-"#reviewSection > div:nth-child(4) > div > span.Review-paginator-numbers > span:nth-child(4)"
      nextPage<-remDr$findElement(using='css',y)
      nextPage$clickElement()
      totalReviewNodes<-remDr$findElements(using='css selector','p.Review-comment-bodyText')
      totalReview<-sapply(totalReviewNodes, function(x){x$getElementText()})
      revi <- c(revi, unlist(totalReview))
      if()
        next;
      
    }
    
  }
}


