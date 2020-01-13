# 내장함수

#### 1. filter

> 첫 번째 인수로 함수,
>
> 두 번째 인수로 그 함수에 차례로 들어갈 **<u>반복 가능한</u>** 자료형 (ex) List, tuple...
>
> > return: True | False 와 같이 논리형으로 반환
> >
> > > filter를 거쳐 나온 자료형은 객체형

```python
list(filter(lambda x: x>0, [1,-3, 2, 0]))
```



#### 2. map

> filter 함수와 유사하지만, return 값을 논리형에 국한하지 않는다.



#### 3. zip

> 연산 결과로 튜플값을 갖는 리스트 구조로 반환

```python
list(zip([1,2,3],[4,5,6]))
```



# 외장함수

> import 해서 사용해야 하는 함수 (import: memory에 올리는 함수)

```python
# jupyter notebook에서 관리자 권한으로 library를 설치하는 방법, but 권장 사항 아님
!pip install []
# 라이브러리 경로 추가 방법
import sys
sys.path.append('[주소]')
```



# 정규표현식

```python
import re #regular expression의 약어

data = '''
park 800905-1049118
kim 700905-1059119
'''

pat = re.compile('(\d{6})[-]\d{7}')

# compile: 찾는 기능 // (): 순서 // {}: 반복

print(pat.sub('\g<1>-*******',data))

# g: 시작을 알림 // sub: 바꾸다

```

1. Pattern(문자열의 패턴)
2. 일치하는 문자열에 대해 대체 혹은 찾기 기능 적용





# conda 관리자모드 prompt

```python
# conda or pip install
c:\py_data > python --version
c:\py_data > pip install [library]
    
# 라이브러리 삭제
c:\py_data > pip uninstall [library]
    
# pip 버전 업그레이드
c:\py_data > pip install --upgrade pip
```



------

# NumPy & Pandas



#### Pandas

> 시계열(Series) 데이터를 다루지 못하는 NumPy와 달리 **<u>Pandas</u>**는 Index를 가지고 있어 **<u>시계열 데이터를 다루는데 특화</u>**되어 있다.
>
> > 1차원: Series
> >
> > 2차원: Data.frame
> >
> > 3차원: panel
> >
> > > dataframe 구조는 주로 EDA를 할 때 활용 // 데이터 구조가 통일되어 있지 않기 때문에 ML에 활용 어려움.  