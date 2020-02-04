##### Tue, Feb 4th, 2020

###### Text mining #2

---



# Text mining #2 ( Word2Vec )

> Word embedding( ; Text 를 Vectorization 할 때, 단어의 유사도나 단어 간 상관관계를 고려하여 수치화( One-hot encoding ) 하는 기술 ) 을 활용





### # MLP (Multi-Layer Perceptron; 다층 퍼셉트론)

> 'Input layer' 와 'Output layer' 사이에 **<u>'Hidden layer'</u>** 를 두고 있는 모델로, Acuuracy를 높이기 위한 방법으로 **<u>'은닉층 안에 노드 수'</u>**를 조정하거나 **<u>'은닉층의 수'</u>**를 조정하는 방식이 있다.





### 1. CBOW( Continuous Bag-of-Words ) embedding

> **'Center word'** 와 **'Context words'( Center word 의 주변 단어 )**로 접근하는 방식으로, 앞뒤의 단어를 통해 중심 단어를 예측



### 2. Skip-gram Embedding

> CBOW와 정반대의 접근 방식으로, 중심 단어를 통해 주변 단어를 예측



