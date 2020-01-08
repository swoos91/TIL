0. 출력 명령("" --> 문자기반)

1. 변수(Data)b

2. 연산명령(연산자)

   명령어가 길어지면서 오류 & 비효율성 증가 --> 효율적 프로그래밍 연구

3. 제어문

4. 함수 = 기능적 단위(독립적): 코드의 재사용에 목적

   process 에서 main 과 function을 분리하여 MM에 올림

   --> 구조적 프로그래밍 방법론 = C언어, but 유지보수 비용 큼

   --> 객체지향 프로그래밍 방법론 = Java 언어 // main 과 object(function x)

   --> 즉, 코드 중심의 func( C언어 ) **vs** (data + func) 중심의 object( Java언어 )

---

### Class

```python
def add(a,b):
    return a+b

def add_many(*args):
    result = 0
    for i in args:
        result = result + i
        pass
    return result

def add_mul(choice, *args):
    if choice == 'add':
        result = 0
        for i in args:
            result = result + i
            pass
        pass
    elif choice == 'mul':
        result = 1
        for i in args:
            result = result * i
            pass
        pass
    return result
        
```

> - 구조적 프로그래밍 방법론의 한계, 즉, 재사용성이 떨어져 유지보수 비용이 크다는 단점을 보완하기 위해 등장한 객체 지향 프로그래밍 방법론의 핵심 개념
>
> - Object 사이에 공통으로 쓰이는 function을 모아 Class를 형성.
> - Object 내 function 호출 시 class 내 동일 function의 주소값을 return하여 함수 기능 수행.
> - Encapsulation + Abstraction ==> Object 간 서로 영향을 주지 않기 위해 각 Object에 속한 Data를 은닉.