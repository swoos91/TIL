# 12/11 lecture

---

> **문제 상황을 해결하고, 버전(이력)을 관리하는 방법을 소개**

## (1) Case 별 해결법

### 잘못 커밋한 경우

```
$ mkdir problems
$ code .
```

- visual studio에서 a.txt 생성

```
$ git init
$ git status
$ git add a.txt
```

- VS에서 b.txt 생성(미완성 파일 가정) // b가 아닌 a만 관리하고 싶은 경우, b를 unstage하는 방법
  - `$ git add .`은 repository 내의 모든 파일을 staging함.

```
$ git add .
$ git rm --cached b.txt
```

- b를 올리고 싶은데 착각하고 a가 staging 된 상태에서 commit 한 경우
  - 빔 화면에서 맨 첫 줄에 add b.txt 에서 `i`를 누르면 편집 상태로 변경
  - b를 a로 수정 후, `esc` 누른 뒤(안전하게 2~3번) `:wq` 입력하면 git bash로 이동

```
$ git commit --amend
```

- c를 작업 중에 c를 날리고 a,b만 커밋했던 때로 돌아가고 싶은 경우

```
$ git reset --hard [마지막 커밋의 해시]
```

- 이전 상황을 **보고 싶은 경우**(ex. a만 커밋했던 순간을 보고 싶을 때)
  - 특정 스냅샷을 보는 경우를 말함
  - checkout 에서 다른 커밋을 하고 master로 돌아올 경우, 별 다른 조작이 없다면 master에 영향을 주지 않음.

```
$ git checkout [a 커밋 해시]
$ git checkout master
```



## (2) Branch 활용

>동시 작업을 하는 경우 branch 활용이 용이함.

- 브랜치 생성

```
$ git branch                    # 브랜치 종류 확인
$ git branch [새로운 브랜치 이름]
OR
$ git checkout -b [새로운 브랜치 이름]   # 브랜치 생성 및 이동
```

- 브랜치 이동

```
$ git checkout test
$ git branch
```

- test 브랜치에서 새로운 파일 커밋 --> master에 ls 없음
  - test branch를 지우고 싶으면 아래와 같이

```
$ git branch -d test     # merging하지 않고 지우고자 할 경우 대문자 D
```

- **merging** : master branch에 반영하는 법

  - master로 이동하여 새로운 브랜치를 병합

    1) fast-forward merging : master에 새로운 커밋 없음(head만 이동하는 효과)

    2) master와 새로운 브랜치가 서로 영향을 주지 않는 경우

    3) master와 새로운 브랜치가 서로 충돌할 경우

```
1)
$ git checkout master
$ git merge [합칠 브랜치의 이름]
```

```
2)
$ git checkout -b test
# vs 에서 test.txt 생성
$ git add test.txt
$ git commit -m "Add ~"
$ git checkout master
$ git add master.txt
$ git commit -m "Add ~"
$ git merge test

## 빔 화면 출력   :wq
$ git log --oneline --graph
```

cf) java --> berkeley 61b 추천

---------

이민교 강사님

---------------------

```
$ mkdir python_basics
$ cd python_basics
$ code .
$ pip install requests
```

- 어떤 패키지들을 다운받았는지 알려주는 명령어

  ```
  $ pip list
  ```



VS 이동

```python
import requests

response = requests.get('https://www.naver.com').text
print(response)
```

parsing packages

```
$ pip install bs4
```



- 네이버 금융 환율 크롤링

```python
import requests
from bs4 import BeautifulSoup

response = requests.get('https://finance.naver.com/sise/').text
soup = BeautifulSoup(response, 'html.parser')
kospi = soup.select_one('#KOSPI_now').text
print(kospi)
```

```
$ rm -rf .git   # 이미 연동된 git에 clone할 경우 clone한 폴더 내 				.git 제거
```

- repository를 github에 처음 연동할 때

  ```
  $ mkdir [repository 이름]
  $ cd [repository]
  $ git init
  $ git remote add origin [repository 주소]
  ```





-------------

## 템플릿 적용

1. 구글에서 start bootstrap 사이트 들어가서 템플릿 다운
2. 사용자 폴더에 들어가서 압축해제
3. github에서 new repository 생성
4. 압축해제한 폴더 안에 들어가서 우클릭 git bash
5.  add commit 이후 remote add
6. $ git remote -v 로 확인
7. 이후 push
8. settings 에서 GitHub Pages 탭에 source를 master branch 변경

---

## Requests & BeautifulSoup 이용한 웹 스크래핑

### (1) 관련 패키지 및 모듈 설치

```
$ pip install requests
$ pip install bs4
```

```python
import requests
from bs4 import BeautifulSoup
```

### (2) requests & BeautifulSoup  사용

- requests 클래스 내 `get`과 `text`를 이용하여 웹 스크래핑을 진행

```python
response = requests.get('URL 주소').text
soup = BeautifulSoup(response, 'html.parser')
tags = soup.select('css selector')
for tag in tags:
	print(tag.text)
```

- cf) select_one 사례

  ```python
  select = soup.select_one('css selector').text
  print(select)
  ```

### (3) 파이썬을 이용한 파일 조작

- 기본 파일 조작 방법

  ```python
  f = open('파일명.확장자', 'w or r')
  
  f. close()
  ```

- with 을 활용한 파일 조작 방법

  ```python
  with open('파일명.확장자', 'w or r') as f:
  	nums = f.readlines()
  	n = list()
  	for num in nums:
  		num = num.strip()
  		num = int(num)
  		n.append(num)
  	so = n.sort(reverse = True)
  	print(n)
  ```

  

