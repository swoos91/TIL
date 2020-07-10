##### Statistics 110

###### Story Proofs, Axioms of Probability

---



#### How to deduce the case of 'Order doesn't matter & Replace' to <sub>n+k-1</sub>C<sub>k</sub>

> 형변환을 통해 접근 가능( Indistinguishability ( 비구별성 ) 문제 )

- n개의 각 object가 선택받을 갯수를 `·` 으로 표기하고, 이를 n-1개의 `|` 로 구분함. 
- 이처럼 Labeling이 가능하지 않은 경우( ex. 물리학, Counting problems ), 확률의 naive한 정의로 접근이 불가능함.



#### Non-naive definition of Prob

> A probability sample consists of two ingredient, S&P where S is a sample space and P is a function which returns P(A) ∈ [0, 1] as output by taking an event A( = subset of S ) as input.

-  P 함수의 성립에 2 가지 정리가 필요함
  $$
  P(\emptyset) = 0,\; P(S) = 1 \\
  P(\bigcup\limits_{n=1}^{\infty}A_n) = \sum\limits_{n=1}^{\infty}{P(A_n)} \qquad if A_1...A_n\ are\ disjoint\ (\ non-overlapping\ ) \\
  $$

cf) P(∅) = 0; 표본 공간 내 발생한 사건이 공집합에 속할 확률을 의미

