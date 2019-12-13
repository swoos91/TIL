# Telegram_bot 만들기

```
$ cd TIL/
$ mkdir telegram_bot
$ activate
$ cd telegram_bot
$ touch app.py
$ code .
```

VS

```python
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello World!'

if __name__=='__main__':
    app.run(debug=True)
```

Telegram에서 botfather --> start

google에서 telegram api 검색 --> learn --> how do bots work? 에서 상세설명 ㄱㄱ --> 





----

token 숨기는 방법

```
$ pip install python-decouple
$ touch .env
```

.env 파일에 '발급받은 토큰' 과 'chat_id'를 넣어주면 된다. (대문자로)

이후 파이썬 파일에서

```python
from decouple import config

token = config('TELEGRAM_BOT_TOKEN')
chat_id = config("CHAT_ID")
```

webhook 

ngrok -> 로컬 네트워크에 터널을 열어서 개방 : 구글에서 ngrok 검색 후 홈페이지에서 다운로드

- TIL 폴더 주소창에 cmd --> ngrok http 5000(포트번호) typing

-----

#  오후 수업

