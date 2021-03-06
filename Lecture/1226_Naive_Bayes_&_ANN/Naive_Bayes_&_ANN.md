# Naive Bayes

> 통계학 조건부 이론(Bayes) 기반의 Naive 모델로, **<u>목표변수의 범주</u>**를 학습시키기 위해 통계학에서 사용되는 베이즈 정리를 사용.



## 나이브 베이즈(Naive Bayes) 추론 기법

1. 조건부 확률; P(A|B)

   - A와 B 사건이 **<u>서로 독립인 가정 하</u>**에, B가 일어났을 때 A가 일어날 확률 ( 가정: P(B) > 0  )
   - P(A|B) = P(A n B) / P(B)  ( P(A | B) = P(A) )

2. Bayes theorem

   - P(A|B) = P(B|A)*P(A) / P(B)

   - 사건 B가 일어났을 때 사건 A가 일어날 확률(사후확률)은,

     사건 A가 일어날 확률(사전확률)과 사건 A가 일어났을 때 사건 B가 일어날 조건부 확률의 곱을 사건 B가 일어날 확률 P(B)로 나누어 알아낼 수 있음을 의미.

   - 다시 말해서, 지도학습에 의해 P(A|B)를 추정할 수 있음. 

   - 사전 확률: 이미 알고 있는 사건의 확률

   - 우도: 이미 알고 있는 사건들이 발생했다는 조건 하에, 다른 사건이 발생할 확률. ex) P(B|A)

3.  Naive 의미

   - **<u>다양한 세부 요인의 영향력을 모두 동등하고, 독립적이라고 가정</u>**하여 사후 확률을 추정.
   - 사전 확률에 대한 Background 설명이 부족하다는 한계가 있음.  (경험적 수치)

---

# ANN(Artificial Neural Network)

## 1. 다층 퍼셉트론

> 중간layer를 여러 개로 나눠주면서 비선형적인 데이터도 학습할 수 있다.

- Layer 혹은 Node 수를 tuning하여 w의 정확도를 높일 수 있음.

  cf) W값을 찾을 때 'SVM'과 'ANN'을 주로 활용하는데, 이 때 데이터들의 정규화 및 표준화 작업이 선행되어야 한다. (경사하강법에 따라)

### 표준화 & 정규화

> 표준화 = X - m / sd
>
> 정규화 = ( X - min(X) ) / ( max(X) - min(X) )