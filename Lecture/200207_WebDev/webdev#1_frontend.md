##### Fri, Feb 7, 2020

###### Web Development#1

---





# Front_End



## Html



#### #1  Script 방식

> Webpage ( html + css + js )를 R.T.(Runtime <ex> web browser)으로 넘길 때, Compile( 기계어 번역 ) 과정이 없이 Parser를 이용하여 그대로 해석하는 방식.
>
> cf) C, Java --> Compiler --> R.T.



#### #2 Web page (<ex> html)

- 기존 web 기술에 멀티미디어 등의 스타일 요소를 더함.
- html = 명령어( <>; 구조 & 내용 ) + 스타일
- html 단점
  - 모듈화 X ==> 재활용 어려움 <== XML( html에서 스타일 제거한 구조 )
  - Customizing 어려움 ==> CSS 로 보완
  - User 상호작용 == 실행시 의도 파악 <== 프로그래밍 (javascript)



#### #3 html의 element

- ```html
  <body bgcolor=''>
  <form>
      <input value='' onclick=''>
  </form>
  </body>
  <!-- <form> 은 태그 / bgcolor, value, onclick 은 attribute 라고 부름 -->
  
  <!-- color를 16진수로 표현할 경우, `#` 을 붙여야함 -->
  ```



#### #4 CSS

```html
<head>
<style>
    <!-- #은 id를 의미하며 전체 문서에서 오직 한 곳만 적용 -->
    #abc {}
    <!-- .은 class를 의미하며 class로 지정된 모든 부분에 적용>
    </style>
</head>
```

- w3.css 활용

```html
<head>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<!-- 이후 클래스 지정하면 w3.css에서 만든 style 이용 가능 -->

<!-- 만약에 w3.css에서 만든 클래스 중에 customizing하고 싶은 부분이 있다면, cascading 이용-->
<body class='w3.dd myc' >
```

- form
  - <submit> 버튼을 누르면 <form> 태그 내에 담긴 모든 정보를  action에 지정된 주소로 보냄
  - 이 때, 스크립트는 `header` 부분과, **<u>한 줄 띄고</u>**, `body`부분으로 나눠져서 server로 보내짐. 여기서 form 태그 내 저장된 정보를 header에 저장해서 보내면 `get`방식이라 하고 body에 저장해서 보내면 `post`방식이라 함.

```html
<form method = 'post' action = 'process.py'>
아이디: <input type='text' name='txt_id'><br>
비밀번호: <input type='text' name='txt_pw'><br>
<input type='submit' value='로그인' onclick=''>
</form>
```

- `div` 바로 밑에 `<span>`에만 적용하고자 할 경우 `div > span`으로 쓰고, `div` 아래 어느 지점에 있는 `<span>`에 적용하고자 하는 경우엔 `div span`으로 쓰면 된다.

```html
<style>
    div > span {}
    div span {}
    <!-- div 아래 특정 class에 대하여 적용하고자 하는 경우 -->
    div[class=''] {}
</style>
```









#### #5 Element term 정리

- Web page 상의 동일한 라인에 element가 두 개 이상인 경우, 

  element 와 `element`사이의 거리를 `margin` 이라 함.

- `element`의 길이 조절은 `border` 설정값에 달려있음.

- `element` 내 내용물과 `border` 사이의 거리를 `padding`이라고 함.

```html
<!-- div는 줄 라인 전체를 이용 // cf) <head>에 style로 클래스를 적용하여 width를 조절 가능-->
<div>	</div>

<style>
    .aaa { width: 200px;}
</style>    
    
<!-- span은 내용물의 길이만큼 영역 할당-->
<span>	</span>

<!--활용 예-->
<div> 
    <span>Shit</span>
</div>

```



#### #6 javaScript

```html
<head>
<script>
<!-- 내용물이 없어도 script만 선언하면 javascript 이용 가능--> 
    function display() {
        alert('함수 호출 성공');
    }
    </script>
</head>
<body>
<form method = 'get' action = ''>
아이디: <input type='text' name='txt_id'><br>
비밀번호: <input type='text' name='txt_pw'><br>
<input type='button' value='로그인' onclick='javascript:display()'>
    <!-- 이 때, 실행하고자 하는 func보다 무조건 앞에 func에 대한 선언이 있어야 실행 가능-->
</form>
</body>
```

- 변수 선언

```html
<!-- 변수 선언 var-->

<script>
    var i = 'Hello';
    var j = 10;

</script>
```



- Script를 받은 Web browser는 parsing을 통해 DOM 형식의 `window` 객체를 return한다.
  - DOM: Document 형식의 트리 객체

```html
<!-- 객체 형식에 따라 출력 명령도 다음과 같이 객체 호출로 한다.--> 
window.document.write('<h1>출력</h1>')
```



- 버튼 클릭을 해서 색상 바꾸기

  ```html
  <!-- 자바스크립트의 func을 수행하기 위해선 <script>가 <input>보다 아래에 있어야 input 객체를 읽을 수 있음 -->
  
  <body>
      <h1 id='h'>화면 출력</h1>
      <input type='button' value='색상바꾸기' onclick='javascript'>
      <input type='button' value='색상바꾸기' onclick=''>
      
      <!--window.document.button-->
      <script>
          var hobj = window.document.getElementById('h');
          hobj.style.color='red';
      </script>
  
  </body>
  
  
  <!--위의 경우는 버튼 클릭이 없어도 바뀜. 따라서 head에 script를 올려서 수정해야 함-->
  <head>
      <script>
          function changeColor(){
              var hobj = window.document.getElementById('h');
          	hobj.style.color='red';
          	hobj.style.backgroundColor='blue'
          }
      </script>
  </head>
  
  
  <body>
      <h1 id='h'>화면 출력</h1>
      <input type='button' value='색상바꾸기' onclick='javascript:changeColor()'>
      <input type='button' value='색상바꾸기' onclick=''>
  </body>
  
  
  <!--$: javascript 객체를 jquery 객체로 변환-->
  
  	<!--태그 내 내용을 긁어오는 기능: .val()-->
  
  ```

  

 