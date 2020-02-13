##### Thu, Feb 13, 2020

###### Database_Oracle

----





# Database

> 정형 데이터 관리 시스템 : Oracle, MySQL
>
> 비정형 데이터 관리 시스템 : NoSQL ( mongodb, Cassandra )

- 트랜잭션
- Listener: 24시간 서버 구동 ( 작업관리자에서 listener 실행중 확인 )



#### # Database 설치

> Database 설치는 단순히 application을 설치하는 개념이 아닌 server를 구축하는 개념이라 보는 것이 맞다. Server - Client 관계는 TCP / IP 규약을 따르므로 Database 역시 TCP / IP 규약을 따른다.



1. 2개의 압축파일을 풀고, 2번째 폴더 내 components 폴더를 1번째 폴더의 stage 폴더로 이동
2. setup.exe  -> error(최소 요구 사항) yes 
3. 설치 프로그램 창에서 메일 수신 해제 후 다음
4. 데이터베이스 생성 및 구성 체크 후 다음
5. 데스크톱 클래스 체크 후 다음
6. 경로 변경 x, 비밀번호 설정('54321') 후 다음
7. 완료



#### # SQL plus

```sql
system // 54321

계정 잠금 해제

alter user scott identified by tiger account unlock;

select username from dba_users

connect scott/tiger
```



#### # SQL developer

1. 새 데이터베이스 추가 버튼 클릭
2. Name 맘대로, 사용자 이름 및 비밀번호 (scott / tiger)
3. SID( 전역 데이터베이스 ) : orcl 로 변경 // 나머진 그대로

