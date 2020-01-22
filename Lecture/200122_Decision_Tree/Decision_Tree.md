##### Wed 22th, Jan 2020

참고: https://smalldataguru.com/

---



### Decision Tree

> 'Divide conquer' 방식의 알고리즘으로, 분류 및 회귀 문제에 사용하는 모델이다. 빠른 모델 생성의 장점을 가지고 있으나 정확도가 낮아 주로 EDA에 활용한다. cf) Random Forest는 정확도를 보완



- **종류**
  - **CART ( gini index 기반(카이제곱) )**
  - **C ( entropy 기반 )**
  - **CHAID**



- **실습**

  ```python
  from sklearn.datasets import load_breast_cancer
  from sklearn.tree import DecisionTreeClassifier
  from sklearn.model_selection import train_test_split
  
  cancer = load_breast_cancer()
  X_train, X_test, y_train, y_test = train_test_split(
      cancer.data, cancer.target, stratify = cancer.target, random_state = 42)
  
  # stratify 옵션을 넣어주는 이유는,
  # 목표변수의 비율이 50:50이 아니라 한쪽으로 치우쳐있는 데이터를 학습하기 때문에 층화추출 샘플링을 진행하기 위함에 있다.
  
  
  
  # tree = DecisionTreeClassifier(random_state = 0)
  # tree.fit(X_train, y_train)
  
  # print('훈련 세트 정확도: {:.3f}'.format(tree.score(X_train, y_train)))
  # print('테스트 세트 정확도: {:.3f}'.format(tree.score(X_test, y_test)))
  
  
  
  # sklearn은 Decision tree 에서 사전/사후 가지치기를 지원
  
  tree = DecisionTreeClassifier(random_state = 0, max_depth = 4)
  tree.fit(X_train, y_train)
  
  tree  # 옵션 확인 가능
  
  print('훈련 세트 정확도: {:.3f}'.format(tree.score(X_train, y_train)))
  print('테스트 세트 정확도: {:.3f}'.format(tree.score(X_test, y_test)))
  
  
  
  from sklearn.tree import export_graphviz
  export_graphviz(tree, out_file = 'tree.dot', class_names = ['악성', '양성'],
                 feature_names = cancer.feature_names, impurity = False, filled = True)
  
  import graphviz
  
  with open('tree.dot', encoding = 'utf-8') as f:
      dot_graph = f.read()
      
  display(graphviz.Source(dot_graph))
  
  # 아나콘다 콘솔창에서 graphviz 먼저 설치할 것
  
  ```

- ```
  https://graphviz.gitlab.io/_pages/Download/Download_windows.html
  
  위의 경로에서 .msi 다운받고 설치 ( 모두 next )
  
  C:\Program Files (x86)\Graphviz2.38\bin 주소 복사
  
  내pc 속성에서 고급 시스템 설정 --> 환경변수 --> 시스템 변수의 path에 위의 주소 추가
  
  아나콘다 콘솔창에서 c:\py_data로 이동 후
  
  pip install graphviz
  ```

- ```python
  # 변수 특성 중요도 파악
  
  tree.feature_importances_
  
  # 시각화
  
  import matplotlib.pyplot as plt
  import numpy as np
  
  def plot_feature_importances_cancer(model):
      n_features = cancer.data.shape[1]
      plt.barh(np.arange(n_features), model.feature_importances_, align='center')
      plt.yticks(np.arange(n_features), cancer.feature_names)
      plt.xlabel("특성 중요도")
      plt.ylabel("특성")
      plt.ylim(-1, n_features)
  
  plot_feature_importances_cancer(tree)
  ```





### Random Forest

> 앙상블 기법 중 배깅(Bagging)을 활용한 알고리즘으로, training 하지 않은 데이터에 대한 예측이 어려운 Decision Tree 를 보완



- **Ensemble learning 종류**

  - 보팅(voting)
    - 서로 다른 알고리즘을 가진 분류기를 결합
    - 알고리즘 별로 도출한 예측값들 중 다수결에 따라 가장 많이 도출된 값을 return
  - **배깅(Bagging)**
    - 서로 같은 알고리즘을 가진 분류기를 결합
  - 부스팅(Boosting) 
    - 병렬로 분류기를 결합하는 보팅 & 배깅과 달리 **직렬로 연결**되어 Sequence를 가짐.
    - 오류가 발생한 값들에 대하여 penalty를 적용 ( 가중치 부여 )
    - ex. XGBoost
  - 스태깅

- **Bagging**

  - 동일한 하나의 데이터 집합에서 **임의복원 샘플링(Bootstrap)을 통해** 여러 개의 훈련용 데이터를 생성

    - **Bootstrap** or **Feature selection( Feature 조합을 다르게 )**

  - 여러 번의 학습을 통해 여러 트리를 생성하고, 이를 결합하여 최종 적으로 목표변수를 예측

  - 분류모델을 검정데이터에 적용 ( e.g. Ouf-of-bag sample  )

  - Parameter

    - Variable selector
    - number of the Tree

  - 실습

    ```python
    from sklearn.ensemble import RandomForestClassifier
    from sklearn.datasets import make_moons
    from sklearn.model_selection import train_test_split
    
    
    X, y = make_moons(n_samples=100, noise=0.25, random_state=3)
    # noise : 벗어나는 데이터의 비율
    X_train, X_test, y_train, y_test = train_test_split(X, y, stratify=y, random_state=42)
    
    forest = RandomForestClassifier(n_estimators=5, random_state=2)
    # n_estimators : 트리 갯수
    forest.fit(X_train, y_train)
    
    # forest.estimators_ : 각 트리에 대한 meta 정보를 list형식으로 반환
    # axes.ravel() : 2차원에 대한 정보를 1차원으로 늘여놓는 함수
    fig, axes = plt.subplots(2, 3, figsize=(20, 10))
    for i, (ax, tree) in enumerate(zip(axes.ravel(), forest.estimators_)):
        ax.set_title("트리 {}".format(i))
        mglearn.plots.plot_tree_partition(X, y, tree, ax=ax)
        
    mglearn.plots.plot_2d_separator(forest, X, fill=True, ax=axes[-1, -1], alpha=.4)
    axes[-1, -1].set_title("랜덤 포레스트")
    mglearn.discrete_scatter(X[:, 0], X[:, 1], y)
    
    plot_feature_importances_cancer(forest)
    
    ```

    





