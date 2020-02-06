##### Thr, Feb 6, 2020

###### Chatbot

---



## Chat_bot



##### # 준비사항

> - py_data / cgi-bin 폴더 아래 `chatbot.py` 와 `botengine.py`, `chatbot-data.json` 넣어둘 것
> - chatbot.py 에서 utf-8 을 euc-kr로 바꿔줄 것
> - botengine.py 에서 네이버 맞춤법 검사기 아래 return을 data에서 ret으로 고쳐줄 것



##### # Preview   chatbot.py 에서 utf-8 을 euc-kr로 바꿔줄 것

> 현재의 Chat bot 시스템은 기계 학습과 지식 기반 방식이 혼합되어 있는 형태로, 오늘 수업에서는 기계 학습 부분( 자연어처리( 회화 요청 및 응답 ) )에 초점을 맞춰서 진행.

- 단계별 처리 형태
  - 클라이언트 요청 단계: 형태소 분석
  - 처리 단계: 의도 파악 ( 개체명 인식, 유사어인식( Word2Vec ).... )
  - 서버 응답 단계 : 문장생성 ( 마르코프 체인, 딥러닝( LSTM ; 시퀀스 학습으로, 문맥에 따른 자연스러운 대화 가능) )
- 아키텍처
  - `Webserver` 와 `client` 사이 상호작용
    - python SDK를 기반으로 서버를 구축
    - `Chatbot.py`와 `botengine.py`가 서로 연동되어 처리.
    - 웹서버와 클라이언트 사이에 중간 처리 단계에서 `Flask` 혹은 `Django` 등의 프레임워크가 필요하나 이번 수업에서는 Python 내 내장되어 있는 `http.server`를 이용 



##### # 서버 실행

```python
# anaconda 명령어 수행
py_data > python -m http.server --cgi 8000

# 브라우저
<url> http://localhost:8000/cgi-bin/chatbot.py
```



##### # cgi?

- 입력상자 읽어오는 기능



##### # jQuery

>  webpage = html (구조, 내용) + css(레이아웃, 스타일) + **<u>js</u>**
>
> css의 기능을 보완하는 javascript의 library를 jQuery라 한다.
>
> 공식사이트 : jquery.com ( 위의 탭에서 3번째 들어가기 (jquery mobile)) --> demo 1.4.5 들어가기





