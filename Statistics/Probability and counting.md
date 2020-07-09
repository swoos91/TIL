##### Statistics 110

###### Probability & Counting

---



#### Definition of Prob

- S ( Sample space; 표본 공간 ) 에서 Event A ( 사건 )가 일어날 수 있는 가능성을 수치화한 개념이다. 

  > - S: 어떤 실험에서 발생할 수 있는 모든 경우의 집합을 의미
  >
  >   Event: S의 부분 집합
  >
  > - 위의 정의는 Naive한 접근으로, **Strong assumption** 이 필요함.
  >   - <u>발생 가능한 모든 경우들은 동일한 확률을 가진다.</u>
  >   - <u>표본 공간은 countable ( = finite ) 하다</u>

  
  $$
  \begin{align*}
  P(A) = \frac{favorable\ outcomes}{all\ possible\ outcomes}
  \end{align*}
  $$
  

#### How to count all possible outcomes?

> 실험에서 발생하는 경우의 수가 유한해야 확률로 접근이 가능하다.

- ##### Multiplication Rule

  **there are n<sub>1</sub>n<sub>2</sub>...n<sub>r</sub> overall possible outcomes** If have experiment with n<sub>1</sub> possible outcomes, and for each outcome of 1st expt there are n<sub>2</sub> outcomes for 2nd expt, ...., for each there are n<sub>r</sub> outcomes for r<sub>th</sub>.

- ##### Binomial coef

  $$
  \binom nk = \frac{n!}{(n-k)!k!}
  $$

- ##### Sampling table

  |                   | Order matter              | Order doesn't matter          |
  | ----------------- | ------------------------- | ----------------------------- |
  | **Replace**       | n<sup>k</sup>             | <sub>n+k-1</sub>C<sub>k</sub> |
  | **Don't replace** | <sub>n</sub>P<sub>k</sub> | <sub>n</sub>C<sub>k</sub>     |

  