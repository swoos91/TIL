# github - **Push & Pull 워크플로우 정리** -

---

## (1) clone 

- github에 올라온 파일 구조 그대로 복사
  1. git bash에서 cd TIL/ --> 멀캠가정
  2. 새로운 git bash 창  --> 집 가정

- git clone 원격저장소의 주소

  - github TIL repository에서 `clone or download` 클릭해서 클립보드로 주소 복사

    cf) 터미널에서 파일 만드는 방법 

```
$ touch 파일명.확장자
```

- Push

```
$ git add homework.txt
$ git status
$ git commit -m ""
$ git push origin master
```

​		cf) 좋은 커밋 메시지 Rule : 어떤 작업을 했는지 **간결하게** 메시지를 남기는 것이 좋다.

​		cf) git log가 길어져서 콜론이 커맨드 창에 뜰 경우 'q' 키인

​				or     $ git log --oneline  ///    or     $ git log -1

​		cf) origin --> 원격 저장소 이름

- Pull

```
$ git status
$ git pull origin master
```

- Modified files `push & pull`
  - 파일을 수정하면 git에 바로 연동

  - git status 로 확인 가능

  - ```
    $ git diff
    $ cat
    ```

    수정된 부분 보여주는 명령어

  - ```
    $ git commit -m "Modify ~"
    ```

    수정된 파일의 커밋 메시지는 간결하고 명료하게 하는 것이 포인트