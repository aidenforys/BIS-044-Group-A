install.packages("ggplot2")
data <- read.csv("StudentsPerformance.csv")
print(data)
data$test.preparation.course <- replace(data$test.preparation.course,data$test.preparation.course=="none",0)
data$test.preparation.course <- replace(data$test.preparation.course,data$test.preparation.course=="completed",1)
prepdata <- data[which(data$test.preparation.course>0.5),]
noprepdata <- data[which(data$test.preparation.course<0.5),]
print(noprepdata)
summary(prepdata$math.score)
summary(prepdata$reading.score)
summary(prepdata$writing.score)
summary(noprepdata$math.score)
summary(noprepdata$reading.score)
summary(noprepdata$writing.score)
