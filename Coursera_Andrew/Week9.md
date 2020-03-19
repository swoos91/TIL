##### Mon, Mar 2, 2020

###### Week9_Anomaly Detection

----





## Anomaly Detection





### 1. Density Estimation

> Modeling p(x) from the dataset, and then identifying the anomaly data by checking which have p(x) <  ε



#### # Gaussian Distribution ( Normal Distribution )

![anomaly_detection_algorithm]()



#### # <u>Anomaly detection</u> vs. <u>Supervised learning</u>

> negative( y = 0 ) example 의 수가 positive( y = 1 ) example 에 비해 훨씬 많을 경우, 지도학습의 training cost가 훨씬 크기 때문에 이런 경우에는 anomaly detection으로 접근하는 것이 유리함.



#### # Choosing what features to use

> Dataset의 hist 를 살펴보고, normal distribution 형태를 보이도록 데이터 변환 진행 ( log, squared ... )



#### # Multivariate Gaussian Distribution

![Multivariate Gaussian compared with original model]()









## Recommender Systems





### # Collaborative filtering ( About 'Feature learning' )

![optimization_algorithm]()



### # Vectorization: Low Rank Matrix Factorization

![Low Rank Matrix]()

![similarity]()



### #Implementational detail: Mean normalization

![mean_normalization]()



