##### Thu, Mar 19, 2020

###### Lec 01_ 기본적인 ML 용어 및 개념 설명

---





## Machine learning 

> Field of study that gives computers the ability to learn without being explicitly programmed.
>
> ​	:	'Rule base' 에서 벗어나 <u>Data만을 가지고</u> 컴퓨터가 '스스로 학습' 하게끔 연구하는 영역



#### 1. Sort of M/L

- Supervised learning : Learning <u>with labeled</u> examples ( Training set )
  - Regression
  - Classification
    - Binary classification
    - Multi-label classification
- Unsupervised learning : Learning with unlabeled data examples







## Lab_01 :	TensorFlow의 설치 및 기본적인 Operations

> TensorFlow ?
>
> 	-	Open source software library for <u>**'numerical computation' using data flow graphs**</u> 
> 	-	1.0 vs 2.0 ?	'생성' 과 '실행' 의 분리 여부에 있음.



#### # Data Flow Graph ? 



##### 1. Concept

- Graph	:	**'Node' 와 'Edge'** 로 구성되어 있으며, cycle을 가짐  cf) tree: cycle 없음.
  - Node : Mathematical operations
    - tf.constant : '상수'를 받아주는 노드
    - tf.placeholder : 'Feeding data'  ( X & Y)  를 받아주는 노드
    - tf.Variable : 변수 	i.e.	 W ( weight )
  - Edge : Multidimensional data arrays ( <u>**tensors**</u> ) communicated between them

- **Flow**
  1. Building graph ( tensors ) using TensorFlow operations
  2. Feed data and run graph ( sess.run(op) )
  3. Update variables in the graph and return values

- **sess.run**

  - Building 한 Graph 를 실행하는 명령어

    e.g.	sess.run( adder_node, feed_dict = {a : 3, b : 4,5 } )



##### 2. Tensor 이해하기

1. Ranks

   | Rank | Math entity                  |
   | ---- | ---------------------------- |
   | 0    | Scalar                       |
   | 1    | Vector                       |
   | 2    | Matrix                       |
   | 3    | 3-Tensor ( cube of numbers ) |
   | n    | n-Tensor                     |

   

2. Shapes

   - 각각의 element 에 몇 개씩 들어있는지를 의미함 

     e.g.	**[ [1,2,3], [4,5,6],** [<u>7,8,9</u>] **]** --> [**3**, <u>3</u>]

   

3. Types

   - 대부분 type으로 float32 혹은 int32 를 씀. 

