##### Fri 31th, Jan 2020

###### Non-hierarchical clustering

---



### DBSCAN

> - **<u>Density</u>**-based spatial clustering of applications with noise의 약어로, 특정 공간 내 데이터의 밀도 차이를 기반으로 하는 알고리즘이다.
> - 가정: 동일한 클래스에 속하는 데이터는 **<u>서로 근접하게 분포</u>**할 것이다.



###### Parameter

1. **ε (Epsilon)**
   - 데이터 간의 떨어진 거리를 설정하는 hyper-parameter
   - DBSCAN은 떨어진 거리(ε) 내에 데이터가 밀집된 정도를 파악하여 노이즈 데이터인지 아닌지를 판정한다. 
2. **n<sub>c</sub>** 
   - 최소 이웃 데이터의 수
   - ε 만큼 떨어진 거리 안에 있는 모든 데이터의 수 (데이터 X 자신도 포함)
   - 핵심 데이터는 아니지만( n<sub>c</sub> 충족 X ) 어떠한 핵심 데이터의 이웃 데이터인 경우를 외곽 데이터로 본다.







