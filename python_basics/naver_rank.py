import requests
from bs4 import BeautifulSoup

response = requests.get('https://www.naver.com').text
soup = BeautifulSoup(response, 'html.parser')
select = soup.select('#PM_ID_ct > div.header > div.section_navbar > div.area_hotkeyword.PM_CL_realtimeKeyword_base > div.ah_list.PM_CL_realtimeKeyword_list_base > ul:nth-child(5) > li > a > span.ah_k')
for i in select:
    print(i.text)
#print(select)


tags = soup.select('#PM_ID_ct > div.header > div.section_navbar > div.area_hotkeyword.PM_CL_realtimeKeyword_base > div.ah_list.PM_CL_realtimeKeyword_list_base > ul .ah_k')
for tag in tags:
    print(tag.text)

with open('word.txt', 'w', encoding='UTF-8') as f:
    f.write('네이버 검색어 순위 \n')
    for i, tag in enumerate(tags):
        f.write(f'{i+1}, {tag.text} \n')
