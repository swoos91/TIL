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



