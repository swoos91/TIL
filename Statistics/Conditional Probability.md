##### Statistics 110

###### Conditional Probability

---



### Goal of this lecture

> '사건의 독립'과 '조건부 확률'의 개념을 이해하고 적용할 수 있다.





#### Definition of Independent event


$$
Event\ A,B\ are\ independent\\ \quad if\ P(A\cap B)=P(A)\cdot P(B)
$$

- Note: completely different from disjointness( 배반 사건 )

  - Disjointness: Event B의 발생으로 A가 발생할 수 없다는 정보 생성

- $$
  A,B,C\ are\ independent\quad if\ \begin{equation}
  \begin{cases}
  P(A,B)=P(A)\cdot P(B)\\
  P(A,C)=P(A)\cdot P(C)\\
  P(B,C)=P(B)\cdot P(C)\\
  P(A,B,C)=P(A)\cdot P(B)\cdot P(C)\\
  \end{cases}
  \end{equation}
  $$

- Similarly for Events A<sub>1</sub>,A<sub>2</sub>,...,A<sub>n</sub>



#### Newton - Pepys Problem

> If have fair dice, which is most likely?

- Event A: at least one 6 dice with 6 dice

  Event B: at least two 6 dice with 12 dice

  Event C: at least three 6 dice with 18 dice

- $$
  \begin{equation}
  \begin{cases}
  P(A)=1-(\frac{5}{6})^6\\
  P(B)=1-(\frac{5}{6})^12-12\cdot(\frac{1}{6})\cdot(\frac{5}{6})^{11}\\
  P(C)=1-\sum_{k=0}^{2}\binom{18}{k}\cdot(\frac{1}{6})^k\cdot(\frac{5}{6})^{18-k}\quad (a.k.a\ Binomial\ theorem)
  \end{cases}
  \end{equation}
  $$

- 



#### Definition of Conditional Probability

> 1. 'How should you update Prob / beliefs / uncertainty based on new evidence?' is the key question.
>
> 2. A라는 사건의 확률이 존재하는 상태에서 B 사건이 일어났을 때, P(A)를 어떻게 갱신할 것인지 에 대한 방법론

$$
P(A|B)=P(A\cap B)\cdot P(B),\quad if\ P(B)>0
$$

- **Intuition 1**: Pebble world ( 9 pebbles, total mass is 1 )
  $$
  P(A|B):
  \begin{equation}
  \begin{cases}
  get\ rid\ of\ pebbles\ in\ B^c\\
  renormalize\ to\ make\ mass\ 1\ again\\
  \quad(\ ex.\ P(B|B)=1\ )
  \end{cases}
  \end{equation}
  $$
  

- **Intuition 2**: Frequentist world ( repeat expt many times )

  - circle where B occurred, and among those, what fraction of time A also occurred?

- **Theorem**
  $$
  \begin{equation}
  \begin{cases}
  P(A\cap B)=P(B)\cdot P(A|B)=P(A)\cdot P(B|A)\\
  P(A_1\cap...\cap A_n)=P(A_1)\cdot P(A_2|A_1)\cdot \ ...\ \cdot P(A_n|A_1,A_2,...,A_{n-1})\\
  P(A|B)=\frac{P(A)\cdot P(B|A)}{P(B)}\qquad (a.k.a\; Bayes's\ rule)
  \end{cases}
  \end{equation}
  $$
  

