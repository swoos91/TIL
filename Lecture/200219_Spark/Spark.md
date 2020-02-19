##### Wed, Feb 19, 2020

###### Spark

----





## Spark

> 미들웨어 범주( ex. RDBMS )에 속하며, 대용량 데이터를 처리할 때 효율적인 운영 및 자원 관리를 도와주는 소프트웨어.
>
> RDBMS 기법만으로는 빅데이터( 정형 + <u>**비정형**</u> ) 처리에 있어 효율이 떨어지는 문제 발생 --> 데이터 저장 관리에 대한 새로운 기법이 필요 ( Hadoop 등장; HDFS 저장 기술 , map + reduce 처리 기술 적용 )  --> Hadoop 의 HDFS 기술 위에서 map+reduce 처리 기술을 보완한 것이 Spark





#### # 환경 구축

/opt/spark/pyspark



```spark
cd ~
conda create -n [가상환경 명; swoos] python=3.6 [설치할 패키지; jupyter tensorflow]
conda activate swoos

pip install findspark
pip install pyspark==2.3.2

jupyter-notebook --ip=0.0.0.0 --no-browser --port=8890

```





###### cf) drwx 의미

```spark
drwxr-xr-x 의미
d: directory or not
rwx: 권한
r-x: 그룹 내 권한
r-x: 외부 접근 권한
```

###### cf) 명령어

```scala
var a:Int = 1  # 가변변수
val b=3		   # 상수

# func 선언
def display(x: String) = {
    println(x)
}

val test = new Test()
test.set(3)
test.print()


# Array

val a = new Array[String](2)
a(0) = "hello"
a(1) = "world"

val a2 = Array("Hello", "World")

# List

val x = List.range(1,10)


```

