##### Thu, Feb 6, 2020

###### Week6: Advice for applying ML

---



### Evaluating a Learning Algorithm



#### The way to solve unacceptably large errors

>- Get more training examples
>- Try smaller sets of features
>- Try getting additional features
>- Try adding polynomial features
>- Try adjusting **λ**
>
>Caution: 무턱대고 위의 방법들을 시도하지 말 것!



#### Evaluating a hypothesis

- The thing is, it highly recommend to split the dataset into 75:25 ( or 7:3). The first is training set, and the other is test set so we could test our model which is fitting on the training set by using test set.



#### Model selection and training/validation/test sets

> **Which one is the best model we should choose?**
>
> By using test sets, we could get the model which scores lowest J(Θ). However, we couldn't make sure this model is the proper for the dataset. That's because it also seems like the model is fitted to the test set. So, we use the validation test to use model selection.



- It recommends that the ratio of training / validation / test sets is 6:2:2

