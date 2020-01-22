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
  
  # 아나콘다 콘솔창에서 graphviz 설치할 것
  
  ```

- ```
  https://graphviz.gitlab.io/_pages/Download/Download_windows.html
  
  위의 경로에서 .msi 다운받고 설치 ( 모두 next )
  
  C:\Program Files (x86)\Graphviz2.38\bin 주소 복사
  
  내pc 속성에서 고급 시스템 설정 --> 환경변수 --> 시스템 변수의 path에 위의 주소 추가
  
  아나콘다 콘솔창에서 c:\py_data로 이동 후
  
  pip install graphviz
  ```

  





