##### Mon 20th, Jan 2020

###### Special lecture_project

---



## Preview



### 1 .Why 4th?

- 추천도서: `The Singularity is Near`, `The next`

- **Keyword**: `Connectivity` + `Intelligence`



### 2. 추천 논문 학회

- `ACM`, `IEEE`



### 3. Big Data

- cf) VLDB ( Very Large Database )  --> 단순히 데이터의 크기를 말하지 않음
- 새로운 형태의 처리 방식
- Variability: 데이터의 변화에 따라 결과값도 변하는 모델



---



## Algorithm

> 기본적으로 예측하고자 하는 target value에 대한 과거 데이터가 존재할 경우에만 적용 가능한 점.
>
> 핵심: 알고리즘에 맞게 데이터 전처리 할 것! ( 셀 수 있는 데이터 형식 )



#### 1. Model

- **Def**: 어떤 목적 달성을 위해 실 세계를 단순하게 표현한 것
- 목적에 따라 관련 없는 정보는 생략 ==> `Feature Selection`



#### 2. 모델유도(Model Induction)

- **Def**: 데이터로부터 모델을 만드는 것
- 동의어: '귀납법, 범용규칙, 유도알고리즘, 학습자'



#### 3. Entropy

- **Def**: 어떤 집합에 대한 무질서 정도를 측정
- 물리학과 해석을 반대로, entropy가 0에 가까울수록 분류가 잘된다고 해석.





---



## Project Management

>조직 내 목표 혹은 고객과의 계약상 목표를 달성하기 위해 **<u>한정된 기간과 비용 내에서 정해진 자원을 활용하여 완수하고자 하는 과제</u>**
>
>1. 계약상 목표
>2. 기간준수
>3. 정해진 비용
>4. 효율적 자원 활용



#### 1. 수주업

- 고객이 발주한 사업을 타 회사들과의 경쟁을 통해 획득하고 이를 수행하는 business를 영위하는 업종

  1. 사업기획 및 발주 ( 사업계획서 )

     - Why? --> What? --> How? ( 일정 예산 자원 ... ) --> Benefit

  2. 제안

     - 평가주체: 발주고객, 외부 전문가 등의 평가위원(공공)
     - 평가대상: 기술 평가 // 가격평가
     - 평가요소: 비공식 요소... 

  3. 계약 및 협상

     - 사업참여 의사결정
       - 검토사항
         1. 현실적인 수주 확도는 어느 정도인가?
         2. 성공적인 수행이 가능한가? ( 기술, 관리, 위험 검토 )
         3. 매출 규모와 이익율은 어느 정도인가?
         4. 고객과의 관계유지를 위해 전략적으로 필요한가?

  4. 프로젝트 수행

     - 컨설팅

       - 기업의 중장기 IT 전략 수립 // 단위 IT 사업 기획

         > ISP ( Information Strategy Planning; 정보화 전략계획 ) // PI (Process Innovation; 프로세스 혁신)
         >
         > - AS-IS (현황분석) : 이슈/개선방향
         > - To-Be(미래모형) : 개선방안(구체적) 수립
         > - Planning(사업계획)

         | 사내기획 | 컨설팅 용역을 주는 이유                             |
         | -------- | --------------------------------------------------- |
         |          | 객관성 담보                                         |
         |          | 정치적 목적( 업무, 시스템, **<u>조직</u>**의 변화 ) |

     - 시스템 구축 ( System Integration )

       - 시스템 개발, 구축 및 통합
       - 기반 인프라 구축 및 고도화

     - 운영 및 유지보수 ( IT Outsourcing ; SM( System Maintenance) )

       - 구축된 시스템의 안정적인 운영
       - 시스템 기능/품질 개선 및 유지보수

     |        | SI                        | SM                            |
     | ------ | ------------------------- | ----------------------------- |
     | 차이점 | 신규 시스템/기술 도입     | 기 구축 시스템(legacy system) |
     |        | 기술 난이도/커버리지 높음 | 기술 난이도/커버리지 낮음     |
     |        | 이슈 많음                 | 이슈 적음                     |
     |        | 이직하기 좋음             | 이직하기 어려움               |

  

