install.packages("rvest")
library(rvest)

url<-"http://unico2013.dothome.co.kr/crawling/tagstyle.html"
text <- read_html(url)
text

nodes<-html_nodes(text, "div")   #html_nodes(text, 태그 선택자)
nodes
title <- html_text(nodes)        #선택된 노드들 중에 text만 추출하는 함수
title

#선택적으로 node를 추출하고 싶은 경우

node1 <- html_nodes(text, "div:nth-of-type(1)")       #nth-of-type(1): div tag중에 첫번째를 의미하는 css selector
node1
html_text(node1)
html_attr(node1, "style")


node2 <- html_nodes(text, "div:nth-of-type(2)")
node2
html_text(node2)
html_attr(node2, "style")

node3 <- html_nodes(text, "div:nth-of-type(3)")
node3
html_text(node3)
html_attr(node3, "style")


url<-"https://movie.naver.com/movie/point/af/list.nhn"
text<- read_html(url)

node<-html_nodes(text, '
#old_content > table > tbody > tr > td.title > a.movie')
html_text(node)




url<-"http://movie.naver.com/movie/point/af/list.nhn"
text<-read_html(url, encoding="CP949")
text
#영화제목
nodes<- html_nodes(text, ".movie")
title<-html_text(nodes)
title
#영화리뷰
nodes<-html_nodes(text, ".title")
review<-html_text(nodes, trim=TRUE)
review
review<-gsub("\t","",review)    #gsub(찾을 단어, 변경할 단어, 변수대상)
review<-gsub("\r\n","",review)
review<-gsub("\n","",review)
review<-gsub("신고","",review)

page<-data.frame(title,review)
write.csv(page,"movie_reviews.csv")




#여러 페이지 (반복문 사용)

site <-"https://movie.naver.com/movie/point/af/list.nhn?page="
movie.review<-NULL
for(i in 1:100){
  url<-paste(site,i,sep="")
  text<-read_html(url, encoding="CP949")
  nodes<- html_nodes(text, ".movie")
  title<-html_text(nodes)
  nodes<-html_nodes(text, ".title")
  review<-html_text(nodes, trim=TRUE)
  review<-gsub("\t","",review)    #gsub(찾을 단어, 변경할 단어, 변수대상)
  review<-gsub("[\r\n]","",review)
  review<-gsub("신고","",review)
  page<-data.frame(title,review)
  movie.review<-rbind(movie.review,page)
}
write.csv(movie.review,"movie_reviews2.csv")

