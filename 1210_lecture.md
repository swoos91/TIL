bitbucket.org --> private repository : 5명까지 가능

Jira

-------

git init

touch README.md

cat README.md

git add README.md

git commit -m "start ggutmal"

git remote add (원격 저장소 이름 ex.origin) (원격 저장소 주소)

git push origin mastergit

권한 부여: settings --> collaboraters 아이디

----------------------

github에서 Fork는 남의 코드를 통째로 긁어올 때 사용

----------

pull requests

fork --> clone --> push --> pull request

------------

**branch** 알아보기

vscode 다운

설치 중 : 추가옵션에서 전부 체크

vscode 에서 welcome 밑에 체크박스 해제

git bash로 넘어와서 code .

vs에서 새파일.py 만들고 알림창에 뜨는 파이썬 확장 프로그램 설치



구글에서 python 검색 후 python 3.8.0 다운

설치에서 Add Python 3.8 to PATH 체크 후 설치



git bash에서 cd git/

python --version 체크

python hello.py

-------------

git init

git status

git add hello.py

git status

git commit -m "Add hello.py"

git log

git remote add origin https://github.com/swoos91/git.git

git push -u origin master



### 집에서

git clone https://github.com/swoos91/git.git

----

만약에 git pull 을 안했을 경우

작업중이던 파일을 임시 저장할 필요가 있음.

git stash

----

이전 버전 불러오기

git checkout 해시

해시 --> git log --oneline 에서 해당 파일 해시 복사

돌아오는 방법 : git checkout master

