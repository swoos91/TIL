##### Thu Jan. 16th 2020

---



#### Web service ( json )

> Web 기술을 이용해 시간 및 장소 제약없이 멀티미디어 서비스를 제공



##### 1. History

- html --> xml
  - 멀티미디어 서비스를 제공하는 UI 기반의 html은 무거움
  - 재공학 측면에서 html을 봤을 때, 재사용성이 떨어짐( 스타일과 기능이 엉긴 구조 )
  - xml은 스타일을 제외한 명령어 및 데이터만 전송하여 이러한 문제점을 보완
- xml --> json
  - 데이터 volume이 커지면서 메타정보를 덜어내 더 가벼운 구조가 필요했음
  - key, value만 담은 json 구조 등장



##### 2. 구현 방식

- `cgi-bin` 폴더 생성 --> 폴더 내 하위 폴더 `lang` 생성 후 `freq.pkl`, `lang-webapp.py` 파일 이동

- Anaconda 에서 명령어 실행

  ```
  cd c:\py_data
  python -m http.server --cgi [port]
  ```

  

- http://localhost:[port]/cgi-bin/lang-Webapp.py

- lang-Wepapp.py

  ```python
  # FieldStorage: GUI 기반 하에 server와 client가 상호작용을 가능하게 하는 기능들을 갖춘 함수
  form = cgi.FieldStorage()
  test = form.getvalue("text", default='')
  
```
  
- form 태그 내 input은 form 정보를 자기 자신에게 보냄



cf) VS code

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
    h1{
        color:firebrick;
        border-style: solid;
        border-width: 1px;
        border-color: greenyellow;
    }
    textarea#t1{
        background-color: khaki;
    }
    </style>

</head>
<body>
    <h1>언어판별기</h1>
    <textarea name="텍스트" id="t1" cols="30" rows="10"></textarea>
    <input type="submit" value='판정' onclick=''>
</body>
</html>
```

