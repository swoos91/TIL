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











---

##### Tue, Feb 11, 2020

###### Diagnosing bias vs. variance

---









#### Diagnosing Bias vs. Variance



- ![Diagnosing bias vs. Variance](https://github.com/swoos91/TIL/blob/master/Coursera_Andrew/reference/diagnosing_bias&Var.png?raw=true)
- The goal is to find which degree of the polynomial is the best to lower the error.



#### Regularization and Bias/Variance



- ![Diagnosing lambda](https://github.com/swoos91/TIL/blob/master/Coursera_Andrew/reference/diagnosing_lambda.png?raw=true)

- It tries to find which size of the lambda is the best to lower the J(Θ)



#### Learning curve

> It shows the relation between the number of training sets and the error. Concretely, it's only helpful to get more training sets when it is under high variance.



- ![learning curve](https://github.com/swoos91/TIL/blob/master/Coursera_Andrew/reference/learning_curve.png?raw=true)



#### 





## Building a Spam Classifier





#### Error Metrics for Skewed Classes

> If (y = 1) is in presence of rare class, we call it as skewed classes. It's hard to depend on the accuracy to whether or not it is a good model. In this case, we could use the other metrics.



- ![precision vs. recall](https://github.com/swoos91/TIL/blob/master/Coursera_Andrew/reference/precision_recall.png?raw=true)



#### Trading off Precision & Recall

> We could control the trading off precision & recall by varying the threshold. If we adjust the threshold highly, then precision is getting higher in contrast that the recall is getting lower. The thing is, it's important to choose the proper threshold. Then, how we could choose the threshold?



- F-score

  ![F-score](https://github.com/swoos91/TIL/blob/master/Coursera_Andrew/reference/F_score.png?raw=true)