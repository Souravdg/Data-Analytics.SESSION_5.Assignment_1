#How many vowels are there in the names of USA States? 

#install.packages("stringi")
#install.packages("stringr")
library(stringi)
library(stringr) 

states <- c("alabama","alaska","arizona","arkansas","california","colorado","connecticut","delaware","florida","georgia","hawaii","idaho","illinois","indiana","iowa","kentucky","louisiana","maine","maryland","massachusetts","michigan","minnesota","mississippi","montana","nebraska","nevada","new hampshire","new jersey","new mexico","new york","north carolina","north dakota","ohio","oklahoma","oregon","pennsylvania","rhode island","south carolina","south dakota","tennessee","texas","utah","vermont","virginia","washington","west virginia","winsconsin","wyoming") 

str_count(states,"a")
str_count(states,"e")
str_count(states,"i")
str_count(states,"o")
str_count(states,"u")

vowela<-str_count(states,"a") 
vowele<-str_count(states,"e") 
voweli<-str_count(states,"i") 
vowelo<-str_count(states,"o") 
vowelu<-str_count(states,"u") 

tot <- sum(vowela,vowele,voweli,vowelo,vowelu)

a <- sum(vowela)
e <- sum(vowele)
i <- sum(voweli)
o <- sum(vowelo)
u <- sum(vowelu)

#Visualize the vowels distribution

df <- c(a, e, i, o, u)
barplot(df) 
pie(df)

