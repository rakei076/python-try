1+1
1*1
1*1
1/1
(2.15^2+2.33)/(12-10.3)


class(3.141592)
class("Hello, World!")
y<-c(1:10)
y
z<-c(rep(2,10))
z
y+z
b<-seq(1:100)
b
sum(b)
b
g<-c(rep(1:100))
g
A<-y
B<-b
A
B
C<-A+B
C
length(C)






d1<-c(1,2,3,4,5)
d2<-c("a","bb","ddd","eeee","abcde")
d3<-c(3.0,4.5,2.1,5.6,4.7)
df<-data.frame(n1=d1,n2=d2,n3=d3)
df

x<-read.csv("sample1.csv")
x
iris
class(iris)
d<-iris
d
d[1,]
d[1:5,]

d[,1]
d$n1
d$n2
d$n3
d[,1:3]
g<-d[,1]
d[c(1,2),c(1,5)]
d[1:2,c(1,5)]

vs<-d[d$Species == "versicolor",]
vs
mean(vs$Sepal.Length)
d2<-cbind(d,d$Species)
d2
d3<-rbind(d2,d2[5,])

ncol(d):nrow(d)
ncol(d2):nrow(d2)
ncol(d3):nrow(d3)