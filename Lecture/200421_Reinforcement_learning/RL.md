##### Tue, Apr 21, 2020

---

ML/DL 학습 원리 : supervised learning ( 아웃풋이 존재 --> y와 y^의 갭을 줄여나가도록 학습( gradient descent ) ) --> loss를 줄여가는 방향



RL: 될 때까지 해보는 거( 답은 없음, 하지만 목적이 존재 ) 



강화학습

- 지도학습에 가깝지만 정답지가 존재하지 않음
- Trial and Error Learning( 시도 오차 보정 학습 ) 성공적인 액션만 강화( reward & penalty )
- 상황에 숙달되도록 학습



Q value

- 행동의 가치
- 어떤 상황에서 특정 행동을 하면 미래에 얻는 보상



Discount Factor

- 먼 미래에 더 많은 reward를 얻을 수 있다는 Feedback을 전달

==> 상황에 대한 철저한 분석이 핵심: 도메인 knowledge가 가장 중요