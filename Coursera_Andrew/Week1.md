# Machine Learning_Coursera

#### Introduction

> <u>**Machine Learning**</u>
>
> - Grew out of work in AI
> - New capability for computers
> - Examples:
>   - Database mining
>     - Web click data, medical records
>   - Applications can't program by hand.
>     - Autonomous helicopter, NLP, handwriting recognition
>   - Self-customizing programs
>     - Amazon, Netflix
>   - Understanding human learning
>     - real AI

#### 1. What is Machine Learning?

> - Arthur Samuel says, "M/L is Field of study that gives computers the ability to learn **without being explicitly(명시적으로) programmed.**"
>
> - Tom Mitchell says, "A computer program is said to learn from experience (E) with respect to some task (T) and some performance measure (P), if **its performance on T, as measured by P, improves with experience E**."
>
>   프로그램이 일정 수준의 작업 성능(P)을 가지고 작업(T)을 수행한다고 했을 때, 경험(E)이 증가함에 따라 작업(T)을 수행하는 성능(P)이 향상될 수 있다.



##### M/L algorithms

- ###### Supervised learning(지도 학습; 작업을 수행할 수 있는 방법을 컴퓨터에게 가르치는 것)

  - **Right answers** given
  - Example
    - Housing price prediction --> **Regression problem** (회귀 문제; <u>**연속된 값**</u>을 가진 결과를 예측)
    - Breast cancer --> **Classification**(분류 문제; 0 또는 1, 악성 또는 양성과 같이 **<u>불연속적인 결과값</u>**을 예측)
  - What if ?
    - Classification 문제에서 고려해야할 Feature 수가 많아서 컴퓨터의 메모리를 전부 써도 부족할 경우? --> Support Vector Machine(SVM) 활용 가능

- ###### Unsupervised learning(비지도 학습; 컴퓨터가 스스로 학습)

  - Right answers **not** given

  - Example

    - Google news --> **Clustering Algorithms**(군집화 문제)

      E.g. 

      1. Organize computing clusters
      2. Social network analysis ( 페이스북 친구 추천 )
      3. Market segmentation
      4. Astronomical data analysis

    - Cocktail party problem



---

## Friday Jan. 10th 2020

---



## Linear Regression

> 지도학습의 한 종류



### 1. 용어 정리

- **m**: number of training examples

- **X**: feature
- **Y**: target variable
- **h(hypothesis)**: h maps from <u>X</u> to <u>Y</u>



### 2. Cost Function(J( = Jacobi); Squared Error function)

> 주어진 데이터셋에 가장 가까운 모델(Linear regression)을 생성할 때 활용하는 아이디어
>
> - Choose <u>θ0, θ1</u> so that hθ(x) is close to y for our training examples(x,y)



### 3. Gradient descent(; 경사하강법)

> - Start with some θ0, θ1
> - Keep changing θ0, θ1 to reduce J(θ0, θ1) until we hopefully end up at a minimum
> - 작은 걸음걸이로 언덕을 최대한 빠르게 내려가고자 하는 아이디어와 유사하다.

- Concept

  - ![Gradient descent algorithm](C:\Users\student\TIL\Coursera_Andrew\Gradient_descent_algorithm.png)

    Reference: Coursera Lecture of Machine Learning by Andrew ng

  - Terms
    - **<u>α</u>** means **<u>learning rate</u>**
      - if α is **<u>too small</u>**, gradient descent can **<u>be slow</u>**(taking much time to find the minimum of J). However, if α is **<u>too large</u>**, gradient descent **<u>can overshoot the minimum</u>**. it may fail to converge, or even diverge.
    - **<u>:=</u>** means **<u>assignment</u>**
    - **<u>The derivative</u>** means **<u>the tangent value</u>** of the point ( ; the slope of the point )
  - The point is that it should **<u>simultaneously update</u>** the parameters 

