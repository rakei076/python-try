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

# x<-read.csv("sample1.csv")  # 文件不存在，已注释
# x
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








data<-read.csv("data0.csv")
bmi<-function(h,w){
    
    bmi<-w/(h/100)^2
    return(round(bmi,1))
}
BMI<-c()
for(i in 1:length(data$Height)){
    x<-bmi(data[i,1],data[i,2])
    BMI<-c(BMI,x)
}
BMI

data$BMI<-BMI

check<-function(BMI){
    if(BMI<18.5){
        return("Less")
    }else if(BMI>=18.5 && BMI<25.0){
        return("Good")
    }else{
        return("Over")
    }
}
data$CHK<-sapply(BMI,check)
data
write.csv(data, file="data1.csv",row.names=FALSE)
ncol(data)
nrow(data)
colnames(data)




data<-read.csv("grades.csv")
apply(data[,2:6],2,max)
apply(data[,2:6],2,min)
apply(data[,2:6],2,mean)
myMwan<-function(x){
    return(round(mean(x),1))
}
apply(data[,2:6],2,myMwan)

myMean<-function(x){
    return(round(mean(x),1))
}
nc<-apply(data[,2:6],1,myMean)
nc
nrow(data)
data$FF<-nc
data

check<-function(x){
    if(x<60){
        return("D")
    }else if(x>=60 && x<70){
        return("C")
    }else if(x>=70 && x<80){
        return("B")
    }else if(x>=80 && x<90){
        return("A")
    }else{
        return("s")
    }
}
data$FF<-sapply(data$FF,check)
data
write.csv(data, file="data2.csv",row.names=FALSE)