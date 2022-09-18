#importing dataset

data1 <- read.csv("C:/Users/sagun/Desktop/R/heart.csv")
view(data1)

#Line Graph
x <- data1[1:20,"chol"]
plot(x,type= "o", col ="red", xlab = "gender", ylab = "chol", main = "Heart disease of male and female and cholestrol")

#x is a vector containing numeric value
#xlab is the label of axis
#ylab is the label of y-axis
#main is the title of the plit
#col indicates the color
#type -o draw both parts and lines, -i to draw only lines, -p to draw only the points

#pie chart
x<-data1[1:13,"oldpeak"]
Lables<- data1[1:13,"oldpeak"]
pie(x,Lables,main = "Oldpeak in heart diseases",col=rainbow(length(x)))

#bar plot
B<-data1[1:20,"age"]
N<-data1[1:20,"cp"]
barplot(B,names.arg = N,xlab="Age", ylab= "cp", main = "Details of Heart Disease Patient ages and CP", col="Blue")

#box plot
input_data <- data1[,c('age','cp')]
print(input_data)
boxplot(age~cp,data=data1, xlab = 'No of Age', ylab = 'cp', main= "Details of Heart Attack Patient", col = c("green","purple"))

