# Data set has been imported from Kaggle data repository (https://www.kaggle.com/AnalyzeBoston/crimes-in-boston/downloads/crimes-in-boston.zip/2)
# Data taken is about crimes-in-boston
library(readr) #function used to import files
#Assaigning a dataset to a variable
crime<- read_csv("crime.csv",col_names = TRUE)
View(crime)
table(crime$HOUR)
#summary statistics of data
summary(crime)
#to plot histogram using labels and colors
par(col.lab="red")
a<- crime$HOUR
hist(a,xlim = range(0:25),
     main = "Crimes in boston per hour",xlab =  "HOURS",ylab = "frequency",
     col=c("#336699", "#CC00FF"))
