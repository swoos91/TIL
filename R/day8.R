#정규표현식 사용
word<- "JAVA javascript Aa 가나다 AAaAaA123 %^&*"
gsub("A","",word)
gsub("a","",word)
gsub("Aa","",word)
gsub("(Aa)","",word)
gsub("(Aa){2}","",word)     # Aa가 연달아 2번 나온 문자를 삭제
gsub("[Aa]","",word)        # [A-Z] = [:upper:] // [[A-Z][a-z]]
gsub("[가-힣]","",word)
gsub("[^가-힣]","",word)    # ^의 의미: not의 의미
gsub("[%^&*]","",word)
gsub("[[:punct:]]","",word)
gsub("[[:alnum:]]","",word) # alpha(한글 포함), num
gsub("[123456789]","",word)
gsub("[0-9]","",word)
gsub("\\d","",word)
gsub("[[:digit:]]","",word)
gsub("[^[:alnum:]]","",word) #blank도 지워짐
gsub("[[:space:]]","",word) 



#한국일보 페이지(XML 패키지 사용)
install.packages("XML")
library(XML)
imsi<-read_html("http://hankookilbo.com")                   #XML은 요청 기능이 없으므로 read_html 사용
t<-htmlParse(imsi)                                          #htmlParse: URL 트리를 도큐먼트화 시키는 함수
content<-xpathSApply(t,"//p[@class='title']", xmlValue);
content
content<-gsub("[[:punct:][:cntrl:]]", "", content)  #control character: cntrl
content
content<-trimws(content)             #blank 제거
unique(content)                      #중복 원소 제거



#httr 패키지 사용 - GET 방식 요청(좀 더 세세한 정보를 추출하고 싶을 때 사용)
install.packages("httr")
library(rvest)
library(httr)
http.standard <- GET('http://www.w3.org/Protocols/rfc2616/rfc2616.html')
str(http.standard)
title2 = html_nodes(read_html(http.standard), 'div.toc h2')
title2 = html_text(title2)
title2

#httr 패키지 - POST 방식 요청
game<-POST('http://www.gevolution.co.kr/score/gamescore.asp?t=3&m=0&d=week',
           encode='form', body=list(txtPeriodW = '2019-10-5'))
title2 = html_nodes(read_html(game), 'a.tracktitle')
title2 = html_text(title2)
title2[1:10]



#이미지, 첨부파일 다운 받기
#pdf
res=GET('http://cran.r-project.org/web/packages/httr/httr.pdf')
writeBin(content(res, 'raw'), 'c:/Temp/httr.pdf')    #writeBin --> binary // pdf는 binary 파일

#jpg
h=read_html('http://unico2013.dothome.co.kr/productlog.html')
imgs=html_nodes(h,'img')
img.src=html_attr(imgs, 'src')
for(i in 1:length(img.src)){
  res=GET(paste('http://unico2013.dothome.co.kr/',img.src[i],sep=''))
  writeBin(content(res,'raw'),paste('c:/Temp/',img.src[i], sep=""))
}
