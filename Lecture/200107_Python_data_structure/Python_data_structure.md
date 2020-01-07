# Python 자료구조

List



Tuple



Dictionary

- 리스트보다 빠른 탐색 ( 리스트는 0에서부터 순서대로 탐색 )
- 연관 Mapping ( key - value ) --> 대용량 메모리를 필요로 함
- JSON 형식을 갖춘 데이터는 Dictionary 사용법과 동일하게 적용 가능



### RDBMS(관계형 데이터베이스 매니지먼트 시스템)

> Oracle, MySql, MSSql....

- 정형 데이터(Structured data)를 담고 있는 RDBMS를 실행하는 언어는 SQL( CRUD 연산, 제어 )
- 관계형 데이터베이스의 모든 연산은 행을 기준으로 이루어짐.
- RDBMS 에서 데이터를 파이썬으로 가져올 때, 가장 호환이 잘 되는 자료 구조는 Dictionary
- Dictionary 구조에서 indexing 할 때, 대괄호 안에 들어가는 값은 key값이어야 함.