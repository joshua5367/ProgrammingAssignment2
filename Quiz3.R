library(datasets)
data("iris")

temp1<-tapply(iris$Sepal.Length,iris$Species,mean)
ans1<-round(temp1[3])
ans2<-vapply(iris[,1:4],mean,vector("numeric",1))
ans2_alt<-colMeans(iris[,1:4])
ans2_alt2<-apply(iris[,1:4],2,mean)

data(mtcars)

ans3<-tapply(mtcars$mpg,mtcars$cyl,mean)
ans3_alt<-with(mtcars, tapply(mpg,cyl,mean))
ans3_alt2<-sapply(split(mtcars$mpg, mtcars$cyl),mean)

temp4<-tapply(mtcars$hp, mtcars$cyl, mean)
ans4<-round(temp4[3] - temp4[1])