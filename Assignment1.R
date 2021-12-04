df <- read.csv("C:\\Users\\user\\Downloads\\naval_vessel.csv")
pairs(df, pch = 9)
min_max_norm <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}
iris_norm <- as.data.frame(lapply(df, min_max_norm))
head(iris_norm)
install.packages("dplyr")
library(dplyr)
p <- df %>%
  select(c('compressor.decay.state.coefficient'))
p
summary(p)
q <- df %>%
  select(c('turbine.decay.state.coefficient'))
q
summary(q)
#ggh
library(MASS)
data(Boston)
 head(Boston)
 #ss
 install.packages("titanic")
data("Titanic") 
head(Titanic)

Titanic %>%
  group_by (Age, Survive) %>%
  summarise (number = n()) %>%
  mutate (freq = (number / sum(number)*100))

library(dplyr)
df<-data.frame(Titanic)
df
df_sub <- subset(df,Sex =="Male" & Survived =="Yes" & Age =="Child")
df_sub
count(df_sub)

df_sub1 <- subset(df,Class == "1st")
df_sub1
count(df_sub1)




