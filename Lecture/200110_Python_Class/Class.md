# Class

Cal obj = new Cal()

> **Cal**: obj의 Type, 즉, obj는 class임을 선언

> **obj**: 객체 선언과 동시에 Stack 메모리에 할당 ( 주소값 Null )

> **new**: heap 메모리에 class 객체 할당 lass 내 method 는 메모리에 올라온 code내 method 주소값을 할당

> **Cal()**: class 객체에 속성 초기값을 할당

> **=**: Stack 메모리 내 obj의 주소값에 heap 메모리의 주소값 할당



- UML 표기법 ( Class 설계도 )

| 클래스명 | Student                     |
| -------- | --------------------------- |
| 속성명   | -hak: 정수<br />-name: 문자 |
| 메소드   | +sum()                      |

---

# 상속(Inheritance)

> - Class 와 Class 의 관계(클래스간의 공통된 코드 추출)
>
> - Super(parent) class --> Sub class
> - 구성요소에 대한 상속권은 Super class에 한함 (private을 걸어둔 구성요소는 자식 클래스에게 상속 X)
> - 자식 클래스에 대한 제어권을 부모 클래스가 가짐( 자식 클래스 모두를 호출하고자 할 경우 부모 클래스를 통해 한꺼번에 호출 가능 )
> - 부모로부터 물려받은 구성요소를 **<u>삭제 할 순 없지만</u>**, **<u>추가 & 수정</u>**은 가능하다.

---

# Module(모듈)

#### 사용법

> ```python
> import [module name]
> # from [module name] import [func or *]
> ```

