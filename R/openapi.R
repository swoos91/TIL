#OPEN API 실습 1
searchUrl<- "https://openapi.naver.com/v1/search/blog.xml"
Client_ID <- ""
Client_Secret <- ""
query <- URLencode(iconv("단풍","euc-kr","UTF-8"))
query
url<- paste(searchUrl, "?query=", query, "&display=100", sep="")
doc<-GET(url, add_headers('Content-Type' = "application/xml",
                          'X-Naver-Client-Id' = Client_ID,'X-Naver-Client-Secret' = Client_Secret))
doc2 <- html_nodes(read_html(doc, encoding="UTF-8"), xpath='//item/description')
text2 <- html_text(doc2)
text2
write(text2, 'naverblog.txt')

#OPEN API 실습 2
searchUrl<-"https://openapi.naver.com/v1/search/news.xml"
Client_ID <- ""
Client_Secret <- ""
query <- URLencode(iconv("빅데이터","euc-kr","UTF-8"))
query
url<- paste(searchUrl, "?query=", query, "&display=100", sep="")
str(doc)<-GET(url, add_headers('Content-Type' = "application/xml",
                          'X-Naver-Client-Id' = Client_ID,'X-Naver-Client-Secret' = Client_Secret))
doc2 <- html_nodes(read_html(doc, encoding="UTF-8"), xpath='//item/title')
text2 <- html_text(doc2)
text2
write(text2, 'navernews.txt')

#OPEN API 실습 3
api_key <- ""
api_secret <- ""
access_token <- ""
access_token_secret <- ""
setup_twitter_oauth(api_key,api_secret, access_token,access_token_secret)
key <- "취업"
key <- enc2utf8(key)
result <- searchTwitter(key, n=100)
DF <- twListToDF(result)
str(DF)
content <- DF$text
content <- gsub("[[:lower:][:upper:][:digit:][:punct:][:cntrl:]]", "", content)   
content
write(content, 'twitter.txt')

#OPEN API 실습 4
API_key  <- ""
bus_No <- "360"
url <- paste("http://ws.bus.go.kr/api/rest/busRouteInfo/getBusRouteList?ServiceKey=", API_key, "&strSrch=", bus_No, sep="")
doc <- xmlParse(url, encoding="UTF-8")
top <- xmlRoot(doc)
top
df <- xmlToDataFrame(getNodeSet(doc, "//itemList"))
df
str(df)

b<-subset(df, select=c('busRouteId', 'length','stStationNm','edStationNm','term'),
          subset=(df$busRouteNm==360))

busRouteId <- as.character(b$busRouteId)
length <- as.character(b$length)
stStationNm <- as.character(b$stStationNm)
edStationNm <- as.character(b$edStationNm)
term <- as.character(b$term)


cat("[ 360번 버스정보 ]", "\n",
    "노선ID : ", busRouteId, "\n",
    "노선길이 : ", length, "\n",
    "기점 : ", stStationNm, "\n",
    "종점 : ", edStationNm, "\n",
    "배차간격 : ", term, "\n")
