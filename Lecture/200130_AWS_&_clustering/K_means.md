##### Thu 30th, Jan 2020

###### Unsupervised learning

---



#### 1. K-means

> - 가정: 동일한 클래스에 속하는 데이터는 어떠한 중심을 기준으로 분포할 것이다.
> - 먼저, 임의의 K개 object를 뽑아 각각을 "평균값"으로 보고, 데이터들을 K개의 그룹으로 나눈다.  이후 그룹 내 평균값을 재조정하고, 이에 맞춰 데이터들을 재 그룹화 한다.
> - Parameter 
>   - 거리( 유사도 )측정 방식 
>     - 유클리디안, 맨하탄....
>  - 초기값 설정
> - 한계점: 최적의 K개를 찾는 이론적 근거가 없다 + 이상치에 민감하게 반응(평균값을 이용하기 때문)



- 초기값 설정에 대한 문제점 보완 : K-평균 ++
  - 초기값으로, 임의의 데이터 1개로부터 가장 거리가 먼 데이터와 2번째로 먼 데이터 선정





