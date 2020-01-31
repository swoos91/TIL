##### Fri 31th, Jan 2020

###### Venv & Text_mining

---



##### # 가상 환경 구축

```
# 1. 가상 환경 구축할 디렉토리로 이동
ex. cd c:\py_data

conda --version 확인 ( 현재 4.8.1 )
conda update conda

# 2. 가상 환경 구축

conda create --name(혹은 -n) py36(가상환경 이름) (여기부터 유틸 설치)python=3.6 jupyter 등등...

conda activate py36

conda install numpy pandas

# 먼저 JAVA_HOME경로에 JDK 설치 및 jpype 설치 필요

JAVA_HOME 변수 추가
https://zetawiki.com/wiki/%EC%9C%88%EB%8F%84%EC%9A%B0_JAVA_HOME_%ED%99%98%EA%B2%BD%EB%B3%80%EC%88%98_%EC%84%A4%EC%A0%95

1. 

base 환경에서 pip install konlpy

2.

구글 --> konlpy 첫번째 사이트 --> 사용하기(윈도우) --> 3번 jpype1 다운로드 클릭 -->36의 64비트 다운받고 가상환경 디렉토리에 넣기
--> 콘다에서 pip install JPype1-0.7.1-cp36-cp36m-win_amd64.whl
--> pip install konlpy
```



##### # 가상환경 안에서 jupyter notebook 실행

```python
import konlpy
import pandas as pd
import numpy as np
```





