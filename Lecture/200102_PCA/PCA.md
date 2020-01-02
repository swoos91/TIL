# PCA 분석

> 비지도 학습 모형으로, 정확도보다 **<u>데이터의 대략적 특성</u>**을 파악하는데 용이. Algorithm에 적합하도록 데이터의 특성을 변환하는 **<u>전처리 단계</u>**에서 주로 활용.

## 1. 주성분 분석 알아보기

| 자동차 문 갯수 | 바퀴수 | ...  | 차종(Label) |
| -------------- | ------ | ---- | ----------- |
|                |        |      |             |

- 주요 특성(성분; Vector)을 추출(ex. 바퀴수 제외) --> 분산값이 큰 특성

  Why? 일반화된 학습 모형을 도출하는데 있어 수많은 특성을 고려할 경우 과적합 문제 발생

- **<u>'식별'</u>**을 목적으로 두는 모형으로, 평균으로 몰리는 특성이 아닌 분산값이 큰 특성을 주 성분으로 선택 --> Vector의 분산값을 크게 만드는 W값들을 추출

- 추출한 Vector들에 의해 차원축소 효과가 나타남.

  ex) 이미지 학습에서 활용 가능( 변하지 않는 Background 색상 제외시키고 나머지 색상들을 학습시킴. )



## 2. 실습

```R

```



---

통합 개발환경 구축

1. Anaconda 3 실행

   - C드라이브 아래 py_data 폴더 생성
   - cd c:\py_data
   - 'jupyter notebook'

   - conda --version : 4.7.12

     python --version : 3.7.4

---

# Python

cf) 컴퓨터 작업환경

- **<u>User <--> S/W (Application) <--> System S/W  (ex. windows)</u>** <--> H/W 

- S/W = Program = **<u>명령어들(Instruction)</u>** = Data
- 명령어 표현(개발) 도구 = 언어 ex) Python

- App 서비스의 종류가 다양해지면서 (ex. 분석, 웹서비스...) 서비스에 적합한 언어가 다양해짐. 다시 말해, 환경이 바뀔 때마다 그에 맞는 언어를 학습해야함. --> 이러한 상황에서 등장한 것이 Python(통합된 언어). 



| Application, 개발(spyder), 분석(Jupyter notebook)            |       |
| ------------------------------------------------------------ | ----- |
| Runtime(실행환경), Lib, 유틸 ---> Python SDK                 |       |
| system S/W (windows) <br />{GUI , TCP, 명령 프롬포트, 명령 해독기(Shell)} | Linux |
| H/W                                                          |       |

- 1,2행을 포함시켜 배포: anaconda



cf) jupyter notebook에서 번호 주석: ctrl + m 이후 l --> 주석