- 프로젝트 규모

  - 소형: 0명 이내, 수행기간 6개월 이내
  - 중형: 00명 이내, 수행기간 12개월 이내
  - 대형: 000명 이상, 수행기간 2년 이상
  - 프로젝트 규모가 작을수록 성공확률 높음

- IT 프로젝트의 특징 <-- 기간 내에 프로젝트 수행하기 어려운 이유 분석

  - 프로젝트 진행상황을 가시적으로 정확히 판단하기 어려움 ( 분석 - 설계 - 개발 - 테스트 - 안정화 )
    - 완료율을 rough하게 측정
  - 투입 인력(개발자) 의존도가 높은 속성을 가짐
  - 초기에 사용자 요구사항을 명확히 정의하기 어려움
  - 대부분 일괄계약의 형태로 진행하여 초기 정확한 규모 산정이 어려움



### 2. 프로젝트 관리



- 프로젝트 관리 영역

|           구분           |      영역       |
| :----------------------: | :-------------: |
|     Core Area (목표)     |    범위 관리    |
|                          |    일정 관리    |
|                          |    원가 관리    |
|                          |    품질 관리    |
| Facilitating Area (수단) |    자원 관리    |
|                          |  의사소통 관리  |
|                          |    위험 관리    |
|                          |    조달 관리    |
|                          | 이해관계자 관리 |

- 방법론(Methodology)

  > 지식을 기반으로 일을 수행하는 절차, 방법, 원칙 등을 정의한 것

  - Waterfall 모델
  - agile 개발 방법론 ( 고객중심적(사용자 중심), work smart )
    - 전체가 아닌 일부 기능에 한하여 ( 분석 설계 개발 테스트 안정화 ) 단계를 먼저 실행하고, 점차 개발 영역을 넓혀가는 방법론
    - 기능 개발 및 반복 주기 ( Sprint )를 ( 2~4주 )로 고정
    - 고객의 요구사항 변경 및 추가 건에 대하여 해당 sprint 내에 보완하기 어려울 경우, 다음 sprint로 넘겨서 비교검증을 통해 우선순위를 정함.
    - 하지만, agile 방법론을 현장에서 적용할 때 어려움이 있음 ( 대부분 내부 개발에만 적용 )
      1. 고객 측면
         - 우선순위에서 밀려난 과업 범위에 대해 재조정하는 것을 좋아하지 않음.
         - 계약 금액 조정 기피
      2. 회사 측면
         - 업무 부하 가중 ( 작은 규모의 프로젝트를 여러번 하는 듯 함 )

- 단계별 프로젝트 관리

  - Project leader 선임 및 명확한 업무 분장

  - Ground Rule (기본 규칙) 정립   ex) 회의

    - 퇴근 시, 팀원은 PL에게 (오늘 처리한 업무 사항, 이슈사항/논의사항, 내일 업무 일정) 공유
    - 익일 아침, PL은 팀원들이 공유한 사항을 취합하여 모든 팀원들에게 공유( 30분 이내 )
    - 팀원 중에 회의록을 작성할 서기( PL )를 뽑고, 회의 내용을 메일로 공유

  - 계획 단계

    - WBS 기반으로 체계적인 공정계획을 수립

      Work Breakdown Structure: 단계별 활동 내역을 정의한 후 활동 간의 선후행관계, 수행기간을 정의하여 **<u>일정계획을 수립하고 활동별 담당자를 배정</u>**  <== MS project 혹은 Excel 활용

    - 일정계획 수립 시 고려 사항

      - 개발 내역에 대한 기술적인 난이도를 사전에 평가
      - 업무를 담당하는 팀원 각각의 능력을 고려
      - 예상치 못한 이슈가 발생하는 경우를 고려 ( 이슈를 해결할 버퍼를 고려(1~2주)하여 일정 계획을 잡을 것 )  ==> 일정: Critical chain + Buffer

  - 실행 단계

    - 목표 시스템에 대한 체계적인 설계를 수행
      - 기능, 데이터, UI, 아키텍처 요구사항 등을 고려한 체계적인 설계
      - 불필요한 코드를 줄이고 테스트와 재작업이 쉬운 코드를 만들 수 있음
      - 개발과정에서 무한 수정/변경 등의 삽질을 방지
      - 향후 수정 및 유지보수가 용이하여 운영 생산성이 향상
    - 체계적인 변경통제와 형상관리( git )가 필수

