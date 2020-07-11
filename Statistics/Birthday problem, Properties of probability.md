##### Statistics 110

###### Birthday problem, Properties of probability

---



### Goal of this lecture

> Non-naive def of probability 의 두 가지 공리를 이용하여 확률의 특성을 증명하고, 포함배제의 원리 ( Inclusion-exclusion )를 이해한다.





#### Two axioms of non-naive def of prob


$$
P(\emptyset) = 0,\; P(S) = 1 \\
P(\bigcup\limits_{n=1}^{\infty}A_n) = \sum\limits_{n=1}^{\infty}{P(A_n)} \qquad if A_1...A_n\ are\ disjoint\ (\ non-overlapping\ ) \\
$$


#### Properties of Prob

1) Complement of an Event
$$
\begin{aligned}
P(S) &= P(A\cup A^c)\\&=P(A)+P(A^c)=1\\
\end{aligned}
$$

$$
\therefore P(A^c)=1-P(A)
$$



2) If Event A is subset of Event B
$$
\begin{align*}
P(B)&=P(A\cup (B\cap A^c))\\&=P(A)+P(B\cap A^c) \geq P(A)
\end{align*}
$$

$$
\therefore P(B) \geq P(A)
$$



3) Inclusion-exclusion example 
$$
\begin{aligned}
P(A\cup B) &= P(A\cup (B\cap A^c)) \\&= P(A)+P(B\cap A^c)\qquad since\; disjoint \end{aligned}\\
$$

$$
\therefore 
P(A\cup B)=P(A)+P(B)-P(A\cap B)\\ \qquad since\;P(B)=P(B\cap A)+P(B\cap A^c)
$$



- De Montmort's problem

  - n cards are labeld, and let A<sub>i</sub> be the event j<sub>th</sub> card matched

  $$
  P(A_i)=\frac{1}{n}\\
  P(A_1\cap A_2)=\frac{(n-2)!}{n!}\\
  \begin{aligned}
  \therefore P(A_1\cup A_2\cup ...\cup A_n)&=n\cdot\frac{1}{n}-\frac{n(n-1)}{2!}\cdot\frac{1}{n(n-1)}+...\\
  &=1-\frac{1}{2!}+...+(-1)^{n+1}\cdot \frac{1}{n!}\\
  &=1-\frac{1}{e}\qquad (a.k.a\quad Tayler\ series)
  \end{aligned}
  $$

  

