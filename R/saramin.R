url<-'http://www.saramin.co.kr/zf_user/search?search_area=main&search_done=y&search_optional_item=n&searchType=default_mysearch&searchword=DATA%20SCIENTIST'
library(rvest)
text<-read_html(url, encoding='UTF-8')
nodes<- html_nodes(text, 'ul > li > label > span.txt')
tech_name<-html_text(nodes)
tech_name<-gsub('#','',tech_name)
nodes<-html_nodes(text, 'ul > li > label > span.count')
info_count<-html_text(nodes)
info_count<-gsub('[()]','',info_count)
job<-data.frame(tech_name[1:30],info_count)

write.csv(job, 'saramin.csv')

#tech_name<-gsub("","",tech_name)
#tech_name<-tech_name[nchar(tech_name)>0]


url<-'http://www.saramin.co.kr/zf_user/search?search_area=main&search_done=y&search_optional_item=n&searchType=default_mysearch&searchword=DATA%20SCIENTIST'
text<-read_html(url, encoding="UTF-8")
t<-htmlParse(text)
tech_name<-xpathSApply(t, '//*[@id="async_sfilter"]//ul/li/label/span[1]',xmlValue)
tech_name<-gsub("#", '', content)
info_count<-xpathSApply(t, '//*[@id="async_sfilter"]//ul/li/label/span[2]',xmlValue)
info_count<-gsub('[()]', '', info_count)
job<-data.frame(tech_name[1:30], info_count)