### Monday Jan. 13th 2020

---





### Linear Regression with multiple variables



#### 1. Multiple features

#### 2. Gradient Descent For Multiple Variables

![Gradient Descent formula](https://github.com/swoos91/TIL/blob/master/Coursera_Andrew/reference/Gradient_Descent_for_Multiple_Variables.png?raw=true)

source: https://www.coursera.org/learn/machine-learning/supplement/aEN5G/gradient-descent-for-multiple-variables

 

- Gradient Descent in Practice I - **<u>Feature Scaling</u>**

  - 경사하강법 적용시 **'Feature Scaling'** 을 진행하는 가장 큰 이유는 적은 시간적 비용으로 θ값을 도출하기 위함이다. 

  - Highly recommend to get every feature into approximately

    a **<u>( -1<= x <= 1 )</u>** range.

  - Another solution is **<u>Mean normalization</u>**.

    Replace x with x-m to make features have approximately zero mean

    (Do not apply to x0 = 1)

    분모: 1. Standard error   2. (max - min) 

- Gradient Descent in Practice II - **<u>Learning Rate</u>**

  - Gradient Descent를 반복할 수록 J(θ)의 값이 감소하여 아주 작은 값으로 수렴하는 모양새를 보이지만, 어느 정도의 반복횟수가 가장 이상적인지는 알 수 없다. ( cf_automatic convergence test ) Plot을 그려서 확인하는 것이 가장 안전하다고 추천.
  - 만약 경사하강을 반복할 수록 J(θ) 가 증가하는 경우, 이는 Learning rate가 너무 크기 때문에 발생하는 오류일 수 있다.

#### 3. Features and polynomial regression

- The way of **<u>choosing appropriate features</u>**

  - Transform the features 

    e.g.  The house size = width * depth

  - Polynomial dataset --> n차식의 모델을 형성하여 **<u>적절한 feature scaling</u>** 작업을 거칠 것.

    ( 2차식보다 3차식 or 제곱근함수 )



---



### Tue Jan. 14th 2020

##### Week 2_Linear Regression with multiple variables

---



### Normal Equation ( 정규 방정식 )

> - **<u>특정 회귀 모형</u>**에서 파라미터 θ의 최적값을 구하는데 효과적인 방법
>
> - Gradient Descent 와 달리(여러 번 반복하여 최소값으로 수렴하는 θ), 
>
>   Normal Equation은 **<u>분석적(Analytically)으로 접근</u>**하여 θ 값을 한번에 구하는 방법



#### 1. Concept

- ![https://www.coursera.org/learn/machine-learning/lecture/2DKxQ/normal-equation](https://github.com/swoos91/TIL/blob/master/Coursera_Andrew/reference/derivative_of_Jacobi.png?raw=true)

  If the number of features is quite low ( **<u>under 10^6</u>** ), then it's much better to use **<u>Normal Equation</u>**. As you can see the formula above, you need to **find every θ** by using this formula. 

- ![https://www.coursera.org/learn/machine-learning/lecture/2DKxQ/normal-equation](https://github.com/swoos91/TIL/blob/master/Coursera_Andrew/reference/Normal_Equation_formula.png?raw=true)





#### 2. Comparison Normal Equation with Gradient Descent

![https://www.coursera.org/learn/machine-learning/lecture/2DKxQ/normal-equation](https://github.com/swoos91/TIL/blob/master/Coursera_Andrew/reference/pros&cons_of_Gradient_Descent&Normal_Equation.png?raw=true)

---

**Reference**: https://www.coursera.org/learn/machine-learning/lecture/2DKxQ/normal-equation

---



#### Normal Equation Non-invertibility

> The problem is 'What if the matrix X has **no inverse matrix**?'



- Case I

  **<u>Redundant features</u>** like linearly dependent.

  Then, strongly recommend to **drop the features**.

- Case II

  Too many features ( e.g. m <= n )

  Then, **delete some features** or **use regularization**.