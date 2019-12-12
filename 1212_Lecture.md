# 1212_Lecture

## (1) Chrome extension

- chrome extension 에서 확장 프로그램 설치 및 추가
- `octotree`, `JSON viewer` 및 `css peeper` 설치
  - css peeper: 사이트 내 색상 추출하는 툴

## (2)  html_and css 학습

- git bash 에서 html_and_css 폴더 생성 및 이동

  ```
  $ mkdir html_and_css
  $ cd html~and_css
  $ code .
  ```

- VS 에서 html snippet 과  html css support, open in browser 설치

- basic.html 생성

  ```html
  <!DOCTYPE html>
  <html>
      <head>
          <meta charset="utf-8">
          <title>hello, HTML!</title>
      </head>
      <body>
          <!-- Heading -->
          <h1>Hi, h1</h1>
          <h2>Hi, h2</h2>
          <h3>Hi, h3</h3>
          <h4>Hi, h4</h4>
          <h5>Hi, h5</h5>
          <h6>Hi, h6</h6>
  
          <!--p/br-->
          <p>
              this is a p tag.<br>
              this is a p tag.<br>
              this is a p tag.
          </p>
          <!--hr-->
          <hr>
      </body>
  </html>
  ```

  cf) h1 typing 후에 `tab`을 누르면 자동 완성

  ​	! `tab` 치면 html 구조 잡아줌

  ​	emmet (--> 태그 )  과 w3school (--> css 속성 )참조할 것

----

# 가상 개발 환경 구축

>PIP으로 패키지나 모듈을 설치할 경우 전역으로 설치가 되어 문제가 발생할 수 있음. ex) requests의 1.2버전이 필요하나 전역으로 2.2가 설치된 경우

1. 가상 환경 생성

   ```git
   $ python -m venv [가상환경 이름]
   ```

2. 가상 환경 접근

   ```
   $ source venv/Scripts/activate
   ```

3. 가상 환경 exit

   ```
   $ deactivate
   ```

4. activate 명령어 생성(2번 축약)

   ```
   vi ~/.bashrc
   # `i` key-in
   alias activate="source venv/Scripts/activate"
   # `esc` 이후 :wq
   $source ~/.bashrc
   ```

5. gitignore.io 에 접속하여 Flask, python, venv 타이핑 후 생성 --> 복사

   ```
   $ vi .gitignore
   # shift + insert
   # `esc` + :wq
   ```

   cf) which python 을 key-in 하면 가상환경을 이해하는데 도움될 수 있음. --> path가 activate한 가상환경으로 이동

6. 현재 가상환경에 설치된 패키지 리스트들을 적어주는 명령어

   ```
   $ pip install requests
   $ pip freeze > requirements.txt
   ```

7. 리스트를 받아서 가상환경에 설치하는 명령어

   ```
   $ pip install -r requirements.txt
   ```

# Flask: 웹서버 구축 Framework

```
$ mkdir flask
$ cd flask/
```

google.com --> flask ---> documents --> installation

```
$ pip install Flask
$ code .
```

VS

```python
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'
```

- app이 server 이름
- @app.route('/') --> root 주소를 열어주는 기능(길을 내주는 기능: 사람들에게 개방)

git bash

```
$ flask run
```





## 아스키 코드 변환 주소

artii.herokuapp.com