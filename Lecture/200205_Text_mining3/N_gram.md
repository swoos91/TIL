##### Wed, Feb 5, 2020

###### Text mining #3 (N-gram)

---



### N_gram

> - 한 문장 안에서 <u>**N개의 연속적인 단어 나열**</u>을 이용하여, <u>**다른 문장과의 유사성**</u>을 검사하는 방법
>
> - Word2Vec와 달리 의미를 고려하지 않고 단어 나열에 대한 유사성 검사 진행



```python
def ngram(x, xnum):
    tmp = len(x) - xnum + 1
    word = []
    for i in range(tmp):
        word_tmp = x[i:i+xnum]
        word.append(word_tmp)
        pass
    return word

def diff_ngram(s1, s2, num):
    tmp1 = ngram(s1, num)
    tmp2 = ngram(s2, num)
    
    cnt = 0
    res = []
    for i in tmp1:
        for j in tmp2:
            if i == j:
                cnt+=1
                res.append(i)
                pass
            pass
        pass
    return cnt/len(tmp1), res
                

a = '오늘 강남에서 맛있는 스파게티를 먹었다.'
b = '강남에서 먹었던 오늘의 스파게티는 맛있었다.'

# 2-gram
r2, word2 = diff_ngram(a,b,2)
print('2-gram:', r2, word2)
```





### Markov Chain

> 과거의 상태를 배제하고 현재 상태만을 기반으로 다음 상태를 선택하는 기술



#### 1. Markov chain 과 문장 생성?

- '그는 고양이를 좋아합니다' 를 형태소 단위로 분리한 뒤, 중심 단어 주위에 N개 단어를 묶어서 선택한 단어 주변에 가장 많이 나오는 단어를 선택.

  ex) '그|는|고양이',  '는|고양이|를', '고양이|를|좋아하다' 에서 '그' 뒤에 '는'이 가장 많이 나옴.