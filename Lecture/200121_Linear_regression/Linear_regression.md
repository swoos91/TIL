#### Tue 23th, Jan 2020

###### ML_Day 01 Supervised learning

---



### Machine learning

> 프로그램이 일정 수준의 작업 성능(P)을 가지고 작업(T)을 수행한다고 할 때, 경험(E)이 증가함에 따라 작업(T)을 수행하는 성능(P)이 향상되는 기계 학습



#### 1. M/L 알고리즘 카테고리

- 지도학습
  - 분류 예측
  - 수치 예측
- 비지도 학습
  - 군집화
    - 계층적
    - 비계층적
  - 연관성 규칙(장바구니 규칙)



#### 2. Regression

> > 주어진 데이터를 통해 feature와 label간의 상관관계를 분석하고, 이를 통해 얻은 회귀식으로 모집단을 추정하는 방법

- Cost function ( Gradient Descent; 경사하강법 ) by using **<u>Jacobi function</u>**
  - Feature scaling
  - Learning rate

- Ridge

  - |w|의 모든 원소가 0에 가깝게 만든 regression

  - 다시 말해, Gradient Descent에서 w^2이 아닌 |w| 로 접근하는 방식

- Parameter 조정

  - ( Cost function = 잔차 최소화 + **<u>회귀계수</u>** ) 에서 parameter 조정은 회귀계수와 관련이 있음

  - `L2 규제` & `L1 규제`

    - L2 규제 : Min( RSS(w) + alpha * ||w||^2 )

    - L1 규제 : Min( RSS(w) + alpha * ||w|| )

    - alpha가 0에 가까우면 cost = Min( RSS(w) ),

      그러나 alpha 값을 높이면 비용함수는 w를 0에 가깝게 최소화해야함.

    - SVM의 'C'와 'gamma' 값은 커지면 커질수록 규제가 감소하여 overfitting의 위험이 있으나, regression의 alpha값은 커지면 커질수록 규제가 강화되어 underfitting의 가능성이 높아짐.