##### Thr, Feb 27, 2020

###### Week8_Unsupervised Learning

---





## Unsupervised Learning

> Label이 없는 훈련 집합에 알고리즘을 부여하고, 데이터가 가지고 있는 어떠한 구조를 그 알고리즘이 찾도록 하는 학습 모델





### # Clustering



#### K-means Algorithm



- 2 Steps in the algorithm
  - First step: **Cluster assignment**
    - each of data is assigned to the cluster centroid depending on whether it's closer to one of the cluster centroids.
  - Second step: **Moving centroid**
    - Computing the average of each of the clusters, and then moving the cluster centroid to the average point.
  - Iterating these 2 steps until the cluster centroids doesn't move any more.



- Optimization Objective
  - ![optimization objective of K-means]()



- Random initialization

  > This is the discussion of how to make K-means avoid local optima.

  - Iterating is the solution.



- Choosing the number of clusters

  - Running elbow method ( sometimes it is not clear like the right side of reference )

    ![elbow method]()

  - Depending on the purpose of running this algorithm ( e.g. business case...)









## Dimensionality Reduction

> Too many features make harder analyze the dataset, so it needs to consider the reduction of dimension.





### # Data Compression

![data compression example]()



#### PCA( Principal Component Analysis )

> - It tries to find a surface onto which to project the data so as to minimize that.
>
> - Before applying PCA, the standard practice is to perform mean normalization at feature scaling so that the features should have zero mean.

​	![PCA]()



-  How to implement PCA

  > First of all, features should be zero-mean normalization because of the difference between feature scales.

  ![pca formula#1]()

  ![pca formula#2]()



- How to go back from the compressed representation back to the original high-dimensional data.

  ![PCA_reconstruction]()



- How to choose the parameter k in PCA

  ![choosingK #1]()

  ![choosingK #2]()



- Do not use PCA to prevent overfitting
  - It might work OK, but it throws away some kind of important informations related to the label y.
  - So, if you want to prevent overfitting, then just recommend to choose regularization rather than PCA.