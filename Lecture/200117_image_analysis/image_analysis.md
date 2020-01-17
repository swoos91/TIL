##### Fri Jan. 17th 2020

----



# 이미지 분석

> Pixel: 색상을 표현하는 최소 단위 RGB



#### 1. 이미지 출력 방식

- 보조기억장치에 저장된 이미지 파일을 주기억장치로 올림

- 출력하고자 하는 이미지의 픽셀값들을 그래픽 카드 내 그래픽 메모리에 채우고, 이러한 값들과 매칭되는 색상을 색상표로부터 읽어서 모니터와 같은 출력장치에 전송

- 픽셀의 크기

   1 bit ( black, white ) -> 8 bit ( grayscale ) -> 24 bit ( RGB; (8 bit,8 bit, 8 bit) )



#### 2. 코드 분석

- **mnist-download.py**

```python
# 브라우저 없이 http 프로토콜을 이용하여 dataset request하는 lib
import urllib.request as req
import gzip, os, os.path

savepath = './mnist'
baseurl = 'http://yann.lecun.com/exdb/mnist'
files = [
    "train-images-idx3-ubyte.gz",
    "train-labels-idx1-ubyte.gz",
    "t10k-images-idx3-ubyte.gz",
    "t10k-labels-idx1-ubyte.gz"
]

# 다운로드
if not os.path.exists(savepath): os.mkdir(savepath)
    
for f in files:
    url = baseurl + '/' + f
    loc = savepath + '/' + f
    print('download:', url)
    if not os.path.exists(loc):
        req.urlretrieve(url, loc)

# GZip 압축 해제
for f in files:
    gz_file = savepath + "/" + f
    raw_file = savepath + "/" + f.replace(".gz", "")
    print("gzip:", f)
    with gzip.open(gz_file, "rb") as fp:
        body = fp.read()
        with open(raw_file, "wb") as w:
            w.write(body)
print("ok")
```



onehotencoding 설명

https://rfriend.tistory.com/272