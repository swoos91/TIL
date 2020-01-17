### Week 3

##### Wed Jan. 16th 2020

-----



# Logistic Regression



### 1. Binary-Classification

> Label이 이산형인 경우

- **Linear regression의 문제점**
  - Linear regression으로 discrete한 label을 예측할 때 생기는 문제점, 즉, **<u>극단적인 이상치</u>**가 데이터에 존재할 경우 예측률이 떨어질 수 있음.
  - Logistic regression은 label의 값이 0 <= y <= 1 안으로 들어오기 때문에 위의 문제점을 해결할 수 있음.
- **Hypothesis Representation**
  - ![sigmoid function](https://github.com/swoos91/TIL/blob/master/Coursera_Andrew/reference/sigmoid_f.png?raw=true)
  - ![interpretation of Hypothesis Output](https://github.com/swoos91/TIL/blob/master/Coursera_Andrew/reference/interpretation_of_hypothesis_output.png?raw=true)
    - probability that y=1, given x, parameterized by θ
- **Decision boundary**
  - ![Decision boundary](https://github.com/swoos91/TIL/blob/master/Coursera_Andrew/reference/decision_boundary.png?raw=true) 
- **Non-linear decision boundaries**
  - By using **<u>polynomial regression</u>**, we can also find the decision boundaries.
  - ![Non-linear decision boundaries](https://github.com/swoos91/TIL/blob/master/Coursera_Andrew/reference/Non-linear_decision_boundaries.png?raw=true)

---

Reference: https://www.coursera.org/learn/machine-learning/lecture/WuL1H/decision-boundary

---



----

##### Fri Jan. 17th 2020

---



### 2. Cost function

> To fit the optimized θ of logistic regression, we're going to study the cost function.



- ##### Problem of the Gradient Descent for logistic regression

  - The reason is that logistic regression uses the sigmoid function, so it makes the graph look like **non-convex**. We need to find another way to get the cost function.

- 



