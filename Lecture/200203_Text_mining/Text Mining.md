##### Mon, Feb 3rd, 2020

###### Text mining

---



### Text Mining

> <u>**'비정형 데이터'**</u>에서 **<u>'정형 데이터'</u>**로 변환하여 패턴 규칙을 찾는 학습 모형



##### 1. 벡터화

- 비정형 데이터를 **<u>수치화</u>**하여 정형화(matrix)하는 작업

- 벡터화 방식 종류:

  - BoW ( Bag of words )
  - Word2Vec ( Word to Vector )

- 학습시키고자 하는 비정형 데이터의 성격에 따라 각각 다른 성격의 벡터 도출

  > ex) 문학에서의 '엄마'와 논문에서의 '엄마'는 유사 단어가 다르게 나옴.




##### 2. Sparse Matrix ( 희소행렬 )

> Matrix에 0인 elements가 많은 경우 저장공간이 아까워 메모리를 절약하기 위해 사용

- 

  ```python
  import numpy as np
  from scipy import sparse
  
  # Raw data
  dense = np.array([[3,0,1], [0,2,0]])
  
  # Sparse Matrix 변환
  
  # 0이 아닌 데이터값 추출
  data = np.array([3,1,2])
  
  #  0이 아닌 데이터의 위치
  row_pos = np.array([0,0,1])
  col_pos = np.array([0,2,1])
  
  # Sparse 패키지의 coo_matrix를 이용하여 COO 형식으로 희소행렬 생성
  sparse_coo = sparse.coo_matrix((data, (row_pos, col_pos)))
  
  # Raw data 형태로 복원
  sparse_coo.toarray()
  ```



- CSR ( 'Compressed Sparse Row format' 의 약어 ) 모델

  

  ```python
  # 행 역시 같은 수가 반복적으로 나오는 경우가 생기면서 메모리 비효율성 발생
  # 위의 문제를 해결하기 위해 CSR 방식 등장
  # 즉, [0,0,0,1,1,1,1,2,2,2,2,3,3......]의 row_pos vec를
  # [0,3,7....]과 같이 각 행이 등장하는 첫번째 순서의 index만 vector에 담는다.
  ```



- TF-IDF (Term Frequency - Inverse Document Frequency)

  > '가장 많이 나오는 단어가 문서의 핵심 단어라 볼 수 있나?'에 대한 문제 제기에서 나온 아이디어로, ( 전체 문서 / 하나의 문서 내에 특정 단어의 빈도 수 )를 이용함. 이 때, 전체 문서 대비 특정 단어의 빈도수가 적을 수록 그 문서의 핵심 단어로 볼 수 있음. 

  

- 벡터화 예제 ( 뉴스 기사 카테고리 작업 )

  ```python
  from sklearn.datasets import fetch_20newsgroups
  
  # train & test dataset 만들기
  train_news = fetch_20newsgroups(subset = 'train', 
                                  remove = ('headers', 'footers', 'quotes'), 
                                  random_state = 156)
  
  X_train = train_news.data
  y_train = train_news.target
  
  test_news = fetch_20newsgroups(subset = 'test', 
                                  remove = ('headers', 'footers', 'quotes'), 
                                  random_state = 156)
  
  X_test = test_news.data
  y_test = test_news.target
  
  # Vectorizing
  
  from sklearn.feature_extraction.text import CountVectorizer
  
  cnt_vect = CountVectorizer()
  cnt_vect.fit(X_train, y_train)
  X_train_cnt = cnt_vect.transform(X_train)
  X_train_cnt.shape
  X_test_cnt = cnt_vect.transform(X_test)
  
  # 모델 학습
  
  from sklearn.linear_model import LogisticRegression
  from sklearn.metrics import accuracy_score
  
  lr_clf = LogisticRegression()
  lr_clf.fit(X_train_cnt, y_train)
  
  pred = lr_clf.predict(X_test_cnt)
  accuracy_score(y_test, pred)
  
  ```



- `CountVectorizer`

  ```python
  # parameter 종류
  
  Stop_words : 불용어
  token_pattern : pattern 단위로 tokenizing
  ngram_range : n-그램(min_n, max_n)의 범위 조정 ex) (2,2) --> 공백을 기준으로 2단어까지 혼합명사로 봄.
  max_df, min_df : 단어장에 포함되기 위한 빈도 제한
  ```



- Word 2 Vec

  > **<u>크기와 방향</u>**을 가지는 'Vector'로 변환. 
  >
  > 학습을 통해 단어 간 상관관계를 고려하여 벡터화

  - 라이브러리 설치

    ```python
    # Anaconda에서 gensim 설치
    # 관리자모드로 실행해서 디렉토리 변경없이 바로 gensim 설치
    
    pip install gensim
    ```

    

