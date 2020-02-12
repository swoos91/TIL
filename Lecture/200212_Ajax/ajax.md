##### Wed, Feb 12, 2020

###### Webdev#3_Ajax

---



## Web service

> Client는 Web server 내에 Home page를 중심으로 계층적 구조를 가진 web application에 URL 가상 경로를 통하여 접근
>
> * **Routing**: Server 내 Home page와 여러 다른 page들 간의 연결고리를 설정





#### # XML

> 기존 html의 구조에서 재사용성이 떨어진다는 단점을 보완하여 나온 markup language로, 스타일을 제외한 구조와 내용만을 표현하며 하나의 계층 구조를 가진다는 특징을 지님.



- xml 예시

  ```xml
  <?xml version='1.0' encoding='utf-8'?>
  <학생들>
      <학생>
          <name>홍길동</name>
          <age>20</age>
  	</학생>
      <학생>
          <name>김길동</name>
          <age>21</age>
      </학생>
  </학생들>
  ```

  

#### # ajax ( <u>asynchronous</u> javascript & xml)

> Waiting loss를 줄여 효율성을 높이기 위한 기술로, server로부터 javascript 통신코드를 받아 수행하면서 xml 형식으로 데이터를 받으면 callback



- parsing

  ```html
  XML
  var cellphone = $(this).find("cellphone").text();
  
  html
  var cellphone = $(this).find("cellphone").html();
  ```

  



