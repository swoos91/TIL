## 1224_Lecture ( MDS practice & SVM)

정답지 유무(목적 변수)에 따라 'Classification(분류)'과 'Clustering(군집)' 다름.

KNN -> 지도/분류

Kmeans -> 비지도/비계층



맨하탄 거리: grid(격자) 내 장애물을 고려한 최단거리  

유클리드 거리: 장애물 고려하지 않은 최단거리

벡터의 내적



---

## SVM(; Support Vector Machine)

> 1. **<u>다차원 공간상</u>**에 그려진 **<u>점</u>** 사이의 경계를 만들어내는 평면. 
>
> 2. Regression과 반대로 데이터와의 거리를 **<u>최대</u>**로 하는 선형 분류 vector(;**<u>초평면</u>**)를 구함.  
>
> 3. 지도/분류 모형
>
> 4. 전제조건: 데이터가 선형적인 분포를 띄어야 함(서로 다른 분류에 속한 데이터가 혼재되어 있는 경우 불가) But! **<u>비선형</u>** 경우에도 가능한 모델 있음.
>
>    --> **<u>차원 수 증가 or 관점 변환</u>** (Kernel function)

- Kernel function(비선형 데이터에서 초평면 구하기)

  - 내적(;평균으로부터 각 개별치가 떨어진 거리)값을 유지하면서 변환

    >- 선형 커널
    >- 시그모이드 커널
    >- <u>**가우시안 RBF 커널**</u>: 주로 사용
    >- 이외에 다항식 커널(x1,x2를 곱한 x1*x2 변수 추가) 등 여러 종류가 있음

  - parameter(C, gamma)

    - C값은 얼마나 많은 데이터 샘플이 **<u>다른 클래스에 놓이는 것을 허용</u>**하는지를 결정. 즉, C값을 낮게 설정하면 이상치들이 있을 가능성을 크게 잡아(**<u>규제가 약함</u>**) 일반적인 결정 경계를 찾아냄. --> SVM이 최대 마진이 아닌 한 쪽으로 좀 더 치우친 형태로 나옴.
    - 적절한 C값을 찾는 것이 핵심 <-- C값이 너무 낮으면 과소적합, 너무 높으면 과대적합 문제가 발생.

  - gamma

    - gamma의 크기가 작을 수록 퍼짐의 정도가 커진다(보편적인 학습). 반대로 gamma의 크기가 클 수록 퍼짐의 정도가 약하다(디테일한 학습; overfitting).
    
    - C값과 마찬가지로 적절한 gamma값을 찾는 것이 핵심.
    
      ![가우시안 분포](https://t1.daumcdn.net/cfile/tistory/992DEB3359EACB9301)
    
      reference: https://t1.daumcdn.net/cfile/tistory/992DEB3359EACB9301

- R 적용

  ```R
  # ksvm --> 가우시안
  
  library(kernlab)
  
  m=ksvm(Species~. , data=iris)
  m
  
  head(predict(m, newdata=iris))  # 적합도 test
  
  # fitting rate : overfitting인지 아닌지 판별
  # accuracy : 예측률
  
  #ploydot은 다항커널을 사용하는 것이고, degree=3은 3차원을 뜻하는
  #것이다. polydot ex) x1*x2
  m=ksvm(Species~.,data=iris,kernel="polydot",kpar=list(degree=3))
  ```

- svm 파라미터 튜닝(p. 86)

  - gamma=2^(-1:1) 의 의미는 2^(-1), 2^0, 2^1 을 말한다.

  ```R
  install.packages("e1071") #tune() 함수를 담고 있음
  library(e1071)
  #그리드탐색을 사용한 파라미터 튜닝을 실행한다.
  #그리드 탐색: 인자로 주어진 모든 가능한 경우에 대해 테스트해보는 방식
  tune.svm(Species~.,data=iris,gamma=2^(-1:1),cost=2^(2:4))
  ```

  

